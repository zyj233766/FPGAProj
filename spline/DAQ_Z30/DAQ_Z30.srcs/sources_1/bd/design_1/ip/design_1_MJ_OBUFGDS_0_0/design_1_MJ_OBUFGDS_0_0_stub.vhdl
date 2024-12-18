-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:06 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/FPGAproj/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_OBUFGDS_0_0/design_1_MJ_OBUFGDS_0_0_stub.vhdl
-- Design      : design_1_MJ_OBUFGDS_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_MJ_OBUFGDS_0_0 is
  Port ( 
    sig_in : in STD_LOGIC;
    sigout_P : out STD_LOGIC;
    sigout_N : out STD_LOGIC
  );

end design_1_MJ_OBUFGDS_0_0;

architecture stub of design_1_MJ_OBUFGDS_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sig_in,sigout_P,sigout_N";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "MJ_OBUFGDS,Vivado 2020.2";
begin
end;
