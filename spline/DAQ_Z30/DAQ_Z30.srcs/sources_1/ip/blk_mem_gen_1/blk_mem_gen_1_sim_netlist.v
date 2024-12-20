// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:56:32 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/ip/blk_mem_gen_1/blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
(* NotValidForBitStream *)
module blk_mem_gen_1
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
  (* C_INIT_FILE = "blk_mem_gen_1.mem" *) 
  (* C_INIT_FILE_NAME = "blk_mem_gen_1.mif" *) 
  (* C_INTERFACE_TYPE = "0" *) 
  (* C_LOAD_INIT_FILE = "1" *) 
  (* C_MEM_TYPE = "3" *) 
  (* C_MUX_PIPELINE_STAGES = "0" *) 
  (* C_PRIM_TYPE = "1" *) 
  (* C_READ_DEPTH_A = "220" *) 
  (* C_READ_DEPTH_B = "220" *) 
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
  (* C_WRITE_DEPTH_A = "220" *) 
  (* C_WRITE_DEPTH_B = "220" *) 
  (* C_WRITE_MODE_A = "WRITE_FIRST" *) 
  (* C_WRITE_MODE_B = "WRITE_FIRST" *) 
  (* C_WRITE_WIDTH_A = "14" *) 
  (* C_WRITE_WIDTH_B = "14" *) 
  (* C_XDEVICEFAMILY = "zynq" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  blk_mem_gen_1_blk_mem_gen_v8_4_4 U0
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
M1PFGh0QhLWxmRMU0ZKn
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
