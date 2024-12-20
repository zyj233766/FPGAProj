// Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
// Date        : Tue Oct 15 21:36:36 2024
// Host        : Lenovo running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top design_1_CNTtest_0_1 -prefix
//               design_1_CNTtest_0_1_ design_1_CNTtest_0_0_sim_netlist.v
// Design      : design_1_CNTtest_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module design_1_CNTtest_0_1_CNTtest
   (OUT_CNTA,
    OUT_CNTB,
    OUT_CNTC,
    OUT_STOP,
    OUT_START,
    OUT_CNTEN,
    SIGN_CNTA,
    SIGN_CNTB,
    SIGN_CNTC,
    IN_CNTA,
    sys_clk,
    IN_CNTB,
    IN_CNTC,
    IN_STOP,
    IN_START,
    IN_CNTEN,
    sys_rst_n);
  output [31:0]OUT_CNTA;
  output [31:0]OUT_CNTB;
  output [31:0]OUT_CNTC;
  output OUT_STOP;
  output OUT_START;
  output OUT_CNTEN;
  output SIGN_CNTA;
  output SIGN_CNTB;
  output SIGN_CNTC;
  input [31:0]IN_CNTA;
  input sys_clk;
  input [31:0]IN_CNTB;
  input [31:0]IN_CNTC;
  input IN_STOP;
  input IN_START;
  input IN_CNTEN;
  input sys_rst_n;

  wire [31:0]IN_CNTA;
  wire [31:0]IN_CNTB;
  wire [31:0]IN_CNTC;
  wire IN_CNTEN;
  wire IN_START;
  wire IN_STOP;
  wire [31:0]OUT_CNTA;
  wire [31:0]OUT_CNTA_d1;
  wire [31:0]OUT_CNTA_d2;
  wire [31:0]OUT_CNTB;
  wire [31:0]OUT_CNTB_d1;
  wire [31:0]OUT_CNTB_d2;
  wire [31:0]OUT_CNTC;
  wire [31:0]OUT_CNTC_d1;
  wire [31:0]OUT_CNTC_d2;
  wire OUT_CNTEN;
  wire OUT_START;
  wire OUT_STOP;
  wire SIGN_CNTA;
  wire SIGN_CNTA0;
  wire SIGN_CNTA0_carry__0_i_1_n_0;
  wire SIGN_CNTA0_carry__0_i_2_n_0;
  wire SIGN_CNTA0_carry__0_i_3_n_0;
  wire SIGN_CNTA0_carry__0_i_4_n_0;
  wire SIGN_CNTA0_carry__0_n_0;
  wire SIGN_CNTA0_carry__0_n_1;
  wire SIGN_CNTA0_carry__0_n_2;
  wire SIGN_CNTA0_carry__0_n_3;
  wire SIGN_CNTA0_carry__1_i_1_n_0;
  wire SIGN_CNTA0_carry__1_i_2_n_0;
  wire SIGN_CNTA0_carry__1_i_3_n_0;
  wire SIGN_CNTA0_carry__1_n_2;
  wire SIGN_CNTA0_carry__1_n_3;
  wire SIGN_CNTA0_carry_i_1_n_0;
  wire SIGN_CNTA0_carry_i_2_n_0;
  wire SIGN_CNTA0_carry_i_3_n_0;
  wire SIGN_CNTA0_carry_i_4_n_0;
  wire SIGN_CNTA0_carry_n_0;
  wire SIGN_CNTA0_carry_n_1;
  wire SIGN_CNTA0_carry_n_2;
  wire SIGN_CNTA0_carry_n_3;
  wire SIGN_CNTA1;
  wire SIGN_CNTA1_carry__0_i_1_n_0;
  wire SIGN_CNTA1_carry__0_i_2_n_0;
  wire SIGN_CNTA1_carry__0_i_3_n_0;
  wire SIGN_CNTA1_carry__0_i_4_n_0;
  wire SIGN_CNTA1_carry__0_n_0;
  wire SIGN_CNTA1_carry__0_n_1;
  wire SIGN_CNTA1_carry__0_n_2;
  wire SIGN_CNTA1_carry__0_n_3;
  wire SIGN_CNTA1_carry__1_i_1_n_0;
  wire SIGN_CNTA1_carry__1_i_2_n_0;
  wire SIGN_CNTA1_carry__1_i_3_n_0;
  wire SIGN_CNTA1_carry__1_n_2;
  wire SIGN_CNTA1_carry__1_n_3;
  wire SIGN_CNTA1_carry_i_1_n_0;
  wire SIGN_CNTA1_carry_i_2_n_0;
  wire SIGN_CNTA1_carry_i_3_n_0;
  wire SIGN_CNTA1_carry_i_4_n_0;
  wire SIGN_CNTA1_carry_n_0;
  wire SIGN_CNTA1_carry_n_1;
  wire SIGN_CNTA1_carry_n_2;
  wire SIGN_CNTA1_carry_n_3;
  wire SIGN_CNTA_i_1_n_0;
  wire SIGN_CNTB;
  wire SIGN_CNTB0;
  wire SIGN_CNTB0_carry__0_i_1_n_0;
  wire SIGN_CNTB0_carry__0_i_2_n_0;
  wire SIGN_CNTB0_carry__0_i_3_n_0;
  wire SIGN_CNTB0_carry__0_i_4_n_0;
  wire SIGN_CNTB0_carry__0_n_0;
  wire SIGN_CNTB0_carry__0_n_1;
  wire SIGN_CNTB0_carry__0_n_2;
  wire SIGN_CNTB0_carry__0_n_3;
  wire SIGN_CNTB0_carry__1_i_1_n_0;
  wire SIGN_CNTB0_carry__1_i_2_n_0;
  wire SIGN_CNTB0_carry__1_i_3_n_0;
  wire SIGN_CNTB0_carry__1_n_2;
  wire SIGN_CNTB0_carry__1_n_3;
  wire SIGN_CNTB0_carry_i_1_n_0;
  wire SIGN_CNTB0_carry_i_2_n_0;
  wire SIGN_CNTB0_carry_i_3_n_0;
  wire SIGN_CNTB0_carry_i_4_n_0;
  wire SIGN_CNTB0_carry_n_0;
  wire SIGN_CNTB0_carry_n_1;
  wire SIGN_CNTB0_carry_n_2;
  wire SIGN_CNTB0_carry_n_3;
  wire SIGN_CNTB1;
  wire SIGN_CNTB1_carry__0_i_1_n_0;
  wire SIGN_CNTB1_carry__0_i_2_n_0;
  wire SIGN_CNTB1_carry__0_i_3_n_0;
  wire SIGN_CNTB1_carry__0_i_4_n_0;
  wire SIGN_CNTB1_carry__0_n_0;
  wire SIGN_CNTB1_carry__0_n_1;
  wire SIGN_CNTB1_carry__0_n_2;
  wire SIGN_CNTB1_carry__0_n_3;
  wire SIGN_CNTB1_carry__1_i_1_n_0;
  wire SIGN_CNTB1_carry__1_i_2_n_0;
  wire SIGN_CNTB1_carry__1_i_3_n_0;
  wire SIGN_CNTB1_carry__1_n_2;
  wire SIGN_CNTB1_carry__1_n_3;
  wire SIGN_CNTB1_carry_i_1_n_0;
  wire SIGN_CNTB1_carry_i_2_n_0;
  wire SIGN_CNTB1_carry_i_3_n_0;
  wire SIGN_CNTB1_carry_i_4_n_0;
  wire SIGN_CNTB1_carry_n_0;
  wire SIGN_CNTB1_carry_n_1;
  wire SIGN_CNTB1_carry_n_2;
  wire SIGN_CNTB1_carry_n_3;
  wire SIGN_CNTB_i_1_n_0;
  wire SIGN_CNTC;
  wire SIGN_CNTC0;
  wire SIGN_CNTC0_carry__0_i_1_n_0;
  wire SIGN_CNTC0_carry__0_i_2_n_0;
  wire SIGN_CNTC0_carry__0_i_3_n_0;
  wire SIGN_CNTC0_carry__0_i_4_n_0;
  wire SIGN_CNTC0_carry__0_n_0;
  wire SIGN_CNTC0_carry__0_n_1;
  wire SIGN_CNTC0_carry__0_n_2;
  wire SIGN_CNTC0_carry__0_n_3;
  wire SIGN_CNTC0_carry__1_i_1_n_0;
  wire SIGN_CNTC0_carry__1_i_2_n_0;
  wire SIGN_CNTC0_carry__1_i_3_n_0;
  wire SIGN_CNTC0_carry__1_n_2;
  wire SIGN_CNTC0_carry__1_n_3;
  wire SIGN_CNTC0_carry_i_1_n_0;
  wire SIGN_CNTC0_carry_i_2_n_0;
  wire SIGN_CNTC0_carry_i_3_n_0;
  wire SIGN_CNTC0_carry_i_4_n_0;
  wire SIGN_CNTC0_carry_n_0;
  wire SIGN_CNTC0_carry_n_1;
  wire SIGN_CNTC0_carry_n_2;
  wire SIGN_CNTC0_carry_n_3;
  wire SIGN_CNTC1;
  wire SIGN_CNTC1_carry__0_i_1_n_0;
  wire SIGN_CNTC1_carry__0_i_2_n_0;
  wire SIGN_CNTC1_carry__0_i_3_n_0;
  wire SIGN_CNTC1_carry__0_i_4_n_0;
  wire SIGN_CNTC1_carry__0_n_0;
  wire SIGN_CNTC1_carry__0_n_1;
  wire SIGN_CNTC1_carry__0_n_2;
  wire SIGN_CNTC1_carry__0_n_3;
  wire SIGN_CNTC1_carry__1_i_1_n_0;
  wire SIGN_CNTC1_carry__1_i_2_n_0;
  wire SIGN_CNTC1_carry__1_i_3_n_0;
  wire SIGN_CNTC1_carry__1_n_2;
  wire SIGN_CNTC1_carry__1_n_3;
  wire SIGN_CNTC1_carry_i_1_n_0;
  wire SIGN_CNTC1_carry_i_2_n_0;
  wire SIGN_CNTC1_carry_i_3_n_0;
  wire SIGN_CNTC1_carry_i_4_n_0;
  wire SIGN_CNTC1_carry_n_0;
  wire SIGN_CNTC1_carry_n_1;
  wire SIGN_CNTC1_carry_n_2;
  wire SIGN_CNTC1_carry_n_3;
  wire SIGN_CNTC_i_1_n_0;
  wire p_0_in;
  wire sys_clk;
  wire sys_rst_n;
  wire [3:0]NLW_SIGN_CNTA0_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTA0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTA0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTA0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTA1_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTA1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTA1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTA1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB0_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTB0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB1_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTB1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTB1_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC0_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC0_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTC0_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC0_carry__1_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC1_carry_O_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC1_carry__0_O_UNCONNECTED;
  wire [3:3]NLW_SIGN_CNTC1_carry__1_CO_UNCONNECTED;
  wire [3:0]NLW_SIGN_CNTC1_carry__1_O_UNCONNECTED;

  LUT1 #(
    .INIT(2'h1)) 
    \OUT_CNTA[31]_i_1 
       (.I0(sys_rst_n),
        .O(p_0_in));
  FDCE \OUT_CNTA_d1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[0]),
        .Q(OUT_CNTA_d1[0]));
  FDCE \OUT_CNTA_d1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[10]),
        .Q(OUT_CNTA_d1[10]));
  FDCE \OUT_CNTA_d1_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[11]),
        .Q(OUT_CNTA_d1[11]));
  FDCE \OUT_CNTA_d1_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[12]),
        .Q(OUT_CNTA_d1[12]));
  FDCE \OUT_CNTA_d1_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[13]),
        .Q(OUT_CNTA_d1[13]));
  FDCE \OUT_CNTA_d1_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[14]),
        .Q(OUT_CNTA_d1[14]));
  FDCE \OUT_CNTA_d1_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[15]),
        .Q(OUT_CNTA_d1[15]));
  FDCE \OUT_CNTA_d1_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[16]),
        .Q(OUT_CNTA_d1[16]));
  FDCE \OUT_CNTA_d1_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[17]),
        .Q(OUT_CNTA_d1[17]));
  FDCE \OUT_CNTA_d1_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[18]),
        .Q(OUT_CNTA_d1[18]));
  FDCE \OUT_CNTA_d1_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[19]),
        .Q(OUT_CNTA_d1[19]));
  FDCE \OUT_CNTA_d1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[1]),
        .Q(OUT_CNTA_d1[1]));
  FDCE \OUT_CNTA_d1_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[20]),
        .Q(OUT_CNTA_d1[20]));
  FDCE \OUT_CNTA_d1_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[21]),
        .Q(OUT_CNTA_d1[21]));
  FDCE \OUT_CNTA_d1_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[22]),
        .Q(OUT_CNTA_d1[22]));
  FDCE \OUT_CNTA_d1_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[23]),
        .Q(OUT_CNTA_d1[23]));
  FDCE \OUT_CNTA_d1_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[24]),
        .Q(OUT_CNTA_d1[24]));
  FDCE \OUT_CNTA_d1_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[25]),
        .Q(OUT_CNTA_d1[25]));
  FDCE \OUT_CNTA_d1_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[26]),
        .Q(OUT_CNTA_d1[26]));
  FDCE \OUT_CNTA_d1_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[27]),
        .Q(OUT_CNTA_d1[27]));
  FDCE \OUT_CNTA_d1_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[28]),
        .Q(OUT_CNTA_d1[28]));
  FDCE \OUT_CNTA_d1_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[29]),
        .Q(OUT_CNTA_d1[29]));
  FDCE \OUT_CNTA_d1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[2]),
        .Q(OUT_CNTA_d1[2]));
  FDCE \OUT_CNTA_d1_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[30]),
        .Q(OUT_CNTA_d1[30]));
  FDCE \OUT_CNTA_d1_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[31]),
        .Q(OUT_CNTA_d1[31]));
  FDCE \OUT_CNTA_d1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[3]),
        .Q(OUT_CNTA_d1[3]));
  FDCE \OUT_CNTA_d1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[4]),
        .Q(OUT_CNTA_d1[4]));
  FDCE \OUT_CNTA_d1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[5]),
        .Q(OUT_CNTA_d1[5]));
  FDCE \OUT_CNTA_d1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[6]),
        .Q(OUT_CNTA_d1[6]));
  FDCE \OUT_CNTA_d1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[7]),
        .Q(OUT_CNTA_d1[7]));
  FDCE \OUT_CNTA_d1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[8]),
        .Q(OUT_CNTA_d1[8]));
  FDCE \OUT_CNTA_d1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA[9]),
        .Q(OUT_CNTA_d1[9]));
  FDCE \OUT_CNTA_d2_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[0]),
        .Q(OUT_CNTA_d2[0]));
  FDCE \OUT_CNTA_d2_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[10]),
        .Q(OUT_CNTA_d2[10]));
  FDCE \OUT_CNTA_d2_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[11]),
        .Q(OUT_CNTA_d2[11]));
  FDCE \OUT_CNTA_d2_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[12]),
        .Q(OUT_CNTA_d2[12]));
  FDCE \OUT_CNTA_d2_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[13]),
        .Q(OUT_CNTA_d2[13]));
  FDCE \OUT_CNTA_d2_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[14]),
        .Q(OUT_CNTA_d2[14]));
  FDCE \OUT_CNTA_d2_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[15]),
        .Q(OUT_CNTA_d2[15]));
  FDCE \OUT_CNTA_d2_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[16]),
        .Q(OUT_CNTA_d2[16]));
  FDCE \OUT_CNTA_d2_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[17]),
        .Q(OUT_CNTA_d2[17]));
  FDCE \OUT_CNTA_d2_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[18]),
        .Q(OUT_CNTA_d2[18]));
  FDCE \OUT_CNTA_d2_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[19]),
        .Q(OUT_CNTA_d2[19]));
  FDCE \OUT_CNTA_d2_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[1]),
        .Q(OUT_CNTA_d2[1]));
  FDCE \OUT_CNTA_d2_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[20]),
        .Q(OUT_CNTA_d2[20]));
  FDCE \OUT_CNTA_d2_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[21]),
        .Q(OUT_CNTA_d2[21]));
  FDCE \OUT_CNTA_d2_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[22]),
        .Q(OUT_CNTA_d2[22]));
  FDCE \OUT_CNTA_d2_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[23]),
        .Q(OUT_CNTA_d2[23]));
  FDCE \OUT_CNTA_d2_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[24]),
        .Q(OUT_CNTA_d2[24]));
  FDCE \OUT_CNTA_d2_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[25]),
        .Q(OUT_CNTA_d2[25]));
  FDCE \OUT_CNTA_d2_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[26]),
        .Q(OUT_CNTA_d2[26]));
  FDCE \OUT_CNTA_d2_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[27]),
        .Q(OUT_CNTA_d2[27]));
  FDCE \OUT_CNTA_d2_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[28]),
        .Q(OUT_CNTA_d2[28]));
  FDCE \OUT_CNTA_d2_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[29]),
        .Q(OUT_CNTA_d2[29]));
  FDCE \OUT_CNTA_d2_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[2]),
        .Q(OUT_CNTA_d2[2]));
  FDCE \OUT_CNTA_d2_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[30]),
        .Q(OUT_CNTA_d2[30]));
  FDCE \OUT_CNTA_d2_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[31]),
        .Q(OUT_CNTA_d2[31]));
  FDCE \OUT_CNTA_d2_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[3]),
        .Q(OUT_CNTA_d2[3]));
  FDCE \OUT_CNTA_d2_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[4]),
        .Q(OUT_CNTA_d2[4]));
  FDCE \OUT_CNTA_d2_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[5]),
        .Q(OUT_CNTA_d2[5]));
  FDCE \OUT_CNTA_d2_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[6]),
        .Q(OUT_CNTA_d2[6]));
  FDCE \OUT_CNTA_d2_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[7]),
        .Q(OUT_CNTA_d2[7]));
  FDCE \OUT_CNTA_d2_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[8]),
        .Q(OUT_CNTA_d2[8]));
  FDCE \OUT_CNTA_d2_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTA_d1[9]),
        .Q(OUT_CNTA_d2[9]));
  FDRE \OUT_CNTA_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[0]),
        .Q(OUT_CNTA[0]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[10]),
        .Q(OUT_CNTA[10]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[11]),
        .Q(OUT_CNTA[11]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[12]),
        .Q(OUT_CNTA[12]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[13]),
        .Q(OUT_CNTA[13]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[14]),
        .Q(OUT_CNTA[14]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[15]),
        .Q(OUT_CNTA[15]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[16]),
        .Q(OUT_CNTA[16]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[17]),
        .Q(OUT_CNTA[17]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[18]),
        .Q(OUT_CNTA[18]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[19]),
        .Q(OUT_CNTA[19]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[1]),
        .Q(OUT_CNTA[1]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[20]),
        .Q(OUT_CNTA[20]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[21]),
        .Q(OUT_CNTA[21]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[22]),
        .Q(OUT_CNTA[22]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[23]),
        .Q(OUT_CNTA[23]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[24]),
        .Q(OUT_CNTA[24]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[25]),
        .Q(OUT_CNTA[25]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[26]),
        .Q(OUT_CNTA[26]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[27]),
        .Q(OUT_CNTA[27]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[28]),
        .Q(OUT_CNTA[28]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[29]),
        .Q(OUT_CNTA[29]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[2]),
        .Q(OUT_CNTA[2]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[30]),
        .Q(OUT_CNTA[30]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[31]),
        .Q(OUT_CNTA[31]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[3]),
        .Q(OUT_CNTA[3]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[4]),
        .Q(OUT_CNTA[4]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[5]),
        .Q(OUT_CNTA[5]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[6]),
        .Q(OUT_CNTA[6]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[7]),
        .Q(OUT_CNTA[7]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[8]),
        .Q(OUT_CNTA[8]),
        .R(p_0_in));
  FDRE \OUT_CNTA_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTA[9]),
        .Q(OUT_CNTA[9]),
        .R(p_0_in));
  FDCE \OUT_CNTB_d1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[0]),
        .Q(OUT_CNTB_d1[0]));
  FDCE \OUT_CNTB_d1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[10]),
        .Q(OUT_CNTB_d1[10]));
  FDCE \OUT_CNTB_d1_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[11]),
        .Q(OUT_CNTB_d1[11]));
  FDCE \OUT_CNTB_d1_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[12]),
        .Q(OUT_CNTB_d1[12]));
  FDCE \OUT_CNTB_d1_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[13]),
        .Q(OUT_CNTB_d1[13]));
  FDCE \OUT_CNTB_d1_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[14]),
        .Q(OUT_CNTB_d1[14]));
  FDCE \OUT_CNTB_d1_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[15]),
        .Q(OUT_CNTB_d1[15]));
  FDCE \OUT_CNTB_d1_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[16]),
        .Q(OUT_CNTB_d1[16]));
  FDCE \OUT_CNTB_d1_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[17]),
        .Q(OUT_CNTB_d1[17]));
  FDCE \OUT_CNTB_d1_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[18]),
        .Q(OUT_CNTB_d1[18]));
  FDCE \OUT_CNTB_d1_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[19]),
        .Q(OUT_CNTB_d1[19]));
  FDCE \OUT_CNTB_d1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[1]),
        .Q(OUT_CNTB_d1[1]));
  FDCE \OUT_CNTB_d1_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[20]),
        .Q(OUT_CNTB_d1[20]));
  FDCE \OUT_CNTB_d1_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[21]),
        .Q(OUT_CNTB_d1[21]));
  FDCE \OUT_CNTB_d1_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[22]),
        .Q(OUT_CNTB_d1[22]));
  FDCE \OUT_CNTB_d1_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[23]),
        .Q(OUT_CNTB_d1[23]));
  FDCE \OUT_CNTB_d1_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[24]),
        .Q(OUT_CNTB_d1[24]));
  FDCE \OUT_CNTB_d1_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[25]),
        .Q(OUT_CNTB_d1[25]));
  FDCE \OUT_CNTB_d1_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[26]),
        .Q(OUT_CNTB_d1[26]));
  FDCE \OUT_CNTB_d1_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[27]),
        .Q(OUT_CNTB_d1[27]));
  FDCE \OUT_CNTB_d1_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[28]),
        .Q(OUT_CNTB_d1[28]));
  FDCE \OUT_CNTB_d1_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[29]),
        .Q(OUT_CNTB_d1[29]));
  FDCE \OUT_CNTB_d1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[2]),
        .Q(OUT_CNTB_d1[2]));
  FDCE \OUT_CNTB_d1_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[30]),
        .Q(OUT_CNTB_d1[30]));
  FDCE \OUT_CNTB_d1_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[31]),
        .Q(OUT_CNTB_d1[31]));
  FDCE \OUT_CNTB_d1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[3]),
        .Q(OUT_CNTB_d1[3]));
  FDCE \OUT_CNTB_d1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[4]),
        .Q(OUT_CNTB_d1[4]));
  FDCE \OUT_CNTB_d1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[5]),
        .Q(OUT_CNTB_d1[5]));
  FDCE \OUT_CNTB_d1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[6]),
        .Q(OUT_CNTB_d1[6]));
  FDCE \OUT_CNTB_d1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[7]),
        .Q(OUT_CNTB_d1[7]));
  FDCE \OUT_CNTB_d1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[8]),
        .Q(OUT_CNTB_d1[8]));
  FDCE \OUT_CNTB_d1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB[9]),
        .Q(OUT_CNTB_d1[9]));
  FDCE \OUT_CNTB_d2_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[0]),
        .Q(OUT_CNTB_d2[0]));
  FDCE \OUT_CNTB_d2_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[10]),
        .Q(OUT_CNTB_d2[10]));
  FDCE \OUT_CNTB_d2_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[11]),
        .Q(OUT_CNTB_d2[11]));
  FDCE \OUT_CNTB_d2_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[12]),
        .Q(OUT_CNTB_d2[12]));
  FDCE \OUT_CNTB_d2_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[13]),
        .Q(OUT_CNTB_d2[13]));
  FDCE \OUT_CNTB_d2_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[14]),
        .Q(OUT_CNTB_d2[14]));
  FDCE \OUT_CNTB_d2_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[15]),
        .Q(OUT_CNTB_d2[15]));
  FDCE \OUT_CNTB_d2_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[16]),
        .Q(OUT_CNTB_d2[16]));
  FDCE \OUT_CNTB_d2_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[17]),
        .Q(OUT_CNTB_d2[17]));
  FDCE \OUT_CNTB_d2_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[18]),
        .Q(OUT_CNTB_d2[18]));
  FDCE \OUT_CNTB_d2_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[19]),
        .Q(OUT_CNTB_d2[19]));
  FDCE \OUT_CNTB_d2_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[1]),
        .Q(OUT_CNTB_d2[1]));
  FDCE \OUT_CNTB_d2_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[20]),
        .Q(OUT_CNTB_d2[20]));
  FDCE \OUT_CNTB_d2_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[21]),
        .Q(OUT_CNTB_d2[21]));
  FDCE \OUT_CNTB_d2_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[22]),
        .Q(OUT_CNTB_d2[22]));
  FDCE \OUT_CNTB_d2_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[23]),
        .Q(OUT_CNTB_d2[23]));
  FDCE \OUT_CNTB_d2_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[24]),
        .Q(OUT_CNTB_d2[24]));
  FDCE \OUT_CNTB_d2_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[25]),
        .Q(OUT_CNTB_d2[25]));
  FDCE \OUT_CNTB_d2_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[26]),
        .Q(OUT_CNTB_d2[26]));
  FDCE \OUT_CNTB_d2_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[27]),
        .Q(OUT_CNTB_d2[27]));
  FDCE \OUT_CNTB_d2_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[28]),
        .Q(OUT_CNTB_d2[28]));
  FDCE \OUT_CNTB_d2_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[29]),
        .Q(OUT_CNTB_d2[29]));
  FDCE \OUT_CNTB_d2_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[2]),
        .Q(OUT_CNTB_d2[2]));
  FDCE \OUT_CNTB_d2_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[30]),
        .Q(OUT_CNTB_d2[30]));
  FDCE \OUT_CNTB_d2_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[31]),
        .Q(OUT_CNTB_d2[31]));
  FDCE \OUT_CNTB_d2_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[3]),
        .Q(OUT_CNTB_d2[3]));
  FDCE \OUT_CNTB_d2_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[4]),
        .Q(OUT_CNTB_d2[4]));
  FDCE \OUT_CNTB_d2_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[5]),
        .Q(OUT_CNTB_d2[5]));
  FDCE \OUT_CNTB_d2_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[6]),
        .Q(OUT_CNTB_d2[6]));
  FDCE \OUT_CNTB_d2_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[7]),
        .Q(OUT_CNTB_d2[7]));
  FDCE \OUT_CNTB_d2_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[8]),
        .Q(OUT_CNTB_d2[8]));
  FDCE \OUT_CNTB_d2_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTB_d1[9]),
        .Q(OUT_CNTB_d2[9]));
  FDRE \OUT_CNTB_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[0]),
        .Q(OUT_CNTB[0]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[10]),
        .Q(OUT_CNTB[10]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[11]),
        .Q(OUT_CNTB[11]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[12]),
        .Q(OUT_CNTB[12]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[13]),
        .Q(OUT_CNTB[13]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[14]),
        .Q(OUT_CNTB[14]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[15]),
        .Q(OUT_CNTB[15]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[16]),
        .Q(OUT_CNTB[16]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[17]),
        .Q(OUT_CNTB[17]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[18]),
        .Q(OUT_CNTB[18]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[19]),
        .Q(OUT_CNTB[19]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[1]),
        .Q(OUT_CNTB[1]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[20]),
        .Q(OUT_CNTB[20]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[21]),
        .Q(OUT_CNTB[21]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[22]),
        .Q(OUT_CNTB[22]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[23]),
        .Q(OUT_CNTB[23]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[24]),
        .Q(OUT_CNTB[24]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[25]),
        .Q(OUT_CNTB[25]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[26]),
        .Q(OUT_CNTB[26]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[27]),
        .Q(OUT_CNTB[27]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[28]),
        .Q(OUT_CNTB[28]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[29]),
        .Q(OUT_CNTB[29]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[2]),
        .Q(OUT_CNTB[2]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[30]),
        .Q(OUT_CNTB[30]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[31]),
        .Q(OUT_CNTB[31]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[3]),
        .Q(OUT_CNTB[3]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[4]),
        .Q(OUT_CNTB[4]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[5]),
        .Q(OUT_CNTB[5]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[6]),
        .Q(OUT_CNTB[6]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[7]),
        .Q(OUT_CNTB[7]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[8]),
        .Q(OUT_CNTB[8]),
        .R(p_0_in));
  FDRE \OUT_CNTB_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTB[9]),
        .Q(OUT_CNTB[9]),
        .R(p_0_in));
  FDCE \OUT_CNTC_d1_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[0]),
        .Q(OUT_CNTC_d1[0]));
  FDCE \OUT_CNTC_d1_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[10]),
        .Q(OUT_CNTC_d1[10]));
  FDCE \OUT_CNTC_d1_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[11]),
        .Q(OUT_CNTC_d1[11]));
  FDCE \OUT_CNTC_d1_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[12]),
        .Q(OUT_CNTC_d1[12]));
  FDCE \OUT_CNTC_d1_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[13]),
        .Q(OUT_CNTC_d1[13]));
  FDCE \OUT_CNTC_d1_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[14]),
        .Q(OUT_CNTC_d1[14]));
  FDCE \OUT_CNTC_d1_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[15]),
        .Q(OUT_CNTC_d1[15]));
  FDCE \OUT_CNTC_d1_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[16]),
        .Q(OUT_CNTC_d1[16]));
  FDCE \OUT_CNTC_d1_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[17]),
        .Q(OUT_CNTC_d1[17]));
  FDCE \OUT_CNTC_d1_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[18]),
        .Q(OUT_CNTC_d1[18]));
  FDCE \OUT_CNTC_d1_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[19]),
        .Q(OUT_CNTC_d1[19]));
  FDCE \OUT_CNTC_d1_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[1]),
        .Q(OUT_CNTC_d1[1]));
  FDCE \OUT_CNTC_d1_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[20]),
        .Q(OUT_CNTC_d1[20]));
  FDCE \OUT_CNTC_d1_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[21]),
        .Q(OUT_CNTC_d1[21]));
  FDCE \OUT_CNTC_d1_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[22]),
        .Q(OUT_CNTC_d1[22]));
  FDCE \OUT_CNTC_d1_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[23]),
        .Q(OUT_CNTC_d1[23]));
  FDCE \OUT_CNTC_d1_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[24]),
        .Q(OUT_CNTC_d1[24]));
  FDCE \OUT_CNTC_d1_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[25]),
        .Q(OUT_CNTC_d1[25]));
  FDCE \OUT_CNTC_d1_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[26]),
        .Q(OUT_CNTC_d1[26]));
  FDCE \OUT_CNTC_d1_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[27]),
        .Q(OUT_CNTC_d1[27]));
  FDCE \OUT_CNTC_d1_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[28]),
        .Q(OUT_CNTC_d1[28]));
  FDCE \OUT_CNTC_d1_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[29]),
        .Q(OUT_CNTC_d1[29]));
  FDCE \OUT_CNTC_d1_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[2]),
        .Q(OUT_CNTC_d1[2]));
  FDCE \OUT_CNTC_d1_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[30]),
        .Q(OUT_CNTC_d1[30]));
  FDCE \OUT_CNTC_d1_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[31]),
        .Q(OUT_CNTC_d1[31]));
  FDCE \OUT_CNTC_d1_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[3]),
        .Q(OUT_CNTC_d1[3]));
  FDCE \OUT_CNTC_d1_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[4]),
        .Q(OUT_CNTC_d1[4]));
  FDCE \OUT_CNTC_d1_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[5]),
        .Q(OUT_CNTC_d1[5]));
  FDCE \OUT_CNTC_d1_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[6]),
        .Q(OUT_CNTC_d1[6]));
  FDCE \OUT_CNTC_d1_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[7]),
        .Q(OUT_CNTC_d1[7]));
  FDCE \OUT_CNTC_d1_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[8]),
        .Q(OUT_CNTC_d1[8]));
  FDCE \OUT_CNTC_d1_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC[9]),
        .Q(OUT_CNTC_d1[9]));
  FDCE \OUT_CNTC_d2_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[0]),
        .Q(OUT_CNTC_d2[0]));
  FDCE \OUT_CNTC_d2_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[10]),
        .Q(OUT_CNTC_d2[10]));
  FDCE \OUT_CNTC_d2_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[11]),
        .Q(OUT_CNTC_d2[11]));
  FDCE \OUT_CNTC_d2_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[12]),
        .Q(OUT_CNTC_d2[12]));
  FDCE \OUT_CNTC_d2_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[13]),
        .Q(OUT_CNTC_d2[13]));
  FDCE \OUT_CNTC_d2_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[14]),
        .Q(OUT_CNTC_d2[14]));
  FDCE \OUT_CNTC_d2_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[15]),
        .Q(OUT_CNTC_d2[15]));
  FDCE \OUT_CNTC_d2_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[16]),
        .Q(OUT_CNTC_d2[16]));
  FDCE \OUT_CNTC_d2_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[17]),
        .Q(OUT_CNTC_d2[17]));
  FDCE \OUT_CNTC_d2_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[18]),
        .Q(OUT_CNTC_d2[18]));
  FDCE \OUT_CNTC_d2_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[19]),
        .Q(OUT_CNTC_d2[19]));
  FDCE \OUT_CNTC_d2_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[1]),
        .Q(OUT_CNTC_d2[1]));
  FDCE \OUT_CNTC_d2_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[20]),
        .Q(OUT_CNTC_d2[20]));
  FDCE \OUT_CNTC_d2_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[21]),
        .Q(OUT_CNTC_d2[21]));
  FDCE \OUT_CNTC_d2_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[22]),
        .Q(OUT_CNTC_d2[22]));
  FDCE \OUT_CNTC_d2_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[23]),
        .Q(OUT_CNTC_d2[23]));
  FDCE \OUT_CNTC_d2_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[24]),
        .Q(OUT_CNTC_d2[24]));
  FDCE \OUT_CNTC_d2_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[25]),
        .Q(OUT_CNTC_d2[25]));
  FDCE \OUT_CNTC_d2_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[26]),
        .Q(OUT_CNTC_d2[26]));
  FDCE \OUT_CNTC_d2_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[27]),
        .Q(OUT_CNTC_d2[27]));
  FDCE \OUT_CNTC_d2_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[28]),
        .Q(OUT_CNTC_d2[28]));
  FDCE \OUT_CNTC_d2_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[29]),
        .Q(OUT_CNTC_d2[29]));
  FDCE \OUT_CNTC_d2_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[2]),
        .Q(OUT_CNTC_d2[2]));
  FDCE \OUT_CNTC_d2_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[30]),
        .Q(OUT_CNTC_d2[30]));
  FDCE \OUT_CNTC_d2_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[31]),
        .Q(OUT_CNTC_d2[31]));
  FDCE \OUT_CNTC_d2_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[3]),
        .Q(OUT_CNTC_d2[3]));
  FDCE \OUT_CNTC_d2_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[4]),
        .Q(OUT_CNTC_d2[4]));
  FDCE \OUT_CNTC_d2_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[5]),
        .Q(OUT_CNTC_d2[5]));
  FDCE \OUT_CNTC_d2_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[6]),
        .Q(OUT_CNTC_d2[6]));
  FDCE \OUT_CNTC_d2_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[7]),
        .Q(OUT_CNTC_d2[7]));
  FDCE \OUT_CNTC_d2_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[8]),
        .Q(OUT_CNTC_d2[8]));
  FDCE \OUT_CNTC_d2_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(OUT_CNTC_d1[9]),
        .Q(OUT_CNTC_d2[9]));
  FDRE \OUT_CNTC_reg[0] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[0]),
        .Q(OUT_CNTC[0]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[10] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[10]),
        .Q(OUT_CNTC[10]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[11] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[11]),
        .Q(OUT_CNTC[11]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[12] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[12]),
        .Q(OUT_CNTC[12]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[13] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[13]),
        .Q(OUT_CNTC[13]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[14] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[14]),
        .Q(OUT_CNTC[14]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[15] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[15]),
        .Q(OUT_CNTC[15]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[16] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[16]),
        .Q(OUT_CNTC[16]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[17] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[17]),
        .Q(OUT_CNTC[17]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[18] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[18]),
        .Q(OUT_CNTC[18]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[19] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[19]),
        .Q(OUT_CNTC[19]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[1] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[1]),
        .Q(OUT_CNTC[1]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[20] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[20]),
        .Q(OUT_CNTC[20]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[21] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[21]),
        .Q(OUT_CNTC[21]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[22] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[22]),
        .Q(OUT_CNTC[22]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[23] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[23]),
        .Q(OUT_CNTC[23]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[24] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[24]),
        .Q(OUT_CNTC[24]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[25] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[25]),
        .Q(OUT_CNTC[25]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[26] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[26]),
        .Q(OUT_CNTC[26]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[27] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[27]),
        .Q(OUT_CNTC[27]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[28] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[28]),
        .Q(OUT_CNTC[28]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[29] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[29]),
        .Q(OUT_CNTC[29]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[2] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[2]),
        .Q(OUT_CNTC[2]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[30] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[30]),
        .Q(OUT_CNTC[30]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[31] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[31]),
        .Q(OUT_CNTC[31]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[3] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[3]),
        .Q(OUT_CNTC[3]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[4] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[4]),
        .Q(OUT_CNTC[4]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[5] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[5]),
        .Q(OUT_CNTC[5]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[6] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[6]),
        .Q(OUT_CNTC[6]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[7] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[7]),
        .Q(OUT_CNTC[7]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[8] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[8]),
        .Q(OUT_CNTC[8]),
        .R(p_0_in));
  FDRE \OUT_CNTC_reg[9] 
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTC[9]),
        .Q(OUT_CNTC[9]),
        .R(p_0_in));
  FDRE OUT_CNTEN_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_CNTEN),
        .Q(OUT_CNTEN),
        .R(p_0_in));
  FDRE OUT_START_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_START),
        .Q(OUT_START),
        .R(p_0_in));
  FDRE OUT_STOP_reg
       (.C(sys_clk),
        .CE(1'b1),
        .D(IN_STOP),
        .Q(OUT_STOP),
        .R(p_0_in));
  CARRY4 SIGN_CNTA0_carry
       (.CI(1'b0),
        .CO({SIGN_CNTA0_carry_n_0,SIGN_CNTA0_carry_n_1,SIGN_CNTA0_carry_n_2,SIGN_CNTA0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA0_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTA0_carry_i_1_n_0,SIGN_CNTA0_carry_i_2_n_0,SIGN_CNTA0_carry_i_3_n_0,SIGN_CNTA0_carry_i_4_n_0}));
  CARRY4 SIGN_CNTA0_carry__0
       (.CI(SIGN_CNTA0_carry_n_0),
        .CO({SIGN_CNTA0_carry__0_n_0,SIGN_CNTA0_carry__0_n_1,SIGN_CNTA0_carry__0_n_2,SIGN_CNTA0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA0_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTA0_carry__0_i_1_n_0,SIGN_CNTA0_carry__0_i_2_n_0,SIGN_CNTA0_carry__0_i_3_n_0,SIGN_CNTA0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__0_i_1
       (.I0(OUT_CNTA_d1[21]),
        .I1(OUT_CNTA[21]),
        .I2(OUT_CNTA[23]),
        .I3(OUT_CNTA_d1[23]),
        .I4(OUT_CNTA[22]),
        .I5(OUT_CNTA_d1[22]),
        .O(SIGN_CNTA0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__0_i_2
       (.I0(OUT_CNTA_d1[18]),
        .I1(OUT_CNTA[18]),
        .I2(OUT_CNTA[20]),
        .I3(OUT_CNTA_d1[20]),
        .I4(OUT_CNTA[19]),
        .I5(OUT_CNTA_d1[19]),
        .O(SIGN_CNTA0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__0_i_3
       (.I0(OUT_CNTA_d1[15]),
        .I1(OUT_CNTA[15]),
        .I2(OUT_CNTA[17]),
        .I3(OUT_CNTA_d1[17]),
        .I4(OUT_CNTA[16]),
        .I5(OUT_CNTA_d1[16]),
        .O(SIGN_CNTA0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__0_i_4
       (.I0(OUT_CNTA_d1[12]),
        .I1(OUT_CNTA[12]),
        .I2(OUT_CNTA[14]),
        .I3(OUT_CNTA_d1[14]),
        .I4(OUT_CNTA[13]),
        .I5(OUT_CNTA_d1[13]),
        .O(SIGN_CNTA0_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTA0_carry__1
       (.CI(SIGN_CNTA0_carry__0_n_0),
        .CO({NLW_SIGN_CNTA0_carry__1_CO_UNCONNECTED[3],SIGN_CNTA0,SIGN_CNTA0_carry__1_n_2,SIGN_CNTA0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTA0_carry__1_i_1_n_0,SIGN_CNTA0_carry__1_i_2_n_0,SIGN_CNTA0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTA0_carry__1_i_1
       (.I0(OUT_CNTA_d1[30]),
        .I1(OUT_CNTA[30]),
        .I2(OUT_CNTA_d1[31]),
        .I3(OUT_CNTA[31]),
        .O(SIGN_CNTA0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__1_i_2
       (.I0(OUT_CNTA_d1[27]),
        .I1(OUT_CNTA[27]),
        .I2(OUT_CNTA[29]),
        .I3(OUT_CNTA_d1[29]),
        .I4(OUT_CNTA[28]),
        .I5(OUT_CNTA_d1[28]),
        .O(SIGN_CNTA0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry__1_i_3
       (.I0(OUT_CNTA_d1[24]),
        .I1(OUT_CNTA[24]),
        .I2(OUT_CNTA[26]),
        .I3(OUT_CNTA_d1[26]),
        .I4(OUT_CNTA[25]),
        .I5(OUT_CNTA_d1[25]),
        .O(SIGN_CNTA0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry_i_1
       (.I0(OUT_CNTA_d1[9]),
        .I1(OUT_CNTA[9]),
        .I2(OUT_CNTA[11]),
        .I3(OUT_CNTA_d1[11]),
        .I4(OUT_CNTA[10]),
        .I5(OUT_CNTA_d1[10]),
        .O(SIGN_CNTA0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry_i_2
       (.I0(OUT_CNTA_d1[6]),
        .I1(OUT_CNTA[6]),
        .I2(OUT_CNTA[8]),
        .I3(OUT_CNTA_d1[8]),
        .I4(OUT_CNTA[7]),
        .I5(OUT_CNTA_d1[7]),
        .O(SIGN_CNTA0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry_i_3
       (.I0(OUT_CNTA_d1[3]),
        .I1(OUT_CNTA[3]),
        .I2(OUT_CNTA[5]),
        .I3(OUT_CNTA_d1[5]),
        .I4(OUT_CNTA[4]),
        .I5(OUT_CNTA_d1[4]),
        .O(SIGN_CNTA0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA0_carry_i_4
       (.I0(OUT_CNTA_d1[0]),
        .I1(OUT_CNTA[0]),
        .I2(OUT_CNTA[2]),
        .I3(OUT_CNTA_d1[2]),
        .I4(OUT_CNTA[1]),
        .I5(OUT_CNTA_d1[1]),
        .O(SIGN_CNTA0_carry_i_4_n_0));
  CARRY4 SIGN_CNTA1_carry
       (.CI(1'b0),
        .CO({SIGN_CNTA1_carry_n_0,SIGN_CNTA1_carry_n_1,SIGN_CNTA1_carry_n_2,SIGN_CNTA1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA1_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTA1_carry_i_1_n_0,SIGN_CNTA1_carry_i_2_n_0,SIGN_CNTA1_carry_i_3_n_0,SIGN_CNTA1_carry_i_4_n_0}));
  CARRY4 SIGN_CNTA1_carry__0
       (.CI(SIGN_CNTA1_carry_n_0),
        .CO({SIGN_CNTA1_carry__0_n_0,SIGN_CNTA1_carry__0_n_1,SIGN_CNTA1_carry__0_n_2,SIGN_CNTA1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA1_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTA1_carry__0_i_1_n_0,SIGN_CNTA1_carry__0_i_2_n_0,SIGN_CNTA1_carry__0_i_3_n_0,SIGN_CNTA1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__0_i_1
       (.I0(OUT_CNTA_d2[21]),
        .I1(OUT_CNTA_d1[21]),
        .I2(OUT_CNTA_d1[23]),
        .I3(OUT_CNTA_d2[23]),
        .I4(OUT_CNTA_d1[22]),
        .I5(OUT_CNTA_d2[22]),
        .O(SIGN_CNTA1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__0_i_2
       (.I0(OUT_CNTA_d2[18]),
        .I1(OUT_CNTA_d1[18]),
        .I2(OUT_CNTA_d1[20]),
        .I3(OUT_CNTA_d2[20]),
        .I4(OUT_CNTA_d1[19]),
        .I5(OUT_CNTA_d2[19]),
        .O(SIGN_CNTA1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__0_i_3
       (.I0(OUT_CNTA_d2[15]),
        .I1(OUT_CNTA_d1[15]),
        .I2(OUT_CNTA_d1[17]),
        .I3(OUT_CNTA_d2[17]),
        .I4(OUT_CNTA_d1[16]),
        .I5(OUT_CNTA_d2[16]),
        .O(SIGN_CNTA1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__0_i_4
       (.I0(OUT_CNTA_d2[12]),
        .I1(OUT_CNTA_d1[12]),
        .I2(OUT_CNTA_d1[14]),
        .I3(OUT_CNTA_d2[14]),
        .I4(OUT_CNTA_d1[13]),
        .I5(OUT_CNTA_d2[13]),
        .O(SIGN_CNTA1_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTA1_carry__1
       (.CI(SIGN_CNTA1_carry__0_n_0),
        .CO({NLW_SIGN_CNTA1_carry__1_CO_UNCONNECTED[3],SIGN_CNTA1,SIGN_CNTA1_carry__1_n_2,SIGN_CNTA1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTA1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTA1_carry__1_i_1_n_0,SIGN_CNTA1_carry__1_i_2_n_0,SIGN_CNTA1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTA1_carry__1_i_1
       (.I0(OUT_CNTA_d2[30]),
        .I1(OUT_CNTA_d1[30]),
        .I2(OUT_CNTA_d2[31]),
        .I3(OUT_CNTA_d1[31]),
        .O(SIGN_CNTA1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__1_i_2
       (.I0(OUT_CNTA_d2[27]),
        .I1(OUT_CNTA_d1[27]),
        .I2(OUT_CNTA_d1[29]),
        .I3(OUT_CNTA_d2[29]),
        .I4(OUT_CNTA_d1[28]),
        .I5(OUT_CNTA_d2[28]),
        .O(SIGN_CNTA1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry__1_i_3
       (.I0(OUT_CNTA_d2[24]),
        .I1(OUT_CNTA_d1[24]),
        .I2(OUT_CNTA_d1[26]),
        .I3(OUT_CNTA_d2[26]),
        .I4(OUT_CNTA_d1[25]),
        .I5(OUT_CNTA_d2[25]),
        .O(SIGN_CNTA1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry_i_1
       (.I0(OUT_CNTA_d2[9]),
        .I1(OUT_CNTA_d1[9]),
        .I2(OUT_CNTA_d1[11]),
        .I3(OUT_CNTA_d2[11]),
        .I4(OUT_CNTA_d1[10]),
        .I5(OUT_CNTA_d2[10]),
        .O(SIGN_CNTA1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry_i_2
       (.I0(OUT_CNTA_d2[6]),
        .I1(OUT_CNTA_d1[6]),
        .I2(OUT_CNTA_d1[8]),
        .I3(OUT_CNTA_d2[8]),
        .I4(OUT_CNTA_d1[7]),
        .I5(OUT_CNTA_d2[7]),
        .O(SIGN_CNTA1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry_i_3
       (.I0(OUT_CNTA_d2[3]),
        .I1(OUT_CNTA_d1[3]),
        .I2(OUT_CNTA_d1[5]),
        .I3(OUT_CNTA_d2[5]),
        .I4(OUT_CNTA_d1[4]),
        .I5(OUT_CNTA_d2[4]),
        .O(SIGN_CNTA1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTA1_carry_i_4
       (.I0(OUT_CNTA_d2[0]),
        .I1(OUT_CNTA_d1[0]),
        .I2(OUT_CNTA_d1[2]),
        .I3(OUT_CNTA_d2[2]),
        .I4(OUT_CNTA_d1[1]),
        .I5(OUT_CNTA_d2[1]),
        .O(SIGN_CNTA1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    SIGN_CNTA_i_1
       (.I0(SIGN_CNTA1),
        .I1(SIGN_CNTA0),
        .I2(SIGN_CNTA),
        .O(SIGN_CNTA_i_1_n_0));
  FDCE SIGN_CNTA_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(SIGN_CNTA_i_1_n_0),
        .Q(SIGN_CNTA));
  CARRY4 SIGN_CNTB0_carry
       (.CI(1'b0),
        .CO({SIGN_CNTB0_carry_n_0,SIGN_CNTB0_carry_n_1,SIGN_CNTB0_carry_n_2,SIGN_CNTB0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB0_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTB0_carry_i_1_n_0,SIGN_CNTB0_carry_i_2_n_0,SIGN_CNTB0_carry_i_3_n_0,SIGN_CNTB0_carry_i_4_n_0}));
  CARRY4 SIGN_CNTB0_carry__0
       (.CI(SIGN_CNTB0_carry_n_0),
        .CO({SIGN_CNTB0_carry__0_n_0,SIGN_CNTB0_carry__0_n_1,SIGN_CNTB0_carry__0_n_2,SIGN_CNTB0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB0_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTB0_carry__0_i_1_n_0,SIGN_CNTB0_carry__0_i_2_n_0,SIGN_CNTB0_carry__0_i_3_n_0,SIGN_CNTB0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__0_i_1
       (.I0(OUT_CNTB_d1[21]),
        .I1(OUT_CNTB[21]),
        .I2(OUT_CNTB[23]),
        .I3(OUT_CNTB_d1[23]),
        .I4(OUT_CNTB[22]),
        .I5(OUT_CNTB_d1[22]),
        .O(SIGN_CNTB0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__0_i_2
       (.I0(OUT_CNTB_d1[18]),
        .I1(OUT_CNTB[18]),
        .I2(OUT_CNTB[20]),
        .I3(OUT_CNTB_d1[20]),
        .I4(OUT_CNTB[19]),
        .I5(OUT_CNTB_d1[19]),
        .O(SIGN_CNTB0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__0_i_3
       (.I0(OUT_CNTB_d1[15]),
        .I1(OUT_CNTB[15]),
        .I2(OUT_CNTB[17]),
        .I3(OUT_CNTB_d1[17]),
        .I4(OUT_CNTB[16]),
        .I5(OUT_CNTB_d1[16]),
        .O(SIGN_CNTB0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__0_i_4
       (.I0(OUT_CNTB_d1[12]),
        .I1(OUT_CNTB[12]),
        .I2(OUT_CNTB[14]),
        .I3(OUT_CNTB_d1[14]),
        .I4(OUT_CNTB[13]),
        .I5(OUT_CNTB_d1[13]),
        .O(SIGN_CNTB0_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTB0_carry__1
       (.CI(SIGN_CNTB0_carry__0_n_0),
        .CO({NLW_SIGN_CNTB0_carry__1_CO_UNCONNECTED[3],SIGN_CNTB0,SIGN_CNTB0_carry__1_n_2,SIGN_CNTB0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTB0_carry__1_i_1_n_0,SIGN_CNTB0_carry__1_i_2_n_0,SIGN_CNTB0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTB0_carry__1_i_1
       (.I0(OUT_CNTB_d1[30]),
        .I1(OUT_CNTB[30]),
        .I2(OUT_CNTB_d1[31]),
        .I3(OUT_CNTB[31]),
        .O(SIGN_CNTB0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__1_i_2
       (.I0(OUT_CNTB_d1[27]),
        .I1(OUT_CNTB[27]),
        .I2(OUT_CNTB[29]),
        .I3(OUT_CNTB_d1[29]),
        .I4(OUT_CNTB[28]),
        .I5(OUT_CNTB_d1[28]),
        .O(SIGN_CNTB0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry__1_i_3
       (.I0(OUT_CNTB_d1[24]),
        .I1(OUT_CNTB[24]),
        .I2(OUT_CNTB[26]),
        .I3(OUT_CNTB_d1[26]),
        .I4(OUT_CNTB[25]),
        .I5(OUT_CNTB_d1[25]),
        .O(SIGN_CNTB0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry_i_1
       (.I0(OUT_CNTB_d1[9]),
        .I1(OUT_CNTB[9]),
        .I2(OUT_CNTB[11]),
        .I3(OUT_CNTB_d1[11]),
        .I4(OUT_CNTB[10]),
        .I5(OUT_CNTB_d1[10]),
        .O(SIGN_CNTB0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry_i_2
       (.I0(OUT_CNTB_d1[6]),
        .I1(OUT_CNTB[6]),
        .I2(OUT_CNTB[8]),
        .I3(OUT_CNTB_d1[8]),
        .I4(OUT_CNTB[7]),
        .I5(OUT_CNTB_d1[7]),
        .O(SIGN_CNTB0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry_i_3
       (.I0(OUT_CNTB_d1[3]),
        .I1(OUT_CNTB[3]),
        .I2(OUT_CNTB[5]),
        .I3(OUT_CNTB_d1[5]),
        .I4(OUT_CNTB[4]),
        .I5(OUT_CNTB_d1[4]),
        .O(SIGN_CNTB0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB0_carry_i_4
       (.I0(OUT_CNTB_d1[0]),
        .I1(OUT_CNTB[0]),
        .I2(OUT_CNTB[2]),
        .I3(OUT_CNTB_d1[2]),
        .I4(OUT_CNTB[1]),
        .I5(OUT_CNTB_d1[1]),
        .O(SIGN_CNTB0_carry_i_4_n_0));
  CARRY4 SIGN_CNTB1_carry
       (.CI(1'b0),
        .CO({SIGN_CNTB1_carry_n_0,SIGN_CNTB1_carry_n_1,SIGN_CNTB1_carry_n_2,SIGN_CNTB1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB1_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTB1_carry_i_1_n_0,SIGN_CNTB1_carry_i_2_n_0,SIGN_CNTB1_carry_i_3_n_0,SIGN_CNTB1_carry_i_4_n_0}));
  CARRY4 SIGN_CNTB1_carry__0
       (.CI(SIGN_CNTB1_carry_n_0),
        .CO({SIGN_CNTB1_carry__0_n_0,SIGN_CNTB1_carry__0_n_1,SIGN_CNTB1_carry__0_n_2,SIGN_CNTB1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB1_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTB1_carry__0_i_1_n_0,SIGN_CNTB1_carry__0_i_2_n_0,SIGN_CNTB1_carry__0_i_3_n_0,SIGN_CNTB1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__0_i_1
       (.I0(OUT_CNTB_d2[21]),
        .I1(OUT_CNTB_d1[21]),
        .I2(OUT_CNTB_d1[23]),
        .I3(OUT_CNTB_d2[23]),
        .I4(OUT_CNTB_d1[22]),
        .I5(OUT_CNTB_d2[22]),
        .O(SIGN_CNTB1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__0_i_2
       (.I0(OUT_CNTB_d2[18]),
        .I1(OUT_CNTB_d1[18]),
        .I2(OUT_CNTB_d1[20]),
        .I3(OUT_CNTB_d2[20]),
        .I4(OUT_CNTB_d1[19]),
        .I5(OUT_CNTB_d2[19]),
        .O(SIGN_CNTB1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__0_i_3
       (.I0(OUT_CNTB_d2[15]),
        .I1(OUT_CNTB_d1[15]),
        .I2(OUT_CNTB_d1[17]),
        .I3(OUT_CNTB_d2[17]),
        .I4(OUT_CNTB_d1[16]),
        .I5(OUT_CNTB_d2[16]),
        .O(SIGN_CNTB1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__0_i_4
       (.I0(OUT_CNTB_d2[12]),
        .I1(OUT_CNTB_d1[12]),
        .I2(OUT_CNTB_d1[14]),
        .I3(OUT_CNTB_d2[14]),
        .I4(OUT_CNTB_d1[13]),
        .I5(OUT_CNTB_d2[13]),
        .O(SIGN_CNTB1_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTB1_carry__1
       (.CI(SIGN_CNTB1_carry__0_n_0),
        .CO({NLW_SIGN_CNTB1_carry__1_CO_UNCONNECTED[3],SIGN_CNTB1,SIGN_CNTB1_carry__1_n_2,SIGN_CNTB1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTB1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTB1_carry__1_i_1_n_0,SIGN_CNTB1_carry__1_i_2_n_0,SIGN_CNTB1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTB1_carry__1_i_1
       (.I0(OUT_CNTB_d2[30]),
        .I1(OUT_CNTB_d1[30]),
        .I2(OUT_CNTB_d2[31]),
        .I3(OUT_CNTB_d1[31]),
        .O(SIGN_CNTB1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__1_i_2
       (.I0(OUT_CNTB_d2[27]),
        .I1(OUT_CNTB_d1[27]),
        .I2(OUT_CNTB_d1[29]),
        .I3(OUT_CNTB_d2[29]),
        .I4(OUT_CNTB_d1[28]),
        .I5(OUT_CNTB_d2[28]),
        .O(SIGN_CNTB1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry__1_i_3
       (.I0(OUT_CNTB_d2[24]),
        .I1(OUT_CNTB_d1[24]),
        .I2(OUT_CNTB_d1[26]),
        .I3(OUT_CNTB_d2[26]),
        .I4(OUT_CNTB_d1[25]),
        .I5(OUT_CNTB_d2[25]),
        .O(SIGN_CNTB1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry_i_1
       (.I0(OUT_CNTB_d2[9]),
        .I1(OUT_CNTB_d1[9]),
        .I2(OUT_CNTB_d1[11]),
        .I3(OUT_CNTB_d2[11]),
        .I4(OUT_CNTB_d1[10]),
        .I5(OUT_CNTB_d2[10]),
        .O(SIGN_CNTB1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry_i_2
       (.I0(OUT_CNTB_d2[6]),
        .I1(OUT_CNTB_d1[6]),
        .I2(OUT_CNTB_d1[8]),
        .I3(OUT_CNTB_d2[8]),
        .I4(OUT_CNTB_d1[7]),
        .I5(OUT_CNTB_d2[7]),
        .O(SIGN_CNTB1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry_i_3
       (.I0(OUT_CNTB_d2[3]),
        .I1(OUT_CNTB_d1[3]),
        .I2(OUT_CNTB_d1[5]),
        .I3(OUT_CNTB_d2[5]),
        .I4(OUT_CNTB_d1[4]),
        .I5(OUT_CNTB_d2[4]),
        .O(SIGN_CNTB1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTB1_carry_i_4
       (.I0(OUT_CNTB_d2[0]),
        .I1(OUT_CNTB_d1[0]),
        .I2(OUT_CNTB_d1[2]),
        .I3(OUT_CNTB_d2[2]),
        .I4(OUT_CNTB_d1[1]),
        .I5(OUT_CNTB_d2[1]),
        .O(SIGN_CNTB1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    SIGN_CNTB_i_1
       (.I0(SIGN_CNTB1),
        .I1(SIGN_CNTB0),
        .I2(SIGN_CNTB),
        .O(SIGN_CNTB_i_1_n_0));
  FDCE SIGN_CNTB_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(SIGN_CNTB_i_1_n_0),
        .Q(SIGN_CNTB));
  CARRY4 SIGN_CNTC0_carry
       (.CI(1'b0),
        .CO({SIGN_CNTC0_carry_n_0,SIGN_CNTC0_carry_n_1,SIGN_CNTC0_carry_n_2,SIGN_CNTC0_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC0_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTC0_carry_i_1_n_0,SIGN_CNTC0_carry_i_2_n_0,SIGN_CNTC0_carry_i_3_n_0,SIGN_CNTC0_carry_i_4_n_0}));
  CARRY4 SIGN_CNTC0_carry__0
       (.CI(SIGN_CNTC0_carry_n_0),
        .CO({SIGN_CNTC0_carry__0_n_0,SIGN_CNTC0_carry__0_n_1,SIGN_CNTC0_carry__0_n_2,SIGN_CNTC0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC0_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTC0_carry__0_i_1_n_0,SIGN_CNTC0_carry__0_i_2_n_0,SIGN_CNTC0_carry__0_i_3_n_0,SIGN_CNTC0_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__0_i_1
       (.I0(OUT_CNTC_d1[21]),
        .I1(OUT_CNTC[21]),
        .I2(OUT_CNTC[23]),
        .I3(OUT_CNTC_d1[23]),
        .I4(OUT_CNTC[22]),
        .I5(OUT_CNTC_d1[22]),
        .O(SIGN_CNTC0_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__0_i_2
       (.I0(OUT_CNTC_d1[18]),
        .I1(OUT_CNTC[18]),
        .I2(OUT_CNTC[20]),
        .I3(OUT_CNTC_d1[20]),
        .I4(OUT_CNTC[19]),
        .I5(OUT_CNTC_d1[19]),
        .O(SIGN_CNTC0_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__0_i_3
       (.I0(OUT_CNTC_d1[15]),
        .I1(OUT_CNTC[15]),
        .I2(OUT_CNTC[17]),
        .I3(OUT_CNTC_d1[17]),
        .I4(OUT_CNTC[16]),
        .I5(OUT_CNTC_d1[16]),
        .O(SIGN_CNTC0_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__0_i_4
       (.I0(OUT_CNTC_d1[12]),
        .I1(OUT_CNTC[12]),
        .I2(OUT_CNTC[14]),
        .I3(OUT_CNTC_d1[14]),
        .I4(OUT_CNTC[13]),
        .I5(OUT_CNTC_d1[13]),
        .O(SIGN_CNTC0_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTC0_carry__1
       (.CI(SIGN_CNTC0_carry__0_n_0),
        .CO({NLW_SIGN_CNTC0_carry__1_CO_UNCONNECTED[3],SIGN_CNTC0,SIGN_CNTC0_carry__1_n_2,SIGN_CNTC0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC0_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTC0_carry__1_i_1_n_0,SIGN_CNTC0_carry__1_i_2_n_0,SIGN_CNTC0_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTC0_carry__1_i_1
       (.I0(OUT_CNTC_d1[30]),
        .I1(OUT_CNTC[30]),
        .I2(OUT_CNTC_d1[31]),
        .I3(OUT_CNTC[31]),
        .O(SIGN_CNTC0_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__1_i_2
       (.I0(OUT_CNTC_d1[27]),
        .I1(OUT_CNTC[27]),
        .I2(OUT_CNTC[29]),
        .I3(OUT_CNTC_d1[29]),
        .I4(OUT_CNTC[28]),
        .I5(OUT_CNTC_d1[28]),
        .O(SIGN_CNTC0_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry__1_i_3
       (.I0(OUT_CNTC_d1[24]),
        .I1(OUT_CNTC[24]),
        .I2(OUT_CNTC[26]),
        .I3(OUT_CNTC_d1[26]),
        .I4(OUT_CNTC[25]),
        .I5(OUT_CNTC_d1[25]),
        .O(SIGN_CNTC0_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry_i_1
       (.I0(OUT_CNTC_d1[9]),
        .I1(OUT_CNTC[9]),
        .I2(OUT_CNTC[11]),
        .I3(OUT_CNTC_d1[11]),
        .I4(OUT_CNTC[10]),
        .I5(OUT_CNTC_d1[10]),
        .O(SIGN_CNTC0_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry_i_2
       (.I0(OUT_CNTC_d1[6]),
        .I1(OUT_CNTC[6]),
        .I2(OUT_CNTC[8]),
        .I3(OUT_CNTC_d1[8]),
        .I4(OUT_CNTC[7]),
        .I5(OUT_CNTC_d1[7]),
        .O(SIGN_CNTC0_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry_i_3
       (.I0(OUT_CNTC_d1[3]),
        .I1(OUT_CNTC[3]),
        .I2(OUT_CNTC[5]),
        .I3(OUT_CNTC_d1[5]),
        .I4(OUT_CNTC[4]),
        .I5(OUT_CNTC_d1[4]),
        .O(SIGN_CNTC0_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC0_carry_i_4
       (.I0(OUT_CNTC_d1[0]),
        .I1(OUT_CNTC[0]),
        .I2(OUT_CNTC[2]),
        .I3(OUT_CNTC_d1[2]),
        .I4(OUT_CNTC[1]),
        .I5(OUT_CNTC_d1[1]),
        .O(SIGN_CNTC0_carry_i_4_n_0));
  CARRY4 SIGN_CNTC1_carry
       (.CI(1'b0),
        .CO({SIGN_CNTC1_carry_n_0,SIGN_CNTC1_carry_n_1,SIGN_CNTC1_carry_n_2,SIGN_CNTC1_carry_n_3}),
        .CYINIT(1'b1),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC1_carry_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTC1_carry_i_1_n_0,SIGN_CNTC1_carry_i_2_n_0,SIGN_CNTC1_carry_i_3_n_0,SIGN_CNTC1_carry_i_4_n_0}));
  CARRY4 SIGN_CNTC1_carry__0
       (.CI(SIGN_CNTC1_carry_n_0),
        .CO({SIGN_CNTC1_carry__0_n_0,SIGN_CNTC1_carry__0_n_1,SIGN_CNTC1_carry__0_n_2,SIGN_CNTC1_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC1_carry__0_O_UNCONNECTED[3:0]),
        .S({SIGN_CNTC1_carry__0_i_1_n_0,SIGN_CNTC1_carry__0_i_2_n_0,SIGN_CNTC1_carry__0_i_3_n_0,SIGN_CNTC1_carry__0_i_4_n_0}));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__0_i_1
       (.I0(OUT_CNTC_d2[21]),
        .I1(OUT_CNTC_d1[21]),
        .I2(OUT_CNTC_d1[23]),
        .I3(OUT_CNTC_d2[23]),
        .I4(OUT_CNTC_d1[22]),
        .I5(OUT_CNTC_d2[22]),
        .O(SIGN_CNTC1_carry__0_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__0_i_2
       (.I0(OUT_CNTC_d2[18]),
        .I1(OUT_CNTC_d1[18]),
        .I2(OUT_CNTC_d1[20]),
        .I3(OUT_CNTC_d2[20]),
        .I4(OUT_CNTC_d1[19]),
        .I5(OUT_CNTC_d2[19]),
        .O(SIGN_CNTC1_carry__0_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__0_i_3
       (.I0(OUT_CNTC_d2[15]),
        .I1(OUT_CNTC_d1[15]),
        .I2(OUT_CNTC_d1[17]),
        .I3(OUT_CNTC_d2[17]),
        .I4(OUT_CNTC_d1[16]),
        .I5(OUT_CNTC_d2[16]),
        .O(SIGN_CNTC1_carry__0_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__0_i_4
       (.I0(OUT_CNTC_d2[12]),
        .I1(OUT_CNTC_d1[12]),
        .I2(OUT_CNTC_d1[14]),
        .I3(OUT_CNTC_d2[14]),
        .I4(OUT_CNTC_d1[13]),
        .I5(OUT_CNTC_d2[13]),
        .O(SIGN_CNTC1_carry__0_i_4_n_0));
  CARRY4 SIGN_CNTC1_carry__1
       (.CI(SIGN_CNTC1_carry__0_n_0),
        .CO({NLW_SIGN_CNTC1_carry__1_CO_UNCONNECTED[3],SIGN_CNTC1,SIGN_CNTC1_carry__1_n_2,SIGN_CNTC1_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_SIGN_CNTC1_carry__1_O_UNCONNECTED[3:0]),
        .S({1'b0,SIGN_CNTC1_carry__1_i_1_n_0,SIGN_CNTC1_carry__1_i_2_n_0,SIGN_CNTC1_carry__1_i_3_n_0}));
  LUT4 #(
    .INIT(16'h9009)) 
    SIGN_CNTC1_carry__1_i_1
       (.I0(OUT_CNTC_d2[30]),
        .I1(OUT_CNTC_d1[30]),
        .I2(OUT_CNTC_d2[31]),
        .I3(OUT_CNTC_d1[31]),
        .O(SIGN_CNTC1_carry__1_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__1_i_2
       (.I0(OUT_CNTC_d2[27]),
        .I1(OUT_CNTC_d1[27]),
        .I2(OUT_CNTC_d1[29]),
        .I3(OUT_CNTC_d2[29]),
        .I4(OUT_CNTC_d1[28]),
        .I5(OUT_CNTC_d2[28]),
        .O(SIGN_CNTC1_carry__1_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry__1_i_3
       (.I0(OUT_CNTC_d2[24]),
        .I1(OUT_CNTC_d1[24]),
        .I2(OUT_CNTC_d1[26]),
        .I3(OUT_CNTC_d2[26]),
        .I4(OUT_CNTC_d1[25]),
        .I5(OUT_CNTC_d2[25]),
        .O(SIGN_CNTC1_carry__1_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry_i_1
       (.I0(OUT_CNTC_d2[9]),
        .I1(OUT_CNTC_d1[9]),
        .I2(OUT_CNTC_d1[11]),
        .I3(OUT_CNTC_d2[11]),
        .I4(OUT_CNTC_d1[10]),
        .I5(OUT_CNTC_d2[10]),
        .O(SIGN_CNTC1_carry_i_1_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry_i_2
       (.I0(OUT_CNTC_d2[6]),
        .I1(OUT_CNTC_d1[6]),
        .I2(OUT_CNTC_d1[8]),
        .I3(OUT_CNTC_d2[8]),
        .I4(OUT_CNTC_d1[7]),
        .I5(OUT_CNTC_d2[7]),
        .O(SIGN_CNTC1_carry_i_2_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry_i_3
       (.I0(OUT_CNTC_d2[3]),
        .I1(OUT_CNTC_d1[3]),
        .I2(OUT_CNTC_d1[5]),
        .I3(OUT_CNTC_d2[5]),
        .I4(OUT_CNTC_d1[4]),
        .I5(OUT_CNTC_d2[4]),
        .O(SIGN_CNTC1_carry_i_3_n_0));
  LUT6 #(
    .INIT(64'h9009000000009009)) 
    SIGN_CNTC1_carry_i_4
       (.I0(OUT_CNTC_d2[0]),
        .I1(OUT_CNTC_d1[0]),
        .I2(OUT_CNTC_d1[2]),
        .I3(OUT_CNTC_d2[2]),
        .I4(OUT_CNTC_d1[1]),
        .I5(OUT_CNTC_d2[1]),
        .O(SIGN_CNTC1_carry_i_4_n_0));
  LUT3 #(
    .INIT(8'h54)) 
    SIGN_CNTC_i_1
       (.I0(SIGN_CNTC1),
        .I1(SIGN_CNTC0),
        .I2(SIGN_CNTC),
        .O(SIGN_CNTC_i_1_n_0));
  FDCE SIGN_CNTC_reg
       (.C(sys_clk),
        .CE(1'b1),
        .CLR(p_0_in),
        .D(SIGN_CNTC_i_1_n_0),
        .Q(SIGN_CNTC));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_CNTtest_0_0,CNTtest,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "CNTtest,Vivado 2017.4" *) 
(* NotValidForBitStream *)
module design_1_CNTtest_0_1
   (sys_clk,
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
    SIGN_CNTC);
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 sys_clk CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0" *) input sys_clk;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 sys_rst_n RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW" *) input sys_rst_n;
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

  wire [31:0]IN_CNTA;
  wire [31:0]IN_CNTB;
  wire [31:0]IN_CNTC;
  wire IN_CNTEN;
  wire IN_START;
  wire IN_STOP;
  wire [31:0]OUT_CNTA;
  wire [31:0]OUT_CNTB;
  wire [31:0]OUT_CNTC;
  wire OUT_CNTEN;
  wire OUT_START;
  wire OUT_STOP;
  wire SIGN_CNTA;
  wire SIGN_CNTB;
  wire SIGN_CNTC;
  wire sys_clk;
  wire sys_rst_n;

  design_1_CNTtest_0_1_CNTtest inst
       (.IN_CNTA(IN_CNTA),
        .IN_CNTB(IN_CNTB),
        .IN_CNTC(IN_CNTC),
        .IN_CNTEN(IN_CNTEN),
        .IN_START(IN_START),
        .IN_STOP(IN_STOP),
        .OUT_CNTA(OUT_CNTA),
        .OUT_CNTB(OUT_CNTB),
        .OUT_CNTC(OUT_CNTC),
        .OUT_CNTEN(OUT_CNTEN),
        .OUT_START(OUT_START),
        .OUT_STOP(OUT_STOP),
        .SIGN_CNTA(SIGN_CNTA),
        .SIGN_CNTB(SIGN_CNTB),
        .SIGN_CNTC(SIGN_CNTC),
        .sys_clk(sys_clk),
        .sys_rst_n(sys_rst_n));
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
