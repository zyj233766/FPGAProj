
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

struct tcp_pcb *gPcb;    //全局变量的网络控制块
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
int flaglwipTask_adc=0;     //lwip任务标志，adc数据传输

//曲线拟合用
float Data_A[1024];     //原始数据分离
float Data_B[1024];

float Data_A_CSI[1024*1000];     //插值1000倍
float Data_B_CSI[1024*1000];

int i1000;
float X1[1024],X2[1024],X3[1024];

extern int CSI_n;
extern float CSI_VA;
extern float CSI_VB;

extern float *CSI_X;   //采样点的X轴
extern float *CSI_F;   //采样点的Y轴数据

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

	//立即从缓冲区发出
	err = tcp_output(gPcb);
	if (err != ERR_OK) {
		xil_printf("txperf: Error on tcp_output: %d\r\n",err);
	}
}


int DAQ_Readonce()
{
	int Status;
	int i;

	//ADC FIFO 复位
   for(i=0;i<10;i++) { XGpio_DiscreteSet(&Gpio, 1, 1<<3); }
   for(i=0;i<10;i++) { XGpio_DiscreteClear(&Gpio, 1, 1<<3); }

   //ADC FIFO写允许
   //数值=230，刚好64us,等待FIFO满（写满只需64us）
   //取60us左右
	for(i=0;i<210;i++) {
		XGpio_DiscreteSet(&Gpio, 1, 1<<1);
	}

	//ADC FIFO写停止
	XGpio_DiscreteClear(&Gpio, 1, 1<<1);

	if(RX_ready) {
		RX_ready = 0;
		//启动一次DMA Rx传送
		Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
				(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);

		if (Status != XST_SUCCESS) {return XST_FAILURE;}
	}
}

