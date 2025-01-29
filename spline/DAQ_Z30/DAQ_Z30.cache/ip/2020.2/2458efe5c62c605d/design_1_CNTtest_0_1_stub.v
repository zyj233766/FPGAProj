// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 21 18:47:21 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CNTtest_0_1_stub.v
// Design      : design_1_CNTtest_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CNTtest,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(sys_clk, sys_rst_n, IN_CNTA, IN_CNTB, IN_CNTC, 
  IN_STOP, IN_START, IN_CNTEN, OUT_CNTA, OUT_CNTB, OUT_CNTC, OUT_STOP, OUT_START, OUT_CNTEN, 
  SIGN_CNTA, SIGN_CNTB, SIGN_CNTC)
/* synthesis syn_black_box black_box_pad_pin="sys_clk,sys_rst_n,IN_CNTA[31:0],IN_CNTB[31:0],IN_CNTC[31:0],IN_STOP,IN_START,IN_CNTEN,OUT_CNTA[31:0],OUT_CNTB[31:0],OUT_CNTC[31:0],OUT_STOP,OUT_START,OUT_CNTEN,SIGN_CNTA,SIGN_CNTB,SIGN_CNTC" */;
  input sys_clk;
  input sys_rst_n;
  input [31:0]IN_CNTA;
  input [31:0]IN_CNTB;
  input [31:0]IN_CNTC;
  input IN_STOP;
  input IN_START;
  input IN_CNTEN;
  output [31:0]OUT_CNTA;
  output [31:0]OUT_CNTB;
  output [31:0]OUT_CNTC;
  output OUT_STOP;
  output OUT_START;
  output OUT_CNTEN;
  output SIGN_CNTA;
  output SIGN_CNTB;
  output SIGN_CNTC;
endmodule
