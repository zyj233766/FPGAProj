
/*
 *
 * www.osrc.cn
 * copyright by liyang mi lian dian zi www.osrc.cn
 * axi dma test
 *
*/


#include "dma_intr.h"
#include "timer_intr.h"
#include "sys_intr.h"
#include "xgpio.h"

#include "lwip_init.h"

static XScuGic Intc; //GIC
static  XAxiDma AxiDma;
static  XScuTimer Timer;//timer

volatile u32 RX_success;
volatile u32 TX_success;

volatile u32 RX_ready=1;
volatile u32 TX_ready=1;
volatile u32 ADC_ready=0;

#define TIMER_LOAD_VALUE    166666665 //0.5S


int Tries = NUMBER_OF_TRANSFERS;
int i,j;
int Index;
u8 *TxBufferPtr= (u8 *)TX_BUFFER_BASE;
u8 *RxBufferPtr=(u8 *)RX_BUFFER_BASE;
u8 Value=0;
float speed_tx;
float speed_rx;
static XGpio Gpio;

#define AXI_GPIO_DEV_ID	        XPAR_AXI_GPIO_0_DEVICE_ID

struct tcp_pcb *gPcb;    //ȫ�ֱ�����������ƿ�
int flagLwipConnectEstablish;
int old_flagLwipConnectEstablish;
int flagLwipLoopEn=0;
int flagBeanEn=0;

unsigned char MsgTxlwip[2048];
unsigned char MsgRxlwip[2048];
int flaglwipRxFrameOK;
int flaglwipTaskBusy=0;
int MsgTxlwipLen;
int MsgRxlwipLen;
int err;
int totalpk;
int numpk;

#define Length_ADC 14000*4
#define Length_PK  800

int flagDAQBegin;
int flagDAQDone;
int oldusec;
int flaglwipTask_adc=0;     //lwip�����־��adc���ݴ���

//���������
float Data_A[1024];     //ԭʼ���ݷ���
float Data_B[1024];

float Data_A_CSI[1024*1000];     //��ֵ1000��
float Data_B_CSI[1024*1000];

int i1000;
float X1[1024],X2[1024],X3[1024];

extern int CSI_n;
extern float CSI_VA;
extern float CSI_VB;

extern float *CSI_X;   //�������X��
extern float *CSI_F;   //�������Y������

float A_ai,A_bi,A_ci,A_di;
float B_ai,B_bi,B_ci,B_di;

extern float* CSI_A_ai;
extern float* CSI_A_bi;
extern float* CSI_A_ci;
extern float* CSI_A_di;

extern float* CSI_B_ai;
extern float* CSI_B_bi;
extern float* CSI_B_ci;
extern float* CSI_B_di;

extern void CSI_Init(void);
extern void CSI_GetPara(int CH);
extern float CSI_GetValue(int CH,float x);
extern void CSI_GetValue_Continue(float x,int pos);
double tmpy[9];


void Lwip_SendMsg(void)
{
	if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
		err = tcp_write(gPcb, MsgTxlwip, MsgTxlwipLen, 1);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");

	//�����ӻ���������
	err = tcp_output(gPcb);
	if (err != ERR_OK) {
		xil_printf("txperf: Error on tcp_output: %d\r\n",err);
	}
}


int DAQ_Readonce()
{
	int Status;
	int i;

	//ADC FIFO ��λ
   for(i=0;i<10;i++) { XGpio_DiscreteSet(&Gpio, 1, 1<<3); }
   for(i=0;i<10;i++) { XGpio_DiscreteClear(&Gpio, 1, 1<<3); }

   //ADC FIFOд����
   //��ֵ=230���պ�64us,�ȴ�FIFO����д��ֻ��64us��
   //ȡ60us����
	for(i=0;i<210;i++) {
		XGpio_DiscreteSet(&Gpio, 1, 1<<1);
	}

	//ADC FIFOдֹͣ
	XGpio_DiscreteClear(&Gpio, 1, 1<<1);

	if(RX_ready) {
		RX_ready = 0;
		//����һ��DMA Rx����
		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
				(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);

		if (Status != XST_SUCCESS) {return XST_FAILURE;}
	}
}

void DAQ_WaitDone()
{
	if(RxDone==1) {
		//ȷ��cache�����ݶ�����DDR
		Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
		RxDone=0;
		RX_ready=1;
		RX_success++;

		//���ɼ�������־
		flagDAQBegin = 0;
		flagDAQDone = 1;

		//XGpio_DiscreteClear(&Gpio, 1, 1);   //ֹͣDMA����
		//xil_printf( ">>Time=%d Sample OK.\r\n",usec);
	} else {
		if((usec-oldusec)>3) {
			//�ɼ�����
			flagDAQBegin = 1;
			flagDAQDone = 1;
		}
	}
}

