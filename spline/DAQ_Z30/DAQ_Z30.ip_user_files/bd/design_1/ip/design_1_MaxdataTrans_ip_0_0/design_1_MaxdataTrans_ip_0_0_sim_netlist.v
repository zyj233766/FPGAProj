// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Wed Dec 18 23:18:38 2024
// Host        : YL running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/12554/Desktop/test5/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MaxdataTrans_ip_0_0/design_1_MaxdataTrans_ip_0_0_sim_netlist.v
// Design      : design_1_MaxdataTrans_ip_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_MaxdataTrans_ip_0_0,MaxdataTrans_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "MaxdataTrans_ip_v1_0,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_MaxdataTrans_ip_0_0
   (IN_Correction,
    IN_spline1,
    IN_spline2,
    s0_axi_awaddr,
    s0_axi_awprot,
    s0_axi_awvalid,
    s0_axi_awready,
    s0_axi_wdata,
    s0_axi_wstrb,
    s0_axi_wvalid,
    s0_axi_wready,
    s0_axi_bresp,
    s0_axi_bvalid,
    s0_axi_bready,
    s0_axi_araddr,
    s0_axi_arprot,
    s0_axi_arvalid,
    s0_axi_arready,
    s0_axi_rdata,
    s0_axi_rresp,
    s0_axi_rvalid,
    s0_axi_rready,
    s0_axi_aclk,
    s0_axi_aresetn);
  input [31:0]IN_Correction;
  input [31:0]IN_spline1;
  input [31:0]IN_spline2;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR" *) input [3:0]s0_axi_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWPROT" *) input [2:0]s0_axi_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID" *) input s0_axi_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY" *) output s0_axi_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WDATA" *) input [31:0]s0_axi_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB" *) input [3:0]s0_axi_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WVALID" *) input s0_axi_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI WREADY" *) output s0_axi_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BRESP" *) output [1:0]s0_axi_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BVALID" *) output s0_axi_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI BREADY" *) input s0_axi_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR" *) input [3:0]s0_axi_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARPROT" *) input [2:0]s0_axi_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID" *) input s0_axi_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY" *) output s0_axi_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RDATA" *) output [31:0]s0_axi_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RRESP" *) output [1:0]s0_axi_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RVALID" *) output s0_axi_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 S0_AXI RREADY" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0" *) input s0_axi_rready;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 S0_AXI_CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI_CLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET s0_axi_aresetn, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1" *) input s0_axi_aclk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 S0_AXI_RST RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME S0_AXI_RST, POLARITY ACTIVE_LOW" *) input s0_axi_aresetn;

  wire \<const0> ;
  wire [31:0]IN_Correction;
  wire [31:0]IN_spline1;
  wire [31:0]IN_spline2;
  wire s0_axi_aclk;
  wire [3:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arready;
  wire s0_axi_arvalid;
  wire s0_axi_awready;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;

  assign s0_axi_bresp[1] = \<const0> ;
  assign s0_axi_bresp[0] = \<const0> ;
  assign s0_axi_rresp[1] = \<const0> ;
  assign s0_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0 inst
       (.IN_Correction(IN_Correction),
        .IN_spline1(IN_spline1),
        .IN_spline2(IN_spline2),
        .S_AXI_ARREADY(s0_axi_arready),
        .S_AXI_AWREADY(s0_axi_awready),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr[3:2]),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(s0_axi_rdata),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wready(s0_axi_wready),
        .s0_axi_wvalid(s0_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MaxdataTrans" *) 
module design_1_MaxdataTrans_ip_0_0_MaxdataTrans
   (SR,
    Q,
    \axi_rdata_reg[31] ,
    \axi_rdata_reg[31]_0 ,
    s0_axi_aresetn,
    IN_spline2,
    s0_axi_aclk,
    IN_spline1,
    IN_Correction);
  output [0:0]SR;
  output [31:0]Q;
  output [31:0]\axi_rdata_reg[31] ;
  output [31:0]\axi_rdata_reg[31]_0 ;
  input s0_axi_aresetn;
  input [31:0]IN_spline2;
  input s0_axi_aclk;
  input [31:0]IN_spline1;
  input [31:0]IN_Correction;

  wire [31:0]IN_Correction;
  wire [31:0]IN_spline1;
  wire [31:0]IN_spline2;
  wire [31:0]Q;
  wire [0:0]SR;
  wire [31:0]\axi_rdata_reg[31] ;
  wire [31:0]\axi_rdata_reg[31]_0 ;
  wire s0_axi_aclk;
  wire s0_axi_aresetn;

  FDRE \OUT_Correction_reg[0] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[0]),
        .Q(\axi_rdata_reg[31]_0 [0]),
        .R(SR));
  FDRE \OUT_Correction_reg[10] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[10]),
        .Q(\axi_rdata_reg[31]_0 [10]),
        .R(SR));
  FDRE \OUT_Correction_reg[11] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[11]),
        .Q(\axi_rdata_reg[31]_0 [11]),
        .R(SR));
  FDRE \OUT_Correction_reg[12] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[12]),
        .Q(\axi_rdata_reg[31]_0 [12]),
        .R(SR));
  FDRE \OUT_Correction_reg[13] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[13]),
        .Q(\axi_rdata_reg[31]_0 [13]),
        .R(SR));
  FDRE \OUT_Correction_reg[14] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[14]),
        .Q(\axi_rdata_reg[31]_0 [14]),
        .R(SR));
  FDRE \OUT_Correction_reg[15] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[15]),
        .Q(\axi_rdata_reg[31]_0 [15]),
        .R(SR));
  FDRE \OUT_Correction_reg[16] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[16]),
        .Q(\axi_rdata_reg[31]_0 [16]),
        .R(SR));
  FDRE \OUT_Correction_reg[17] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[17]),
        .Q(\axi_rdata_reg[31]_0 [17]),
        .R(SR));
  FDRE \OUT_Correction_reg[18] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[18]),
        .Q(\axi_rdata_reg[31]_0 [18]),
        .R(SR));
  FDRE \OUT_Correction_reg[19] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[19]),
        .Q(\axi_rdata_reg[31]_0 [19]),
        .R(SR));
  FDRE \OUT_Correction_reg[1] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[1]),
        .Q(\axi_rdata_reg[31]_0 [1]),
        .R(SR));
  FDRE \OUT_Correction_reg[20] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[20]),
        .Q(\axi_rdata_reg[31]_0 [20]),
        .R(SR));
  FDRE \OUT_Correction_reg[21] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[21]),
        .Q(\axi_rdata_reg[31]_0 [21]),
        .R(SR));
  FDRE \OUT_Correction_reg[22] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[22]),
        .Q(\axi_rdata_reg[31]_0 [22]),
        .R(SR));
  FDRE \OUT_Correction_reg[23] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[23]),
        .Q(\axi_rdata_reg[31]_0 [23]),
        .R(SR));
  FDRE \OUT_Correction_reg[24] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[24]),
        .Q(\axi_rdata_reg[31]_0 [24]),
        .R(SR));
  FDRE \OUT_Correction_reg[25] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[25]),
        .Q(\axi_rdata_reg[31]_0 [25]),
        .R(SR));
  FDRE \OUT_Correction_reg[26] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[26]),
        .Q(\axi_rdata_reg[31]_0 [26]),
        .R(SR));
  FDRE \OUT_Correction_reg[27] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[27]),
        .Q(\axi_rdata_reg[31]_0 [27]),
        .R(SR));
  FDRE \OUT_Correction_reg[28] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[28]),
        .Q(\axi_rdata_reg[31]_0 [28]),
        .R(SR));
  FDRE \OUT_Correction_reg[29] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[29]),
        .Q(\axi_rdata_reg[31]_0 [29]),
        .R(SR));
  FDRE \OUT_Correction_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[2]),
        .Q(\axi_rdata_reg[31]_0 [2]),
        .R(SR));
  FDRE \OUT_Correction_reg[30] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[30]),
        .Q(\axi_rdata_reg[31]_0 [30]),
        .R(SR));
  FDRE \OUT_Correction_reg[31] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[31]),
        .Q(\axi_rdata_reg[31]_0 [31]),
        .R(SR));
  FDRE \OUT_Correction_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[3]),
        .Q(\axi_rdata_reg[31]_0 [3]),
        .R(SR));
  FDRE \OUT_Correction_reg[4] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[4]),
        .Q(\axi_rdata_reg[31]_0 [4]),
        .R(SR));
  FDRE \OUT_Correction_reg[5] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[5]),
        .Q(\axi_rdata_reg[31]_0 [5]),
        .R(SR));
  FDRE \OUT_Correction_reg[6] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[6]),
        .Q(\axi_rdata_reg[31]_0 [6]),
        .R(SR));
  FDRE \OUT_Correction_reg[7] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[7]),
        .Q(\axi_rdata_reg[31]_0 [7]),
        .R(SR));
  FDRE \OUT_Correction_reg[8] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[8]),
        .Q(\axi_rdata_reg[31]_0 [8]),
        .R(SR));
  FDRE \OUT_Correction_reg[9] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_Correction[9]),
        .Q(\axi_rdata_reg[31]_0 [9]),
        .R(SR));
  FDRE \OUT_spline1_reg[0] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[0]),
        .Q(\axi_rdata_reg[31] [0]),
        .R(SR));
  FDRE \OUT_spline1_reg[10] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[10]),
        .Q(\axi_rdata_reg[31] [10]),
        .R(SR));
  FDRE \OUT_spline1_reg[11] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[11]),
        .Q(\axi_rdata_reg[31] [11]),
        .R(SR));
  FDRE \OUT_spline1_reg[12] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[12]),
        .Q(\axi_rdata_reg[31] [12]),
        .R(SR));
  FDRE \OUT_spline1_reg[13] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[13]),
        .Q(\axi_rdata_reg[31] [13]),
        .R(SR));
  FDRE \OUT_spline1_reg[14] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[14]),
        .Q(\axi_rdata_reg[31] [14]),
        .R(SR));
  FDRE \OUT_spline1_reg[15] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[15]),
        .Q(\axi_rdata_reg[31] [15]),
        .R(SR));
  FDRE \OUT_spline1_reg[16] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[16]),
        .Q(\axi_rdata_reg[31] [16]),
        .R(SR));
  FDRE \OUT_spline1_reg[17] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[17]),
        .Q(\axi_rdata_reg[31] [17]),
        .R(SR));
  FDRE \OUT_spline1_reg[18] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[18]),
        .Q(\axi_rdata_reg[31] [18]),
        .R(SR));
  FDRE \OUT_spline1_reg[19] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[19]),
        .Q(\axi_rdata_reg[31] [19]),
        .R(SR));
  FDRE \OUT_spline1_reg[1] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[1]),
        .Q(\axi_rdata_reg[31] [1]),
        .R(SR));
  FDRE \OUT_spline1_reg[20] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[20]),
        .Q(\axi_rdata_reg[31] [20]),
        .R(SR));
  FDRE \OUT_spline1_reg[21] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[21]),
        .Q(\axi_rdata_reg[31] [21]),
        .R(SR));
  FDRE \OUT_spline1_reg[22] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[22]),
        .Q(\axi_rdata_reg[31] [22]),
        .R(SR));
  FDRE \OUT_spline1_reg[23] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[23]),
        .Q(\axi_rdata_reg[31] [23]),
        .R(SR));
  FDRE \OUT_spline1_reg[24] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[24]),
        .Q(\axi_rdata_reg[31] [24]),
        .R(SR));
  FDRE \OUT_spline1_reg[25] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[25]),
        .Q(\axi_rdata_reg[31] [25]),
        .R(SR));
  FDRE \OUT_spline1_reg[26] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[26]),
        .Q(\axi_rdata_reg[31] [26]),
        .R(SR));
  FDRE \OUT_spline1_reg[27] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[27]),
        .Q(\axi_rdata_reg[31] [27]),
        .R(SR));
  FDRE \OUT_spline1_reg[28] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[28]),
        .Q(\axi_rdata_reg[31] [28]),
        .R(SR));
  FDRE \OUT_spline1_reg[29] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[29]),
        .Q(\axi_rdata_reg[31] [29]),
        .R(SR));
  FDRE \OUT_spline1_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[2]),
        .Q(\axi_rdata_reg[31] [2]),
        .R(SR));
  FDRE \OUT_spline1_reg[30] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[30]),
        .Q(\axi_rdata_reg[31] [30]),
        .R(SR));
  FDRE \OUT_spline1_reg[31] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[31]),
        .Q(\axi_rdata_reg[31] [31]),
        .R(SR));
  FDRE \OUT_spline1_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[3]),
        .Q(\axi_rdata_reg[31] [3]),
        .R(SR));
  FDRE \OUT_spline1_reg[4] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[4]),
        .Q(\axi_rdata_reg[31] [4]),
        .R(SR));
  FDRE \OUT_spline1_reg[5] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[5]),
        .Q(\axi_rdata_reg[31] [5]),
        .R(SR));
  FDRE \OUT_spline1_reg[6] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[6]),
        .Q(\axi_rdata_reg[31] [6]),
        .R(SR));
  FDRE \OUT_spline1_reg[7] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[7]),
        .Q(\axi_rdata_reg[31] [7]),
        .R(SR));
  FDRE \OUT_spline1_reg[8] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[8]),
        .Q(\axi_rdata_reg[31] [8]),
        .R(SR));
  FDRE \OUT_spline1_reg[9] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline1[9]),
        .Q(\axi_rdata_reg[31] [9]),
        .R(SR));
  FDRE \OUT_spline2_reg[0] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \OUT_spline2_reg[10] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[10]),
        .Q(Q[10]),
        .R(SR));
  FDRE \OUT_spline2_reg[11] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[11]),
        .Q(Q[11]),
        .R(SR));
  FDRE \OUT_spline2_reg[12] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[12]),
        .Q(Q[12]),
        .R(SR));
  FDRE \OUT_spline2_reg[13] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[13]),
        .Q(Q[13]),
        .R(SR));
  FDRE \OUT_spline2_reg[14] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[14]),
        .Q(Q[14]),
        .R(SR));
  FDRE \OUT_spline2_reg[15] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[15]),
        .Q(Q[15]),
        .R(SR));
  FDRE \OUT_spline2_reg[16] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[16]),
        .Q(Q[16]),
        .R(SR));
  FDRE \OUT_spline2_reg[17] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[17]),
        .Q(Q[17]),
        .R(SR));
  FDRE \OUT_spline2_reg[18] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[18]),
        .Q(Q[18]),
        .R(SR));
  FDRE \OUT_spline2_reg[19] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[19]),
        .Q(Q[19]),
        .R(SR));
  FDRE \OUT_spline2_reg[1] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \OUT_spline2_reg[20] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[20]),
        .Q(Q[20]),
        .R(SR));
  FDRE \OUT_spline2_reg[21] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[21]),
        .Q(Q[21]),
        .R(SR));
  FDRE \OUT_spline2_reg[22] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[22]),
        .Q(Q[22]),
        .R(SR));
  FDRE \OUT_spline2_reg[23] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[23]),
        .Q(Q[23]),
        .R(SR));
  FDRE \OUT_spline2_reg[24] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[24]),
        .Q(Q[24]),
        .R(SR));
  FDRE \OUT_spline2_reg[25] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[25]),
        .Q(Q[25]),
        .R(SR));
  FDRE \OUT_spline2_reg[26] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[26]),
        .Q(Q[26]),
        .R(SR));
  FDRE \OUT_spline2_reg[27] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[27]),
        .Q(Q[27]),
        .R(SR));
  FDRE \OUT_spline2_reg[28] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[28]),
        .Q(Q[28]),
        .R(SR));
  FDRE \OUT_spline2_reg[29] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[29]),
        .Q(Q[29]),
        .R(SR));
  FDRE \OUT_spline2_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[2]),
        .Q(Q[2]),
        .R(SR));
  FDRE \OUT_spline2_reg[30] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[30]),
        .Q(Q[30]),
        .R(SR));
  FDRE \OUT_spline2_reg[31] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[31]),
        .Q(Q[31]),
        .R(SR));
  FDRE \OUT_spline2_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[3]),
        .Q(Q[3]),
        .R(SR));
  FDRE \OUT_spline2_reg[4] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[4]),
        .Q(Q[4]),
        .R(SR));
  FDRE \OUT_spline2_reg[5] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[5]),
        .Q(Q[5]),
        .R(SR));
  FDRE \OUT_spline2_reg[6] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[6]),
        .Q(Q[6]),
        .R(SR));
  FDRE \OUT_spline2_reg[7] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[7]),
        .Q(Q[7]),
        .R(SR));
  FDRE \OUT_spline2_reg[8] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[8]),
        .Q(Q[8]),
        .R(SR));
  FDRE \OUT_spline2_reg[9] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(IN_spline2[9]),
        .Q(Q[9]),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    axi_awready_i_1
       (.I0(s0_axi_aresetn),
        .O(SR));
