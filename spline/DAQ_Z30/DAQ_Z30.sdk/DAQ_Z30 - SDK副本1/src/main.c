
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
int i;
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
		xil_printf( ">>Time=%d Sample OK.\r\n",usec);
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

			totalpk = Length_ADC/Length_PK;
			if(Length_ADC%Length_PK>0) { totalpk++; }    //�����ܰ���
			numpk = 1;                  //��һ��

			flaglwipTaskBusy = 1;   //�ñ�־��ռ��lwip��������
			flaglwipTask_adc = 1;
			//lwip_SendADCdata();
		}


		//DAQ�ɼ���ʱ����
		if((flagDAQBegin==1)&&(flagDAQDone==1)) {
			flagDAQBegin = 0;
			flagDAQDone = 0;

			MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ overtime\r\n");
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

				oldusec = usec;   //��ʱ�жϿ�ʼ
				DAQ_Readonce();
			}

		}


		//ÿ��ִ��һ��
		if(flagOneSec==1) {
			flagOneSec = 0;

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

			//DAQ_Readonce();
		}
	}
	//axi_dma_test();

}