void DAQ_WaitDone()
{
	if(RxDone==1) {
		//确保cache的数据都进入DDR
		Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
		RxDone=0;
		RX_ready=1;
		RX_success++;

		//至采集结束标志
		flagDAQBegin = 0;
		flagDAQDone = 1;

		//XGpio_DiscreteClear(&Gpio, 1, 1);   //停止DMA传送
		//xil_printf( ">>Time=%d Sample OK.\r\n",usec);
	} else {
		if((usec-oldusec)>3) {
			//采集错误
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

		//ADC采样
		if(ADC_ready==0) {
			ADC_ready = 1;

			//ADC FIFO 复位
		   for(i=0;i<10;i++) { XGpio_DiscreteSet(&Gpio, 1, 1<<3); }
		   for(i=0;i<10;i++) { XGpio_DiscreteClear(&Gpio, 1, 1<<3); }

		   //ADC FIFO写允许
		   //数值=230，刚好64us,等待FIFO满（写满只需64us）
		   //取60us左右
			for(i=0;i<210;i++) {
				XGpio_DiscreteSet(&Gpio, 1, 1<<1);
			}

			//ADC FIFO写停止
			XGpio_DiscreteClear(&Gpio, 1, 1<<1);

			RX_ready = 1;
		}

		if(RxDone)
		{
			//确保cache的数据都进入DDR
			Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
			RxDone=0;

			//重置，准备下一帧
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



//ADC4249 SPI控制程序



//通过TCP上传数据采集结果
//源地址是：*RxBufferPtr
//固定总长度是14000个采样
//tpk:总包数，npk：当前第X包，len：当前包字节数，满帧为800
void lwip_sendoneframe(u8 tpk,u8 npk,u16 len)
{
	MsgTxlwip[0] = 0x6A;   //三字节帧头
	MsgTxlwip[1] = 0x3D;
	MsgTxlwip[2] = 0x0C;
	MsgTxlwip[3] = 0x00;   //NULL
	MsgTxlwip[4] = 0x00;   //NULL
	MsgTxlwip[5] = tpk;   //总包数
	MsgTxlwip[6] = npk;   //第X包
	MsgTxlwip[7] = len/256;   //本包字节数，H8
	MsgTxlwip[8] = len%256;   //本包字节数，L8
	MsgTxlwip[9] = 0xCC;

	for(i=0;i<len;i++) {
		MsgTxlwip[10+i] = *(RxBufferPtr+(npk-1)*800+i);
	}
	MsgTxlwipLen = len+10;
//	MsgTxlwip[7] = MsgTxlwipLen/256;   //本包字节数，H8
//	MsgTxlwip[8] = MsgTxlwipLen%256;   //本包字节数，L8

	if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
		err = tcp_write(gPcb, MsgTxlwip, MsgTxlwipLen, 1);
	} else
		xil_printf("no space in tcp_sndbuf\n\r");

	//立即从缓冲区发出
	err = tcp_output(gPcb);
	if (err != ERR_OK) {
		xil_printf("txperf: Error on tcp_output: %d\r\n",err);
	}
}


int main(void)
{
	static float value[3];

	struct ip_addr ipaddr, netmask, gw;

	//基础初始化
	flagLwipConnectEstablish = 0;
	flaglwipRxFrameOK = 0;
	flagDAQBegin = 0;
	flagDAQDone = 0;

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	//初始化平台
	//初始化GPIO
	XGpio_Initialize(&Gpio, AXI_GPIO_DEV_ID);
	XGpio_SetDataDirection(&Gpio, 1, 0);        //设置GPIO的D0为Output

	init_intr_sys();

	//DMA传送允许
	XGpio_DiscreteSet(&Gpio, 1, 1);

	//启动计时器
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

	//无限循环
	while(1) {
		//处理网络数据
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

		//lwip发送已采集数据
		if(flaglwipTaskBusy) {
			//发送adc数据
			if(flaglwipTask_adc==1) {

				if (tcp_sndbuf(gPcb) > 2048) {
					if(numpk==totalpk) {
						lwip_sendoneframe((u8)totalpk,(u8)numpk,Length_ADC-(numpk-1)*Length_PK);

						//任务结束
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

		//DAQ 等待采集完成
		if((flagDAQBegin==1)&&(flagDAQDone==0)) {
			DAQ_WaitDone();
		}

		//DAQ完成采集处理
		//lwip未被占用时
		if((flagDAQBegin==0)&&(flagDAQDone==1)&&(flaglwipTaskBusy==0)) {
			flagDAQBegin = 0;
			flagDAQDone = 0;

			//开始处理数据
			MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process Begin...");
			Lwip_SendMsg();

			//分离数据
			if(1) {
				for(i=0;i<1024;i++) {
					Data_A[i] = *(RxBufferPtr+i*4+1)*256+*(RxBufferPtr+i*4+0);
					if(Data_A[i]>8192) { Data_A[i] = Data_A[i]-16384; }

					Data_B[i] = *(RxBufferPtr+i*4+3)*256+*(RxBufferPtr+i*4+2);
					if(Data_B[i]>8192) { Data_B[i] = Data_B[i]-16384; }
				}
			}

			//计算两个序列的三次样条插值系数
			if(1) {
				for(i=0;i<CSI_n;i++) {
					CSI_X[i] = i;
					CSI_F[i] = Data_A[i];
				}
				CSI_GetPara(1);   //计算Data_A序列的拟合系数组

				for(i=0;i<CSI_n;i++) {
					CSI_X[i] = i;
					CSI_F[i] = Data_B[i];
				}
				CSI_GetPara(2);   //计算Data_B序列的拟合系数组
			}
			//执行到这里，费时约几个ms，而不做任何事，费时约50-60ms，这个数据是用信息字符的时间间隔来估算的，后面应该拉LED仔细测

			//插值1000倍
			//这里执行时间大约是310-60=250ms！
			//平均每个插值点的计算时间约0.12us，相当于8MHz多的运算速度
			//由double改为float，时间方面没有任何缩减！
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
			//计算互相关序列



			//处理数据完毕
			MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process END.");
			Lwip_SendMsg();

			//如果需要通过网络上传采集数据，下面括号里写1即可
			if(0) {
				totalpk = Length_ADC/Length_PK;
				if(Length_ADC%Length_PK>0) { totalpk++; }    //计算总包数
				numpk = 1;                  //第一包

				flaglwipTaskBusy = 1;   //置标志，占用lwip发送数据
				flaglwipTask_adc = 1;
			}

		}


		//DAQ采集超时处理
		if((flagDAQBegin==1)&&(flagDAQDone==1)) {
			flagDAQBegin = 0;
			flagDAQDone = 0;

			MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ overtime\r\n");
			Lwip_SendMsg();
		}

		//网络通信接收数据处理
		if(flaglwipRxFrameOK==1) {
			flaglwipRxFrameOK = 0;

			//回环
			if(flagLwipLoopEn) {
				MsgTxlwipLen = MsgRxlwipLen;
				if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
					err = tcp_write(gPcb, MsgRxlwip, MsgTxlwipLen, 1);
				} else
					xil_printf("no space in tcp_sndbuf\n\r");
			}
			//指令集处理
			//启动一次DAQ采集，并回传
			if(MsgRxlwip[0]=='S') {
				flagDAQBegin = 1;
				flagDAQDone = 0;

//				MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ Read Onec...");
//				Lwip_SendMsg();

				oldusec = usec;   //超时判断开始
				DAQ_Readonce();
			}

		}


		//每秒执行一次
		if(flagOneSec==1) {
			flagOneSec = 0;

			//测试对BRAM的读写
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

		    //当网络连接已经建立，发心跳包
			if(flagLwipConnectEstablish) {
				if(flagBeanEn) {
					MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ 1PPS:%d\r\n",usec);
					if (tcp_sndbuf(gPcb) > MsgTxlwipLen) {
						err = tcp_write(gPcb, MsgTxlwip, MsgTxlwipLen, 1);
					} else
						xil_printf("no space in tcp_sndbuf\n\r");

					//立即从缓冲区发出
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


