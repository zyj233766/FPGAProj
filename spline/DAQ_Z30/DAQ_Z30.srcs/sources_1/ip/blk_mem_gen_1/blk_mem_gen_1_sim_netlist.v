// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 23:30:33 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top blk_mem_gen_1 -prefix
//               blk_mem_gen_1_ blk_mem_gen_1_sim_netlist.v
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 19392)
`pragma protect data_block
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
N9GqM8w4X0Bst2wW
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
