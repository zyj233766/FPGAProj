
/*
 *
	˵��������ZYNQϵ��SOC�����ݲɼ�������
	���ߣ������д� ���ݸ�
	ʱ�䣺2022��2��
 *
*/

#define PRINT_NET_DEBUG_INFO 0    //������Ƿ����������Ϣ

#define DAQZ30_COUNT_OVERTIME 300000000   //��ʱ���Ƿ�ʱ������

#include "dma_intr.h"
#include "timer_intr.h"
#include "sys_intr.h"
#include "xgpio.h"
#include "math.h"

#include "lwip_init.h"

#include "xparameters.h"
#include "count_ip.h"
#include "MaxdataTrans_ip.h"
#include "xil_io.h"
#include "stdio.h"
#include "sleep.h"
#include "xscutimer.h"
#include "xscugic.h"

#include <stdlib.h>

static XScuGic Intc; //GIC
static  XAxiDma AxiDma;
static  XScuTimer Timer;//timer

volatile u32 RX_success;
volatile u32 TX_success;

volatile u32 RX_ready=1;
volatile u32 TX_ready=1;
volatile u32 ADC_ready=0;

#define TIMER_LOAD_VALUE    166666665 //0.5S
volatile u32 oldTimer;

int Tries = NUMBER_OF_TRANSFERS;
int i,j;
int Index;
u8 *TxBufferPtr= (u8 *)TX_BUFFER_BASE;
u8 *RxBufferPtr=(u8 *)RX_BUFFER_BASE;
u8 Value=0;
float speed_tx;
float speed_rx;
static XGpio Gpio;      //����IO
static XGpio Gpio2;     //�������������

