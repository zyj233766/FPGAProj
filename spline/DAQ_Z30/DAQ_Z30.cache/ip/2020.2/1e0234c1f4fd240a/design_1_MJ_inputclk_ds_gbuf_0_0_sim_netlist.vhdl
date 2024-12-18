-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:05 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_MJ_inputclk_ds_gbuf_0_0_sim_netlist.vhdl
-- Design      : design_1_MJ_inputclk_ds_gbuf_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf is
  port (
    clkout_gbuf : out STD_LOGIC;
    clkin_p : in STD_LOGIC;
    clkin_n : in STD_LOGIC;
    delay_clk : in STD_LOGIC;
    rst : in STD_LOGIC;
    delay_cnt : in STD_LOGIC_VECTOR ( 4 downto 0 )
  );
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf is
  signal mADC_CLK : STD_LOGIC;
  signal NLW_IDELAYCTRL_inst_RDY_UNCONNECTED : STD_LOGIC;
  signal NLW_IDELAYE2_inst_db0_CNTVALUEOUT_UNCONNECTED : STD_LOGIC_VECTOR ( 4 downto 0 );
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of AdcClklvds : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of AdcClklvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of AdcClklvds : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of AdcClklvds : label is "AUTO";
  attribute BOX_TYPE of IDELAYCTRL_inst : label is "PRIMITIVE";
  attribute IODELAY_GROUP : string;
  attribute IODELAY_GROUP of IDELAYCTRL_inst : label is "delay1";
  attribute BOX_TYPE of IDELAYE2_inst_db0 : label is "PRIMITIVE";
  attribute IODELAY_GROUP of IDELAYE2_inst_db0 : label is "delay1";
  attribute SIM_DELAY_D : integer;
  attribute SIM_DELAY_D of IDELAYE2_inst_db0 : label is 0;
begin
AdcClklvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => clkin_p,
      IB => clkin_n,
      O => mADC_CLK
    );
IDELAYCTRL_inst: unisim.vcomponents.IDELAYCTRL
    generic map(
      SIM_DEVICE => "7SERIES"
    )
        port map (
      RDY => NLW_IDELAYCTRL_inst_RDY_UNCONNECTED,
      REFCLK => delay_clk,
      RST => rst
    );
IDELAYE2_inst_db0: unisim.vcomponents.IDELAYE2
    generic map(
      CINVCTRL_SEL => "FALSE",
      DELAY_SRC => "IDATAIN",
      HIGH_PERFORMANCE_MODE => "TRUE",
      IDELAY_TYPE => "VAR_LOAD",
      IDELAY_VALUE => 15,
      IS_C_INVERTED => '0',
      IS_DATAIN_INVERTED => '0',
      IS_IDATAIN_INVERTED => '0',
      PIPE_SEL => "FALSE",
      REFCLK_FREQUENCY => 200.000000,
      SIGNAL_PATTERN => "DATA"
    )
        port map (
      C => delay_clk,
      CE => '0',
      CINVCTRL => '0',
      CNTVALUEIN(4 downto 0) => delay_cnt(4 downto 0),
      CNTVALUEOUT(4 downto 0) => NLW_IDELAYE2_inst_db0_CNTVALUEOUT_UNCONNECTED(4 downto 0),
      DATAIN => '0',
      DATAOUT => clkout_gbuf,
      IDATAIN => mADC_CLK,
      INC => '0',
      LD => '1',
      LDPIPEEN => '0',
      REGRST => rst
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    clkin_p : in STD_LOGIC;
    clkin_n : in STD_LOGIC;
    delay_cnt : in STD_LOGIC_VECTOR ( 4 downto 0 );
    rst : in STD_LOGIC;
    delay_clk : in STD_LOGIC;
    clkout_gbuf : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "design_1_MJ_inputclk_ds_gbuf_0_0,MJ_inputclk_ds_gbuf,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "MJ_inputclk_ds_gbuf,Vivado 2020.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
begin
inst: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_MJ_inputclk_ds_gbuf
     port map (
      clkin_n => clkin_n,
      clkin_p => clkin_p,
      clkout_gbuf => clkout_gbuf,
      delay_clk => delay_clk,
      delay_cnt(4 downto 0) => delay_cnt(4 downto 0),
      rst => rst
    );
end STRUCTURE;
