// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:user:ADS4249_Decode:1.0
// IP Revision: 11

`timescale 1ns/1ps

(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_ADS4249_Decode_0_1 (
  clkinp,
  da0p,
  da0n,
  da2p,
  da2n,
  da4p,
  da4n,
  da6p,
  da6n,
  da8p,
  da8n,
  da10p,
  da10n,
  da12p,
  da12n,
  db0p,
  db0n,
  db2p,
  db2n,
  db4p,
  db4n,
  db6p,
  db6n,
  db8p,
  db8n,
  db10p,
  db10n,
  db12p,
  db12n,
  daout,
  dbout
);

input wire clkinp;
input wire da0p;
input wire da0n;
input wire da2p;
input wire da2n;
input wire da4p;
input wire da4n;
input wire da6p;
input wire da6n;
input wire da8p;
input wire da8n;
input wire da10p;
input wire da10n;
input wire da12p;
input wire da12n;
input wire db0p;
input wire db0n;
input wire db2p;
input wire db2n;
input wire db4p;
input wire db4n;
input wire db6p;
input wire db6n;
input wire db8p;
input wire db8n;
input wire db10p;
input wire db10n;
input wire db12p;
input wire db12n;
output wire [13 : 0] daout;
output wire [13 : 0] dbout;

  ADS4249_Decode inst (
    .clkinp(clkinp),
    .da0p(da0p),
    .da0n(da0n),
    .da2p(da2p),
    .da2n(da2n),
    .da4p(da4p),
    .da4n(da4n),
    .da6p(da6p),
    .da6n(da6n),
    .da8p(da8p),
    .da8n(da8n),
    .da10p(da10p),
    .da10n(da10n),
    .da12p(da12p),
    .da12n(da12n),
    .db0p(db0p),
    .db0n(db0n),
    .db2p(db2p),
    .db2n(db2n),
    .db4p(db4p),
    .db4n(db4n),
    .db6p(db6p),
    .db6n(db6n),
    .db8p(db8p),
    .db8n(db8n),
    .db10p(db10p),
    .db10n(db10n),
    .db12p(db12p),
    .db12n(db12n),
    .daout(daout),
    .dbout(dbout)
  );
endmodule
