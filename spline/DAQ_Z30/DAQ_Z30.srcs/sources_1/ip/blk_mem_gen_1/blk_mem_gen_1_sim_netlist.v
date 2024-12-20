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
Bj9B7JG+MgFLa7r5
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