endmodule

(* ORIG_REF_NAME = "MaxdataTrans_ip_v1_0" *) 
module design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0
   (S_AXI_ARREADY,
    s0_axi_wready,
    S_AXI_AWREADY,
    s0_axi_rdata,
    s0_axi_bvalid,
    s0_axi_rvalid,
    s0_axi_arvalid,
    s0_axi_aclk,
    s0_axi_araddr,
    IN_spline2,
    IN_spline1,
    IN_Correction,
    s0_axi_aresetn,
    s0_axi_awvalid,
    s0_axi_wvalid,
    s0_axi_bready,
    s0_axi_rready);
  output S_AXI_ARREADY;
  output s0_axi_wready;
  output S_AXI_AWREADY;
  output [31:0]s0_axi_rdata;
  output s0_axi_bvalid;
  output s0_axi_rvalid;
  input s0_axi_arvalid;
  input s0_axi_aclk;
  input [1:0]s0_axi_araddr;
  input [31:0]IN_spline2;
  input [31:0]IN_spline1;
  input [31:0]IN_Correction;
  input s0_axi_aresetn;
  input s0_axi_awvalid;
  input s0_axi_wvalid;
  input s0_axi_bready;
  input s0_axi_rready;

  wire [31:0]IN_Correction;
  wire [31:0]IN_spline1;
  wire [31:0]IN_spline2;
  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arvalid;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;

  design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI MaxdataTrans_ip_v1_0_S0_AXI_inst
       (.IN_Correction(IN_Correction),
        .IN_spline1(IN_spline1),
        .IN_spline2(IN_spline2),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arready(S_AXI_ARREADY),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awready(S_AXI_AWREADY),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(s0_axi_rdata),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wready(s0_axi_wready),
        .s0_axi_wvalid(s0_axi_wvalid));
