// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jan  4 15:38:54 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/12554/Desktop/DAQ/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_inputclk_ds_gbuf_0_0/design_1_MJ_inputclk_ds_gbuf_0_0_stub.v
// Design      : design_1_MJ_inputclk_ds_gbuf_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MJ_inputclk_ds_gbuf,Vivado 2017.4" *)
module design_1_MJ_inputclk_ds_gbuf_0_0(clkin_p, clkin_n, delay_cnt, rst, delay_clk, 
  clkout_gbuf)
/* synthesis syn_black_box black_box_pad_pin="clkin_p,clkin_n,delay_cnt[4:0],rst,delay_clk,clkout_gbuf" */;
  input clkin_p;
  input clkin_n;
  input [4:0]delay_cnt;
  input rst;
  input delay_clk;
  output clkout_gbuf;
endmodule
