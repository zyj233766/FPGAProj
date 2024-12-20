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


// IP VLNV: xilinx.com:user:CNTtest:1.0
// IP Revision: 6

(* X_CORE_INFO = "CNTtest,Vivado 2020.2" *)
(* CHECK_LICENSE_TYPE = "design_1_CNTtest_0_1,CNTtest,{}" *)
(* CORE_GENERATION_INFO = "design_1_CNTtest_0_1,CNTtest,{x_ipProduct=Vivado 2020.2,x_ipVendor=xilinx.com,x_ipLibrary=user,x_ipName=CNTtest,x_ipVersion=1.0,x_ipCoreRevision=6,x_ipLanguage=VERILOG,x_ipSimLanguage=MIXED}" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module design_1_CNTtest_0_1 (
  sys_clk,
  sys_rst_n,
  IN_CNTA,
  IN_CNTB,
  IN_CNTC,
  IN_STOP,
  IN_START,
  IN_CNTEN,
  OUT_CNTA,
  OUT_CNTB,
  OUT_CNTC,
  OUT_STOP,
  OUT_START,
  OUT_CNTEN,
  SIGN_CNTA,
  SIGN_CNTB,
  SIGN_CNTC
);

(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *)
input wire sys_clk;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *)
input wire sys_rst_n;
input wire [31 : 0] IN_CNTA;
input wire [31 : 0] IN_CNTB;
input wire [31 : 0] IN_CNTC;
input wire IN_STOP;
input wire IN_START;
input wire IN_CNTEN;
output wire [31 : 0] OUT_CNTA;
output wire [31 : 0] OUT_CNTB;
output wire [31 : 0] OUT_CNTC;
output wire OUT_STOP;
output wire OUT_START;
output wire OUT_CNTEN;
output wire SIGN_CNTA;
output wire SIGN_CNTB;
output wire SIGN_CNTC;

  CNTtest inst (
    .sys_clk(sys_clk),
    .sys_rst_n(sys_rst_n),
    .IN_CNTA(IN_CNTA),
    .IN_CNTB(IN_CNTB),
    .IN_CNTC(IN_CNTC),
    .IN_STOP(IN_STOP),
    .IN_START(IN_START),
    .IN_CNTEN(IN_CNTEN),
    .OUT_CNTA(OUT_CNTA),
    .OUT_CNTB(OUT_CNTB),
    .OUT_CNTC(OUT_CNTC),
    .OUT_STOP(OUT_STOP),
    .OUT_START(OUT_START),
    .OUT_CNTEN(OUT_CNTEN),
    .SIGN_CNTA(SIGN_CNTA),
    .SIGN_CNTB(SIGN_CNTB),
    .SIGN_CNTC(SIGN_CNTC)
  );
endmodule
