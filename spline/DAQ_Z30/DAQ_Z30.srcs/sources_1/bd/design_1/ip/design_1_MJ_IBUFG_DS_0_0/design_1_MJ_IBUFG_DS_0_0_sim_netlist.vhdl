-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Dec 21 18:47:21 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MJ_IBUFG_DS_0_0/design_1_MJ_IBUFG_DS_0_0_sim_netlist.vhdl
-- Design      : design_1_MJ_IBUFG_DS_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MJ_IBUFG_DS_0_0_MJ_IBUFG_DS is
  port (
    out1 : out STD_LOGIC;
    in_P : in STD_LOGIC;
    in_N : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MJ_IBUFG_DS_0_0_MJ_IBUFG_DS : entity is "MJ_IBUFG_DS";
end design_1_MJ_IBUFG_DS_0_0_MJ_IBUFG_DS;

architecture STRUCTURE of design_1_MJ_IBUFG_DS_0_0_MJ_IBUFG_DS is
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IBUFDS_inst : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of IBUFDS_inst : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of IBUFDS_inst : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of IBUFDS_inst : label is "AUTO";
begin
IBUFDS_inst: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => in_P,
      IB => in_N,
      O => out1
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MJ_IBUFG_DS_0_0 is
  port (
    in_P : in STD_LOGIC;
    in_N : in STD_LOGIC;
    out1 : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MJ_IBUFG_DS_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MJ_IBUFG_DS_0_0 : entity is "design_1_MJ_IBUFG_DS_0_0,MJ_IBUFG_DS,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MJ_IBUFG_DS_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MJ_IBUFG_DS_0_0 : entity is "MJ_IBUFG_DS,Vivado 2020.2";
end design_1_MJ_IBUFG_DS_0_0;

architecture STRUCTURE of design_1_MJ_IBUFG_DS_0_0 is
begin
inst: entity work.design_1_MJ_IBUFG_DS_0_0_MJ_IBUFG_DS
     port map (
      in_N => in_N,
      in_P => in_P,
      out1 => out1
    );
end STRUCTURE;
