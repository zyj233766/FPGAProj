// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 21 05:42:14 2024
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
