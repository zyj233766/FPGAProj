// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:54:23 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (clka,
    addra,
    douta);
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME BRAM_PORTA, MEM_SIZE 8192, MEM_WIDTH 32, MEM_ECC NONE, MASTER_TYPE OTHER, READ_LATENCY 1" *) input clka;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA ADDR" *) input [7:0]addra;
  (* x_interface_info = "xilinx.com:interface:bram:1.0 BRAM_PORTA DOUT" *) output [13:0]douta;

  wire [7:0]addra;
  wire clka;
  wire [13:0]douta;
  wire NLW_U0_dbiterr_UNCONNECTED;
  wire NLW_U0_rsta_busy_UNCONNECTED;
  wire NLW_U0_rstb_busy_UNCONNECTED;
  wire NLW_U0_s_axi_arready_UNCONNECTED;
  wire NLW_U0_s_axi_awready_UNCONNECTED;
  wire NLW_U0_s_axi_bvalid_UNCONNECTED;
  wire NLW_U0_s_axi_dbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_rlast_UNCONNECTED;
  wire NLW_U0_s_axi_rvalid_UNCONNECTED;
  wire NLW_U0_s_axi_sbiterr_UNCONNECTED;
  wire NLW_U0_s_axi_wready_UNCONNECTED;
  wire NLW_U0_sbiterr_UNCONNECTED;
  wire [13:0]NLW_U0_doutb_UNCONNECTED;
  wire [7:0]NLW_U0_rdaddrecc_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_bid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_bresp_UNCONNECTED;
  wire [7:0]NLW_U0_s_axi_rdaddrecc_UNCONNECTED;
  wire [13:0]NLW_U0_s_axi_rdata_UNCONNECTED;
  wire [3:0]NLW_U0_s_axi_rid_UNCONNECTED;
  wire [1:0]NLW_U0_s_axi_rresp_UNCONNECTED;

  (* C_ADDRA_WIDTH = "8" *) 
  (* C_ADDRB_WIDTH = "8" *) 
  (* C_ALGORITHM = "1" *) 
  (* C_AXI_ID_WIDTH = "4" *) 
  (* C_AXI_SLAVE_TYPE = "0" *) 
  (* C_AXI_TYPE = "1" *) 
  (* C_BYTE_SIZE = "9" *) 
  (* C_COMMON_CLK = "0" *) 
  (* C_COUNT_18K_BRAM = "1" *) 
  (* C_COUNT_36K_BRAM = "0" *) 
  (* C_CTRL_ECC_ALGO = "NONE" *) 
  (* C_DEFAULT_DATA = "0" *) 
  (* C_DISABLE_WARN_BHV_COLL = "0" *) 
  (* C_DISABLE_WARN_BHV_RANGE = "0" *) 
  (* C_ELABORATION_DIR = "./" *) 
  (* C_ENABLE_32BIT_ADDRESS = "0" *) 
  (* C_EN_DEEPSLEEP_PIN = "0" *) 
  (* C_EN_ECC_PIPE = "0" *) 
  (* C_EN_RDADDRA_CHG = "0" *) 
  (* C_EN_RDADDRB_CHG = "0" *) 
  (* C_EN_SAFETY_CKT = "0" *) 
  (* C_EN_SHUTDOWN_PIN = "0" *) 
  (* C_EN_SLEEP_PIN = "0" *) 
  (* C_EST_POWER_SUMMARY = "Estimated Power for IP     :     2.6264 mW" *) 
  (* C_FAMILY = "zynq" *) 
  (* C_HAS_AXI_ID = "0" *) 
  (* C_HAS_ENA = "0" *) 
  (* C_HAS_ENB = "0" *) 
  (* C_HAS_INJECTERR = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MEM_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_A = "0" *) 
  (* C_HAS_MUX_OUTPUT_REGS_B = "0" *) 
  (* C_HAS_REGCEA = "0" *) 
  (* C_HAS_REGCEB = "0" *) 
  (* C_HAS_RSTA = "0" *) 
  (* C_HAS_RSTB = "0" *) 
  (* C_HAS_SOFTECC_INPUT_REGS_A = "0" *) 
  (* C_HAS_SOFTECC_OUTPUT_REGS_B = "0" *) 
  (* C_INITA_VAL = "0" *) 
  (* C_INITB_VAL = "0" *) 
  (* C_INIT_FILE = "blk_mem_gen_0.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_0.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "240" *) 
  (* C_READ_DEPTH_B = "240" *) 
  (* C_READ_LATENCY_A = "1" *) 
  (* C_READ_LATENCY_B = "1" *) 
  (* C_READ_WIDTH_A = "14" *) 
  (* C_READ_WIDTH_B = "14" *) 
  (* C_RSTRAM_A = "0" *) 
  (* C_RSTRAM_B = "0" *) 
  (* C_RST_PRIORITY_A = "CE" *) 
  (* C_RST_PRIORITY_B = "CE" *) 
  (* C_SIM_COLLISION_CHECK = "ALL" *) 
  (* C_USE_BRAM_BLOCK = "0" *) 
  (* C_USE_BYTE_WEA = "0" *) 
  (* C_USE_BYTE_WEB = "0" *) 
  (* C_USE_DEFAULT_DATA = "0" *) 
  (* C_USE_ECC = "0" *) 
  (* C_USE_SOFTECC = "0" *) 
  (* C_USE_URAM = "0" *) 
  (* C_WEA_WIDTH = "1" *) 
  (* C_WEB_WIDTH = "1" *) 
  (* C_WRITE_DEPTH_A = "240" *) 
  (* C_WRITE_DEPTH_B = "240" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_blk_mem_gen_v8_4_4 U0
       (.addra(addra),
        .addrb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .clka(clka),
        .clkb(1'b0),
        .dbiterr(NLW_U0_dbiterr_UNCONNECTED),
        .deepsleep(1'b0),
        .dina({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dinb({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .douta(douta),
        .doutb(NLW_U0_doutb_UNCONNECTED[13:0]),
        .eccpipece(1'b0),
        .ena(1'b0),
        .enb(1'b0),
        .injectdbiterr(1'b0),
        .injectsbiterr(1'b0),
        .rdaddrecc(NLW_U0_rdaddrecc_UNCONNECTED[7:0]),
        .regcea(1'b0),
        .regceb(1'b0),
        .rsta(1'b0),
        .rsta_busy(NLW_U0_rsta_busy_UNCONNECTED),
        .rstb(1'b0),
        .rstb_busy(NLW_U0_rstb_busy_UNCONNECTED),
        .s_aclk(1'b0),
        .s_aresetn(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arburst({1'b0,1'b0}),
        .s_axi_arid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_U0_s_axi_arready_UNCONNECTED),
        .s_axi_arsize({1'b0,1'b0,1'b0}),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awburst({1'b0,1'b0}),
        .s_axi_awid({1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awlen({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_U0_s_axi_awready_UNCONNECTED),
        .s_axi_awsize({1'b0,1'b0,1'b0}),
        .s_axi_awvalid(1'b0),
        .s_axi_bid(NLW_U0_s_axi_bid_UNCONNECTED[3:0]),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_U0_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_U0_s_axi_bvalid_UNCONNECTED),
        .s_axi_dbiterr(NLW_U0_s_axi_dbiterr_UNCONNECTED),
        .s_axi_injectdbiterr(1'b0),
        .s_axi_injectsbiterr(1'b0),
        .s_axi_rdaddrecc(NLW_U0_s_axi_rdaddrecc_UNCONNECTED[7:0]),
        .s_axi_rdata(NLW_U0_s_axi_rdata_UNCONNECTED[13:0]),
        .s_axi_rid(NLW_U0_s_axi_rid_UNCONNECTED[3:0]),
        .s_axi_rlast(NLW_U0_s_axi_rlast_UNCONNECTED),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_U0_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_U0_s_axi_rvalid_UNCONNECTED),
        .s_axi_sbiterr(NLW_U0_s_axi_sbiterr_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wlast(1'b0),
        .s_axi_wready(NLW_U0_s_axi_wready_UNCONNECTED),
        .s_axi_wstrb(1'b0),
        .s_axi_wvalid(1'b0),
        .sbiterr(NLW_U0_sbiterr_UNCONNECTED),
        .shutdown(1'b0),
        .sleep(1'b0),
        .wea(1'b0),
        .web(1'b0));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
QGLtnqZzRetDH6gCWT4Js6wuLlZfrNx/VJp3sfR2NF+cxypO5AxN0oDKLJJtmdrtE/ueNDg+Qf7Z
TqBNRojORA==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
B6Ger3hRvfjHkaJ+W8639Kl3TzC9TogLuklOXEiMNdc4Im+DjEUzxb3DKlzu0VW3zxZqjJ3+wsW/
LnRmPCESi5Y9eRJaLFXg79EMfoj4X+nTdHAP6yCfltBADKegZ12gpnB/8ey5yn2KA74LUtPC7jna
iyjqSfsWLGnz6UdXzwk=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
BX+DxgMPRyZbYojCUR9Sk8Lq+3ZigBz4yMFHQkmurfdfDzyTPJCE827eGiPyTenK1QPVhEtf9g06
0BFXq/0COPuU1BWJwdkz1c4dE6/exDwhvEh+hPx3vRY6z8fDEf6aGVIXrHDvrmddehe7yMSIpo+k
aXHR06EEdfHCFY4TggYwhcJVXjkE+ApsVuyfmEfPmYjo8hCWyQyBsUWIOY03q1+MvUjjsmTwgs9g
fh5MY9ToaLfoJxPKdCpsqrBX4LJ+VDGFlAqIcqHTE2jCmPiToZAFXB7fzf1wDjFCBlJyFVDBGi0i
m+CouLSb7X1mvVhdDZgNrZDJMV688Bu3o54vew==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
DaIU/Ddc8USbZ2mURzujJDWDH1JbHl5tFVOOQ2aVaUPIA71yyE38OXVLEtF8rNmujYH30nEeQ+FV
LVJ16aaHw+iiuaqorTM3K5KLohVlN+WlcEtSXHuPNHjw8ddqtzpaX7pH1zqZH+YmfCL5oaNLqDH4
rkBnUl0/Gm/hzSwKjYhXGQFYQ+gGP99OjXakzrAqZzp/Iq4gt+Z5902/JV9thd/isHQImJ0QyK8M
EKM579iPAfXGes2mbiNYHcvDmSPYmW1zlhOE++N1EKeea7j/msnKeyhlC+hGE4Xfn4TVvqgQexCT
rp/wS/MosY6WH1aKFQlFH2hEppA7KXUaQlvG+w==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
XmWoAt4X8hrCJ5yTyug4ajJW5UhfkLNibzjihWzZ4Cr9hQSvWZoTc8rjGsLPbz6Le+/9iI5KxecS
eR0wiAO+G2IkwhZgVBeZdKoFnlnTVAyLjk9wMAFXNyJZM6b1NDbfXlPcUsC6JePvPlwwdWknkSsC
r3KvgkWAS+O3xvRmaNw=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Hw3Y+rShKrXiUViyNU1/O2qv6TgheLHBnFMj1i9MUGrHYqh9pLfLYUgWR7S2vj4jv4S+Ks0BpP4p
dKEqVAFmTCfQNEUHaVcFPkOHgig6L4mhLY6HUUKJoRgiQepgLi/W3V+ZZPQSQFkB3CU4MsJzhXvR
yLcpDriZy8cnAHD87Zi5DrNGBzj3kigJeM0du6lCQbxtF5aEdoaNP+YTnIFtcqYhoYnswQlYt0sV
HKgFA8VzqzL5WYnpH7+1IKmFkJBHkyqHCa9wPK0qCKnxkuDj70YzPVqQ+cocdKU+/gNdpCOdZlci
F2HTxrgfrXndJru3TiDqu4UavqAe0MNuFp3t0w==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XPVggoWL6aXz+MpODTOZhEUQDa0vfEnUDaYeEHXm2vGyqKJujN2c/FFAFBeBYdJATLsIsQ+BqoPc
pBbcFYXDBfOtFIW2dH6Y1OoD65KyJ/hAq8coa21kFgq4hFat5vzZ2iIfkCpTUr4vDZO7Xne8cZO9
WsHffoTCt5rS59wWm2b8I5R8Eh2TUbQg3RCyrcnD66cvcEnlXe1CNMQ4/loVJpA4IBinBf820Wjc
vw2fZbGI0jXC+ACSHOviH63Xwmn+aRV5Ppkup7IYoon/ieKapRQeASu3TTY37xSBXiInSdtMTzJ6
+4GfO4eSHVriCk/sWbuTBzfRzoSShrnHjzz5LA==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
L78XuiswVcgO2gtebzL7SA9BC/jJGAM0v6S9pzmyqL+QYzRneiYeGyDmsW33jEVVSTuNjTXkBLY7
yTOKQruatwe4V0OLi6174saSAmPgerSV1GyLP7KhmusLV/N61avC9TPam+tekhKeE0tds4EnJ3et
4JdLh+SE4Z4pcuqCjB5MFneIYKKWDx7siU6oesAQtoSJOesfMchX63MhOjOHFP/ch+1gHv3T45hg
IGF7V7TrdREVE4f9631tlVJ1o2Dypsmo/76Itz5WCGlTMjAnWXN8IXxKN+PZ3dyt1wjrZm2P/td+
xiGszFnSLrRvw/HferwtSmRx8q0fiHZ88roGTw==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kDX5kq2QEe25429T6vQqBCFvV1McKTJRYfK99ymVNK2GGvGLXSzgwJHwB2fj9rM0wme3zYYY0vQR
x+9F4L7KLlOVY6qY3LB59uDzyXBI3mMZaS905HXHJkdZHWtQWpfHhl27LqL+8FSluaD6F+KFfYOV
CwIOVuCIp/XjxFXpNBik7YiPt4kHOlDA97IXNLnYUn/g1csGqeNWce4UTne50ggWvLYGbTFGmTjT
N67TpUiGRVRCSv8Tax72GWFIMFZk3Tlp68ZUSQEybZMWX1U9XdMdtxfvNGhf8mi5jQJ2SupSzKu4
T/+53IN9T8aLePAiGBKKG1ZBj4y1ZyYA7XYvjw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19696)
`pragma protect data_block
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
`pragma protect end_protected
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
