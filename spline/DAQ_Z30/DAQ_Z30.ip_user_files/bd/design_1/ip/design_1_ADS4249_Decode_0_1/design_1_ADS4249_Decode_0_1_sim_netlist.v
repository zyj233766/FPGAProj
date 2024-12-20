// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:30:53 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_ADS4249_Decode_0_1/design_1_ADS4249_Decode_0_1_sim_netlist.v
// Design      : design_1_ADS4249_Decode_0_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "design_1_ADS4249_Decode_0_1,ADS4249_Decode,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "ADS4249_Decode,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module design_1_ADS4249_Decode_0_1
   (clkinp,
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
    dbout);
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

  wire clkinp;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da0n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da0p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da10n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da10p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da12n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da12p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da2n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da2p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da4n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da4p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da6n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da6p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da8n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire da8p;
  wire [13:0]daout;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db0n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db0p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db10n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db10p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db12n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db12p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db2n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db2p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db4n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db4p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db6n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db6p;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db8n;
  (* DIFF_TERM *) (* IBUF_LOW_PWR = 0 *) wire db8p;
  wire [13:0]dbout;

  design_1_ADS4249_Decode_0_1_ADS4249_Decode inst
       (.clkinp(clkinp),
        .da0n(da0n),
        .da0p(da0p),
        .da10n(da10n),
        .da10p(da10p),
        .da12n(da12n),
        .da12p(da12p),
        .da2n(da2n),
        .da2p(da2p),
        .da4n(da4n),
        .da4p(da4p),
        .da6n(da6n),
        .da6p(da6p),
        .da8n(da8n),
        .da8p(da8p),
        .daout(daout),
        .db0n(db0n),
        .db0p(db0p),
        .db10n(db10n),
        .db10p(db10p),
        .db12n(db12n),
        .db12p(db12p),
        .db2n(db2n),
        .db2p(db2p),
        .db4n(db4n),
        .db4p(db4p),
        .db6n(db6n),
        .db6p(db6p),
        .db8n(db8n),
        .db8p(db8p),
        .dbout(dbout));
endmodule

