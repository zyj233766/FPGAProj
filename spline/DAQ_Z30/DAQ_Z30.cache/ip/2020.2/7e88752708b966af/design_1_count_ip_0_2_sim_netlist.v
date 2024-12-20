// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:30:52 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_count_ip_0_2_sim_netlist.v
// Design      : design_1_count_ip_0_2
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ip_v1_0
   (start,
    stop,
    gate_out,
    s0_axi_wready,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s0_axi_rdata,
    s0_axi_rvalid,
    s0_axi_bvalid,
    s0_axi_aclk,
    input_fx,
    s0_axi_araddr,
    s0_axi_arvalid,
    s0_axi_wvalid,
    s0_axi_awvalid,
    s0_axi_aresetn,
    s0_axi_bready,
    s0_axi_rready);
  output start;
  output stop;
  output gate_out;
  output s0_axi_wready;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [29:0]s0_axi_rdata;
  output s0_axi_rvalid;
  output s0_axi_bvalid;
  input s0_axi_aclk;
  input input_fx;
  input [1:0]s0_axi_araddr;
  input s0_axi_arvalid;
  input s0_axi_wvalid;
  input s0_axi_awvalid;
  input s0_axi_aresetn;
  input s0_axi_bready;
  input s0_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire gate_out;
  wire input_fx;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arvalid;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [29:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;
  wire start;
  wire stop;

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ip_v1_0_S0_AXI count_ip_v1_0_S0_AXI_inst
       (.S_AXI_ARREADY(S_AXI_ARREADY),
        .S_AXI_AWREADY(S_AXI_AWREADY),
        .gate_out(gate_out),
        .input_fx(input_fx),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(s0_axi_rdata),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wready(s0_axi_wready),
        .s0_axi_wvalid(s0_axi_wvalid),
        .start(start),
        .stop(stop));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ip_v1_0_S0_AXI
   (start,
    stop,
    gate_out,
    s0_axi_wready,
    S_AXI_AWREADY,
    S_AXI_ARREADY,
    s0_axi_rdata,
    s0_axi_rvalid,
    s0_axi_bvalid,
    s0_axi_aclk,
    input_fx,
    s0_axi_araddr,
    s0_axi_arvalid,
    s0_axi_wvalid,
    s0_axi_awvalid,
    s0_axi_aresetn,
    s0_axi_bready,
    s0_axi_rready);
  output start;
  output stop;
  output gate_out;
  output s0_axi_wready;
  output S_AXI_AWREADY;
  output S_AXI_ARREADY;
  output [29:0]s0_axi_rdata;
  output s0_axi_rvalid;
  output s0_axi_bvalid;
  input s0_axi_aclk;
  input input_fx;
  input [1:0]s0_axi_araddr;
  input s0_axi_arvalid;
  input s0_axi_wvalid;
  input s0_axi_awvalid;
  input s0_axi_aresetn;
  input s0_axi_bready;
  input s0_axi_rready;

  wire S_AXI_ARREADY;
  wire S_AXI_AWREADY;
  wire aw_en_i_1_n_0;
  wire aw_en_reg_n_0;
  wire [3:2]axi_araddr;
  wire \axi_araddr[2]_i_1_n_0 ;
  wire \axi_araddr[3]_i_1_n_0 ;
  wire axi_arready0;
  wire axi_awready0__0;
  wire axi_bvalid_i_1_n_0;
  wire axi_rvalid_i_1_n_0;
  wire axi_wready0__0;
  wire [29:0]cnt_fx_reg;
  wire gate_out;
  wire input_fx;
  wire [29:0]reg_data_out;
  wire s0_axi_aclk;
  wire [1:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arvalid;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [29:0]s0_axi_rdata;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;
  wire slv_reg_rden__0;
  wire start;
  wire stop;
  wire u_counter_n_0;

  LUT6 #(
    .INIT(64'hF7FFF700F700F700)) 
    aw_en_i_1
       (.I0(s0_axi_awvalid),
        .I1(s0_axi_wvalid),
        .I2(S_AXI_AWREADY),
        .I3(aw_en_reg_n_0),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(aw_en_i_1_n_0));
  FDSE aw_en_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(aw_en_i_1_n_0),
        .Q(aw_en_reg_n_0),
        .S(u_counter_n_0));
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[2]_i_1 
       (.I0(s0_axi_araddr[0]),
        .I1(s0_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[2]),
        .O(\axi_araddr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT4 #(
    .INIT(16'hFB08)) 
    \axi_araddr[3]_i_1 
       (.I0(s0_axi_araddr[1]),
        .I1(s0_axi_arvalid),
        .I2(S_AXI_ARREADY),
        .I3(axi_araddr[3]),
        .O(\axi_araddr[3]_i_1_n_0 ));
  FDRE \axi_araddr_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[2]_i_1_n_0 ),
        .Q(axi_araddr[2]),
        .R(u_counter_n_0));
  FDRE \axi_araddr_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(\axi_araddr[3]_i_1_n_0 ),
        .Q(axi_araddr[3]),
        .R(u_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair21" *) 
  LUT2 #(
    .INIT(4'h2)) 
    axi_arready_i_1
       (.I0(s0_axi_arvalid),
        .I1(S_AXI_ARREADY),
        .O(axi_arready0));
  FDRE axi_arready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_arready0),
        .Q(S_AXI_ARREADY),
        .R(u_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_awready0
       (.I0(aw_en_reg_n_0),
        .I1(S_AXI_AWREADY),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awvalid),
        .O(axi_awready0__0));
  FDRE axi_awready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_awready0__0),
        .Q(S_AXI_AWREADY),
        .R(u_counter_n_0));
  LUT6 #(
    .INIT(64'h0000FFFF80008000)) 
    axi_bvalid_i_1
       (.I0(S_AXI_AWREADY),
        .I1(s0_axi_wready),
        .I2(s0_axi_awvalid),
        .I3(s0_axi_wvalid),
        .I4(s0_axi_bready),
        .I5(s0_axi_bvalid),
        .O(axi_bvalid_i_1_n_0));
  FDRE axi_bvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_bvalid_i_1_n_0),
        .Q(s0_axi_bvalid),
        .R(u_counter_n_0));
  LUT5 #(
    .INIT(32'h30BB3088)) 
    \axi_rdata[0]_i_1 
       (.I0(stop),
        .I1(axi_araddr[2]),
        .I2(cnt_fx_reg[0]),
        .I3(axi_araddr[3]),
        .I4(start),
        .O(reg_data_out[0]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[10]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[10]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[10]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[11]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[11]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[11]));
  (* SOFT_HLUTNM = "soft_lutpair28" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[12]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[12]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[13]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[13]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[13]));
  (* SOFT_HLUTNM = "soft_lutpair29" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[14]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[14]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[14]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[15]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[15]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair30" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[16]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[16]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[17]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[17]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[17]));
  (* SOFT_HLUTNM = "soft_lutpair31" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[18]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[18]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[18]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[19]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[19]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[19]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[1]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[1]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair32" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[20]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[20]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[20]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[21]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[21]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[21]));
  (* SOFT_HLUTNM = "soft_lutpair33" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[22]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[22]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[22]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[23]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[23]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[23]));
  (* SOFT_HLUTNM = "soft_lutpair34" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[24]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[24]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[24]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[25]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[25]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[25]));
  (* SOFT_HLUTNM = "soft_lutpair35" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[26]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[26]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[26]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[27]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[27]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair36" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[28]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[28]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[28]));
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[29]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[29]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[29]));
  (* SOFT_HLUTNM = "soft_lutpair23" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[2]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[2]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[3]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[3]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair24" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[4]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[4]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[4]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[5]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[5]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair25" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[6]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[6]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[7]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[7]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[7]));
  (* SOFT_HLUTNM = "soft_lutpair26" *) 
  LUT3 #(
    .INIT(8'hA8)) 
    \axi_rdata[8]_i_1 
       (.I0(axi_araddr[3]),
        .I1(cnt_fx_reg[8]),
        .I2(axi_araddr[2]),
        .O(reg_data_out[8]));
  (* SOFT_HLUTNM = "soft_lutpair27" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \axi_rdata[9]_i_1 
       (.I0(axi_araddr[2]),
        .I1(cnt_fx_reg[9]),
        .I2(axi_araddr[3]),
        .O(reg_data_out[9]));
  FDRE \axi_rdata_reg[0] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[0]),
        .Q(s0_axi_rdata[0]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[10] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[10]),
        .Q(s0_axi_rdata[10]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[11] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[11]),
        .Q(s0_axi_rdata[11]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[12] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[12]),
        .Q(s0_axi_rdata[12]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[13] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[13]),
        .Q(s0_axi_rdata[13]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[14] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[14]),
        .Q(s0_axi_rdata[14]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[15] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[15]),
        .Q(s0_axi_rdata[15]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[16] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[16]),
        .Q(s0_axi_rdata[16]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[17] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[17]),
        .Q(s0_axi_rdata[17]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[18] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[18]),
        .Q(s0_axi_rdata[18]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[19] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[19]),
        .Q(s0_axi_rdata[19]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[1] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[1]),
        .Q(s0_axi_rdata[1]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[20] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[20]),
        .Q(s0_axi_rdata[20]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[21] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[21]),
        .Q(s0_axi_rdata[21]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[22] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[22]),
        .Q(s0_axi_rdata[22]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[23] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[23]),
        .Q(s0_axi_rdata[23]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[24] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[24]),
        .Q(s0_axi_rdata[24]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[25] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[25]),
        .Q(s0_axi_rdata[25]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[26] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[26]),
        .Q(s0_axi_rdata[26]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[27] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[27]),
        .Q(s0_axi_rdata[27]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[28] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[28]),
        .Q(s0_axi_rdata[28]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[29] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[29]),
        .Q(s0_axi_rdata[29]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[2] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[2]),
        .Q(s0_axi_rdata[2]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[3] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[3]),
        .Q(s0_axi_rdata[3]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[4] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[4]),
        .Q(s0_axi_rdata[4]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[5] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[5]),
        .Q(s0_axi_rdata[5]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[6] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[6]),
        .Q(s0_axi_rdata[6]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[7] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[7]),
        .Q(s0_axi_rdata[7]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[8] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[8]),
        .Q(s0_axi_rdata[8]),
        .R(u_counter_n_0));
  FDRE \axi_rdata_reg[9] 
       (.C(s0_axi_aclk),
        .CE(slv_reg_rden__0),
        .D(reg_data_out[9]),
        .Q(s0_axi_rdata[9]),
        .R(u_counter_n_0));
  LUT4 #(
    .INIT(16'h08F8)) 
    axi_rvalid_i_1
       (.I0(S_AXI_ARREADY),
        .I1(s0_axi_arvalid),
        .I2(s0_axi_rvalid),
        .I3(s0_axi_rready),
        .O(axi_rvalid_i_1_n_0));
  FDRE axi_rvalid_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_rvalid_i_1_n_0),
        .Q(s0_axi_rvalid),
        .R(u_counter_n_0));
  (* SOFT_HLUTNM = "soft_lutpair22" *) 
  LUT4 #(
    .INIT(16'h2000)) 
    axi_wready0
       (.I0(aw_en_reg_n_0),
        .I1(s0_axi_wready),
        .I2(s0_axi_wvalid),
        .I3(s0_axi_awvalid),
        .O(axi_wready0__0));
  FDRE axi_wready_reg
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .D(axi_wready0__0),
        .Q(s0_axi_wready),
        .R(u_counter_n_0));
  LUT3 #(
    .INIT(8'h20)) 
    slv_reg_rden
       (.I0(s0_axi_arvalid),
        .I1(s0_axi_rvalid),
        .I2(S_AXI_ARREADY),
        .O(slv_reg_rden__0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter u_counter
       (.Q(cnt_fx_reg),
        .gate_out(gate_out),
        .input_fx(input_fx),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_aresetn_0(u_counter_n_0),
        .start(start),
        .stop(stop));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_counter
   (s0_axi_aresetn_0,
    start,
    stop,
    gate_out,
    Q,
    s0_axi_aclk,
    input_fx,
    s0_axi_aresetn);
  output s0_axi_aresetn_0;
  output start;
  output stop;
  output gate_out;
  output [29:0]Q;
  input s0_axi_aclk;
  input input_fx;
  input s0_axi_aresetn;

  wire [29:0]Q;
  wire \cnt_fx[0]_i_2_n_0 ;
  wire \cnt_fx[0]_i_3_n_0 ;
  wire \cnt_fx[0]_i_4_n_0 ;
  wire \cnt_fx[0]_i_5_n_0 ;
  wire \cnt_fx[12]_i_2_n_0 ;
  wire \cnt_fx[12]_i_3_n_0 ;
  wire \cnt_fx[12]_i_4_n_0 ;
  wire \cnt_fx[12]_i_5_n_0 ;
  wire \cnt_fx[16]_i_2_n_0 ;
  wire \cnt_fx[16]_i_3_n_0 ;
  wire \cnt_fx[16]_i_4_n_0 ;
  wire \cnt_fx[16]_i_5_n_0 ;
  wire \cnt_fx[20]_i_2_n_0 ;
  wire \cnt_fx[20]_i_3_n_0 ;
  wire \cnt_fx[20]_i_4_n_0 ;
  wire \cnt_fx[20]_i_5_n_0 ;
  wire \cnt_fx[24]_i_2_n_0 ;
  wire \cnt_fx[24]_i_3_n_0 ;
  wire \cnt_fx[24]_i_4_n_0 ;
  wire \cnt_fx[24]_i_5_n_0 ;
  wire \cnt_fx[28]_i_2_n_0 ;
  wire \cnt_fx[28]_i_3_n_0 ;
  wire \cnt_fx[4]_i_2_n_0 ;
  wire \cnt_fx[4]_i_3_n_0 ;
  wire \cnt_fx[4]_i_4_n_0 ;
  wire \cnt_fx[4]_i_5_n_0 ;
  wire \cnt_fx[8]_i_2_n_0 ;
  wire \cnt_fx[8]_i_3_n_0 ;
  wire \cnt_fx[8]_i_4_n_0 ;
  wire \cnt_fx[8]_i_5_n_0 ;
  wire [29:0]cnt_fx_reg;
  wire \cnt_fx_reg[0]_i_1_n_0 ;
  wire \cnt_fx_reg[0]_i_1_n_1 ;
  wire \cnt_fx_reg[0]_i_1_n_2 ;
  wire \cnt_fx_reg[0]_i_1_n_3 ;
  wire \cnt_fx_reg[0]_i_1_n_4 ;
  wire \cnt_fx_reg[0]_i_1_n_5 ;
  wire \cnt_fx_reg[0]_i_1_n_6 ;
  wire \cnt_fx_reg[0]_i_1_n_7 ;
  wire \cnt_fx_reg[12]_i_1_n_0 ;
  wire \cnt_fx_reg[12]_i_1_n_1 ;
  wire \cnt_fx_reg[12]_i_1_n_2 ;
  wire \cnt_fx_reg[12]_i_1_n_3 ;
  wire \cnt_fx_reg[12]_i_1_n_4 ;
  wire \cnt_fx_reg[12]_i_1_n_5 ;
  wire \cnt_fx_reg[12]_i_1_n_6 ;
  wire \cnt_fx_reg[12]_i_1_n_7 ;
  wire \cnt_fx_reg[16]_i_1_n_0 ;
  wire \cnt_fx_reg[16]_i_1_n_1 ;
  wire \cnt_fx_reg[16]_i_1_n_2 ;
  wire \cnt_fx_reg[16]_i_1_n_3 ;
  wire \cnt_fx_reg[16]_i_1_n_4 ;
  wire \cnt_fx_reg[16]_i_1_n_5 ;
  wire \cnt_fx_reg[16]_i_1_n_6 ;
  wire \cnt_fx_reg[16]_i_1_n_7 ;
  wire \cnt_fx_reg[20]_i_1_n_0 ;
  wire \cnt_fx_reg[20]_i_1_n_1 ;
  wire \cnt_fx_reg[20]_i_1_n_2 ;
  wire \cnt_fx_reg[20]_i_1_n_3 ;
  wire \cnt_fx_reg[20]_i_1_n_4 ;
  wire \cnt_fx_reg[20]_i_1_n_5 ;
  wire \cnt_fx_reg[20]_i_1_n_6 ;
  wire \cnt_fx_reg[20]_i_1_n_7 ;
  wire \cnt_fx_reg[24]_i_1_n_0 ;
  wire \cnt_fx_reg[24]_i_1_n_1 ;
  wire \cnt_fx_reg[24]_i_1_n_2 ;
  wire \cnt_fx_reg[24]_i_1_n_3 ;
  wire \cnt_fx_reg[24]_i_1_n_4 ;
  wire \cnt_fx_reg[24]_i_1_n_5 ;
  wire \cnt_fx_reg[24]_i_1_n_6 ;
  wire \cnt_fx_reg[24]_i_1_n_7 ;
  wire \cnt_fx_reg[28]_i_1_n_3 ;
  wire \cnt_fx_reg[28]_i_1_n_6 ;
  wire \cnt_fx_reg[28]_i_1_n_7 ;
  wire \cnt_fx_reg[4]_i_1_n_0 ;
  wire \cnt_fx_reg[4]_i_1_n_1 ;
  wire \cnt_fx_reg[4]_i_1_n_2 ;
  wire \cnt_fx_reg[4]_i_1_n_3 ;
  wire \cnt_fx_reg[4]_i_1_n_4 ;
  wire \cnt_fx_reg[4]_i_1_n_5 ;
  wire \cnt_fx_reg[4]_i_1_n_6 ;
  wire \cnt_fx_reg[4]_i_1_n_7 ;
  wire \cnt_fx_reg[8]_i_1_n_0 ;
  wire \cnt_fx_reg[8]_i_1_n_1 ;
  wire \cnt_fx_reg[8]_i_1_n_2 ;
  wire \cnt_fx_reg[8]_i_1_n_3 ;
  wire \cnt_fx_reg[8]_i_1_n_4 ;
  wire \cnt_fx_reg[8]_i_1_n_5 ;
  wire \cnt_fx_reg[8]_i_1_n_6 ;
  wire \cnt_fx_reg[8]_i_1_n_7 ;
  wire [31:0]cnt_gate_fs;
  wire cnt_gate_fs0_carry__0_n_0;
  wire cnt_gate_fs0_carry__0_n_1;
  wire cnt_gate_fs0_carry__0_n_2;
  wire cnt_gate_fs0_carry__0_n_3;
  wire cnt_gate_fs0_carry__1_n_0;
  wire cnt_gate_fs0_carry__1_n_1;
  wire cnt_gate_fs0_carry__1_n_2;
  wire cnt_gate_fs0_carry__1_n_3;
  wire cnt_gate_fs0_carry__2_n_0;
  wire cnt_gate_fs0_carry__2_n_1;
  wire cnt_gate_fs0_carry__2_n_2;
  wire cnt_gate_fs0_carry__2_n_3;
  wire cnt_gate_fs0_carry__3_n_0;
  wire cnt_gate_fs0_carry__3_n_1;
  wire cnt_gate_fs0_carry__3_n_2;
  wire cnt_gate_fs0_carry__3_n_3;
  wire cnt_gate_fs0_carry__4_n_0;
  wire cnt_gate_fs0_carry__4_n_1;
  wire cnt_gate_fs0_carry__4_n_2;
  wire cnt_gate_fs0_carry__4_n_3;
  wire cnt_gate_fs0_carry__5_n_0;
  wire cnt_gate_fs0_carry__5_n_1;
  wire cnt_gate_fs0_carry__5_n_2;
  wire cnt_gate_fs0_carry__5_n_3;
  wire cnt_gate_fs0_carry__6_n_2;
  wire cnt_gate_fs0_carry__6_n_3;
  wire cnt_gate_fs0_carry_n_0;
  wire cnt_gate_fs0_carry_n_1;
  wire cnt_gate_fs0_carry_n_2;
  wire cnt_gate_fs0_carry_n_3;
  wire \cnt_gate_fs_reg_n_0_[0] ;
  wire \cnt_gate_fs_reg_n_0_[10] ;
  wire \cnt_gate_fs_reg_n_0_[11] ;
  wire \cnt_gate_fs_reg_n_0_[12] ;
  wire \cnt_gate_fs_reg_n_0_[13] ;
  wire \cnt_gate_fs_reg_n_0_[14] ;
  wire \cnt_gate_fs_reg_n_0_[15] ;
  wire \cnt_gate_fs_reg_n_0_[16] ;
  wire \cnt_gate_fs_reg_n_0_[17] ;
  wire \cnt_gate_fs_reg_n_0_[18] ;
  wire \cnt_gate_fs_reg_n_0_[19] ;
  wire \cnt_gate_fs_reg_n_0_[1] ;
  wire \cnt_gate_fs_reg_n_0_[20] ;
  wire \cnt_gate_fs_reg_n_0_[21] ;
  wire \cnt_gate_fs_reg_n_0_[22] ;
  wire \cnt_gate_fs_reg_n_0_[23] ;
  wire \cnt_gate_fs_reg_n_0_[24] ;
  wire \cnt_gate_fs_reg_n_0_[25] ;
  wire \cnt_gate_fs_reg_n_0_[26] ;
  wire \cnt_gate_fs_reg_n_0_[27] ;
  wire \cnt_gate_fs_reg_n_0_[28] ;
  wire \cnt_gate_fs_reg_n_0_[29] ;
  wire \cnt_gate_fs_reg_n_0_[2] ;
  wire \cnt_gate_fs_reg_n_0_[30] ;
  wire \cnt_gate_fs_reg_n_0_[3] ;
  wire \cnt_gate_fs_reg_n_0_[4] ;
  wire \cnt_gate_fs_reg_n_0_[5] ;
  wire \cnt_gate_fs_reg_n_0_[6] ;
  wire \cnt_gate_fs_reg_n_0_[7] ;
  wire \cnt_gate_fs_reg_n_0_[8] ;
  wire \cnt_gate_fs_reg_n_0_[9] ;
  wire [31:1]data0;
  wire gate_fx_d1;
  wire gate_fx_d2;
  wire gate_fx_d3;
  wire gate_fx_nege;
  wire gate_out;
  wire gate_out_i_10_n_0;
  wire gate_out_i_11_n_0;
  wire gate_out_i_12_n_0;
  wire gate_out_i_13_n_0;
  wire gate_out_i_14_n_0;
  wire gate_out_i_15_n_0;
  wire gate_out_i_16_n_0;
  wire gate_out_i_1_n_0;
  wire gate_out_i_2_n_0;
  wire gate_out_i_4_n_0;
  wire gate_out_i_5_n_0;
  wire gate_out_i_6_n_0;
  wire gate_out_i_7_n_0;
  wire gate_out_i_8_n_0;
  wire gate_out_i_9_n_0;
  wire gate_sclk;
  wire gate_sclk_i_1_n_0;
  wire gate_sclk_i_2_n_0;
  wire input_fx;
  wire p_0_in0;
  wire s0_axi_aclk;
  wire s0_axi_aresetn;
  wire s0_axi_aresetn_0;
  wire start;
  wire start_0;
  wire start_i_2_n_0;
  wire start_i_3_n_0;
  wire start_i_4_n_0;
  wire start_i_5_n_0;
  wire stop;
  wire stop_i_1_n_0;
  wire stop_i_2_n_0;
  wire stop_i_3_n_0;
  wire stop_i_4_n_0;
  wire stop_i_5_n_0;
  wire stop_i_6_n_0;
  wire stop_i_7_n_0;
  wire stop_i_8_n_0;
  wire [3:1]\NLW_cnt_fx_reg[28]_i_1_CO_UNCONNECTED ;
  wire [3:2]\NLW_cnt_fx_reg[28]_i_1_O_UNCONNECTED ;
  wire [3:2]NLW_cnt_gate_fs0_carry__6_CO_UNCONNECTED;
  wire [3:3]NLW_cnt_gate_fs0_carry__6_O_UNCONNECTED;

  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[0]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[3]),
        .O(\cnt_fx[0]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[0]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[2]),
        .O(\cnt_fx[0]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[0]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[1]),
        .O(\cnt_fx[0]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h4)) 
    \cnt_fx[0]_i_5 
       (.I0(cnt_fx_reg[0]),
        .I1(gate_fx_d2),
        .O(\cnt_fx[0]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[12]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[15]),
        .O(\cnt_fx[12]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[12]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[14]),
        .O(\cnt_fx[12]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[12]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[13]),
        .O(\cnt_fx[12]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[12]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[12]),
        .O(\cnt_fx[12]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[16]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[19]),
        .O(\cnt_fx[16]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[16]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[18]),
        .O(\cnt_fx[16]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[16]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[17]),
        .O(\cnt_fx[16]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[16]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[16]),
        .O(\cnt_fx[16]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[20]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[23]),
        .O(\cnt_fx[20]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[20]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[22]),
        .O(\cnt_fx[20]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[20]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[21]),
        .O(\cnt_fx[20]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[20]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[20]),
        .O(\cnt_fx[20]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[24]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[27]),
        .O(\cnt_fx[24]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[24]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[26]),
        .O(\cnt_fx[24]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[24]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[25]),
        .O(\cnt_fx[24]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[24]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[24]),
        .O(\cnt_fx[24]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[28]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[29]),
        .O(\cnt_fx[28]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[28]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[28]),
        .O(\cnt_fx[28]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[4]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[7]),
        .O(\cnt_fx[4]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[4]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[6]),
        .O(\cnt_fx[4]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[4]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[5]),
        .O(\cnt_fx[4]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[4]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[4]),
        .O(\cnt_fx[4]_i_5_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[8]_i_2 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[11]),
        .O(\cnt_fx[8]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[8]_i_3 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[10]),
        .O(\cnt_fx[8]_i_3_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[8]_i_4 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[9]),
        .O(\cnt_fx[8]_i_4_n_0 ));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_fx[8]_i_5 
       (.I0(gate_fx_d2),
        .I1(cnt_fx_reg[8]),
        .O(\cnt_fx[8]_i_5_n_0 ));
  FDCE \cnt_fx_reg[0] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[0]_i_1_n_7 ),
        .Q(cnt_fx_reg[0]));
  CARRY4 \cnt_fx_reg[0]_i_1 
       (.CI(1'b0),
        .CO({\cnt_fx_reg[0]_i_1_n_0 ,\cnt_fx_reg[0]_i_1_n_1 ,\cnt_fx_reg[0]_i_1_n_2 ,\cnt_fx_reg[0]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,gate_fx_d2}),
        .O({\cnt_fx_reg[0]_i_1_n_4 ,\cnt_fx_reg[0]_i_1_n_5 ,\cnt_fx_reg[0]_i_1_n_6 ,\cnt_fx_reg[0]_i_1_n_7 }),
        .S({\cnt_fx[0]_i_2_n_0 ,\cnt_fx[0]_i_3_n_0 ,\cnt_fx[0]_i_4_n_0 ,\cnt_fx[0]_i_5_n_0 }));
  FDCE \cnt_fx_reg[10] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[8]_i_1_n_5 ),
        .Q(cnt_fx_reg[10]));
  FDCE \cnt_fx_reg[11] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[8]_i_1_n_4 ),
        .Q(cnt_fx_reg[11]));
  FDCE \cnt_fx_reg[12] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[12]_i_1_n_7 ),
        .Q(cnt_fx_reg[12]));
  CARRY4 \cnt_fx_reg[12]_i_1 
       (.CI(\cnt_fx_reg[8]_i_1_n_0 ),
        .CO({\cnt_fx_reg[12]_i_1_n_0 ,\cnt_fx_reg[12]_i_1_n_1 ,\cnt_fx_reg[12]_i_1_n_2 ,\cnt_fx_reg[12]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[12]_i_1_n_4 ,\cnt_fx_reg[12]_i_1_n_5 ,\cnt_fx_reg[12]_i_1_n_6 ,\cnt_fx_reg[12]_i_1_n_7 }),
        .S({\cnt_fx[12]_i_2_n_0 ,\cnt_fx[12]_i_3_n_0 ,\cnt_fx[12]_i_4_n_0 ,\cnt_fx[12]_i_5_n_0 }));
  FDCE \cnt_fx_reg[13] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[12]_i_1_n_6 ),
        .Q(cnt_fx_reg[13]));
  FDCE \cnt_fx_reg[14] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[12]_i_1_n_5 ),
        .Q(cnt_fx_reg[14]));
  FDCE \cnt_fx_reg[15] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[12]_i_1_n_4 ),
        .Q(cnt_fx_reg[15]));
  FDCE \cnt_fx_reg[16] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[16]_i_1_n_7 ),
        .Q(cnt_fx_reg[16]));
  CARRY4 \cnt_fx_reg[16]_i_1 
       (.CI(\cnt_fx_reg[12]_i_1_n_0 ),
        .CO({\cnt_fx_reg[16]_i_1_n_0 ,\cnt_fx_reg[16]_i_1_n_1 ,\cnt_fx_reg[16]_i_1_n_2 ,\cnt_fx_reg[16]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[16]_i_1_n_4 ,\cnt_fx_reg[16]_i_1_n_5 ,\cnt_fx_reg[16]_i_1_n_6 ,\cnt_fx_reg[16]_i_1_n_7 }),
        .S({\cnt_fx[16]_i_2_n_0 ,\cnt_fx[16]_i_3_n_0 ,\cnt_fx[16]_i_4_n_0 ,\cnt_fx[16]_i_5_n_0 }));
  FDCE \cnt_fx_reg[17] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[16]_i_1_n_6 ),
        .Q(cnt_fx_reg[17]));
  FDCE \cnt_fx_reg[18] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[16]_i_1_n_5 ),
        .Q(cnt_fx_reg[18]));
  FDCE \cnt_fx_reg[19] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[16]_i_1_n_4 ),
        .Q(cnt_fx_reg[19]));
  FDCE \cnt_fx_reg[1] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[0]_i_1_n_6 ),
        .Q(cnt_fx_reg[1]));
  FDCE \cnt_fx_reg[20] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[20]_i_1_n_7 ),
        .Q(cnt_fx_reg[20]));
  CARRY4 \cnt_fx_reg[20]_i_1 
       (.CI(\cnt_fx_reg[16]_i_1_n_0 ),
        .CO({\cnt_fx_reg[20]_i_1_n_0 ,\cnt_fx_reg[20]_i_1_n_1 ,\cnt_fx_reg[20]_i_1_n_2 ,\cnt_fx_reg[20]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[20]_i_1_n_4 ,\cnt_fx_reg[20]_i_1_n_5 ,\cnt_fx_reg[20]_i_1_n_6 ,\cnt_fx_reg[20]_i_1_n_7 }),
        .S({\cnt_fx[20]_i_2_n_0 ,\cnt_fx[20]_i_3_n_0 ,\cnt_fx[20]_i_4_n_0 ,\cnt_fx[20]_i_5_n_0 }));
  FDCE \cnt_fx_reg[21] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[20]_i_1_n_6 ),
        .Q(cnt_fx_reg[21]));
  FDCE \cnt_fx_reg[22] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[20]_i_1_n_5 ),
        .Q(cnt_fx_reg[22]));
  FDCE \cnt_fx_reg[23] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[20]_i_1_n_4 ),
        .Q(cnt_fx_reg[23]));
  FDCE \cnt_fx_reg[24] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[24]_i_1_n_7 ),
        .Q(cnt_fx_reg[24]));
  CARRY4 \cnt_fx_reg[24]_i_1 
       (.CI(\cnt_fx_reg[20]_i_1_n_0 ),
        .CO({\cnt_fx_reg[24]_i_1_n_0 ,\cnt_fx_reg[24]_i_1_n_1 ,\cnt_fx_reg[24]_i_1_n_2 ,\cnt_fx_reg[24]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[24]_i_1_n_4 ,\cnt_fx_reg[24]_i_1_n_5 ,\cnt_fx_reg[24]_i_1_n_6 ,\cnt_fx_reg[24]_i_1_n_7 }),
        .S({\cnt_fx[24]_i_2_n_0 ,\cnt_fx[24]_i_3_n_0 ,\cnt_fx[24]_i_4_n_0 ,\cnt_fx[24]_i_5_n_0 }));
  FDCE \cnt_fx_reg[25] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[24]_i_1_n_6 ),
        .Q(cnt_fx_reg[25]));
  FDCE \cnt_fx_reg[26] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[24]_i_1_n_5 ),
        .Q(cnt_fx_reg[26]));
  FDCE \cnt_fx_reg[27] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[24]_i_1_n_4 ),
        .Q(cnt_fx_reg[27]));
  FDCE \cnt_fx_reg[28] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[28]_i_1_n_7 ),
        .Q(cnt_fx_reg[28]));
  CARRY4 \cnt_fx_reg[28]_i_1 
       (.CI(\cnt_fx_reg[24]_i_1_n_0 ),
        .CO({\NLW_cnt_fx_reg[28]_i_1_CO_UNCONNECTED [3:1],\cnt_fx_reg[28]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_cnt_fx_reg[28]_i_1_O_UNCONNECTED [3:2],\cnt_fx_reg[28]_i_1_n_6 ,\cnt_fx_reg[28]_i_1_n_7 }),
        .S({1'b0,1'b0,\cnt_fx[28]_i_2_n_0 ,\cnt_fx[28]_i_3_n_0 }));
  FDCE \cnt_fx_reg[29] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[28]_i_1_n_6 ),
        .Q(cnt_fx_reg[29]));
  LUT2 #(
    .INIT(4'h2)) 
    \cnt_fx_reg[29]_i_1 
       (.I0(gate_fx_d3),
        .I1(gate_fx_d2),
        .O(gate_fx_nege));
  FDCE \cnt_fx_reg[2] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[0]_i_1_n_5 ),
        .Q(cnt_fx_reg[2]));
  FDCE \cnt_fx_reg[3] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[0]_i_1_n_4 ),
        .Q(cnt_fx_reg[3]));
  FDCE \cnt_fx_reg[4] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[4]_i_1_n_7 ),
        .Q(cnt_fx_reg[4]));
  CARRY4 \cnt_fx_reg[4]_i_1 
       (.CI(\cnt_fx_reg[0]_i_1_n_0 ),
        .CO({\cnt_fx_reg[4]_i_1_n_0 ,\cnt_fx_reg[4]_i_1_n_1 ,\cnt_fx_reg[4]_i_1_n_2 ,\cnt_fx_reg[4]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[4]_i_1_n_4 ,\cnt_fx_reg[4]_i_1_n_5 ,\cnt_fx_reg[4]_i_1_n_6 ,\cnt_fx_reg[4]_i_1_n_7 }),
        .S({\cnt_fx[4]_i_2_n_0 ,\cnt_fx[4]_i_3_n_0 ,\cnt_fx[4]_i_4_n_0 ,\cnt_fx[4]_i_5_n_0 }));
  FDCE \cnt_fx_reg[5] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[4]_i_1_n_6 ),
        .Q(cnt_fx_reg[5]));
  FDCE \cnt_fx_reg[6] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[4]_i_1_n_5 ),
        .Q(cnt_fx_reg[6]));
  FDCE \cnt_fx_reg[7] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[4]_i_1_n_4 ),
        .Q(cnt_fx_reg[7]));
  FDCE \cnt_fx_reg[8] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[8]_i_1_n_7 ),
        .Q(cnt_fx_reg[8]));
  CARRY4 \cnt_fx_reg[8]_i_1 
       (.CI(\cnt_fx_reg[4]_i_1_n_0 ),
        .CO({\cnt_fx_reg[8]_i_1_n_0 ,\cnt_fx_reg[8]_i_1_n_1 ,\cnt_fx_reg[8]_i_1_n_2 ,\cnt_fx_reg[8]_i_1_n_3 }),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({\cnt_fx_reg[8]_i_1_n_4 ,\cnt_fx_reg[8]_i_1_n_5 ,\cnt_fx_reg[8]_i_1_n_6 ,\cnt_fx_reg[8]_i_1_n_7 }),
        .S({\cnt_fx[8]_i_2_n_0 ,\cnt_fx[8]_i_3_n_0 ,\cnt_fx[8]_i_4_n_0 ,\cnt_fx[8]_i_5_n_0 }));
  FDCE \cnt_fx_reg[9] 
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(\cnt_fx_reg[8]_i_1_n_6 ),
        .Q(cnt_fx_reg[9]));
  FDCE \cnt_fx_reg_reg[0] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[0]),
        .Q(Q[0]));
  FDCE \cnt_fx_reg_reg[10] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[10]),
        .Q(Q[10]));
  FDCE \cnt_fx_reg_reg[11] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[11]),
        .Q(Q[11]));
  FDCE \cnt_fx_reg_reg[12] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[12]),
        .Q(Q[12]));
  FDCE \cnt_fx_reg_reg[13] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[13]),
        .Q(Q[13]));
  FDCE \cnt_fx_reg_reg[14] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[14]),
        .Q(Q[14]));
  FDCE \cnt_fx_reg_reg[15] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[15]),
        .Q(Q[15]));
  FDCE \cnt_fx_reg_reg[16] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[16]),
        .Q(Q[16]));
  FDCE \cnt_fx_reg_reg[17] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[17]),
        .Q(Q[17]));
  FDCE \cnt_fx_reg_reg[18] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[18]),
        .Q(Q[18]));
  FDCE \cnt_fx_reg_reg[19] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[19]),
        .Q(Q[19]));
  FDCE \cnt_fx_reg_reg[1] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[1]),
        .Q(Q[1]));
  FDCE \cnt_fx_reg_reg[20] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[20]),
        .Q(Q[20]));
  FDCE \cnt_fx_reg_reg[21] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[21]),
        .Q(Q[21]));
  FDCE \cnt_fx_reg_reg[22] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[22]),
        .Q(Q[22]));
  FDCE \cnt_fx_reg_reg[23] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[23]),
        .Q(Q[23]));
  FDCE \cnt_fx_reg_reg[24] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[24]),
        .Q(Q[24]));
  FDCE \cnt_fx_reg_reg[25] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[25]),
        .Q(Q[25]));
  FDCE \cnt_fx_reg_reg[26] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[26]),
        .Q(Q[26]));
  FDCE \cnt_fx_reg_reg[27] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[27]),
        .Q(Q[27]));
  FDCE \cnt_fx_reg_reg[28] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[28]),
        .Q(Q[28]));
  FDCE \cnt_fx_reg_reg[29] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[29]),
        .Q(Q[29]));
  FDCE \cnt_fx_reg_reg[2] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[2]),
        .Q(Q[2]));
  FDCE \cnt_fx_reg_reg[3] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[3]),
        .Q(Q[3]));
  FDCE \cnt_fx_reg_reg[4] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[4]),
        .Q(Q[4]));
  FDCE \cnt_fx_reg_reg[5] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[5]),
        .Q(Q[5]));
  FDCE \cnt_fx_reg_reg[6] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[6]),
        .Q(Q[6]));
  FDCE \cnt_fx_reg_reg[7] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[7]),
        .Q(Q[7]));
  FDCE \cnt_fx_reg_reg[8] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[8]),
        .Q(Q[8]));
  FDCE \cnt_fx_reg_reg[9] 
       (.C(input_fx),
        .CE(gate_fx_nege),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_fx_reg[9]),
        .Q(Q[9]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry
       (.CI(1'b0),
        .CO({cnt_gate_fs0_carry_n_0,cnt_gate_fs0_carry_n_1,cnt_gate_fs0_carry_n_2,cnt_gate_fs0_carry_n_3}),
        .CYINIT(\cnt_gate_fs_reg_n_0_[0] ),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[4:1]),
        .S({\cnt_gate_fs_reg_n_0_[4] ,\cnt_gate_fs_reg_n_0_[3] ,\cnt_gate_fs_reg_n_0_[2] ,\cnt_gate_fs_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__0
       (.CI(cnt_gate_fs0_carry_n_0),
        .CO({cnt_gate_fs0_carry__0_n_0,cnt_gate_fs0_carry__0_n_1,cnt_gate_fs0_carry__0_n_2,cnt_gate_fs0_carry__0_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[8:5]),
        .S({\cnt_gate_fs_reg_n_0_[8] ,\cnt_gate_fs_reg_n_0_[7] ,\cnt_gate_fs_reg_n_0_[6] ,\cnt_gate_fs_reg_n_0_[5] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__1
       (.CI(cnt_gate_fs0_carry__0_n_0),
        .CO({cnt_gate_fs0_carry__1_n_0,cnt_gate_fs0_carry__1_n_1,cnt_gate_fs0_carry__1_n_2,cnt_gate_fs0_carry__1_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[12:9]),
        .S({\cnt_gate_fs_reg_n_0_[12] ,\cnt_gate_fs_reg_n_0_[11] ,\cnt_gate_fs_reg_n_0_[10] ,\cnt_gate_fs_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__2
       (.CI(cnt_gate_fs0_carry__1_n_0),
        .CO({cnt_gate_fs0_carry__2_n_0,cnt_gate_fs0_carry__2_n_1,cnt_gate_fs0_carry__2_n_2,cnt_gate_fs0_carry__2_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[16:13]),
        .S({\cnt_gate_fs_reg_n_0_[16] ,\cnt_gate_fs_reg_n_0_[15] ,\cnt_gate_fs_reg_n_0_[14] ,\cnt_gate_fs_reg_n_0_[13] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__3
       (.CI(cnt_gate_fs0_carry__2_n_0),
        .CO({cnt_gate_fs0_carry__3_n_0,cnt_gate_fs0_carry__3_n_1,cnt_gate_fs0_carry__3_n_2,cnt_gate_fs0_carry__3_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[20:17]),
        .S({\cnt_gate_fs_reg_n_0_[20] ,\cnt_gate_fs_reg_n_0_[19] ,\cnt_gate_fs_reg_n_0_[18] ,\cnt_gate_fs_reg_n_0_[17] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__4
       (.CI(cnt_gate_fs0_carry__3_n_0),
        .CO({cnt_gate_fs0_carry__4_n_0,cnt_gate_fs0_carry__4_n_1,cnt_gate_fs0_carry__4_n_2,cnt_gate_fs0_carry__4_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[24:21]),
        .S({\cnt_gate_fs_reg_n_0_[24] ,\cnt_gate_fs_reg_n_0_[23] ,\cnt_gate_fs_reg_n_0_[22] ,\cnt_gate_fs_reg_n_0_[21] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__5
       (.CI(cnt_gate_fs0_carry__4_n_0),
        .CO({cnt_gate_fs0_carry__5_n_0,cnt_gate_fs0_carry__5_n_1,cnt_gate_fs0_carry__5_n_2,cnt_gate_fs0_carry__5_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O(data0[28:25]),
        .S({\cnt_gate_fs_reg_n_0_[28] ,\cnt_gate_fs_reg_n_0_[27] ,\cnt_gate_fs_reg_n_0_[26] ,\cnt_gate_fs_reg_n_0_[25] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY4 cnt_gate_fs0_carry__6
       (.CI(cnt_gate_fs0_carry__5_n_0),
        .CO({NLW_cnt_gate_fs0_carry__6_CO_UNCONNECTED[3:2],cnt_gate_fs0_carry__6_n_2,cnt_gate_fs0_carry__6_n_3}),
        .CYINIT(1'b0),
        .DI({1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_cnt_gate_fs0_carry__6_O_UNCONNECTED[3],data0[31:29]}),
        .S({1'b0,p_0_in0,\cnt_gate_fs_reg_n_0_[30] ,\cnt_gate_fs_reg_n_0_[29] }));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \cnt_gate_fs[0]_i_1 
       (.I0(\cnt_gate_fs_reg_n_0_[0] ),
        .O(cnt_gate_fs[0]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[10]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[10]),
        .O(cnt_gate_fs[10]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[11]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[11]),
        .O(cnt_gate_fs[11]));
  (* SOFT_HLUTNM = "soft_lutpair11" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[12]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[12]),
        .O(cnt_gate_fs[12]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[13]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[13]),
        .O(cnt_gate_fs[13]));
  (* SOFT_HLUTNM = "soft_lutpair12" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[14]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[14]),
        .O(cnt_gate_fs[14]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[15]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[15]),
        .O(cnt_gate_fs[15]));
  (* SOFT_HLUTNM = "soft_lutpair13" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[16]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[16]),
        .O(cnt_gate_fs[16]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[17]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[17]),
        .O(cnt_gate_fs[17]));
  (* SOFT_HLUTNM = "soft_lutpair14" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[18]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[18]),
        .O(cnt_gate_fs[18]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[19]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[19]),
        .O(cnt_gate_fs[19]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[1]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[1]),
        .O(cnt_gate_fs[1]));
  (* SOFT_HLUTNM = "soft_lutpair15" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[20]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[20]),
        .O(cnt_gate_fs[20]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[21]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[21]),
        .O(cnt_gate_fs[21]));
  (* SOFT_HLUTNM = "soft_lutpair16" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[22]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[22]),
        .O(cnt_gate_fs[22]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[23]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[23]),
        .O(cnt_gate_fs[23]));
  (* SOFT_HLUTNM = "soft_lutpair17" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[24]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[24]),
        .O(cnt_gate_fs[24]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[25]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[25]),
        .O(cnt_gate_fs[25]));
  (* SOFT_HLUTNM = "soft_lutpair18" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[26]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[26]),
        .O(cnt_gate_fs[26]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[27]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[27]),
        .O(cnt_gate_fs[27]));
  (* SOFT_HLUTNM = "soft_lutpair19" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[28]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[28]),
        .O(cnt_gate_fs[28]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[29]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[29]),
        .O(cnt_gate_fs[29]));
  (* SOFT_HLUTNM = "soft_lutpair6" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[2]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[2]),
        .O(cnt_gate_fs[2]));
  (* SOFT_HLUTNM = "soft_lutpair20" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[30]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[30]),
        .O(cnt_gate_fs[30]));
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[31]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[31]),
        .O(cnt_gate_fs[31]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[3]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[3]),
        .O(cnt_gate_fs[3]));
  (* SOFT_HLUTNM = "soft_lutpair7" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[4]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[4]),
        .O(cnt_gate_fs[4]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[5]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[5]),
        .O(cnt_gate_fs[5]));
  (* SOFT_HLUTNM = "soft_lutpair8" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[6]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[6]),
        .O(cnt_gate_fs[6]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[7]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[7]),
        .O(cnt_gate_fs[7]));
  (* SOFT_HLUTNM = "soft_lutpair9" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[8]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[8]),
        .O(cnt_gate_fs[8]));
  (* SOFT_HLUTNM = "soft_lutpair10" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cnt_gate_fs[9]_i_1 
       (.I0(gate_out_i_6_n_0),
        .I1(data0[9]),
        .O(cnt_gate_fs[9]));
  FDCE \cnt_gate_fs_reg[0] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[0]),
        .Q(\cnt_gate_fs_reg_n_0_[0] ));
  FDCE \cnt_gate_fs_reg[10] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[10]),
        .Q(\cnt_gate_fs_reg_n_0_[10] ));
  FDCE \cnt_gate_fs_reg[11] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[11]),
        .Q(\cnt_gate_fs_reg_n_0_[11] ));
  FDCE \cnt_gate_fs_reg[12] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[12]),
        .Q(\cnt_gate_fs_reg_n_0_[12] ));
  FDCE \cnt_gate_fs_reg[13] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[13]),
        .Q(\cnt_gate_fs_reg_n_0_[13] ));
  FDCE \cnt_gate_fs_reg[14] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[14]),
        .Q(\cnt_gate_fs_reg_n_0_[14] ));
  FDCE \cnt_gate_fs_reg[15] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[15]),
        .Q(\cnt_gate_fs_reg_n_0_[15] ));
  FDCE \cnt_gate_fs_reg[16] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[16]),
        .Q(\cnt_gate_fs_reg_n_0_[16] ));
  FDCE \cnt_gate_fs_reg[17] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[17]),
        .Q(\cnt_gate_fs_reg_n_0_[17] ));
  FDCE \cnt_gate_fs_reg[18] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[18]),
        .Q(\cnt_gate_fs_reg_n_0_[18] ));
  FDCE \cnt_gate_fs_reg[19] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[19]),
        .Q(\cnt_gate_fs_reg_n_0_[19] ));
  FDCE \cnt_gate_fs_reg[1] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[1]),
        .Q(\cnt_gate_fs_reg_n_0_[1] ));
  FDCE \cnt_gate_fs_reg[20] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[20]),
        .Q(\cnt_gate_fs_reg_n_0_[20] ));
  FDCE \cnt_gate_fs_reg[21] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[21]),
        .Q(\cnt_gate_fs_reg_n_0_[21] ));
  FDCE \cnt_gate_fs_reg[22] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[22]),
        .Q(\cnt_gate_fs_reg_n_0_[22] ));
  FDCE \cnt_gate_fs_reg[23] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[23]),
        .Q(\cnt_gate_fs_reg_n_0_[23] ));
  FDCE \cnt_gate_fs_reg[24] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[24]),
        .Q(\cnt_gate_fs_reg_n_0_[24] ));
  FDCE \cnt_gate_fs_reg[25] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[25]),
        .Q(\cnt_gate_fs_reg_n_0_[25] ));
  FDCE \cnt_gate_fs_reg[26] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[26]),
        .Q(\cnt_gate_fs_reg_n_0_[26] ));
  FDCE \cnt_gate_fs_reg[27] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[27]),
        .Q(\cnt_gate_fs_reg_n_0_[27] ));
  FDCE \cnt_gate_fs_reg[28] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[28]),
        .Q(\cnt_gate_fs_reg_n_0_[28] ));
  FDCE \cnt_gate_fs_reg[29] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[29]),
        .Q(\cnt_gate_fs_reg_n_0_[29] ));
  FDCE \cnt_gate_fs_reg[2] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[2]),
        .Q(\cnt_gate_fs_reg_n_0_[2] ));
  FDCE \cnt_gate_fs_reg[30] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[30]),
        .Q(\cnt_gate_fs_reg_n_0_[30] ));
  FDCE \cnt_gate_fs_reg[31] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[31]),
        .Q(p_0_in0));
  FDCE \cnt_gate_fs_reg[3] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[3]),
        .Q(\cnt_gate_fs_reg_n_0_[3] ));
  FDCE \cnt_gate_fs_reg[4] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[4]),
        .Q(\cnt_gate_fs_reg_n_0_[4] ));
  FDCE \cnt_gate_fs_reg[5] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[5]),
        .Q(\cnt_gate_fs_reg_n_0_[5] ));
  FDCE \cnt_gate_fs_reg[6] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[6]),
        .Q(\cnt_gate_fs_reg_n_0_[6] ));
  FDCE \cnt_gate_fs_reg[7] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[7]),
        .Q(\cnt_gate_fs_reg_n_0_[7] ));
  FDCE \cnt_gate_fs_reg[8] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[8]),
        .Q(\cnt_gate_fs_reg_n_0_[8] ));
  FDCE \cnt_gate_fs_reg[9] 
       (.C(s0_axi_aclk),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(cnt_gate_fs[9]),
        .Q(\cnt_gate_fs_reg_n_0_[9] ));
  FDCE gate_fx_d1_reg
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(gate_sclk),
        .Q(gate_fx_d1));
  FDCE gate_fx_d2_reg
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(gate_fx_d1),
        .Q(gate_fx_d2));
  FDCE gate_fx_d3_reg
       (.C(input_fx),
        .CE(1'b1),
        .CLR(s0_axi_aresetn_0),
        .D(gate_fx_d2),
        .Q(gate_fx_d3));
  LUT4 #(
    .INIT(16'hFFEF)) 
    gate_out_i_1
       (.I0(gate_out_i_4_n_0),
        .I1(gate_out_i_5_n_0),
        .I2(gate_out_i_6_n_0),
        .I3(start_0),
        .O(gate_out_i_1_n_0));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    gate_out_i_10
       (.I0(stop_i_8_n_0),
        .I1(start_i_5_n_0),
        .I2(stop_i_7_n_0),
        .I3(\cnt_gate_fs_reg_n_0_[27] ),
        .I4(gate_out_i_15_n_0),
        .I5(gate_out_i_16_n_0),
        .O(gate_out_i_10_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'h04)) 
    gate_out_i_11
       (.I0(\cnt_gate_fs_reg_n_0_[9] ),
        .I1(\cnt_gate_fs_reg_n_0_[14] ),
        .I2(\cnt_gate_fs_reg_n_0_[28] ),
        .O(gate_out_i_11_n_0));
  LUT6 #(
    .INIT(64'h0000000000400000)) 
    gate_out_i_12
       (.I0(stop_i_4_n_0),
        .I1(\cnt_gate_fs_reg_n_0_[27] ),
        .I2(\cnt_gate_fs_reg_n_0_[20] ),
        .I3(\cnt_gate_fs_reg_n_0_[19] ),
        .I4(\cnt_gate_fs_reg_n_0_[21] ),
        .I5(gate_out_i_13_n_0),
        .O(gate_out_i_12_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFEFFFFFF)) 
    gate_out_i_13
       (.I0(\cnt_gate_fs_reg_n_0_[16] ),
        .I1(\cnt_gate_fs_reg_n_0_[24] ),
        .I2(\cnt_gate_fs_reg_n_0_[13] ),
        .I3(\cnt_gate_fs_reg_n_0_[12] ),
        .I4(\cnt_gate_fs_reg_n_0_[8] ),
        .I5(\cnt_gate_fs_reg_n_0_[7] ),
        .O(gate_out_i_13_n_0));
  (* SOFT_HLUTNM = "soft_lutpair5" *) 
  LUT3 #(
    .INIT(8'hDF)) 
    gate_out_i_14
       (.I0(\cnt_gate_fs_reg_n_0_[28] ),
        .I1(\cnt_gate_fs_reg_n_0_[14] ),
        .I2(\cnt_gate_fs_reg_n_0_[9] ),
        .O(gate_out_i_14_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT2 #(
    .INIT(4'h1)) 
    gate_out_i_15
       (.I0(\cnt_gate_fs_reg_n_0_[3] ),
        .I1(\cnt_gate_fs_reg_n_0_[4] ),
        .O(gate_out_i_15_n_0));
  LUT4 #(
    .INIT(16'h0008)) 
    gate_out_i_16
       (.I0(\cnt_gate_fs_reg_n_0_[12] ),
        .I1(\cnt_gate_fs_reg_n_0_[10] ),
        .I2(\cnt_gate_fs_reg_n_0_[6] ),
        .I3(\cnt_gate_fs_reg_n_0_[5] ),
        .O(gate_out_i_16_n_0));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT2 #(
    .INIT(4'hE)) 
    gate_out_i_2
       (.I0(gate_out_i_4_n_0),
        .I1(start_0),
        .O(gate_out_i_2_n_0));
  LUT1 #(
    .INIT(2'h1)) 
    gate_out_i_3
       (.I0(s0_axi_aresetn),
        .O(s0_axi_aresetn_0));
  LUT6 #(
    .INIT(64'hFFFF000F44440000)) 
    gate_out_i_4
       (.I0(gate_out_i_7_n_0),
        .I1(gate_out_i_8_n_0),
        .I2(\cnt_gate_fs_reg_n_0_[12] ),
        .I3(gate_out_i_9_n_0),
        .I4(gate_out_i_10_n_0),
        .I5(stop_i_2_n_0),
        .O(gate_out_i_4_n_0));
  LUT5 #(
    .INIT(32'h00100000)) 
    gate_out_i_5
       (.I0(\cnt_gate_fs_reg_n_0_[18] ),
        .I1(\cnt_gate_fs_reg_n_0_[26] ),
        .I2(gate_out_i_11_n_0),
        .I3(stop_i_3_n_0),
        .I4(gate_out_i_12_n_0),
        .O(gate_out_i_5_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFB)) 
    gate_out_i_6
       (.I0(gate_out_i_13_n_0),
        .I1(\cnt_gate_fs_reg_n_0_[19] ),
        .I2(\cnt_gate_fs_reg_n_0_[21] ),
        .I3(gate_out_i_14_n_0),
        .I4(start_i_3_n_0),
        .O(gate_out_i_6_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    gate_out_i_7
       (.I0(\cnt_gate_fs_reg_n_0_[26] ),
        .I1(\cnt_gate_fs_reg_n_0_[20] ),
        .I2(\cnt_gate_fs_reg_n_0_[18] ),
        .O(gate_out_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT5 #(
    .INIT(32'h20000000)) 
    gate_out_i_8
       (.I0(gate_out_i_11_n_0),
        .I1(\cnt_gate_fs_reg_n_0_[19] ),
        .I2(\cnt_gate_fs_reg_n_0_[21] ),
        .I3(\cnt_gate_fs_reg_n_0_[24] ),
        .I4(stop_i_5_n_0),
        .O(gate_out_i_8_n_0));
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    gate_out_i_9
       (.I0(stop_i_4_n_0),
        .I1(\cnt_gate_fs_reg_n_0_[27] ),
        .I2(stop_i_7_n_0),
        .I3(start_i_5_n_0),
        .I4(stop_i_8_n_0),
        .O(gate_out_i_9_n_0));
  FDCE gate_out_reg
       (.C(s0_axi_aclk),
        .CE(gate_out_i_1_n_0),
        .CLR(s0_axi_aresetn_0),
        .D(gate_out_i_2_n_0),
        .Q(gate_out));
  (* SOFT_HLUTNM = "soft_lutpair4" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    gate_sclk_i_1
       (.I0(gate_out_i_5_n_0),
        .I1(start_0),
        .I2(gate_sclk_i_2_n_0),
        .O(gate_sclk_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'h80000000)) 
    gate_sclk_i_2
       (.I0(\cnt_gate_fs_reg_n_0_[26] ),
        .I1(\cnt_gate_fs_reg_n_0_[20] ),
        .I2(\cnt_gate_fs_reg_n_0_[18] ),
        .I3(gate_out_i_8_n_0),
        .I4(gate_out_i_10_n_0),
        .O(gate_sclk_i_2_n_0));
  FDCE gate_sclk_reg
       (.C(s0_axi_aclk),
        .CE(gate_out_i_1_n_0),
        .CLR(s0_axi_aresetn_0),
        .D(gate_sclk_i_1_n_0),
        .Q(gate_sclk));
  LUT6 #(
    .INIT(64'h0000000000100000)) 
    start_i_1
       (.I0(\cnt_gate_fs_reg_n_0_[12] ),
        .I1(\cnt_gate_fs_reg_n_0_[28] ),
        .I2(\cnt_gate_fs_reg_n_0_[14] ),
        .I3(\cnt_gate_fs_reg_n_0_[9] ),
        .I4(start_i_2_n_0),
        .I5(start_i_3_n_0),
        .O(start_0));
  LUT6 #(
    .INIT(64'h2000000000000000)) 
    start_i_2
       (.I0(\cnt_gate_fs_reg_n_0_[7] ),
        .I1(\cnt_gate_fs_reg_n_0_[8] ),
        .I2(\cnt_gate_fs_reg_n_0_[13] ),
        .I3(\cnt_gate_fs_reg_n_0_[16] ),
        .I4(\cnt_gate_fs_reg_n_0_[24] ),
        .I5(start_i_4_n_0),
        .O(start_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    start_i_3
       (.I0(stop_i_8_n_0),
        .I1(start_i_5_n_0),
        .I2(stop_i_7_n_0),
        .I3(\cnt_gate_fs_reg_n_0_[27] ),
        .I4(stop_i_4_n_0),
        .I5(gate_out_i_7_n_0),
        .O(start_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT2 #(
    .INIT(4'h2)) 
    start_i_4
       (.I0(\cnt_gate_fs_reg_n_0_[21] ),
        .I1(\cnt_gate_fs_reg_n_0_[19] ),
        .O(start_i_4_n_0));
  LUT4 #(
    .INIT(16'hDFFF)) 
    start_i_5
       (.I0(\cnt_gate_fs_reg_n_0_[15] ),
        .I1(\cnt_gate_fs_reg_n_0_[17] ),
        .I2(\cnt_gate_fs_reg_n_0_[23] ),
        .I3(\cnt_gate_fs_reg_n_0_[22] ),
        .O(start_i_5_n_0));
  FDCE start_reg
       (.C(s0_axi_aclk),
        .CE(gate_out_i_1_n_0),
        .CLR(s0_axi_aresetn_0),
        .D(start_0),
        .Q(start));
  LUT5 #(
    .INIT(32'h00000004)) 
    stop_i_1
       (.I0(\cnt_gate_fs_reg_n_0_[12] ),
        .I1(stop_i_2_n_0),
        .I2(stop_i_3_n_0),
        .I3(\cnt_gate_fs_reg_n_0_[27] ),
        .I4(stop_i_4_n_0),
        .O(stop_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000400000000000)) 
    stop_i_2
       (.I0(gate_out_i_14_n_0),
        .I1(stop_i_5_n_0),
        .I2(\cnt_gate_fs_reg_n_0_[24] ),
        .I3(\cnt_gate_fs_reg_n_0_[21] ),
        .I4(\cnt_gate_fs_reg_n_0_[19] ),
        .I5(stop_i_6_n_0),
        .O(stop_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFFFFFBFFFFFF)) 
    stop_i_3
       (.I0(stop_i_7_n_0),
        .I1(\cnt_gate_fs_reg_n_0_[15] ),
        .I2(\cnt_gate_fs_reg_n_0_[17] ),
        .I3(\cnt_gate_fs_reg_n_0_[23] ),
        .I4(\cnt_gate_fs_reg_n_0_[22] ),
        .I5(stop_i_8_n_0),
        .O(stop_i_3_n_0));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT5 #(
    .INIT(32'hDFFFFFFF)) 
    stop_i_4
       (.I0(\cnt_gate_fs_reg_n_0_[3] ),
        .I1(\cnt_gate_fs_reg_n_0_[10] ),
        .I2(\cnt_gate_fs_reg_n_0_[6] ),
        .I3(\cnt_gate_fs_reg_n_0_[5] ),
        .I4(\cnt_gate_fs_reg_n_0_[4] ),
        .O(stop_i_4_n_0));
  LUT4 #(
    .INIT(16'h0800)) 
    stop_i_5
       (.I0(\cnt_gate_fs_reg_n_0_[16] ),
        .I1(\cnt_gate_fs_reg_n_0_[13] ),
        .I2(\cnt_gate_fs_reg_n_0_[8] ),
        .I3(\cnt_gate_fs_reg_n_0_[7] ),
        .O(stop_i_5_n_0));
  LUT3 #(
    .INIT(8'h01)) 
    stop_i_6
       (.I0(\cnt_gate_fs_reg_n_0_[26] ),
        .I1(\cnt_gate_fs_reg_n_0_[18] ),
        .I2(\cnt_gate_fs_reg_n_0_[20] ),
        .O(stop_i_6_n_0));
  LUT4 #(
    .INIT(16'hFFFE)) 
    stop_i_7
       (.I0(\cnt_gate_fs_reg_n_0_[29] ),
        .I1(\cnt_gate_fs_reg_n_0_[25] ),
        .I2(p_0_in0),
        .I3(\cnt_gate_fs_reg_n_0_[30] ),
        .O(stop_i_7_n_0));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT4 #(
    .INIT(16'hFF7F)) 
    stop_i_8
       (.I0(\cnt_gate_fs_reg_n_0_[1] ),
        .I1(\cnt_gate_fs_reg_n_0_[0] ),
        .I2(\cnt_gate_fs_reg_n_0_[2] ),
        .I3(\cnt_gate_fs_reg_n_0_[11] ),
        .O(stop_i_8_n_0));
  FDCE stop_reg
       (.C(s0_axi_aclk),
        .CE(gate_out_i_1_n_0),
        .CLR(s0_axi_aresetn_0),
        .D(stop_i_1_n_0),
        .Q(stop));
endmodule

(* CHECK_LICENSE_TYPE = "design_1_count_ip_0_2,count_ip_v1_0,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "count_ip_v1_0,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (input_fx,
    gate_out,
    stop,
    start,
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
  input input_fx;
  output gate_out;
  output stop;
  output start;
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
  wire gate_out;
  wire input_fx;
  wire s0_axi_aclk;
  wire [3:0]s0_axi_araddr;
  wire s0_axi_aresetn;
  wire s0_axi_arready;
  wire s0_axi_arvalid;
  wire s0_axi_awready;
  wire s0_axi_awvalid;
  wire s0_axi_bready;
  wire s0_axi_bvalid;
  wire [29:0]\^s0_axi_rdata ;
  wire s0_axi_rready;
  wire s0_axi_rvalid;
  wire s0_axi_wready;
  wire s0_axi_wvalid;
  wire start;
  wire stop;

  assign s0_axi_bresp[1] = \<const0> ;
  assign s0_axi_bresp[0] = \<const0> ;
  assign s0_axi_rdata[31] = \<const0> ;
  assign s0_axi_rdata[30] = \<const0> ;
  assign s0_axi_rdata[29:0] = \^s0_axi_rdata [29:0];
  assign s0_axi_rresp[1] = \<const0> ;
  assign s0_axi_rresp[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_count_ip_v1_0 inst
       (.S_AXI_ARREADY(s0_axi_arready),
        .S_AXI_AWREADY(s0_axi_awready),
        .gate_out(gate_out),
        .input_fx(input_fx),
        .s0_axi_aclk(s0_axi_aclk),
        .s0_axi_araddr(s0_axi_araddr[3:2]),
        .s0_axi_aresetn(s0_axi_aresetn),
        .s0_axi_arvalid(s0_axi_arvalid),
        .s0_axi_awvalid(s0_axi_awvalid),
        .s0_axi_bready(s0_axi_bready),
        .s0_axi_bvalid(s0_axi_bvalid),
        .s0_axi_rdata(\^s0_axi_rdata ),
        .s0_axi_rready(s0_axi_rready),
        .s0_axi_rvalid(s0_axi_rvalid),
        .s0_axi_wready(s0_axi_wready),
        .s0_axi_wvalid(s0_axi_wvalid),
        .start(start),
        .stop(stop));
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
