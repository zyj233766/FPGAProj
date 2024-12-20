// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 21 05:42:42 2024
// Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ blk_mem_gen_1_sim_netlist.v
// Design      : blk_mem_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7z030ffg676-2
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "blk_mem_gen_1,blk_mem_gen_v8_4_4,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "blk_mem_gen_v8_4_4,Vivado 2020.2" *) 
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