(* ORIG_REF_NAME = "ADS4249_Decode" *) 
module design_1_ADS4249_Decode_0_1_ADS4249_Decode
   (daout,
    dbout,
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
    clkinp);
  output [13:0]daout;
  output [13:0]dbout;
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
  input clkinp;

  wire [13:0]atmp;
  wire [13:0]btmp;
  wire clkinp;
  wire da0;
  wire da0n;
  wire da0p;
  wire da10;
  wire da10n;
  wire da10p;
  wire da12;
  wire da12n;
  wire da12p;
  wire da2;
  wire da2n;
  wire da2p;
  wire da4;
  wire da4n;
  wire da4p;
  wire da6;
  wire da6n;
  wire da6p;
  wire da8;
  wire da8n;
  wire da8p;
  wire [13:0]daout;
  wire db0;
  wire db0n;
  wire db0p;
  wire db10;
  wire db10n;
  wire db10p;
  wire db12;
  wire db12n;
  wire db12p;
  wire db2;
  wire db2n;
  wire db2p;
  wire db4;
  wire db4n;
  wire db4p;
  wire db6;
  wire db6n;
  wire db6p;
  wire db8;
  wire db8n;
  wire db8p;
  wire [13:0]dbout;

  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da0_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da0),
        .Q1(atmp[0]),
        .Q2(atmp[1]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da10_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da10),
        .Q1(atmp[10]),
        .Q2(atmp[11]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da12_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da12),
        .Q1(atmp[12]),
        .Q2(atmp[13]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da2_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da2),
        .Q1(atmp[2]),
        .Q2(atmp[3]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da4_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da4),
        .Q1(atmp[4]),
        .Q2(atmp[5]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da6_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da6),
        .Q1(atmp[6]),
        .Q2(atmp[7]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_da8_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(da8),
        .Q1(atmp[8]),
        .Q2(atmp[9]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db0_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db0),
        .Q1(btmp[0]),
        .Q2(btmp[1]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db10_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db10),
        .Q1(btmp[10]),
        .Q2(btmp[11]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db12_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db12),
        .Q1(btmp[12]),
        .Q2(btmp[13]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db2_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db2),
        .Q1(btmp[2]),
        .Q2(btmp[3]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db4_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db4),
        .Q1(btmp[4]),
        .Q2(btmp[5]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db6_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db6),
        .Q1(btmp[6]),
        .Q2(btmp[7]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* __SRVAL = "TRUE" *) 
  IDDR #(
    .DDR_CLK_EDGE("OPPOSITE_EDGE"),
    .INIT_Q1(1'b0),
    .INIT_Q2(1'b0),
    .IS_C_INVERTED(1'b0),
    .IS_D_INVERTED(1'b0),
    .SRTYPE("SYNC")) 
    IDDR_db8_inst
       (.C(clkinp),
        .CE(1'b1),
        .D(db8),
        .Q1(btmp[8]),
        .Q2(btmp[9]),
        .R(1'b0),
        .S(1'b0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da0lvds
       (.I(da0p),
        .IB(da0n),
        .O(da0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da10lvds
       (.I(da10p),
        .IB(da10n),
        .O(da10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da12lvds
       (.I(da12p),
        .IB(da12n),
        .O(da12));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da2lvds
       (.I(da2p),
        .IB(da2n),
        .O(da2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da4lvds
       (.I(da4p),
        .IB(da4n),
        .O(da4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da6lvds
       (.I(da6p),
        .IB(da6n),
        .O(da6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_da8lvds
       (.I(da8p),
        .IB(da8n),
        .O(da8));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db0lvds
       (.I(db0p),
        .IB(db0n),
        .O(db0));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db10lvds
       (.I(db10p),
        .IB(db10n),
        .O(db10));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db12lvds
       (.I(db12p),
        .IB(db12n),
        .O(db12));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db2lvds
       (.I(db2p),
        .IB(db2n),
        .O(db2));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db4lvds
       (.I(db4p),
        .IB(db4n),
        .O(db4));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db6lvds
       (.I(db6p),
        .IB(db6n),
        .O(db6));
  (* BOX_TYPE = "PRIMITIVE" *) 
  (* CAPACITANCE = "DONT_CARE" *) 
  (* IBUF_DELAY_VALUE = "0" *) 
  (* IFD_DELAY_VALUE = "AUTO" *) 
  IBUFDS #(
    .IOSTANDARD("DEFAULT")) 
    adc_db8lvds
       (.I(db8p),
        .IB(db8n),
        .O(db8));
  FDRE \daout_reg[0] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[0]),
        .Q(daout[0]),
        .R(1'b0));
  FDRE \daout_reg[10] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[10]),
        .Q(daout[10]),
        .R(1'b0));
  FDRE \daout_reg[11] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[11]),
        .Q(daout[11]),
        .R(1'b0));
  FDRE \daout_reg[12] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[12]),
        .Q(daout[12]),
        .R(1'b0));
  FDRE \daout_reg[13] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[13]),
        .Q(daout[13]),
        .R(1'b0));
  FDRE \daout_reg[1] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[1]),
        .Q(daout[1]),
        .R(1'b0));
  FDRE \daout_reg[2] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[2]),
        .Q(daout[2]),
        .R(1'b0));
  FDRE \daout_reg[3] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[3]),
        .Q(daout[3]),
        .R(1'b0));
  FDRE \daout_reg[4] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[4]),
        .Q(daout[4]),
        .R(1'b0));
  FDRE \daout_reg[5] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[5]),
        .Q(daout[5]),
        .R(1'b0));
  FDRE \daout_reg[6] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[6]),
        .Q(daout[6]),
        .R(1'b0));
  FDRE \daout_reg[7] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[7]),
        .Q(daout[7]),
        .R(1'b0));
  FDRE \daout_reg[8] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[8]),
        .Q(daout[8]),
        .R(1'b0));
  FDRE \daout_reg[9] 
       (.C(clkinp),
        .CE(1'b1),
        .D(atmp[9]),
        .Q(daout[9]),
        .R(1'b0));
  FDRE \dbout_reg[0] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[0]),
        .Q(dbout[0]),
        .R(1'b0));
  FDRE \dbout_reg[10] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[10]),
        .Q(dbout[10]),
        .R(1'b0));
  FDRE \dbout_reg[11] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[11]),
        .Q(dbout[11]),
        .R(1'b0));
  FDRE \dbout_reg[12] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[12]),
        .Q(dbout[12]),
        .R(1'b0));
  FDRE \dbout_reg[13] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[13]),
        .Q(dbout[13]),
        .R(1'b0));
  FDRE \dbout_reg[1] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[1]),
        .Q(dbout[1]),
        .R(1'b0));
  FDRE \dbout_reg[2] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[2]),
        .Q(dbout[2]),
        .R(1'b0));
  FDRE \dbout_reg[3] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[3]),
        .Q(dbout[3]),
        .R(1'b0));
  FDRE \dbout_reg[4] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[4]),
        .Q(dbout[4]),
        .R(1'b0));
  FDRE \dbout_reg[5] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[5]),
        .Q(dbout[5]),
        .R(1'b0));
  FDRE \dbout_reg[6] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[6]),
        .Q(dbout[6]),
        .R(1'b0));
  FDRE \dbout_reg[7] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[7]),
        .Q(dbout[7]),
        .R(1'b0));
  FDRE \dbout_reg[8] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[8]),
        .Q(dbout[8]),
        .R(1'b0));
  FDRE \dbout_reg[9] 
       (.C(clkinp),
        .CE(1'b1),
        .D(btmp[9]),
        .Q(dbout[9]),
        .R(1'b0));
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
