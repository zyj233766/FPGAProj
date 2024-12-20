// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 23:30:59 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_0 -prefix
//               blk_mem_gen_0_ blk_mem_gen_0_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
MR0kYOk9ttR2DZhi
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
