// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Tue Dec 17 21:46:05 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MJ_inputclk_ds_gbuf_0_0_sim_netlist.v
// Design      : design_1_MJ_inputclk_ds_gbuf_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf
   (clkout_gbuf,
    clkin_p,
    clkin_n,
    delay_clk,
    rst,
    delay_cnt);
  output clkout_gbuf;
  input clkin_p;
  input clkin_n;
  input delay_clk;
  input rst;
  input [4:0]delay_cnt;

  wire clkin_n;
  wire clkin_p;
  wire clkout_gbuf;
  wire delay_clk;
  wire [4:0]delay_cnt;
  wire mADC_CLK;
  wire rst;
  wire NLW_IDELAYCTRL_inst_RDY_UNCONNECTED;
  wire [4:0]NLW_IDELAYE2_inst_db0_CNTVALUEOUT_UNCONNECTED;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    AdcClklvds
       (.I(clkin_p),
        .IB(clkin_n),
        .O(mADC_CLK));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "delay1" *) 
  IDELAYCTRL #(
    .SIM_DEVICE("7SERIES")) 
    IDELAYCTRL_inst
       (.RDY(NLW_IDELAYCTRL_inst_RDY_UNCONNECTED),
        .REFCLK(delay_clk),
        .RST(rst));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* IODELAY_GROUP = "delay1" *) 
  (* SIM_DELAY_D = "0" *) 
  IDELAYE2 #(
    .CINVCTRL_SEL("FALSE"),
    .DELAY_SRC("IDATAIN"),
    .HIGH_PERFORMANCE_MODE("TRUE"),
    .IDELAY_TYPE("VAR_LOAD"),
    .IDELAY_VALUE(15),
    .IS_C_INVERTED(1'b0),
    .IS_DATAIN_INVERTED(1'b0),
    .IS_IDATAIN_INVERTED(1'b0),
    .PIPE_SEL("FALSE"),
    .REFCLK_FREQUENCY(200.000000),
    .SIGNAL_PATTERN("DATA")) 
    IDELAYE2_inst_db0
       (.C(delay_clk),
        .CE(1'b0),
        .CINVCTRL(1'b0),
        .CNTVALUEIN(delay_cnt),
        .CNTVALUEOUT(NLW_IDELAYE2_inst_db0_CNTVALUEOUT_UNCONNECTED[4:0]),
        .DATAIN(1'b0),
        .DATAOUT(clkout_gbuf),
        .IDATAIN(mADC_CLK),
        .INC(1'b0),
        .LD(1'b1),
        .LDPIPEEN(1'b0),
        .REGRST(rst));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_MJ_inputclk_ds_gbuf_0_0,MJ_inputclk_ds_gbuf,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "MJ_inputclk_ds_gbuf,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clkin_p,
    clkin_n,
    delay_cnt,
    rst,
    delay_clk,
    clkout_gbuf);
  input clkin_p;
  input clkin_n;
  input [4:0]delay_cnt;
  input rst;
  input delay_clk;
  output clkout_gbuf;

  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire clkin_n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire clkin_p;
  wire clkout_gbuf;
  wire delay_clk;
  wire [4:0]delay_cnt;
  wire rst;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf inst
       (.clkin_n(clkin_n),
        .clkin_p(clkin_p),
        .clkout_gbuf(clkout_gbuf),
        .delay_clk(delay_clk),
        .delay_cnt(delay_cnt),
        .rst(rst));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
