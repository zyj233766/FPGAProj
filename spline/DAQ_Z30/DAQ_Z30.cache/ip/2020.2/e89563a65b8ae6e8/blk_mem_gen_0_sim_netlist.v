// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 21 01:59:20 2024
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
