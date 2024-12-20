// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
// Date        : Fri Dec 20 23:30:59 2024
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