char num_str[20];
char time_str[20];
char TimeSAWF_str[20];
char Frequence_str[20];
char saw_correlationi[20];
char DataA_str[20];
char DataB_str[20];
static char num_table[]={'0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};

#define AXI_GPIO_DEV_ID	        XPAR_AXI_GPIO_0_DEVICE_ID
#define AXI_GPIO2_DEV_ID	        XPAR_AXI_GPIO_1_DEVICE_ID

struct tcp_pcb *gPcb;    //ȫ�ֱ�����������ƿ�
int flagLwipConnectEstablish;
int old_flagLwipConnectEstablish;
int flagLwipLoopEn=0;
int flagBeanEn=0;
int flagSendDataEn=0;     //=1 ÿ�βɼ����������ݣ���ͨ�������ϴ��ɼ����ݡ� =0 ���ϴ�


long long TimeCNT_A,TimeCNT_B,TimeCNT_C;
long long TimeCNT_oldA,TimeCNT_oldB,TimeCNT_oldC;
int TimeCNT_ERR;

unsigned char MsgTxlwip[2048];
unsigned char MsgRxlwip[2048];
int flaglwipRxFrameOK;
int flaglwipTaskBusy=0;
int MsgTxlwipLen;
int MsgRxlwipLen;
int err;
int totalpk;
int numpk;

char c;

#define Length_ADC 1024*4     //Byte
#define Length_PK  800

int DMA_Read_CNT;

int flagAutoRunMode=1;     //=1 �ϵ���Զ����У�=0 ʹ��sָ������һ�����ݲɼ������ݴ���
int flagDAQBegin;
int flagDAQDone;
int oldusec;
int flaglwipTask_adc=0;     //lwip�����־��adc���ݴ���

//���������
float Data_A[1024];     //ԭʼ���ݷ���
float old_Data_A[1024];     //ԭʼ���ݷ���
float Data_B[1024];
float Data_A2[1024];
float Data_B2[1024];
/*
double Data_A_CSI[1024*1024];     //��ֵ10��
double Data_B_CSI[1024*1024];

double xg[1024];

int i10,i1000;

long long maxPos;
double maxData;

double X1[1024],X2[1024],X3[1024];

extern int CSI_n;
extern double CSI_VA;
extern double CSI_VB;

extern double CSI_X[1024];   //�������X��
extern double CSI_F[1024];   //�������Y������

double A_ai,A_bi,A_ci,A_di;
double B_ai,B_bi,B_ci,B_di;

extern double CSI_A_ai[1024];
extern double CSI_A_bi[1024];
extern double CSI_A_ci[1024];
extern double CSI_A_di[1024];

extern double CSI_B_ai[1024];
extern double CSI_B_bi[1024];
extern double CSI_B_ci[1024];
extern double CSI_B_di[1024];
*/
extern void CSI_Init(void);
extern void CSI_GetPara(int CH);
extern float CSI_GetValue(int CH,float x);
extern void CSI_GetValue_Continue(float x,int pos);
double tmpy[9];

#define num_sample 200
#define PI 3.141592653589793
double Fs = 2*pow(10,8);			//����Ƶ��

//70M
double bandpass = 3.5*pow(10,6);		//����
double center_freq = 70*pow(10,6);	//����Ƶ��

//140M
//double bandpass = 7*pow(10,6);		//����
//double center_freq = 140*pow(10,6);	//����Ƶ��

double coefficient;					//ϵ��
int length_rct;						//��ֵ��ĵ���
int multiple = 5;					//�嵽1ns
double Data_A_CSI[2048*2048];
int i2000;
int maxPos;
double maxData;
double Time_SAWF;
double T_time;   //����
double fre_time;   //Ƶ��
double X1[2048],X2[2048],X3[2048];
extern int CSI_n;
extern double CSI_X[2048];   //����������X��
extern double CSI_F[2048];   //����������Y������
double A_ai,A_bi,A_ci,A_di;
extern double CSI_A_ai[2048];
extern double CSI_A_bi[2048];
extern double CSI_A_ci[2048];
extern double CSI_A_di[2048];

int count = 0;
int correction_max=0;
int spline1_max=0;
int spline2_max=0;
int test2;

#define count_ip_BASEADDR XPAR_COUNT_IP_0_S0_AXI_BASEADDR
#define count_ip_reg0 COUNT_IP_S0_AXI_SLV_REG0_OFFSET
#define count_ip_reg1 COUNT_IP_S0_AXI_SLV_REG1_OFFSET
#define count_ip_reg2 COUNT_IP_S0_AXI_SLV_REG2_OFFSET
#define count_ip_reg3 COUNT_IP_S0_AXI_SLV_REG3_OFFSET

#define MaxdataTrans_ip_BASEADDR XPAR_MAXDATATRANS_IP_0_S0_AXI_BASEADDR
#define MaxdataTrans_ip_reg0 MAXDATATRANS_IP_S0_AXI_SLV_REG0_OFFSET
#define MaxdataTrans_ip_reg1 MAXDATATRANS_IP_S0_AXI_SLV_REG1_OFFSET
#define MaxdataTrans_ip_reg2 MAXDATATRANS_IP_S0_AXI_SLV_REG2_OFFSET
#define MaxdataTrans_ip_reg3 MAXDATATRANS_IP_S0_AXI_SLV_REG3_OFFSET

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

	//count ip�˼�����
//	int count = 0;
	int test = 0;
	int start = 0;
	int stop = 0;

	/*
	    wire gpio_rtl_tri_o_3;    //FIFO Rst
	    wire gpio_rtl_tri_o_2;    //FIFO RDEN
	    wire gpio_rtl_tri_o_1;    //FIFO ����ģʽ�л���=0 ����ģʽ��=1 ��ȡģʽ
	    wire gpio_rtl_tri_o_0;    //д��DMA��������
	*/

	//���ò���ģʽ
	XGpio_DiscreteClear(&Gpio, 1, 1<<1);

	//FIFO ��λ
   for(i=0;i<20;i++) { XGpio_DiscreteSet(&Gpio, 1, 1<<3); }
   XGpio_DiscreteClear(&Gpio, 1, 1<<3);

   //���ɲ���
   //��ֵ=230���պ�64us,�ȴ�FIFO����д��ֻ��64us��
   //ȡ60us����
   if(0) {
		for(i=0;i<210;i++) {
			XGpio_DiscreteSet(&Gpio, 1, 1<<1);
		}

		//ADC FIFOдֹͣ
		XGpio_DiscreteClear(&Gpio, 1, 1<<1);
   }

   //�ȴ����ȴ���
   while(1) {
	   TimeCNT_oldA = TimeCNT_A;
	   TimeCNT_oldB = TimeCNT_B;

	   //����һ����Χ�ڵ�ͨ���ԣ�ʹ���������μ�������ֵ������Ϊ�����崥�����ź�
	   //��������λ���ڲ���ʱ�������£��᲻��������32bit�㹻��������4�루250MHz�����£�
	   //��˲����ڼ�����ʼ��=0�������ֻ�����
	   //Ψһ��ȷ�Ĳ�������ǣ���·������������2����ֵ���䣬����û�д���1�롣�������������·������ڷ����㹻�����������²Ŵ���
	   //������������쳣�����Է�������һ·���ԣ�

	   TimeCNT_A = XGpio_DiscreteRead(&Gpio2,1);
	   TimeCNT_B = XGpio_DiscreteRead(&Gpio2,2);

		start=COUNT_IP_mReadReg(count_ip_BASEADDR,count_ip_reg0);
		stop=COUNT_IP_mReadReg(count_ip_BASEADDR,count_ip_reg1);
		count=COUNT_IP_mReadReg(count_ip_BASEADDR,count_ip_reg2);
		test=COUNT_IP_mReadReg(count_ip_BASEADDR,count_ip_reg3);

		correction_max=MAXDATATRANS_IP_mReadReg(MaxdataTrans_ip_BASEADDR,MaxdataTrans_ip_reg0);
		spline1_max=MAXDATATRANS_IP_mReadReg(MaxdataTrans_ip_BASEADDR,MaxdataTrans_ip_reg1);
		spline2_max=MAXDATATRANS_IP_mReadReg(MaxdataTrans_ip_BASEADDR,MaxdataTrans_ip_reg2);
		test2=MAXDATATRANS_IP_mReadReg(MaxdataTrans_ip_BASEADDR,MaxdataTrans_ip_reg3);

	   TimeCNT_ERR = 1;
	   if((TimeCNT_oldA==TimeCNT_A)&&\
		  (TimeCNT_oldB==TimeCNT_B)&&\
		  (TimeCNT_A<DAQZ30_COUNT_OVERTIME)) {
		   TimeCNT_ERR = 0;
		   break;
	   } else {
		   if(TimeCNT_A>DAQZ30_COUNT_OVERTIME) {
			   TimeCNT_ERR = 1;
			   break;
		   }
	   }

   }

   if(TimeCNT_ERR==0&&stop==1) {
	   //��������������
	 //  xil_printf("TimeCNT OK A=%08X B=%08X B-A=%d -- \n",(long)TimeCNT_A,(long)TimeCNT_B,(long)(TimeCNT_B-TimeCNT_A));
	  // xil_printf("count=%d stop=%d test=%d\n",count,stop,test);
	 //  xil_printf("Time_N=%08X\n",(long)TimeCNT_B);
	 //  xil_printf("COUNT=%08X TIME_COUNT=%08X\n",(long)count,(long)TimeCNT_B);
	   //���������Ϣ����PRINT_NET_DEBUG_INFOԤ����
	   MsgTxlwipLen = sprintf(MsgTxlwip,"TimeCNT OK A=%8X B=%8X ",TimeCNT_A,TimeCNT_B);

	   //�л�Ϊ���ݻض�ģʽ
	   XGpio_DiscreteSet(&Gpio, 1, 1<<1);


		if(RX_ready) {
			RX_ready = 0;
			//����һ��DMA Rx����
			Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
					(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);

			if (Status != XST_SUCCESS) {return XST_FAILURE;}

			DMA_Read_CNT=1;
		}
   } else {
	   xil_printf("TimeCNT ERR[Time_N=%l].\n\r",TimeCNT_B);
	   MsgTxlwipLen = sprintf(MsgTxlwip,"\n\rTimeCNT ERR A=%8X B=%8X \n\r",TimeCNT_A,TimeCNT_B);
		//����Ҳ���������Ϣ
	   xil_printf("\n\rTimeCNT ERR Time_N =%8X\n\r",TimeCNT_B);
   }

	#if PRINT_NET_DEBUG_INFO == 1
   		Lwip_SendMsg();
	#endif
}

