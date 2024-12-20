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
qo8LBKzkgt59jatP
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
