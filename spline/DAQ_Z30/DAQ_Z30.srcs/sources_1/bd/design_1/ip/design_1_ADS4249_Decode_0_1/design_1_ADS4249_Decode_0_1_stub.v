// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Thu Jan  4 15:38:54 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub
//               C:/Users/12554/Desktop/DAQ/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_ADS4249_Decode_0_1/design_1_ADS4249_Decode_0_1_stub.v
// Design      : design_1_ADS4249_Decode_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ADS4249_Decode,Vivado 2017.4" *)
module design_1_ADS4249_Decode_0_1(clkinp, da0p, da0n, da2p, da2n, da4p, da4n, da6p, da6n, 
  da8p, da8n, da10p, da10n, da12p, da12n, db0p, db0n, db2p, db2n, db4p, db4n, db6p, db6n, db8p, db8n, db10p, db10n, 
  db12p, db12n, daout, dbout)
/* synthesis syn_black_box black_box_pad_pin="clkinp,da0p,da0n,da2p,da2n,da4p,da4n,da6p,da6n,da8p,da8n,da10p,da10n,da12p,da12n,db0p,db0n,db2p,db2n,db4p,db4n,db6p,db6n,db8p,db8n,db10p,db10n,db12p,db12n,daout[13:0],dbout[13:0]" */;
  input clkinp;
  input da0p;
  input da0n;
  input da2p;
  input da2n;
  input da4p;
  input da4n;
  input da6p;
  input da6n;
  input da8p;
  input da8n;
  input da10p;
  input da10n;
  input da12p;
  input da12n;
  input db0p;
  input db0n;
  input db2p;
  input db2n;
  input db4p;
  input db4n;
  input db6p;
  input db6n;
  input db8p;
  input db8n;
  input db10p;
  input db10n;
  input db12p;
  input db12n;
  output [13:0]daout;
  output [13:0]dbout;
endmodule