int DAQ_WaitDone()
{

	int Status;

	if(RxDone==1) {
		//ȷ��DDR���ݶ�����cache
		Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);
		RxDone=0;
		RX_ready=1;
		RX_success++;

		if(DMA_Read_CNT==1) {
			if(RX_ready) {
				RX_ready = 0;
				//����һ��DMA Rx����
				Status = XAxiDma_SimpleTransfer(&AxiDma,(u32)RxBufferPtr,
						(u32)(MAX_PKT_LEN), XAXIDMA_DEVICE_TO_DMA);

				if (Status != XST_SUCCESS) { return XST_FAILURE; }

				DMA_Read_CNT = 2;
			}
		} else if(DMA_Read_CNT==2) {
			DMA_Read_CNT = 0;

			//���ɼ�������־
			flagDAQBegin = 0;
			flagDAQDone = 1;
		}
		//XGpio_DiscreteClear(&Gpio, 1, 1);   //ֹͣDMA����
		//xil_printf( ">>Time=%d Sample OK.\r\n",usec);
	} else {
		if((usec-oldusec)>200) {   //��ʱ2��
			//�ɼ�����
			flagDAQBegin = 1;
			flagDAQDone = 1;
		}
	}

	return XST_SUCCESS;
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
	Timer_init(&Timer,TIMER_LOAD_VALUE/50,0);        //timer�ж�����10ms

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

