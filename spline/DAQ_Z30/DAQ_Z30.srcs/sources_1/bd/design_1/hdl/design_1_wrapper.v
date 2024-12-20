//Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
//Date        : Thu Dec 19 14:25:03 2024
//Host        : YL running 64-bit major release  (build 9200)
//Command     : generate_target design_1_wrapper.bd
//Design      : design_1_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_wrapper
   (ADC_CLKin_N,
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
    AuxFifo_DataAOut,
    AuxFifo_DataBOut,
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
    DataA_FIFO_ProgFull,
    DataA_FIFO_RDEn,
    DataA_FIFO_RDdata,
    DataB_FIFO_ProgFull,
    DataB_FIFO_RDEn,
    DataB_FIFO_RDdata,
    Data_FIFO_Rst,
    Data_FIFO_WREn_A,
    Data_FIFO_WREn_B,
    FCLK_CLK0,
    FIFO_Clk,
    FIXED_IO_ddr_vrn,
    FIXED_IO_ddr_vrp,
    FIXED_IO_mio,
    FIXED_IO_ps_clk,
    FIXED_IO_ps_porb,
    FIXED_IO_ps_srstb,
    IN_CNTA,
    IN_CNTB,
    IN_CNTC,
    IN_CNTEN,
    IN_Correction,
    IN_START,
    IN_STOP,
    IN_spline1,
    IN_spline2,
    LED1,
    LED2,
    LED3,
    MCU_D0_ADCReset,
    MCU_D1_ADCSCLK,
    MCU_D2_ADCSData,
    MCU_D3_ADCSen,
    MainFIFO_WR_CLK,
    S_AXIS_tdata,
    S_AXIS_tkeep,
    S_AXIS_tlast,
    S_AXIS_tready,
    S_AXIS_tvalid,
    clkin_10MHz_N,
    clkin_10MHz_P,
    clkout_250M_N,
    clkout_250M_P,
    gate_out,
    gpio_in_TimeCNT_A,
    gpio_in_TimeCNT_B,
    gpio_rtl_tri_io,
    input_fx,
    peripheral_aresetn,
    s_axis_aclk,
    s_axis_aresetn,
    start,
    stop,
    uart_rx,
    uart_tx);
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
  output [13:0]AuxFifo_DataAOut;
  output [13:0]AuxFifo_DataBOut;
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
  output DataA_FIFO_ProgFull;
  input DataA_FIFO_RDEn;
  output [13:0]DataA_FIFO_RDdata;
  output DataB_FIFO_ProgFull;
  input DataB_FIFO_RDEn;
  output [13:0]DataB_FIFO_RDdata;
  input Data_FIFO_Rst;
  input Data_FIFO_WREn_A;
  input Data_FIFO_WREn_B;
  output FCLK_CLK0;
  input FIFO_Clk;
  inout FIXED_IO_ddr_vrn;
  inout FIXED_IO_ddr_vrp;
  inout [53:0]FIXED_IO_mio;
  inout FIXED_IO_ps_clk;
  inout FIXED_IO_ps_porb;
  inout FIXED_IO_ps_srstb;
  input [31:0]IN_CNTA;
  input [31:0]IN_CNTB;
  input [31:0]IN_CNTC;
  input IN_CNTEN;
  input [31:0]IN_Correction;
  input IN_START;
  input IN_STOP;
  input [31:0]IN_spline1;
  input [31:0]IN_spline2;
  output LED1;
  output LED2;
  output LED3;
  input MCU_D0_ADCReset;
  input MCU_D1_ADCSCLK;
  input MCU_D2_ADCSData;
  input MCU_D3_ADCSen;
  output MainFIFO_WR_CLK;
  input [31:0]S_AXIS_tdata;
  input [3:0]S_AXIS_tkeep;
  input S_AXIS_tlast;
  output S_AXIS_tready;
  input S_AXIS_tvalid;
  input clkin_10MHz_N;
  input clkin_10MHz_P;
  output clkout_250M_N;
  output clkout_250M_P;
  output gate_out;
  input [31:0]gpio_in_TimeCNT_A;
  input [31:0]gpio_in_TimeCNT_B;
  inout [7:0]gpio_rtl_tri_io;
  input input_fx;
  output [0:0]peripheral_aresetn;
  input s_axis_aclk;
  input s_axis_aresetn;
  output start;
  output stop;
  input uart_rx;
  output uart_tx;

  wire ADC_CLKin_N;
  wire ADC_CLKin_P;
  wire ADC_DA0N;
  wire ADC_DA0P;
  wire ADC_DA10N;
  wire ADC_DA10P;
  wire ADC_DA12N;
  wire ADC_DA12P;
  wire ADC_DA2N;
  wire ADC_DA2P;
  wire ADC_DA4N;
  wire ADC_DA4P;
  wire ADC_DA6N;
  wire ADC_DA6P;
  wire ADC_DA8N;
  wire ADC_DA8P;
  wire ADC_DB0N;
  wire ADC_DB0P;
  wire ADC_DB10N;
  wire ADC_DB10P;
  wire ADC_DB12N;
  wire ADC_DB12P;
  wire ADC_DB2N;
  wire ADC_DB2P;
  wire ADC_DB4N;
  wire ADC_DB4P;
  wire ADC_DB6N;
  wire ADC_DB6P;
  wire ADC_DB8N;
  wire ADC_DB8P;
  wire [0:0]ADS_Reset;
  wire [0:0]ADS_SCLK;
  wire ADS_SData;
  wire [0:0]ADS_SEN;
  wire [13:0]AuxFifo_DataAOut;
  wire [13:0]AuxFifo_DataBOut;
  wire [14:0]DDR_addr;
  wire [2:0]DDR_ba;
  wire DDR_cas_n;
  wire DDR_ck_n;
  wire DDR_ck_p;
  wire DDR_cke;
  wire DDR_cs_n;
  wire [3:0]DDR_dm;
  wire [31:0]DDR_dq;
  wire [3:0]DDR_dqs_n;
  wire [3:0]DDR_dqs_p;
  wire DDR_odt;
  wire DDR_ras_n;
  wire DDR_reset_n;
  wire DDR_we_n;
  wire DataA_FIFO_ProgFull;
  wire DataA_FIFO_RDEn;
  wire [13:0]DataA_FIFO_RDdata;
  wire DataB_FIFO_ProgFull;
  wire DataB_FIFO_RDEn;
  wire [13:0]DataB_FIFO_RDdata;
  wire Data_FIFO_Rst;
  wire Data_FIFO_WREn_A;
  wire Data_FIFO_WREn_B;
  wire FCLK_CLK0;
  wire FIFO_Clk;
  wire FIXED_IO_ddr_vrn;
  wire FIXED_IO_ddr_vrp;
  wire [53:0]FIXED_IO_mio;
  wire FIXED_IO_ps_clk;
  wire FIXED_IO_ps_porb;
  wire FIXED_IO_ps_srstb;
  wire [31:0]IN_CNTA;
  wire [31:0]IN_CNTB;
  wire [31:0]IN_CNTC;
  wire IN_CNTEN;
  wire [31:0]IN_Correction;
  wire IN_START;
  wire IN_STOP;
  wire [31:0]IN_spline1;
  wire [31:0]IN_spline2;
  wire LED1;
  wire LED2;
  wire LED3;
  wire MCU_D0_ADCReset;
  wire MCU_D1_ADCSCLK;
  wire MCU_D2_ADCSData;
  wire MCU_D3_ADCSen;
  wire MainFIFO_WR_CLK;
  wire [31:0]S_AXIS_tdata;
  wire [3:0]S_AXIS_tkeep;
  wire S_AXIS_tlast;
  wire S_AXIS_tready;
  wire S_AXIS_tvalid;
  wire clkin_10MHz_N;
  wire clkin_10MHz_P;
  wire clkout_250M_N;
  wire clkout_250M_P;
  wire gate_out;
  wire [31:0]gpio_in_TimeCNT_A;
  wire [31:0]gpio_in_TimeCNT_B;
  wire [0:0]gpio_rtl_tri_i_0;
  wire [1:1]gpio_rtl_tri_i_1;
  wire [2:2]gpio_rtl_tri_i_2;
  wire [3:3]gpio_rtl_tri_i_3;
  wire [4:4]gpio_rtl_tri_i_4;
  wire [5:5]gpio_rtl_tri_i_5;
  wire [6:6]gpio_rtl_tri_i_6;
  wire [7:7]gpio_rtl_tri_i_7;
  wire [0:0]gpio_rtl_tri_io_0;
  wire [1:1]gpio_rtl_tri_io_1;
  wire [2:2]gpio_rtl_tri_io_2;
  wire [3:3]gpio_rtl_tri_io_3;
  wire [4:4]gpio_rtl_tri_io_4;
  wire [5:5]gpio_rtl_tri_io_5;
  wire [6:6]gpio_rtl_tri_io_6;
  wire [7:7]gpio_rtl_tri_io_7;
  wire [0:0]gpio_rtl_tri_o_0;
  wire [1:1]gpio_rtl_tri_o_1;
  wire [2:2]gpio_rtl_tri_o_2;
  wire [3:3]gpio_rtl_tri_o_3;
  wire [4:4]gpio_rtl_tri_o_4;
  wire [5:5]gpio_rtl_tri_o_5;
  wire [6:6]gpio_rtl_tri_o_6;
  wire [7:7]gpio_rtl_tri_o_7;
  wire [0:0]gpio_rtl_tri_t_0;
  wire [1:1]gpio_rtl_tri_t_1;
  wire [2:2]gpio_rtl_tri_t_2;
  wire [3:3]gpio_rtl_tri_t_3;
  wire [4:4]gpio_rtl_tri_t_4;
  wire [5:5]gpio_rtl_tri_t_5;
  wire [6:6]gpio_rtl_tri_t_6;
  wire [7:7]gpio_rtl_tri_t_7;
  wire input_fx;
  wire [0:0]peripheral_aresetn;
  wire s_axis_aclk;
  wire s_axis_aresetn;
  wire start;
  wire stop;
  wire uart_rx;
  wire uart_tx;

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
        .AuxFifo_DataAOut(AuxFifo_DataAOut),
        .AuxFifo_DataBOut(AuxFifo_DataBOut),
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
        .DataA_FIFO_ProgFull(DataA_FIFO_ProgFull),
        .DataA_FIFO_RDEn(DataA_FIFO_RDEn),
        .DataA_FIFO_RDdata(DataA_FIFO_RDdata),
        .DataB_FIFO_ProgFull(DataB_FIFO_ProgFull),
        .DataB_FIFO_RDEn(DataB_FIFO_RDEn),
        .DataB_FIFO_RDdata(DataB_FIFO_RDdata),
        .Data_FIFO_Rst(Data_FIFO_Rst),
        .Data_FIFO_WREn_A(Data_FIFO_WREn_A),
        .Data_FIFO_WREn_B(Data_FIFO_WREn_B),
        .FCLK_CLK0(FCLK_CLK0),
        .FIFO_Clk(FIFO_Clk),
        .FIXED_IO_ddr_vrn(FIXED_IO_ddr_vrn),
        .FIXED_IO_ddr_vrp(FIXED_IO_ddr_vrp),
        .FIXED_IO_mio(FIXED_IO_mio),
        .FIXED_IO_ps_clk(FIXED_IO_ps_clk),
        .FIXED_IO_ps_porb(FIXED_IO_ps_porb),
        .FIXED_IO_ps_srstb(FIXED_IO_ps_srstb),
        .IN_CNTA(IN_CNTA),
        .IN_CNTB(IN_CNTB),
        .IN_CNTC(IN_CNTC),
        .IN_CNTEN(IN_CNTEN),
        .IN_Correction(IN_Correction),
        .IN_START(IN_START),
        .IN_STOP(IN_STOP),
        .IN_spline1(IN_spline1),
        .IN_spline2(IN_spline2),
        .LED1(LED1),
        .LED2(LED2),
        .LED3(LED3),
        .MCU_D0_ADCReset(MCU_D0_ADCReset),
        .MCU_D1_ADCSCLK(MCU_D1_ADCSCLK),
        .MCU_D2_ADCSData(MCU_D2_ADCSData),
        .MCU_D3_ADCSen(MCU_D3_ADCSen),
        .MainFIFO_WR_CLK(MainFIFO_WR_CLK),
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
        .gpio_in_TimeCNT_A(gpio_in_TimeCNT_A),
        .gpio_in_TimeCNT_B(gpio_in_TimeCNT_B),
        .gpio_rtl_tri_i({gpio_rtl_tri_i_7,gpio_rtl_tri_i_6,gpio_rtl_tri_i_5,gpio_rtl_tri_i_4,gpio_rtl_tri_i_3,gpio_rtl_tri_i_2,gpio_rtl_tri_i_1,gpio_rtl_tri_i_0}),
        .gpio_rtl_tri_o({gpio_rtl_tri_o_7,gpio_rtl_tri_o_6,gpio_rtl_tri_o_5,gpio_rtl_tri_o_4,gpio_rtl_tri_o_3,gpio_rtl_tri_o_2,gpio_rtl_tri_o_1,gpio_rtl_tri_o_0}),
        .gpio_rtl_tri_t({gpio_rtl_tri_t_7,gpio_rtl_tri_t_6,gpio_rtl_tri_t_5,gpio_rtl_tri_t_4,gpio_rtl_tri_t_3,gpio_rtl_tri_t_2,gpio_rtl_tri_t_1,gpio_rtl_tri_t_0}),
        .input_fx(input_fx),
        .peripheral_aresetn(peripheral_aresetn),
        .s_axis_aclk(s_axis_aclk),
        .s_axis_aresetn(s_axis_aresetn),
        .start(start),
        .stop(stop),
        .uart_rx(uart_rx),
        .uart_tx(uart_tx));
  IOBUF gpio_rtl_tri_iobuf_0
       (.I(gpio_rtl_tri_o_0),
        .IO(gpio_rtl_tri_io[0]),
        .O(gpio_rtl_tri_i_0),
        .T(gpio_rtl_tri_t_0));
  IOBUF gpio_rtl_tri_iobuf_1
       (.I(gpio_rtl_tri_o_1),
        .IO(gpio_rtl_tri_io[1]),
        .O(gpio_rtl_tri_i_1),
        .T(gpio_rtl_tri_t_1));
  IOBUF gpio_rtl_tri_iobuf_2
       (.I(gpio_rtl_tri_o_2),
        .IO(gpio_rtl_tri_io[2]),
        .O(gpio_rtl_tri_i_2),
        .T(gpio_rtl_tri_t_2));
  IOBUF gpio_rtl_tri_iobuf_3
       (.I(gpio_rtl_tri_o_3),
        .IO(gpio_rtl_tri_io[3]),
        .O(gpio_rtl_tri_i_3),
        .T(gpio_rtl_tri_t_3));
  IOBUF gpio_rtl_tri_iobuf_4
       (.I(gpio_rtl_tri_o_4),
        .IO(gpio_rtl_tri_io[4]),
        .O(gpio_rtl_tri_i_4),
        .T(gpio_rtl_tri_t_4));
  IOBUF gpio_rtl_tri_iobuf_5
       (.I(gpio_rtl_tri_o_5),
        .IO(gpio_rtl_tri_io[5]),
        .O(gpio_rtl_tri_i_5),
        .T(gpio_rtl_tri_t_5));
  IOBUF gpio_rtl_tri_iobuf_6
       (.I(gpio_rtl_tri_o_6),
        .IO(gpio_rtl_tri_io[6]),
        .O(gpio_rtl_tri_i_6),
        .T(gpio_rtl_tri_t_6));
  IOBUF gpio_rtl_tri_iobuf_7
       (.I(gpio_rtl_tri_o_7),
        .IO(gpio_rtl_tri_io[7]),
        .O(gpio_rtl_tri_i_7),
        .T(gpio_rtl_tri_t_7));
endmodule
