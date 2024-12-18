-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:06 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGAproj/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_OBUFGDS_0_0/design_1_MJ_OBUFGDS_0_0_sim_netlist.vhdl
-- Design      : design_1_MJ_OBUFGDS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MJ_OBUFGDS_0_0_MJ_OBUFGDS is
  port (
    sigout_P : out STD_LOGIC;
    sigout_N : out STD_LOGIC;
    sig_in : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MJ_OBUFGDS_0_0_MJ_OBUFGDS : entity is "MJ_OBUFGDS";
end design_1_MJ_OBUFGDS_0_0_MJ_OBUFGDS;

architecture STRUCTURE of design_1_MJ_OBUFGDS_0_0_MJ_OBUFGDS is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of OBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of OBUFDS_inst : label is "DONT_CARE";
  attribute XILINX_LEGACY_PRIM : string;
  attribute XILINX_LEGACY_PRIM of OBUFDS_inst : label is "OBUFDS";
begin
OBUFDS_inst: unisim.vcomponents.OBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => sig_in,
      O => sigout_P,
      OB => sigout_N
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MJ_OBUFGDS_0_0 is
  port (
    sig_in : in STD_LOGIC;
    sigout_P : out STD_LOGIC;
    sigout_N : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MJ_OBUFGDS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MJ_OBUFGDS_0_0 : entity is "design_1_MJ_OBUFGDS_0_0,MJ_OBUFGDS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MJ_OBUFGDS_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MJ_OBUFGDS_0_0 : entity is "MJ_OBUFGDS,Vivado 2020.2";
end design_1_MJ_OBUFGDS_0_0;

architecture STRUCTURE of design_1_MJ_OBUFGDS_0_0 is
begin
inst: entity work.design_1_MJ_OBUFGDS_0_0_MJ_OBUFGDS
     port map (
      sig_in => sig_in,
      sigout_N => sigout_N,
      sigout_P => sigout_P
    );
end STRUCTURE;
