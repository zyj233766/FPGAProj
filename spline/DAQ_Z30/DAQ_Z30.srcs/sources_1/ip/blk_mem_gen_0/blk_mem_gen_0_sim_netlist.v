// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:54:23 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/ip/blk_mem_gen_0/blk_mem_gen_0_sim_netlist.v
// Design      : blk_mem_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_0,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_0
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
  blk_mem_gen_0_blk_mem_gen_v8_4_4 U0
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19680)
`pragma protect data_block
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
7R/8/UR3lQ9M/zUBmNN3
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