endmodule

(* ORIG_REF_NAME = "MaxdataTrans_ip_v1_0_S0_AXI" *) 
module design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI
   (s0_axi_arready,
    s0_axi_wready,
    s0_axi_awready,
    s0_axi_rdata,
    s0_axi_bvalid,
    s0_axi_rvalid,
    s0_axi_arvalid,
    s0_axi_aclk,
    s0_axi_araddr,
    IN_spline2,
    IN_spline1,
    IN_Correction,
    s0_axi_aresetn,
    s0_axi_awvalid,
    s0_axi_wvalid,
    s0_axi_bready,
    s0_axi_rready);
  output s0_axi_arready;
  output s0_axi_wready;
  output s0_axi_awready;
  output [31:0]s0_axi_rdata;
  output s0_axi_bvalid;
  output s0_axi_rvalid;
  input s0_axi_arvalid;
  input s0_axi_aclk;
  input [1:0]s0_axi_araddr;
  input [31:0]IN_spline2;
  input [31:0]IN_spline1;
  input [31:0]IN_Correction;
  input s0_axi_aresetn;
  input s0_axi_awvalid;
  input s0_axi_wvalid;
  input s0_axi_bready;
  input s0_axi_rready;

  wire [31:0]IN_Correction;
  wire [31:0]IN_spline1;
  wire [31:0]IN_spline2;
  wire [31:0]OUT_Correction;
  wire [31:0]OUT_spline1;
  wire [31:0]OUT_spline2;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready_i_1_n_0;
  wire axi_awready0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0;
  wire p_0_in;
  wire [31:0]reg_data_out;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arready;
  wire s0_axi_arvalid;
  wire s0_axi_awready;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [31:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;
  wire slv_reg_rden__0;

  LUT6 #(
    .INIT(64'hFF7FF070F070F070)) 
    aw_en_i_1
       (.I0(s0_axi_awvalid),
        .I1(s0_axi_wvalid),
        .I2(aw_en_reg_n_0),
        .I3(s0_axi_awready),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s0_axi_araddr[0]),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_arready),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s0_axi_araddr[1]),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_arready),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(p_0_in));
  FDRE \axi_araddr_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s0_axi_arvalid),
        .I1(s0_axi_arready),
        .O(axi_arready_i_1_n_0));
  FDRE axi_arready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_arready_i_1_n_0),
        .Q(s0_axi_arready),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_awready_i_2
       (.I0(s0_axi_awready),
        .I1(aw_en_reg_n_0),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awvalid),
        .O(axi_awready0));
  FDRE axi_awready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0),
        .Q(s0_axi_awready),
        .R(p_0_in));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(s0_axi_wready),
        .I1(s0_axi_awvalid),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awready),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s0_axi_bvalid),
        .R(p_0_in));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[0]_i_1 
       (.I0(OUT_spline2[0]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[0]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[0]),
        .O(reg_data_out[0]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[10]_i_1 
       (.I0(OUT_spline2[10]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[10]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[10]),
        .O(reg_data_out[10]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[11]_i_1 
       (.I0(OUT_spline2[11]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[11]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[11]),
        .O(reg_data_out[11]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[12]_i_1 
       (.I0(OUT_spline2[12]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[12]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[12]),
        .O(reg_data_out[12]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[13]_i_1 
       (.I0(OUT_spline2[13]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[13]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[13]),
        .O(reg_data_out[13]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[14]_i_1 
       (.I0(OUT_spline2[14]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[14]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[14]),
        .O(reg_data_out[14]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[15]_i_1 
       (.I0(OUT_spline1[15]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[15]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[15]),
        .O(reg_data_out[15]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[16]_i_1 
       (.I0(OUT_spline2[16]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[16]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[16]),
        .O(reg_data_out[16]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[17]_i_1 
       (.I0(OUT_spline1[17]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[17]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[17]),
        .O(reg_data_out[17]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[18]_i_1 
       (.I0(OUT_spline1[18]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[18]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[18]),
        .O(reg_data_out[18]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[19]_i_1 
       (.I0(OUT_spline2[19]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[19]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[19]),
        .O(reg_data_out[19]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[1]_i_1 
       (.I0(OUT_spline1[1]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[1]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[1]),
        .O(reg_data_out[1]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[20]_i_1 
       (.I0(OUT_spline2[20]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[20]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[20]),
        .O(reg_data_out[20]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[21]_i_1 
       (.I0(OUT_spline2[21]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[21]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[21]),
        .O(reg_data_out[21]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[22]_i_1 
       (.I0(OUT_spline1[22]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[22]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[22]),
        .O(reg_data_out[22]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[23]_i_1 
       (.I0(OUT_spline1[23]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[23]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[23]),
        .O(reg_data_out[23]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[24]_i_1 
       (.I0(OUT_spline2[24]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[24]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[24]),
        .O(reg_data_out[24]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[25]_i_1 
       (.I0(OUT_spline1[25]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[25]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[25]),
        .O(reg_data_out[25]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[26]_i_1 
       (.I0(OUT_spline2[26]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[26]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[26]),
        .O(reg_data_out[26]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[27]_i_1 
       (.I0(OUT_spline1[27]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[27]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[27]),
        .O(reg_data_out[27]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[28]_i_1 
       (.I0(OUT_spline1[28]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[28]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[28]),
        .O(reg_data_out[28]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[29]_i_1 
       (.I0(OUT_spline1[29]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[29]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[29]),
        .O(reg_data_out[29]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[2]_i_1 
       (.I0(OUT_spline1[2]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[2]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[2]),
        .O(reg_data_out[2]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[30]_i_1 
       (.I0(OUT_spline1[30]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[30]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[30]),
        .O(reg_data_out[30]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[31]_i_1 
       (.I0(OUT_spline1[31]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[31]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[31]),
        .O(reg_data_out[31]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[3]_i_1 
       (.I0(OUT_spline1[3]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[3]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[3]),
        .O(reg_data_out[3]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[4]_i_1 
       (.I0(OUT_spline2[4]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[4]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[4]),
        .O(reg_data_out[4]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[5]_i_1 
       (.I0(OUT_spline2[5]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[5]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[5]),
        .O(reg_data_out[5]));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[6]_i_1 
       (.I0(OUT_spline1[6]),
        .I1(axi_araddr[2]),
        .I2(OUT_spline2[6]),
        .I3(axi_araddr[3]),
        .I4(OUT_Correction[6]),
        .O(reg_data_out[6]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[7]_i_1 
       (.I0(OUT_spline2[7]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[7]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[7]),
        .O(reg_data_out[7]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[8]_i_1 
       (.I0(OUT_spline2[8]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[8]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[8]),
        .O(reg_data_out[8]));
  LUT5 #(
    .INIT(32'hFFB8CCB8)) 
    \axi_rdata[9]_i_1 
       (.I0(OUT_spline2[9]),
        .I1(axi_araddr[3]),
        .I2(OUT_Correction[9]),
        .I3(axi_araddr[2]),
        .I4(OUT_spline1[9]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s0_axi_rdata[0]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[10] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s0_axi_rdata[10]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[11] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s0_axi_rdata[11]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[12] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s0_axi_rdata[12]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[13] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s0_axi_rdata[13]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[14] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s0_axi_rdata[14]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[15] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s0_axi_rdata[15]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[16] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s0_axi_rdata[16]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[17] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s0_axi_rdata[17]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[18] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s0_axi_rdata[18]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[19] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s0_axi_rdata[19]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[1] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s0_axi_rdata[1]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[20] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s0_axi_rdata[20]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[21] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s0_axi_rdata[21]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[22] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s0_axi_rdata[22]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[23] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s0_axi_rdata[23]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[24] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s0_axi_rdata[24]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[25] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s0_axi_rdata[25]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[26] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s0_axi_rdata[26]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[27] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s0_axi_rdata[27]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[28] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s0_axi_rdata[28]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[29] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s0_axi_rdata[29]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[2] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s0_axi_rdata[2]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[30] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[30]),
        .Q(s0_axi_rdata[30]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[31] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[31]),
        .Q(s0_axi_rdata[31]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[3] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s0_axi_rdata[3]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[4] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s0_axi_rdata[4]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[5] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s0_axi_rdata[5]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[6] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s0_axi_rdata[6]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[7] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s0_axi_rdata[7]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[8] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s0_axi_rdata[8]),
        .R(p_0_in));
  FDRE \axi_rdata_reg[9] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s0_axi_rdata[9]),
        .R(p_0_in));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(s0_axi_arready),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_rvalid),
        .I3(s0_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s0_axi_rvalid),
        .R(p_0_in));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    axi_wready_i_1
       (.I0(s0_axi_wready),
        .I1(aw_en_reg_n_0),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awvalid),
        .O(axi_wready0));
  FDRE axi_wready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0),
        .Q(s0_axi_wready),
        .R(p_0_in));
  LUT3 #(
    .INIT(8'h40)) 
    slv_reg_rden
       (.I0(s0_axi_rvalid),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_arready),
        .O(slv_reg_rden__0));
  design_1_MaxdataTrans_ip_0_0_MaxdataTrans u_MaxdataTrans
       (.IN_Correction(IN_Correction),
        .IN_spline1(IN_spline1),
        .IN_spline2(IN_spline2),
        .Q(OUT_spline2),
        .SR(p_0_in),
        .\axi_rdata_reg[31] (OUT_spline1),
        .\axi_rdata_reg[31]_0 (OUT_Correction),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_aresetn(s0_axi_aresetn));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif
