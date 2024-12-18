-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:06 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGAproj/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_count_ip_0_2/design_1_count_ip_0_2_stub.vhdl
-- Design      : design_1_count_ip_0_2
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_count_ip_0_2 is
  Port ( 
    input_fx : in STD_LOGIC;
    gate_out : out STD_LOGIC;
    stop : out STD_LOGIC;
    start : out STD_LOGIC;
    s0_axi_awaddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_axi_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_awready : out STD_LOGIC;
    s0_axi_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    s0_axi_bresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 3 downto 0 );
    s0_axi_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_arready : out STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_rresp : out STD_LOGIC_VECTOR ( 1 downto 0 );
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_rready : in STD_LOGIC;
    s0_axi_aclk : in STD_LOGIC;
    s0_axi_aresetn : in STD_LOGIC
  );

end design_1_count_ip_0_2;

architecture stub of design_1_count_ip_0_2 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_fx,gate_out,stop,start,s0_axi_awaddr[3:0],s0_axi_awprot[2:0],s0_axi_awvalid,s0_axi_awready,s0_axi_wdata[31:0],s0_axi_wstrb[3:0],s0_axi_wvalid,s0_axi_wready,s0_axi_bresp[1:0],s0_axi_bvalid,s0_axi_bready,s0_axi_araddr[3:0],s0_axi_arprot[2:0],s0_axi_arvalid,s0_axi_arready,s0_axi_rdata[31:0],s0_axi_rresp[1:0],s0_axi_rvalid,s0_axi_rready,s0_axi_aclk,s0_axi_aresetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "count_ip_v1_0,Vivado 2020.2";
begin
end;