int axi_dma_test()
{
	int Status;
	char speed_r;
	char speed_t;
	TxDone = 0;
	RxDone = 0;
	Error = 0;

	xil_printf( "----DMA Test----\r\n");

	xil_printf("PKT_LEN=%d\r\n",MAX_PKT_LEN);

	for(Index = 0; Index < MAX_PKT_LEN; Index ++) {
			TxBufferPtr[Index] = Value;

			Value = (Value + 1) & 0xFF;
	}
	/* Flush the SrcBuffer before the DMA transfer, in case the Data Cache
	 * is enabled
	 */
	Xil_DCacheFlushRange((u32)TxBufferPtr, MAX_PKT_LEN);
	Timer_start(&Timer);
	while(1)
	//for(i = 0; i < Tries; i ++)
	{

		//RX DMA Transfer
		if(RX_ready)
		{
		   RX_ready=0;

		   Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
					(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);

		   if (Status != XST_SUCCESS) {return XST_FAILURE;}
		}

		//TX DMA Transfer
//		if(TX_ready)
//		{
//			TX_ready=0;
//			Status = XAxiDma_SimpleTransfer(&AxiDma,(u32) TxBufferPtr,
//					(u32)(MAX_PKT_LEN), XAXIDMA_DMA_TO_DEVICE);
//
//			if (Status != XST_SUCCESS) {return XST_FAILURE;}
//		}

		//ADC����
		if(ADC_ready==0) {
			ADC_ready = 1;

			//ADC FIFO ��λ
		   for(i=0;i<10;i++) { XGpio_DiscreteSet(&Gpio, 1, 1<<3); }
		   for(i=0;i<10;i++) { XGpio_DiscreteClear(&Gpio, 1, 1<<3); }

		   //ADC FIFOд����
		   //��ֵ=230���պ�64us,�ȴ�FIFO����д��ֻ��64us��
		   //ȡ60us����
			for(i=0;i<210;i++) {
				XGpio_DiscreteSet(&Gpio, 1, 1<<1);
			}

			//ADC FIFOдֹͣ
			XGpio_DiscreteClear(&Gpio, 1, 1<<1);

			RX_ready = 1;
		}

		if(RxDone)
		{
			//ȷ��cache�����ݶ�����DDR
			Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
			RxDone=0;

			//���ã�׼����һ֡
			RX_ready=0;
			ADC_ready=0;

			RX_success++;
		}

//		if(TxDone)
//		{
//			TxDone=0;
//			TX_ready=1;
//			TX_success++;
//		}
		if(usec==2)
		{

			usec=0;

	    	xil_printf("RX=%d\r\n",RX_success);
			speed_rx = MAX_PKT_LEN*RX_success/1024/1024;
			sprintf(speed_r,"RX_sp=%.2fMB/S",speed_rx);
			xil_printf("%s\r\n",speed_r);


//			xil_printf("TX=%d\r\n",TX_success);
//			speed_tx = MAX_PKT_LEN*TX_success/1024/1024;
//			sprintf(speed_t,"TX_sp=%.2fMB/S",speed_tx);
//			xil_printf("%s\r\n\r\n",speed_t);

			RX_success=0;
//			TX_success=0;

		}

		if (Error) {
			xil_printf("Failed test transmit%s done, "
			"receive%s done\r\n", TxDone? "":" not",
							RxDone? "":" not");
			goto Done;
		}

	}

	/* Disable TX and RX Ring interrupts and return success */
	DMA_DisableIntrSystem(&Intc, TX_INTR_ID, RX_INTR_ID);
Done:
	xil_printf("--- Exiting Test --- \r\n");

	return XST_SUCCESS;

}




int init_intr_sys(void)
{

	DMA_Intr_Init(&AxiDma,0);//initial interrupt system
	Timer_init(&Timer,TIMER_LOAD_VALUE/5,0);

	Init_Intr_System(&Intc); // initial interrupt system

	Setup_Intr_Exception(&Intc);

	DMA_Setup_Intr_System(&Intc,&AxiDma,TX_INTR_ID,RX_INTR_ID);//setup dma interrpt system

	Timer_Setup_Intr_System(&Intc,&Timer,TIMER_IRPT_INTR);
	DMA_Intr_Enable(&Intc,&AxiDma);
}

