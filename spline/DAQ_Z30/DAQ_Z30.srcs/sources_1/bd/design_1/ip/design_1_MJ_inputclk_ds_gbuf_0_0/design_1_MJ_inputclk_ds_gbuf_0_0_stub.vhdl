-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Dec 21 18:47:20 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_inputclk_ds_gbuf_0_0/design_1_MJ_inputclk_ds_gbuf_0_0_stub.vhdl
-- Design      : design_1_MJ_inputclk_ds_gbuf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_MJ_inputclk_ds_gbuf_0_0 is
  Port ( 
    clkin_p : in STD_LOGIC;
    clkin_n : in STD_LOGIC;
    delay_cnt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    delay_clk : in STD_LOGIC;
    clkout_gbuf : out STD_LOGIC
  );

end design_1_MJ_inputclk_ds_gbuf_0_0;

architecture stub of design_1_MJ_inputclk_ds_gbuf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkin_p,clkin_n,delay_cnt[4:0],rst,delay_clk,clkout_gbuf";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MJ_inputclk_ds_gbuf,Vivado 2020.2";
begin
end;