//doubleת�ַ���
void double2char(char *str, double number, uint8_t g, uint8_t l)
{
    uint8_t i;
    long long temp;
    if(number<0.0) {
    	temp = number/(-1.0);
    } else {
    	temp = number/1.0;
    }
    double t2 = 0.0;
    for (i = 1; i<=g; i++)
    {
        if (temp==0)
            str[g-i] = num_table[0];
        else
            str[g-i] = num_table[temp%10];
        temp = temp/10;
    }
    *(str+g) = '.';
    temp = 0;

    if(number<0.0) {
    	t2 = number*(-1.0);
    } else {
    	t2 = number;
    }

    for(i=1; i<=l; i++)
    {
        temp = t2*10;
        str[g+i] = num_table[temp%10];
        t2 = t2*10;
    }
    *(str+g+l+1) = '\0';

    if(number<0.0) { str[0] = '-'; }
}


int main(void)
{
	static float value[3];
	length_rct = (num_sample -1)*multiple+1;

	double saw_rct1[length_rct];			//�ؽ��ź�1
	double saw_rct2[length_rct];			//�ؽ��ź�2

	double t_nt;
	double sinc_term = 0;
	double saw_correlation[length_rct];

	char c;
	int p;

	struct ip_addr ipaddr, netmask, gw;

	//������ʼ��
	flagLwipConnectEstablish = 0;
	flaglwipRxFrameOK = 0;
	flagDAQBegin = 0;
	flagDAQDone = 0;
	coefficient=2*bandpass*(1/Fs);

	/* the mac address of the board. this should be unique per board */
	unsigned char mac_ethernet_address[] =
	{ 0x00, 0x0a, 0x35, 0x00, 0x01, 0x02 };

	//��ʼ��ƽ̨
	//��ʼ��GPIO
	XGpio_Initialize(&Gpio, AXI_GPIO_DEV_ID);
	XGpio_SetDataDirection(&Gpio, 1, 0);        //����GPIO��D0ΪOutput

	XGpio_Initialize(&Gpio2, AXI_GPIO2_DEV_ID);
	XGpio_SetDataDirection(&Gpio2, 1, 0xFFFFFFFF); 	 //2��ͨ��
	XGpio_SetDataDirection(&Gpio2, 2, 0xFFFFFFFF);

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
	xil_printf("IMPORTANT!!--Use Ext. input Freq 10MHz.\n\r");
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

	xil_printf("After power the DAQ is set AUTO_RUN and NOT_SEND_DATA\r\n");
	xil_printf("Send 'A0;' to set MANUAL_RUN\r\n");
	xil_printf("Send 'S;' on network to trig onec DAQ at MANUAL_RUN\r\n");
	xil_printf("Send 'A1;' to set AUTO_RUN\r\n");
	xil_printf("Send 'A2;' to set TIMER_RUN, DAQ run onec per sec.\r\n");
	xil_printf("Send 'M0;' to set NOT_SEND_DATA on NET\r\n");
	xil_printf("Send 'M1;' to set SEND_DATA on NET\r\n");

	//Xil_DCacheInvalidateRange((u32)RxBufferPtr, MAX_PKT_LEN);

	//�������1024������пռ�
	//����������1024��Ҫ�ǵ����ͷţ����������룻
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
						//xil_printf("Lwip send data %d pack end.\n\r",totalpk);
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

			//��ʼ��������
			#if PRINT_NET_DEBUG_INFO == 1
				MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process Begin...\n\r");
				Lwip_SendMsg();
			#endif

			//xil_printf("Data Process Begin...\r\n");

			oldTimer = usec;

			//��������
			if(1)
			{
				//����MATLAB����������������Ч����,CH A��Ϊ������صı������ݣ�Ҫ������չ20�������㣻
				//CH Aʹ��200��
				for(i=690;i<890;i++)
				{
					Data_A[i-690] = *(RxBufferPtr+i*4+1)*256+*(RxBufferPtr+i*4+0);
					Data_A2[i-690]=Data_A[i-690];
					if(Data_A[i-690]>8192)
					{
						Data_A[i-690] = Data_A[i-690]-16384;
					}
					Data_A[i-690] = Data_A[i-690]*(1.0/2000.0);
				}

				for(i=690;i<930;i++)
				{
					Data_A2[i-690] = *(RxBufferPtr+i*4+1)*256+*(RxBufferPtr+i*4+0);
				}
				for(i=700;i<920;i++)
				{
					Data_B2[i-700] = *(RxBufferPtr+i*4+3)*256+*(RxBufferPtr+i*4+2);
				}
				for(i=220;i<240;i++)
				{
					Data_B2[i] = 0;
				}

				//CH Bʹ��200��
				for(i=710;i<910;i++)
				{
					Data_B[i-710] = *(RxBufferPtr+i*4+3)*256+*(RxBufferPtr+i*4+2);
					Data_B2[i-710]=Data_B[i-710];
					if(Data_B[i-710]>8192)
					{
						Data_B[i-710] = Data_B[i-710]-16384;
					}
					Data_B[i-710] = Data_B[i-710]*(1.0/2000.0);
				}
			}
			//SINC��ֵ
			for( i = 1; i<length_rct+1; i++)
			{
				saw_rct1[i-1]=0;
				saw_rct2[i-1]=0;
				for(j = 1; j<num_sample+1; j++)
				{
					t_nt = (1+(double)(i-1)/multiple-j)/Fs;
					if (t_nt == 0)
						sinc_term = 1;
					else
						sinc_term = sin(PI*bandpass*t_nt)/(PI*bandpass*t_nt);
					saw_rct1[i-1] = saw_rct1[i-1] + Data_A[j-1]*sinc_term*cos(2*PI*center_freq*t_nt);
					saw_rct2[i-1] = saw_rct2[i-1] + Data_B[j-1]*sinc_term*cos(2*PI*center_freq*t_nt);
				}
				saw_rct1[i-1] = coefficient*saw_rct1[i-1];
				saw_rct2[i-1] = coefficient*saw_rct2[i-1];
			}
			//SINC��ֵ�����л����
			for( i=0; i<length_rct; i++)
			{
				saw_correlation[i] = 0;
				for ( j=0; j<length_rct-i; j++)
				{
					saw_correlation[i] = saw_correlation[i] + saw_rct1[i+j]*saw_rct2[j];
				}
				saw_correlation[i] = saw_correlation[i];
			}
			// ����������ֵ����غ���
			CSI_n = 500;
			for( i=0;i<CSI_n;i++)
			{
				CSI_X[i] = i;
				CSI_F[i] = saw_correlation[i];
			}
			CSI_GetPara(1);
			for( i=0; i<2000; i++)
			{
				X1[i] = i*0.0005f;
				X2[i] = X1[i]*X1[i];
				X3[i] = X2[i]*X1[i];
			}
			for( i=0; i<CSI_n-1; i++)
			{
				i2000 = i*2000;
				A_ai = CSI_A_ai[i];
				A_bi = CSI_A_bi[i];
				A_ci = CSI_A_ci[i];
				A_di = CSI_A_di[i];
				for( j=0; j<2000; j++)
				{
					Data_A_CSI[i2000+j] =   A_ai + A_bi * X1[j] + A_ci * X2[j] + A_di * X3[j];
				}
			}
			//�ҵ����ֵ����λ��
			maxData = 0;
			for(int i=0; i<CSI_n*2000; i++)
			{
				if(maxData<Data_A_CSI[i])
				{
					maxPos = i;
					maxData = Data_A_CSI[i];
				}
			}
			//�����ps��
			//maxData=((maxPos-200000)-(TimeCNT_B-TimeCNT_A)*10000)*0.500000000000000000;

			Time_SAWF=(maxPos-200000)*0.500000000000000000;
			maxData=((maxPos-200000)+TimeCNT_A*10000)*0.500000000000000000;
			T_time=maxData/count;
			fre_time=1000000000000.000000000/T_time;
			//�����������
			double2char(num_str,maxData,14,2);
			double2char(time_str,T_time,14,6);
			double2char(Frequence_str,fre_time,8,6);
			double2char(TimeSAWF_str,Time_SAWF,14,2);
			//����������  correction_max

			xil_printf("COUNT=%08X  TIME_COUNT=%08X POS= %d TIME_SAWF=%s TIME_n=%s TIME_1=%s frequence=%s\r",(long)count,(long)TimeCNT_A,maxPos,TimeSAWF_str,num_str,time_str,Frequence_str);
			//xil_printf("correction_max=%08X spline1_max=%08X spline2_max=%08X test=%08X \r",(long)correction_max,(long)spline1_max,(long)spline2_max,(long)test2);
//			scanf("%c",&c);
//			if(c=='c'){
//				xil_printf("start��\r\n");
//				for( i=0; i<240; i++)
//				{
//					double2char(DataA_str,Data_A2[i],6,0);
//					double2char(DataB_str,Data_B2[i],6,0);
//					xil_printf("dataA is %s dataB is %s\r",DataA_str,DataB_str);
//				}
//				xil_printf("stop��\r\n");
//			}

//			if(c=='c'){
//				xil_printf("start��\r\n");
//				for( i=0; i<length_rct; i++)
//				{
//					double2char(saw_correlationi,saw_correlation[i],3,16);
//					xil_printf("data is %s\r",saw_correlationi);
//				}
//				xil_printf("stop��\r\n");
//			}

			#if PRINT_NET_DEBUG_INFO == 1
				MsgTxlwipLen = sprintf(MsgTxlwip,"Data Process END[dTime=%dms].\n\r",(usec-oldTimer)*10);
				Lwip_SendMsg();
			#endif

			//�ñ��βɼ������ݴ���������־
			flagDAQBegin = 0;
			flagDAQDone = 0;

			//�����Ҫͨ�������ϴ��ɼ�����
			if(flagSendDataEn==0) {
				totalpk = Length_ADC/Length_PK;
				if(Length_ADC%Length_PK>0) { totalpk++; }    //�����ܰ���
				numpk = 1;                  //��һ��

				flaglwipTaskBusy = 1;   //�ñ�־��ռ��lwip��������
				flaglwipTask_adc = 1;
			}

		}

		//DAQ�ɼ���ʱ����
		if((flagDAQBegin==1)&&(flagDAQDone==1)) {
			//�ñ��βɼ������ݴ���������־
			flagDAQBegin = 0;
			flagDAQDone = 0;

			xil_printf("\n\rTimeCNT ERR OVERTIME");
			#if PRINT_NET_DEBUG_INFO == 1
				MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ OVERTIME\r\n");
				Lwip_SendMsg();
			#endif

		}

		//�ϵ�Ĭ�����Զ�����ģʽ
		if((flagDAQBegin==0)&&(flagDAQDone==0)&&(flagAutoRunMode==1)) {
			flagDAQBegin = 1;
			flagDAQDone = 0;

			oldusec = usec;   //��ʱ�жϿ�ʼ
			DAQ_Readonce();
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

			//�ϵ����ģʽ
			//A0 = �˹�ģʽ
			//A1 = �Զ�ģʽ���ϵ�Ĭ�ϣ���һ��ִ��������ż���ִ��
			//A2 = ��ʱģʽ��ÿ��1��
			if(MsgRxlwip[0]=='A') {
				if(MsgRxlwip[1]=='2') {	flagAutoRunMode = 2; }
				if(MsgRxlwip[1]=='1') {	flagAutoRunMode = 1; }
				if(MsgRxlwip[1]=='0') {	flagAutoRunMode = 0; }
			}

			//���ݴ������Ƿ��ϴ��ɼ�����
			//M0 = ���ϴ���Ĭ�ϣ�
			//M1 = �ϴ�
			if(MsgRxlwip[0]=='M') {
				if(MsgRxlwip[1]=='1') {	flagSendDataEn = 1; }
				if(MsgRxlwip[1]=='0') {	flagSendDataEn = 0; }
			}

			//�˹�ģʽ�£�����һ��DAQ�ɼ������ش�
			if(MsgRxlwip[0]=='S') {
				if(flagAutoRunMode==0) {
					flagDAQBegin = 1;
					flagDAQDone = 0;

					#if PRINT_NET_DEBUG_INFO == 1
						MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ Run Once\r\n");
						Lwip_SendMsg();
					#endif

					oldusec = usec;   //��ʱ�жϿ�ʼ
					DAQ_Readonce();
				}
			}

		}


		//ÿ��ִ��һ��
		if(flagOneSec==1) {
			flagOneSec = 0;

//			//���Զ�BRAM�Ķ�д
//			if(1) {
//				volatile float *LocalAddr;
//				LocalAddr = (float *)(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*0);
//				for(i = 0 ; i < 40 ; i=i+4) {
//					LocalAddr =  LocalAddr + i;
//					*LocalAddr = i*3.8764f;
//
//					//Xil_Out32(XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*i, i*3.8764f);
//				}
//
//
//				value[0] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*0);
//				value[1] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*5);
//				value[2] = *(float *) (XPAR_AXI_BRAM_CTRL_0_S_AXI_BASEADDR + 4*9);
//				MsgTxlwipLen = sprintf(MsgTxlwip,"Data[0]=%.5f Data[1]=%.5f Data[2]=%.5f \r\n",value[0],value[1],value[2]);
//				Lwip_SendMsg();
//			}

		    //�����������Ѿ���������������
			if(flagLwipConnectEstablish) {
				if(flagBeanEn) {
					MsgTxlwipLen = sprintf(MsgTxlwip,"DAQ 1PPS:%d\r\n",usec);
					Lwip_SendMsg();
				}
			}

			//��ʱģʽ��ִ�����ݲɼ������ݴ���
			if(flagAutoRunMode==2) {
				flagDAQBegin = 1;
				flagDAQDone = 0;

				oldusec = usec;   //��ʱ�жϿ�ʼ
				DAQ_Readonce();
			}
		}
	}
	//axi_dma_test();

}

