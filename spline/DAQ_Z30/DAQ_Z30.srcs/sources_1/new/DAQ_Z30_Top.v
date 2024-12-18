`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/25 22:38:59
// Design Name: 
// Module Name: DAQ_Z30_Top
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


(* USE_DSP = "yes" *)module DAQ_Z30_Top #(
    parameter POINT_NUM_X = 240,  // 一共多少个点
    parameter POINT_NUM_Y = 220,
    parameter SAMPLE_BIT = 16, // 采样位数
    parameter  INSERT_NUM = 16  // 插值后每段区间一共多少个点    
)(
    ADC_CLKin_N,
    ADC_CLKin_P,
    ADC_DA0N,
    ADC_DA0P,
    ADC_DA10N,
    ADC_DA10P,
    ADC_DA12N,
    ADC_DA12P,
    ADC_DA2N,
    ADC_DA2P,
    ADC_DA4N,
    ADC_DA4P,
    ADC_DA6N,
    ADC_DA6P,
    ADC_DA8N,
    ADC_DA8P,
    ADC_DB0N,
    ADC_DB0P,
    ADC_DB10N,
    ADC_DB10P,
    ADC_DB12N,
    ADC_DB12P,
    ADC_DB2N,
    ADC_DB2P,
    ADC_DB4N,
    ADC_DB4P,
    ADC_DB6N,
    ADC_DB6P,
    ADC_DB8N,
    ADC_DB8P,
    ADS_Reset,
    ADS_SCLK,
    ADS_SData,
    ADS_SEN,
    DDR_addr,
    DDR_ba,
    DDR_cas_n,
    DDR_ck_n,
    DDR_ck_p,
    DDR_cke,
    DDR_cs_n,
    DDR_dm,
    DDR_dq,
    DDR_dqs_n,
    DDR_dqs_p,
    DDR_odt,
    DDR_ras_n,
    DDR_reset_n,
    DDR_we_n,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    LED1,
    LED2,
    LED3,
    MCU_D0_ADCReset,
    MCU_D1_ADCSCLK,
    MCU_D2_ADCSData,
    MCU_D3_ADCSen,
//    S_AXIS_tdata,
//    S_AXIS_tkeep,
//    S_AXIS_tlast,
//    S_AXIS_tready,
//    S_AXIS_tvalid,
    clkin_10MHz_N,
    clkin_10MHz_P,
    clkout_250M_N,
    clkout_250M_P,
    gate_out,
//    gpio_rtl_tri_o,
//    peripheral_aresetn,
//    s_axis_aclk,
//    s_axis_aresetn,
    input_fx,
    uart_rx,
    uart_tx,
    MaxIndex1,
    MaxIndex2,
    MaxIndex3,
    MaxValue
);
output [79:0]   MaxValue;
  output [31:0] MaxIndex1;
 output  [31:0] MaxIndex2;
 output  [31:0] MaxIndex3;

  input ADC_CLKin_N;
  input ADC_CLKin_P;
  input ADC_DA0N;
  input ADC_DA0P;
  input ADC_DA10N;
  input ADC_DA10P;
  input ADC_DA12N;
  input ADC_DA12P;
  input ADC_DA2N;
  input ADC_DA2P;
  input ADC_DA4N;
  input ADC_DA4P;
  input ADC_DA6N;
  input ADC_DA6P;
  input ADC_DA8N;
  input ADC_DA8P;
  input ADC_DB0N;
  input ADC_DB0P;
  input ADC_DB10N;
  input ADC_DB10P;
  input ADC_DB12N;
  input ADC_DB12P;
  input ADC_DB2N;
  input ADC_DB2P;
  input ADC_DB4N;
  input ADC_DB4P;
  input ADC_DB6N;
  input ADC_DB6P;
  input ADC_DB8N;
  input ADC_DB8P;
  output [0:0]ADS_Reset;
  output [0:0]ADS_SCLK;
  output ADS_SData;
  output [0:0]ADS_SEN;
  inout [14:0]DDR_addr;
  inout [2:0]DDR_ba;
  inout DDR_cas_n;
  inout DDR_ck_n;
  inout DDR_ck_p;
  inout DDR_cke;
  inout DDR_cs_n;
  inout [3:0]DDR_dm;
  inout [31:0]DDR_dq;
  inout [3:0]DDR_dqs_n;
  inout [3:0]DDR_dqs_p;
  inout DDR_odt;
  inout DDR_ras_n;
  inout DDR_reset_n;
  inout DDR_we_n;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  output LED1;
  output LED2;
  output LED3;
  input MCU_D0_ADCReset;
  input MCU_D1_ADCSCLK;
  input MCU_D2_ADCSData;
  input MCU_D3_ADCSen;
//  input [31:0]S_AXIS_tdata;
//  input [3:0]S_AXIS_tkeep;
//  input S_AXIS_tlast;
//  output S_AXIS_tready;
//  input S_AXIS_tvalid;
  input clkin_10MHz_N;
  input clkin_10MHz_P;
  output clkout_250M_N;
  output clkout_250M_P;
//  output [0:0]gpio_rtl_tri_o;
//  output [0:0]peripheral_aresetn;
//  input s_axis_aclk;
//  input s_axis_aresetn;
  input input_fx;
  input uart_rx;
  output uart_tx;
  output gate_out;

    reg [1:0] stateDMA;
    reg [15:0] fifo_rd_count;
    
    reg [31:0]S_AXIS_tdata;
    reg  S_AXIS_tlast;
    reg  S_AXIS_tvalid; 
    wire FCLK_CLK0;
    wire s_axis_aclk;
    wire s_axis_aresetn;
    wire [3:0]S_AXIS_tkeep;
    wire S_AXIS_tready;
    //wire [0:0]gpio_rtl_tri_o;
    wire [0:0]peripheral_aresetn;
    
    wire [13:0] DataA_FIFO_RDdata;
    wire [13:0] DataB_FIFO_RDdata;
    wire [13:0] AuxFifo_DataAOut;
    wire [13:0] AuxFifo_DataBOut;
    
    wire MainFIFO_WR_CLK;
    wire FIFO_Clk;
    
    wire Data_FIFO_Rst;
    reg DataA_FIFO_RDEn;
    reg DataB_FIFO_RDEn;
    wire Data_FIFO_WREn_A;
    wire Data_FIFO_WREn_B;
    wire DataA_FIFO_ProgFull;
    wire DataB_FIFO_ProgFull;
    
    reg TimeCNTEn_A;
    reg TimeCNTEn_B;
    reg TimeCNTEn_C;
    
    reg [31:0] TimeCNT_A;
    reg [31:0] TimeCNT_B;
    reg [31:0] TimeCNT_C;
    
    reg TimeCNTEn_C_d1;
    reg TimeCNTEn_C_d2;
    reg TimeCNTEn_C_d3;
	
	reg TimeCNTEn_A_d1;
	reg TimeCNTEn_A_d2;
	reg TimeCNTEn_A_d3;
    wire  TimeCNTEn_A_pose;       // 上升沿
    wire  TimeCNTEn_A_nege;       // 下降沿

    wire [31:0] gpio_in_TimeCNT_A;
    wire [31:0] gpio_in_TimeCNT_B;
    
    wire gpio_rtl_tri_i_7;
    wire gpio_rtl_tri_i_6;
    wire gpio_rtl_tri_i_5;
    wire gpio_rtl_tri_i_4;
    wire gpio_rtl_tri_i_3;
    wire gpio_rtl_tri_i_2;
    wire gpio_rtl_tri_i_1;
    wire gpio_rtl_tri_i_0;

    wire gpio_rtl_tri_o_7;
    wire gpio_rtl_tri_o_6;
    wire gpio_rtl_tri_o_5;
    wire gpio_rtl_tri_o_4;
    wire gpio_rtl_tri_o_3;    //FIFO Rst
    wire gpio_rtl_tri_o_2;    //FIFO RDEN
    wire gpio_rtl_tri_o_1;    //FIFO WREN
    wire gpio_rtl_tri_o_0;    //写入DMA数据允许
    
    wire gate_out;
    wire input_fx;
    
    wire start;
    wire stop;
    wire [31:0]IN_CNTA;
    wire [31:0]IN_CNTB;
    wire [31:0]IN_CNTC;
    wire IN_CNTEN;
    wire IN_START;
    wire IN_STOP;

// CCC

    //wire [80 * OutputNum - 1 : 0] RelevantFunc;
    wire ready3;
    wire CCC_Rst;
    
  design_1 design_1_i
       (.ADC_CLKin_N(ADC_CLKin_N),
        .ADC_CLKin_P(ADC_CLKin_P),
        .ADC_DA0N(ADC_DA0N),
        .ADC_DA0P(ADC_DA0P),
        .ADC_DA10N(ADC_DA10N),
        .ADC_DA10P(ADC_DA10P),
        .ADC_DA12N(ADC_DA12N),
        .ADC_DA12P(ADC_DA12P),
        .ADC_DA2N(ADC_DA2N),
        .ADC_DA2P(ADC_DA2P),
        .ADC_DA4N(ADC_DA4N),
        .ADC_DA4P(ADC_DA4P),
        .ADC_DA6N(ADC_DA6N),
        .ADC_DA6P(ADC_DA6P),
        .ADC_DA8N(ADC_DA8N),
        .ADC_DA8P(ADC_DA8P),
        .ADC_DB0N(ADC_DB0N),
        .ADC_DB0P(ADC_DB0P),
        .ADC_DB10N(ADC_DB10N),
        .ADC_DB10P(ADC_DB10P),
        .ADC_DB12N(ADC_DB12N),
        .ADC_DB12P(ADC_DB12P),
        .ADC_DB2N(ADC_DB2N),
        .ADC_DB2P(ADC_DB2P),
        .ADC_DB4N(ADC_DB4N),
        .ADC_DB4P(ADC_DB4P),
        .ADC_DB6N(ADC_DB6N),
        .ADC_DB6P(ADC_DB6P),
        .ADC_DB8N(ADC_DB8N),
        .ADC_DB8P(ADC_DB8P),
        .ADS_Reset(ADS_Reset),
        .ADS_SCLK(ADS_SCLK),
        .ADS_SData(ADS_SData),
        .ADS_SEN(ADS_SEN),
        .DDR_addr(DDR_addr),
        .DDR_ba(DDR_ba),
        .DDR_cas_n(DDR_cas_n),
        .DDR_ck_n(DDR_ck_n),
        .DDR_ck_p(DDR_ck_p),
        .DDR_cke(DDR_cke),
        .DDR_cs_n(DDR_cs_n),
        .DDR_dm(DDR_dm),
        .DDR_dq(DDR_dq),
        .DDR_dqs_n(DDR_dqs_n),
        .DDR_dqs_p(DDR_dqs_p),
        .DDR_odt(DDR_odt),
        .DDR_ras_n(DDR_ras_n),
        .DDR_reset_n(DDR_reset_n),
        .DDR_we_n(DDR_we_n),
        .DataA_FIFO_RDdata(DataA_FIFO_RDdata),
        .DataB_FIFO_RDdata(DataB_FIFO_RDdata),
        .AuxFifo_DataAOut(AuxFifo_DataAOut),
        .AuxFifo_DataBOut(AuxFifo_DataBOut),
        .MainFIFO_WR_CLK(MainFIFO_WR_CLK),
        .FIFO_Clk(FIFO_Clk),
        .gpio_in_TimeCNT_A(gpio_in_TimeCNT_A),
        .gpio_in_TimeCNT_B(gpio_in_TimeCNT_B),
        .DataA_FIFO_RDEn(DataA_FIFO_RDEn),
        .DataB_FIFO_RDEn(DataB_FIFO_RDEn),
        .Data_FIFO_Rst(Data_FIFO_Rst),
        .Data_FIFO_WREn_A(Data_FIFO_WREn_A),
        .Data_FIFO_WREn_B(Data_FIFO_WREn_B),
        .DataA_FIFO_ProgFull(DataA_FIFO_ProgFull),
        .DataB_FIFO_ProgFull(DataB_FIFO_ProgFull),
        .FCLK_CLK0(FCLK_CLK0),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .LED1(LED1),
        .LED2(LED2),
        .LED3(LED3),
        .MCU_D0_ADCReset(MCU_D0_ADCReset),
        .MCU_D1_ADCSCLK(MCU_D1_ADCSCLK),
        .MCU_D2_ADCSData(MCU_D2_ADCSData),
        .MCU_D3_ADCSen(MCU_D3_ADCSen),
        .S_AXIS_tdata(S_AXIS_tdata),
        .S_AXIS_tkeep(S_AXIS_tkeep),
        .S_AXIS_tlast(S_AXIS_tlast),
        .S_AXIS_tready(S_AXIS_tready),
        .S_AXIS_tvalid(S_AXIS_tvalid),
        .clkin_10MHz_N(clkin_10MHz_N),
        .clkin_10MHz_P(clkin_10MHz_P),
        .clkout_250M_N(clkout_250M_N),
        .clkout_250M_P(clkout_250M_P),
        .gate_out(gate_out),
        .gpio_rtl_tri_i({gpio_rtl_tri_i_7,gpio_rtl_tri_i_6,gpio_rtl_tri_i_5,gpio_rtl_tri_i_4,gpio_rtl_tri_i_3,gpio_rtl_tri_i_2,gpio_rtl_tri_i_1,gpio_rtl_tri_i_0}),
        .gpio_rtl_tri_o({gpio_rtl_tri_o_7,gpio_rtl_tri_o_6,gpio_rtl_tri_o_5,gpio_rtl_tri_o_4,gpio_rtl_tri_o_3,gpio_rtl_tri_o_2,gpio_rtl_tri_o_1,gpio_rtl_tri_o_0}),
        .gpio_rtl_tri_t({gpio_rtl_tri_t_7,gpio_rtl_tri_t_6,gpio_rtl_tri_t_5,gpio_rtl_tri_t_4,gpio_rtl_tri_t_3,gpio_rtl_tri_t_2,gpio_rtl_tri_t_1,gpio_rtl_tri_t_0}),
       .input_fx(input_fx),
        .peripheral_aresetn(peripheral_aresetn),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .start(start),
        .stop(stop),
        .IN_CNTA(IN_CNTA),
        .IN_CNTB(IN_CNTB),
        .IN_CNTC(IN_CNTC),
        .IN_CNTEN(IN_CNTEN),
        .IN_START(IN_START),
        .IN_STOP(IN_STOP),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx));

        /*
            wire gpio_rtl_tri_o_3;    //FIFO Rst
            wire gpio_rtl_tri_o_2;    //FIFO RDEN
            wire gpio_rtl_tri_o_1;    //FIFO 工作模式切换，=0 捕获模式，=1 读取模式
            wire gpio_rtl_tri_o_0;    //写入DMA数据允许
        */     
        
           //FIFO组的时钟选择，用于捕获--高速时钟，和回读--低速时钟两种情况
        //   BUFGMUX_CTRL BUFGMUX_CTRL_inst (
        //        .O(FIFO_Clk),   // 1-bit output: Clock output
        //        .I0(MainFIFO_WR_CLK), // 1-bit input: Clock input (S=0)
        //        .I1(FCLK_CLK0), // 1-bit input: Clock input (S=1)
        //        .S(gpio_rtl_tri_o_1)    // 1-bit input: Clock select
        //    );
           assign FIFO_Clk = MainFIFO_WR_CLK;    //全部使用250M
       
           //FIFO的WR、Rst信号，需要由WR时钟下跳沿同步
           //两个FIFO_WR、时间计数器的En信号
           assign Data_FIFO_WREn_A = TimeCNTEn_A;
           assign Data_FIFO_WREn_B = TimeCNTEn_B;
           assign Data_FIFO_Rst = gpio_rtl_tri_o_3;
		   assign CCC_Rst=~Data_FIFO_Rst;
		   
		   assign IN_CNTA = TimeCNT_A;  
		   assign IN_CNTB = TimeCNT_B;
		   assign IN_CNTC = TimeCNT_C;
		   assign IN_CNTEN = TimeCNTEn_C_d2;
		   assign IN_START = start;
		   assign IN_STOP = stop;
		   
		   	 
    always @(posedge FIFO_Clk)
           begin           
               if(Data_FIFO_Rst)
               begin
                   TimeCNTEn_B <= 1'b1;
                   TimeCNTEn_A <= 1'b1;
                   TimeCNTEn_C <= 1'b0;
               end
               else
               begin
                   if((AuxFifo_DataAOut>=14'd600)&&(AuxFifo_DataAOut[13]==0)&&(start==1))
                   begin
                       TimeCNTEn_A <= 1'b0;
                       TimeCNTEn_C <= 1'b1;
                   end
                   
                   if((AuxFifo_DataBOut>=14'd600)&&(AuxFifo_DataBOut[13]==0)&&(stop==1))
                   begin
                       TimeCNTEn_B <= 1'b0;
                       TimeCNTEn_C <= 1'b0;
                   end            
       
               end
       
               if(gpio_rtl_tri_o_1)
               begin
                   DataA_FIFO_RDEn <= S_AXIS_tready;    //FIFO读取模式下，RD信号由DMA控制
                   DataB_FIFO_RDEn <= S_AXIS_tready;
               end
               else
               begin
                   DataA_FIFO_RDEn <= (DataA_FIFO_ProgFull & TimeCNTEn_A);   //实测中发现有时候FIFO的prog_full控制信号会失灵，导致内部数据提前被读出   
                   DataB_FIFO_RDEn <= (DataB_FIFO_ProgFull & TimeCNTEn_B);
               end        
               
               
           end
   
        always @(posedge FIFO_Clk)     
          begin
              if(Data_FIFO_Rst)
              begin
                  TimeCNTEn_C_d1 <= 1'b0;
                  TimeCNTEn_C_d2 <= 1'b0;
                  TimeCNTEn_C_d3 <= 1'b0;
              end
              else begin
                  TimeCNTEn_C_d1 <= TimeCNTEn_C;
                  TimeCNTEn_C_d2 <= TimeCNTEn_C_d1;
                  TimeCNTEn_C_d3 <= TimeCNTEn_C_d2;
              end
          end
       
           //捕获时间计数器     
           assign gpio_in_TimeCNT_A = TimeCNT_C;
           assign gpio_in_TimeCNT_B = TimeCNT_B;
                 
           always @(posedge FIFO_Clk)     
           begin
               if(Data_FIFO_Rst)
               begin
                   TimeCNT_A <= 32'd0;
                   TimeCNT_B <= 32'd0;
                   TimeCNT_C <= 32'd0;
               end
               else
               begin
                   if(TimeCNTEn_A)
                   begin
                       TimeCNT_A <= TimeCNT_A + 32'd1;
                   end
                   
                   if(TimeCNTEn_B)
                   begin
                       TimeCNT_B <= TimeCNT_B + 32'd1;
                   end
                   
                   if(TimeCNTEn_C_d2)
                   begin
                       TimeCNT_C <= TimeCNT_C + 32'd1;
                   end
               end
           end
                
           assign S_AXIS_tkeep = 4'b1111;  
           //assign s_axis_aclk =  FCLK_CLK0;
           assign s_axis_aclk =  MainFIFO_WR_CLK;          //全部使用250M
           assign s_axis_aresetn = peripheral_aresetn;
        




wire enable3;
wire enable4;



// 三次样条插值
genvar k1;
generate
    for(k1 = 0; k1 < 4; k1 = k1 + 1) begin:BLOCK
        //localparam POINT_NUM = (k1 == 0 ? POINT_NUM_X : POINT_NUM_Y);
        localparam POINT_NUM = (k1 == 0 ? 1 : 0) * POINT_NUM_X + (k1 == 1 ? 1 : 0) * POINT_NUM_Y
                    + (k1 >= 2 ? 1 : 0) * 10;
                    
        
        localparam  MAXINSERTINDEX = INSERT_NUM * (POINT_NUM - 1);
        localparam  INT_BITSIZE = SAMPLE_BIT + 4;
        localparam  DEC_BITSIZE = 12;
        
        // 整数变量位宽
        localparam  INT_VAR_BITESIZE = (POINT_NUM * INT_BITSIZE);
        localparam  DEC_VAR_BITSIZE = POINT_NUM << 5;
        localparam  WAIT = 0;
        localparam  GETCOE = 1;  // 获取矩阵系数
        localparam  STARTSOLVE = 2;
        localparam  GETPARA = 3;
        localparam  GETMAX = 4;
        localparam  GETINPUT = 5;
        localparam OutputNum = (POINT_NUM_X - POINT_NUM_Y + 1) * INSERT_NUM;
        
           (*ram_style="block"*)reg signed [13: 0] SampleX[0 : POINT_NUM - 1];
           (*ram_style="block"*)reg [31:0] DataX[0 : POINT_NUM * INSERT_NUM - 1];
           reg enable;
           reg ready;
         (*ram_style="block"*)reg [31: 0] m [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] k [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] r [0 : POINT_NUM - 1];
       // a b c y不可能是小数
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] a [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg signed [INT_BITSIZE - 1: 0] b [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] c [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] y [0 : POINT_NUM - 1];
       
        (*ram_style="block"*)reg [31: 0] Ai [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] Bi [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] Ci [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] Di [0 : POINT_NUM - 1];
        
        reg [11:0] IncVal;
        reg [12:0] CntX;
        reg [31: 0] CntVal;
        reg [31: 0] MaxVal;
        
        reg [31 : 0] i;  // 循环变量
        reg enable_d0, enable_d1;
        reg [2:0] state;
        reg [63:0] temp;
        reg [43:0] temp1;
        reg [55:0] temp2;
        reg [67:0] temp3;
        reg [31:0] temp4;
        wire start_flag;
        reg [31:0] MaxIndex;
        
      
           assign start_flag = enable_d0 & ~enable_d1; // 上升沿触发
           // 边沿检测电路
           always @(posedge MainFIFO_WR_CLK) begin
               if(!CCC_Rst) begin
                   enable_d0 <= 1'b0;
                   enable_d1 <= 1'b0;
               end
               else begin
                   enable_d0 <= enable;
                   enable_d1 <= enable_d0;
               end
           end
           
           always @(posedge FIFO_Clk) begin
               if(!CCC_Rst) begin
                   IncVal <= (1 << 12) / INSERT_NUM;
                   CntVal <= 0;
                   MaxVal <= 0;
                   CntX <= 0;
                   MaxIndex <= 0;
                   state <= WAIT;
                   ready <= 1'b0;
               end
               else begin
                   case(state)
                       WAIT:begin
                           if(start_flag == 1'b1) begin
                               state <= GETCOE;
                               ready <= 1'b0;
                           end
                           else
                               state <= state;
                       end
                       GETCOE: begin
                           if(i == 0 || i == POINT_NUM - 1) begin
                               a[i] <= 0;
                               b[i] <= 1;
                               c[i] <= 0;
                               y[i] <= 0;
                           end
                           else if(i < POINT_NUM - 1 && i > 0) begin
                               a[i] <= 1;
                               b[i] <= 4;
                               c[i] <= 1;
                                   y[i] <= $signed(6) * (($signed({SampleX[(i + 1)], 6'd0}) >>> 6)
                                                - $signed(2) * $signed(($signed({SampleX[i], 6'd0}) >>> 6))
                                               + $signed(($signed({SampleX[i - 1], 6'd0}) >>> 6)));
                               end
                           else begin
                               state <= STARTSOLVE;
                           end
                       end
                       STARTSOLVE:begin
                           if(i == 0) begin
                               k[i] <= 0;
                               r[i] <= 0;
                           end
                           else if(i < POINT_NUM && i > 0) begin
                               k[i] <= $signed({c[i][19:0], 24'd0}) / ($signed(({b[i][19:0], 12'd0}
                                                       - (a[i][19:0] * k[i]))));
                                                       
                               r[i] <= (($signed({{y[i][19:0], 12'd0} - ((a[i][19:0] * r[i])),12'd0})))
                                                       / $signed(({b[i][19:0], 12'd0})
                                                       - (a[i][19:0] * k[i]));
                           end
                           else begin
                               //m[POINT_NUM - 1] <= r[POINT_NUM - 1];
                               state <= GETPARA;
                           end
                       end
                       GETPARA:begin
           
                           m[i - 1] <= r[i - 1] - temp[43:12] * (i == POINT_NUM ? 0 : 1);
                           if(i > 0 && i < POINT_NUM) begin
                               temp =  $signed( k[i - 1]) 
                                                   * $signed(m[i]);
                               //m[i - 1] = r[i - 1] - temp[43:12];
                               // 使用算术右移
                                   Ai[i - 1] <= $signed({($signed({SampleX[(i - 1)],6'd0}) >>> 6), 12'd0});
                                   Bi[i - 1] <= $signed({($signed({SampleX[i],6'd0}) >>> 6), 12'd0} - {($signed({SampleX[(i - 1)],6'd0}) >>> 6), 12'd0})
                                                                   - $signed(m[i - 1]) / $signed(2) 
                                                                   - $signed({m[i] - m[i - 1], 12'd0}) / $signed((6 << 12));
                                   Ci[i - 1] <= $signed(m[i - 1]) / $signed(2);
                                   Di[i - 1] <= $signed({m[i] - m[i - 1], 12'd0}) / $signed((6 << 12));                                  
                           end
                           else begin
                               state <= GETMAX;
                           end
                       end
                       GETMAX: begin
                           if(i < MAXINSERTINDEX + 1) begin
                               temp <= (i) / INSERT_NUM;
                               temp1 <= $signed(Bi[temp]) * $signed(CntX);
                               temp2 <= $signed(Ci[temp]) * $signed(CntX) * $signed(CntX);
                               temp3 <= $signed(Di[temp]) * $signed(CntX) * $signed(CntX) * $signed(CntX);
                               temp4 <= Ai[i / INSERT_NUM];
                               CntVal <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
                               if (i > 1) begin
                                    DataX[(i - 2)] <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
                               end
                               if($signed(CntVal) > $signed(MaxVal)) begin
                                   MaxVal <= CntVal;
                                   MaxIndex <= ((i - 2) > 0 ? i - 2 : 0) - 6'd32;                           
                               end
                               else begin
                                   MaxVal <= MaxVal;
                                   MaxIndex <= MaxIndex;
                               end
                               CntX <= {1'd0, CntX[11:0] + IncVal};
                           end
                           else begin
                               state <= WAIT;
                               ready <= 1'b1;
                           end
                       end
                       default:;
                   endcase
               end
           end
           
           // 计数器
           always @(posedge FIFO_Clk) begin
               if(!CCC_Rst)
                   i <= 32'd1;
               else begin
                   case(state)
                       WAIT:begin
                           i <= 32'd0;
                       end
                       GETCOE: begin
                           if(i < POINT_NUM)
                               i <= i + 1'b1;
                           else
                               i <= 32'd0;
                       end
                       STARTSOLVE: begin
                           if(i < POINT_NUM)
                               i <= i + 1'b1;
                           else
                               i <= POINT_NUM;
                       end
                       GETPARA: begin
                           if(i > 32'd0)
                               i <= i - 1'b1;
                           else
                               i <= 32'd0;
                       end
                       GETMAX: begin
                           if(i < MAXINSERTINDEX + 1)
                               i <= i + 1'b1;
                           else
                               i <= 32'd0;
                       end
                       default:;
                   endcase
               end
           end
      end
endgenerate
           
integer j;

        always@(posedge MainFIFO_WR_CLK)    
           begin
              if(!peripheral_aresetn) begin
                  S_AXIS_tvalid <= 1'b0;
                  S_AXIS_tdata <= 32'd0;
                  S_AXIS_tlast <= 1'b0;
                  fifo_rd_count <= 16'b0;
                  stateDMA <=0;
                  BLOCK[0].enable <= 0;
                  BLOCK[1].enable <= 0;
              end
              else begin
                 case(stateDMA)
                   0: begin
                       if(gpio_rtl_tri_o_0 && S_AXIS_tready) begin
                          S_AXIS_tvalid <= 1'b1;
                          stateDMA <= 1;
                       end
                       else begin
                          S_AXIS_tvalid <= 1'b0;
                          stateDMA <= 0;                   
                       end
                     end
                   1:begin
                        if(S_AXIS_tready) begin
                            //更新数据
                            //S_AXIS_tdata <= S_AXIS_tdata + 1'b1;
                            fifo_rd_count <= fifo_rd_count +16'd1;
                            if (fifo_rd_count >= 16'd690 && fifo_rd_count < 16'd930)
                                BLOCK[0].SampleX[(fifo_rd_count - 690)] <= DataA_FIFO_RDdata;
                            
                            if (fifo_rd_count >= 16'd700 && fifo_rd_count < 16'd920)
                                BLOCK[1].SampleX[(fifo_rd_count - 700)] <= DataB_FIFO_RDdata;
                                                 
                            //传输是否结束？
                            //if(fifo_rd_count == 16'd14000) begin     //原来是510-->2048的接收Buf
                            if(fifo_rd_count == 16'd1022) begin        //读取1024点采样
                                BLOCK[0].enable <= 1;
                                BLOCK[1].enable <= 1;
                                //enable2 <= 1'b1;
                               //S_AXIS_tlast <= 1'b1;
                               stateDMA <= 2;
                            end
                            else begin                        
                               S_AXIS_tlast <= 1'b0;
                               stateDMA <= 1;
                            end
                        end
                        else begin
                           fifo_rd_count <= fifo_rd_count;
                           S_AXIS_tdata <= S_AXIS_tdata;                   
                           stateDMA <= 1;
                        end
                     end       
                   2:begin
                        if(!S_AXIS_tready) begin
                           S_AXIS_tvalid <= 1'b1;
                           S_AXIS_tlast <= 1'b1;
                           S_AXIS_tdata <= S_AXIS_tdata;
                           fifo_rd_count <= fifo_rd_count;
                           stateDMA <= 2;
                        end
                        else begin
                           S_AXIS_tvalid <= 1'b0;
                           S_AXIS_tlast <= 1'b0;
                           S_AXIS_tdata <= 32'd0;
                           fifo_rd_count <= 16'd0;
                           stateDMA <= 0;
                        end
                     end
                  default: stateDMA <=0;
                  endcase
              end              
           end      
 
 // 互相关
 genvar k2;
   generate
       for(k2 = 0; k2 < 1; k2 = k2 + 1) begin:CrossCorrelation
            localparam OnceTimes = 1;
            localparam JMax = POINT_NUM_Y * INSERT_NUM / OnceTimes;
            localparam Wait = 0;
            localparam Culculate = 1;
            localparam OutputNum = (POINT_NUM_X - POINT_NUM_Y + 1) * INSERT_NUM;
            reg enable_d0, enable_d1;
            reg state;
            reg [9:0] j,k,k_d0,kk;
            reg [79:0] temp;
            reg [64 * OnceTimes - 1 : 0] temp_sum;
            reg ready;
            reg [79:0] DebugOutput;
            reg [79:0] MaxValue;
            wire start_flag;
            assign start_flag = ~enable_d1 & enable_d0;
            reg [7:0] i;
            reg [79 : 0] StoredValue[0 : 5];
            always @(posedge FIFO_Clk) begin
                if (!CCC_Rst) begin
                    enable_d0 <= 1'b0;
                    enable_d1 <= 1'b0;
                end
                else begin
                    enable_d0 <= enable3;
                    enable_d1 <= enable_d0;
                end
            end
            
            always @(posedge FIFO_Clk) begin
                if (!CCC_Rst) begin
                    state <= Wait;
                    ready <= 1'b0;
                end
                else begin
                    if (start_flag == 1'b1 && state == Wait) begin
                        state <= Culculate;
                        ready <= 1'b0;
                    end
                    else if (k == 0 && k_d0 == OutputNum - 1 && state == Culculate) begin
                        state <= Wait;
                        ready <= 1'b1;
                    end
                    else begin
                        state <= state;
                        ready <= ready;
                    end
                end
            end
            
            
            // 计数器模块
            always @(posedge FIFO_Clk) begin
                if (!CCC_Rst) begin
                    j <= 10'd0;
                    k <= 10'd0;
                    k_d0 <= 10'd0;
                end
                else begin
                    if (state == Culculate) begin
                        if (j < JMax)
                            j <= j + 1'b1;
                        else begin  // j == JMax
                            k_d0 <= k;
                            j <= 10'b0;
                            if (k < OutputNum - 1)
                                k <= k + 1'b1;
                            else
                                k <= 10'b0;
                            
                        end
                    end
                end
            end
            
            // 计算模块
            always @(posedge FIFO_Clk) begin
                if (!CCC_Rst) begin
                    temp <= 64'd0;
                    temp_sum <= 0;
                    DebugOutput <= 0;
                end
                else begin
                    if (state == Culculate) begin
                        for (i = 0; i < OnceTimes; i = i + 1) begin
                            temp_sum[(i * 64) +: 64] <= $signed(BLOCK[0].DataX[j * OnceTimes + i]) * 
                                            $signed(BLOCK[1].DataX[j * OnceTimes + i + k]);
                        end    
                        if (j > 0 && j <= JMax) begin
                            if (j > 0) begin
                                temp <= $signed(temp_sum[63:12])/* + $signed(temp_sum[127:76]) + $signed(temp_sum[191:140]) + $signed(temp_sum[255:204]) +
                                        $signed(temp_sum[319:268]) + $signed(temp_sum[383:332]) + $signed(temp_sum[447:396]) + $signed(temp_sum[511:460]) +
                                        $signed(temp_sum[575:524]) + $signed(temp_sum[639:588]) + $signed(temp_sum[703:652]) + $signed(temp_sum[767:716]) +
                                        $signed(temp_sum[831:780]) + $signed(temp_sum[895:844]) + $signed(temp_sum[959:908]) + $signed(temp_sum[1023:972])*/;
                                        
                            end
                            else 
                                temp <= temp;
                        end
                        else if(j == 0)
                            temp <= 0;
                        else
                            temp <= temp;
                        
                        if (j == 0 && k <= OutputNum - 1 && ((k > 0) || (k_d0 > 0))) begin
                            DebugOutput <= temp;
                            if(DebugOutput > MaxValue) begin
                                MaxValue <= DebugOutput;
                                kk <= k;                              
                                BLOCK[2].SampleX[0] <= StoredValue[0];
                                BLOCK[2].SampleX[1] <= StoredValue[1];
                                BLOCK[2].SampleX[2] <= StoredValue[2];
                                BLOCK[2].SampleX[3] <= StoredValue[3];
                            end
                        end                        
                        StoredValue[5] <= temp;
                        StoredValue[4] <= StoredValue[5];
                        StoredValue[3] <= StoredValue[4];
                        StoredValue[2] <= StoredValue[3];
                        StoredValue[1] <= StoredValue[2];
                        StoredValue[0] <= StoredValue[1];                         
                        if(kk + 6 == k) begin
                            BLOCK[2].SampleX[4] <= StoredValue[0];
                            BLOCK[2].SampleX[5] <= StoredValue[1];
                            BLOCK[2].SampleX[6] <= StoredValue[2];
                            BLOCK[2].SampleX[7] <= StoredValue[3];
                            BLOCK[2].SampleX[8] <= StoredValue[4];
                            BLOCK[2].SampleX[9] <= StoredValue[5];
                        end              
                    end
                end
            end
       end
   endgenerate

integer aaa;
always @(posedge FIFO_Clk) begin
    BLOCK[2].enable <= CrossCorrelation[0].ready;
    BLOCK[3].enable <= BLOCK[2].ready;
    
    if (BLOCK[2].MaxIndex > 5) begin
        for(aaa = 0; aaa < 10; aaa = aaa + 1) begin
            BLOCK[3].SampleX[aaa] <= BLOCK[2].DataX[BLOCK[2].MaxIndex - 4 + aaa];
        end
    end
end


assign MaxValue = CrossCorrelation[0].MaxValue;
assign MaxIndex1 = CrossCorrelation[0].kk;
assign MaxIndex2 = BLOCK[2].MaxIndex;
assign MaxIndex3 = BLOCK[3].MaxIndex;
assign enable3 = BLOCK[0].ready & BLOCK[1].ready;

endmodule

