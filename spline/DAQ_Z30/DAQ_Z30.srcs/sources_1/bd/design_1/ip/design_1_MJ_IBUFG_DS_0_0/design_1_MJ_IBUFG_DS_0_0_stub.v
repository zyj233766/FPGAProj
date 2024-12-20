// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jan  4 15:38:56 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/12554/Desktop/DAQ/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_IBUFG_DS_0_0/design_1_MJ_IBUFG_DS_0_0_stub.v
// Design      : design_1_MJ_IBUFG_DS_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "MJ_IBUFG_DS,Vivado 2017.4" *)
module design_1_MJ_IBUFG_DS_0_0(in_P, in_N, out1)
/* synthesis syn_black_box black_box_pad_pin="in_P,in_N,out1" */;
  input in_P;
  input in_N;
  output out1;
endmodule
