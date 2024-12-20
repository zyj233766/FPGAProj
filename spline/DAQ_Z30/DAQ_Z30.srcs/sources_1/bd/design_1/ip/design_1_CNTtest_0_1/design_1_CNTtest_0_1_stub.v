// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Oct 15 21:36:36 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top design_1_CNTtest_0_1 -prefix
//               design_1_CNTtest_0_1_ design_1_CNTtest_0_0_stub.v
// Design      : design_1_CNTtest_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "CNTtest,Vivado 2017.4" *)
module design_1_CNTtest_0_1(sys_clk, sys_rst_n, IN_CNTA, IN_CNTB, IN_CNTC, 
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
