// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 23:30:33 2024
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