void
print_ip(char *msg, struct ip_addr *ip)
{
	print(msg);
	xil_printf("%d.%d.%d.%d\n\r", ip4_addr1(ip), ip4_addr2(ip),
			ip4_addr3(ip), ip4_addr4(ip));
}

void
print_ip_settings(struct ip_addr *ip, struct ip_addr *mask, struct ip_addr *gw)
{

	print_ip("Board IP: ", ip);
	print_ip("Netmask : ", mask);
	print_ip("Gateway : ", gw);
}



//ADC4249 SPI���Ƴ���



//ͨ��TCP�ϴ����ݲɼ����
//Դ��ַ�ǣ�*RxBufferPtr
//�̶��ܳ�����14000������
//tpk:�ܰ�����npk����ǰ��X����len����ǰ���ֽ�������֡Ϊ800
void lwip_sendoneframe(u8 tpk,u8 npk,u16 len)
{
	MsgTxlwip[0] = 0x6A;   //���ֽ�֡ͷ
	MsgTxlwip[1] = 0x3D;
	MsgTxlwip[2] = 0x0C;
	MsgTxlwip[3] = 0x00;   //NULL
	MsgTxlwip[4] = 0x00;   //NULL
	MsgTxlwip[5] = tpk;   //�ܰ���
	MsgTxlwip[6] = npk;   //��X��
	MsgTxlwip[7] = len/256;   //�����ֽ�����H8
	MsgTxlwip[8] = len%256;   //�����ֽ�����L8
	MsgTxlwip[9] = 0xCC;

	for(i=0;i<len;i++) {
		MsgTxlwip[10+i] = *(RxBufferPtr+(npk-1)*800+i);
	}
	MsgTxlwipLen = len+10;
//	MsgTxlwip[7] = MsgTxlwipLen/256;   //�����ֽ�����H8
//	MsgTxlwip[8] = MsgTxlwipLen%256;   //�����ֽ�����L8

	if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
		err = tcp_write(gPcb, MsgTxlwip, MsgTxlwipLen, 1);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");

	//�����ӻ���������
	err = tcp_output(gPcb);
	if (err != ERR_OK) {
		xil_printf("txperf: Error on tcp_output: %d\r\n",err);
	}
}


