// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Sat Dec 21 02:00:22 2024
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
