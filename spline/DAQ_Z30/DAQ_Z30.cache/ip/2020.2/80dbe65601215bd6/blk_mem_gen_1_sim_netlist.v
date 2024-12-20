// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 18:56:32 2024
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