int main(void)
{
	static float value[3];

	struct ip_addr ipaddr, netmask, gw;

	//������ʼ��
	flagLwipConnectEstablish = 0;
	flaglwipRxFrameOK = 0;
	flagDAQBegin = 0;
	flagDAQDone = 0;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	//��ʼ��ƽ̨
	//��ʼ��GPIO
	XGpio_Initialize(&Gpio, AXI_GPIO_DEV_ID);
	XGpio_SetDataDirection(&Gpio, 1, 0);        //����GPIO��D0ΪOutput

	init_intr_sys();

	//DMA��������
	XGpio_DiscreteSet(&Gpio, 1, 1);

	//������ʱ��
	Timer_start(&Timer);

	echo_netif = &server_netif;

#if LWIP_DHCP==1
    ipaddr.addr = 0;
	gw.addr = 0;
	netmask.addr = 0;
#else
	/* initliaze IP addresses to be used */
	IP4_ADDR(&ipaddr,  192, 168,   1, 10);
	IP4_ADDR(&netmask, 255, 255, 255,  0);
	IP4_ADDR(&gw,      192, 168,   1,  1);
#endif
	xil_printf("\n\r\n\r>>DAQ-Z30 lwIP TCP server.\n\r");
	xil_printf("listen port 8001\n\r");

	lwip_init();

  	/* Add network interface to the netif_list, and set it as default */
	if (!xemac_add(echo_netif, &ipaddr, &netmask,
						&gw, mac_ethernet_address,
						PLATFORM_EMAC_BASEADDR)) {
		xil_printf("Error adding N/W interface\n\r");
		return -1;
	}
	netif_set_default(echo_netif);

	/* now enable interrupts */
	//platform_enable_interrupts();
	//DMA_Intr_Enable(&Intc,&AxiDma);
	//Timer_start(&Timer);

	/* specify that the network if is up */
	netif_set_up(echo_netif);

#if (LWIP_DHCP==1)
	/* Create a new DHCP client for this interface.
	 * Note: you must call dhcp_fine_tmr() and dhcp_coarse_tmr() at
	 * the predefined regular intervals after starting the client.
	 */
	dhcp_start(echo_netif);
	dhcp_timoutcntr = 5;
	xil_printf("Run DHCP within 5sec...\n\r");
	while(((echo_netif->ip_addr.addr) == 0) && (dhcp_timoutcntr > 0)) {
		xemacif_input(echo_netif);

		if(flagOneSec==1) {
			flagOneSec=0;

			dhcp_timoutcntr--;
		}
	}

	if (dhcp_timoutcntr <= 0) {
		if ((echo_netif->ip_addr.addr) == 0) {
			xil_printf("DHCP Timeout\r\n");
			xil_printf("Configuring default IP of 192.168.1.10\r\n");
			IP4_ADDR(&(echo_netif->ip_addr),  192, 168,   1, 10);
			IP4_ADDR(&(echo_netif->netmask), 255, 255, 255,  0);
			IP4_ADDR(&(echo_netif->gw),      192, 168,   1,  1);
		}
	}

	ipaddr.addr = echo_netif->ip_addr.addr;
	gw.addr = echo_netif->gw.addr;
	netmask.addr = echo_netif->netmask.addr;
#endif

	print_ip_settings(&ipaddr, &netmask, &gw);

	// start the application (web server, rxtest, txtest, etc..)
	start_application();

	xil_printf("Send 'S;' on network to trig onec DAQ.\r\n");


	CSI_n = 1024;
	CSI_Init();

	for(i=0;i<1000;i++) {
		X1[i] = i*0.001f;
		X2[i] = X1[i]*X1[i];
		X3[i] = X2[i]*X1[i];
	}

	//����ѭ��
	while(1) {
		//������������
		if (TcpFastTmrFlag) {
			tcp_fasttmr();
			TcpFastTmrFlag = 0;
		}
		if (TcpSlowTmrFlag) {
			tcp_slowtmr();
			TcpSlowTmrFlag = 0;
		}
		xemacif_input(echo_netif);
		transfer_data();

		//lwip�����Ѳɼ�����
		if(flaglwipTaskBusy) {
			//����adc����
			if(flaglwipTask_adc==1) {

				if (tcp_sndbuf(gPcb) > 2048) {
					if(numpk==totalpk) {
						lwip_sendoneframe((u8)totalpk,(u8)numpk,Length_ADC-(numpk-1)*Length_PK);

						//�������
						flaglwipTask_adc = 0;
						flaglwipTaskBusy = 0;
						xil_printf("Lwip send data %d pack end.\n\r",totalpk);
					}
					if(numpk<totalpk) {
						lwip_sendoneframe((u8)totalpk,(u8)numpk,Length_PK);
						numpk++;
					}
				}

			}

		}

		//DAQ �ȴ��ɼ����
		if((flagDAQBegin==1)&&(flagDAQDone==0)) {
			DAQ_WaitDone();
		}

		//DAQ��ɲɼ�����
		//lwipδ��ռ��ʱ
		if((flagDAQBegin==0)&&(flagDAQDone==1)&&(flaglwipTaskBusy==0)) {
			flagDAQBegin = 0;
			flagDAQDone = 0;

			//��ʼ��������
			MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process Begin...");
			Lwip_SendMsg();

			//��������
			if(1) {
				for(i=0;i<1024;i++) {
					Data_A[i] = *(RxBufferPtr+i*4+1)*256+*(RxBufferPtr+i*4+0);
					if(Data_A[i]>8192) { Data_A[i] = Data_A[i]-16384; }

					Data_B[i] = *(RxBufferPtr+i*4+3)*256+*(RxBufferPtr+i*4+2);
					if(Data_B[i]>8192) { Data_B[i] = Data_B[i]-16384; }
				}
			}

			//�����������е�����������ֵϵ��
			if(1) {
				for(i=0;i<CSI_n;i++) {
					CSI_X[i] = i;
					CSI_F[i] = Data_A[i];
				}
				CSI_GetPara(1);   //����Data_A���е����ϵ����

				for(i=0;i<CSI_n;i++) {
					CSI_X[i] = i;
					CSI_F[i] = Data_B[i];
				}
				CSI_GetPara(2);   //����Data_B���е����ϵ����
			}
			//ִ�е������ʱԼ����ms���������κ��£���ʱԼ50-60ms���������������Ϣ�ַ���ʱ����������ģ�����Ӧ����LED��ϸ��

			//��ֵ1000��
			//����ִ��ʱ���Լ��310-60=250ms��
			//ƽ��ÿ����ֵ��ļ���ʱ��Լ0.12us���൱��8MHz��������ٶ�
			//��double��Ϊfloat��ʱ�䷽��û���κ�������
			if(1) {

				for(i=0;i<1024;i++) {
					i1000 = i*1000;
					A_ai = CSI_A_ai[i]; A_bi = CSI_A_bi[i]; A_ci = CSI_A_ci[i]; A_di = CSI_A_di[i];
					B_ai = CSI_B_ai[i]; B_bi = CSI_B_bi[i]; B_ci = CSI_B_ci[i]; B_di = CSI_B_di[i];

					for(j=0;j<1000;j++) {
						//CH_A
						Data_A_CSI[i1000+j] =   A_ai + A_bi * X1[j] + A_ci * X2[j] + A_di * X3[j];
						//CH_B
						Data_B_CSI[i1000+j] =   B_ai + B_bi * X1[j] + B_ci * X2[j] + B_di * X3[j];

//						Data_A_CSI[i1000+j] = CSI_VA;
//						Data_B_CSI[i1000+j] = CSI_VB;
					}
				}
			}
			//���㻥�������



			//�����������
			MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process END.");
			Lwip_SendMsg();

			//�����Ҫͨ�������ϴ��ɼ����ݣ�����������д1����
			if(0) {
				totalpk = Length_ADC/Length_PK;
				if(Length_ADC%Length_PK>0) { totalpk++; }    //�����ܰ���
				numpk = 1;                  //��һ��

				flaglwipTaskBusy = 1;   //�ñ�־��ռ��lwip��������
				flaglwipTask_adc = 1;
			}

		}


		//DAQ�ɼ���ʱ����
		if((flagDAQBegin==1)&&(flagDAQDone==1)) {
			flagDAQBegin = 0;
			flagDAQDone = 0;

			MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ overtime\r\n");
			Lwip_SendMsg();
		}

		//����ͨ�Ž������ݴ���
		if(flaglwipRxFrameOK==1) {
			flaglwipRxFrameOK = 0;

			//�ػ�
			if(flagLwipLoopEn) {
				MsgTxlwipLen = MsgRxlwipLen;
				if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
					err = tcp_write(gPcb, MsgRxlwip, MsgTxlwipLen, 1);
				} else
					xil_printf("no space in tcp_sndbuf\n\r");
			}
			//ָ�����
			//����һ��DAQ�ɼ������ش�
			if(MsgRxlwip[0]=='S') {
				flagDAQBegin = 1;
				flagDAQDone = 0;

//				MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ Read Onec...");
//				Lwip_SendMsg();

				oldusec = usec;   //��ʱ�жϿ�ʼ
				DAQ_Readonce();
			}

		}


		//ÿ��ִ��һ��
		if(flagOneSec==1) {
			flagOneSec = 0;

			//���Զ�BRAM�Ķ�д
			if(0) {
				volatile float *LocalAddr;
				LocalAddr = (float *)(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*0);
				for(i = 0 ; i < 40 ; i=i+4) {
					LocalAddr =  LocalAddr + i;
					*LocalAddr = i*3.8764f;

					//Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*i, i*3.8764f);
				}


				value[0] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*0);
				value[1] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*5);
				value[2] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*9);
				MsgTxlwipLen = sprintf(MsgTxlwip,"Data[0]=%.5f Data[1]=%.5f Data[2]=%.5f \r\n",value[0],value[1],value[2]);
				Lwip_SendMsg();
			}

		    //�����������Ѿ���������������
			if(flagLwipConnectEstablish) {
				if(flagBeanEn) {
					MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ 1PPS:%d\r\n",usec);
					if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
						err = tcp_write(gPcb, MsgTxlwip, MsgTxlwipLen, 1);
					} else
						xil_printf("no space in tcp_sndbuf\n\r");

					//�����ӻ���������
					err = tcp_output(gPcb);
					if (err != ERR_OK) {
						xil_printf("txperf: Error on tcp_output: %d\r\n",err);
					}
				}
			}

		    //CSI_GetPara();
		    //sx[9] = {-1.00   ,-0.54   ,0.13   ,1.12   ,1.89   ,2.06   ,2.54    ,2.82    ,3.50};
//		    tmpy[0] = CSI_GetValue(-0.7);
//		    tmpy[1] = CSI_GetValue(0);
//		    tmpy[2] = CSI_GetValue(1.0);
//		    tmpy[3] = CSI_GetValue(1.5);
//		    tmpy[4] = CSI_GetValue(2.1);
//		    tmpy[5] = CSI_GetValue(2.6);
//		    tmpy[6] = CSI_GetValue(3.1);

			//xil_printf("Cubic Spline:%d \r\n",(int)(tmpy[0]*1000));


			//DAQ_Readonce();
		}
	}
	//axi_dma_test();

}


