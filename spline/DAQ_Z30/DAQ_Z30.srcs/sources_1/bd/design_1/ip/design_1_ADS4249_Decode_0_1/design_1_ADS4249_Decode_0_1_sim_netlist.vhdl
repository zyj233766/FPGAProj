-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Fri Dec 20 18:30:53 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_ADS4249_Decode_0_1/design_1_ADS4249_Decode_0_1_sim_netlist.vhdl
-- Design      : design_1_ADS4249_Decode_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADS4249_Decode_0_1_ADS4249_Decode is
  port (
    daout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dbout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    da0p : in STD_LOGIC;
    da0n : in STD_LOGIC;
    da2p : in STD_LOGIC;
    da2n : in STD_LOGIC;
    da4p : in STD_LOGIC;
    da4n : in STD_LOGIC;
    da6p : in STD_LOGIC;
    da6n : in STD_LOGIC;
    da8p : in STD_LOGIC;
    da8n : in STD_LOGIC;
    da10p : in STD_LOGIC;
    da10n : in STD_LOGIC;
    da12p : in STD_LOGIC;
    da12n : in STD_LOGIC;
    db0p : in STD_LOGIC;
    db0n : in STD_LOGIC;
    db2p : in STD_LOGIC;
    db2n : in STD_LOGIC;
    db4p : in STD_LOGIC;
    db4n : in STD_LOGIC;
    db6p : in STD_LOGIC;
    db6n : in STD_LOGIC;
    db8p : in STD_LOGIC;
    db8n : in STD_LOGIC;
    db10p : in STD_LOGIC;
    db10n : in STD_LOGIC;
    db12p : in STD_LOGIC;
    db12n : in STD_LOGIC;
    clkinp : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_ADS4249_Decode_0_1_ADS4249_Decode : entity is "ADS4249_Decode";
end design_1_ADS4249_Decode_0_1_ADS4249_Decode;

architecture STRUCTURE of design_1_ADS4249_Decode_0_1_ADS4249_Decode is
  signal atmp : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal btmp : STD_LOGIC_VECTOR ( 13 downto 0 );
  signal da0 : STD_LOGIC;
  signal da10 : STD_LOGIC;
  signal da12 : STD_LOGIC;
  signal da2 : STD_LOGIC;
  signal da4 : STD_LOGIC;
  signal da6 : STD_LOGIC;
  signal da8 : STD_LOGIC;
  signal db0 : STD_LOGIC;
  signal db10 : STD_LOGIC;
  signal db12 : STD_LOGIC;
  signal db2 : STD_LOGIC;
  signal db4 : STD_LOGIC;
  signal db6 : STD_LOGIC;
  signal db8 : STD_LOGIC;
  attribute BOX_TYPE : string;
  attribute BOX_TYPE of IDDR_da0_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ : string;
  attribute \__SRVAL\ of IDDR_da0_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da10_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da10_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da12_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da12_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da2_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da2_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da4_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da4_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da6_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da6_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_da8_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_da8_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db0_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db0_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db10_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db10_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db12_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db12_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db2_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db2_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db4_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db4_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db6_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db6_inst : label is "TRUE";
  attribute BOX_TYPE of IDDR_db8_inst : label is "PRIMITIVE";
  attribute \__SRVAL\ of IDDR_db8_inst : label is "TRUE";
  attribute BOX_TYPE of adc_da0lvds : label is "PRIMITIVE";
  attribute CAPACITANCE : string;
  attribute CAPACITANCE of adc_da0lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE : string;
  attribute IBUF_DELAY_VALUE of adc_da0lvds : label is "0";
  attribute IFD_DELAY_VALUE : string;
  attribute IFD_DELAY_VALUE of adc_da0lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da10lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da10lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da10lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da10lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da12lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da12lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da12lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da12lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da2lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da2lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da2lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da2lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da4lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da4lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da4lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da4lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da6lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da6lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da6lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da6lvds : label is "AUTO";
  attribute BOX_TYPE of adc_da8lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_da8lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_da8lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_da8lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db0lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db0lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db0lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db0lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db10lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db10lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db10lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db10lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db12lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db12lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db12lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db12lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db2lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db2lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db2lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db2lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db4lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db4lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db4lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db4lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db6lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db6lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db6lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db6lvds : label is "AUTO";
  attribute BOX_TYPE of adc_db8lvds : label is "PRIMITIVE";
  attribute CAPACITANCE of adc_db8lvds : label is "DONT_CARE";
  attribute IBUF_DELAY_VALUE of adc_db8lvds : label is "0";
  attribute IFD_DELAY_VALUE of adc_db8lvds : label is "AUTO";
begin
IDDR_da0_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da0,
      Q1 => atmp(0),
      Q2 => atmp(1),
      R => '0',
      S => '0'
    );
IDDR_da10_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da10,
      Q1 => atmp(10),
      Q2 => atmp(11),
      R => '0',
      S => '0'
    );
IDDR_da12_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da12,
      Q1 => atmp(12),
      Q2 => atmp(13),
      R => '0',
      S => '0'
    );
IDDR_da2_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da2,
      Q1 => atmp(2),
      Q2 => atmp(3),
      R => '0',
      S => '0'
    );
IDDR_da4_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da4,
      Q1 => atmp(4),
      Q2 => atmp(5),
      R => '0',
      S => '0'
    );
IDDR_da6_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da6,
      Q1 => atmp(6),
      Q2 => atmp(7),
      R => '0',
      S => '0'
    );
IDDR_da8_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => da8,
      Q1 => atmp(8),
      Q2 => atmp(9),
      R => '0',
      S => '0'
    );
IDDR_db0_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db0,
      Q1 => btmp(0),
      Q2 => btmp(1),
      R => '0',
      S => '0'
    );
IDDR_db10_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db10,
      Q1 => btmp(10),
      Q2 => btmp(11),
      R => '0',
      S => '0'
    );
IDDR_db12_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db12,
      Q1 => btmp(12),
      Q2 => btmp(13),
      R => '0',
      S => '0'
    );
IDDR_db2_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db2,
      Q1 => btmp(2),
      Q2 => btmp(3),
      R => '0',
      S => '0'
    );
IDDR_db4_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db4,
      Q1 => btmp(4),
      Q2 => btmp(5),
      R => '0',
      S => '0'
    );
IDDR_db6_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db6,
      Q1 => btmp(6),
      Q2 => btmp(7),
      R => '0',
      S => '0'
    );
IDDR_db8_inst: unisim.vcomponents.IDDR
    generic map(
      DDR_CLK_EDGE => "OPPOSITE_EDGE",
      INIT_Q1 => '0',
      INIT_Q2 => '0',
      IS_C_INVERTED => '0',
      IS_D_INVERTED => '0',
      SRTYPE => "SYNC"
    )
        port map (
      C => clkinp,
      CE => '1',
      D => db8,
      Q1 => btmp(8),
      Q2 => btmp(9),
      R => '0',
      S => '0'
    );
adc_da0lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da0p,
      IB => da0n,
      O => da0
    );
adc_da10lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da10p,
      IB => da10n,
      O => da10
    );
adc_da12lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da12p,
      IB => da12n,
      O => da12
    );
adc_da2lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da2p,
      IB => da2n,
      O => da2
    );
adc_da4lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da4p,
      IB => da4n,
      O => da4
    );
adc_da6lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da6p,
      IB => da6n,
      O => da6
    );
adc_da8lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => da8p,
      IB => da8n,
      O => da8
    );
adc_db0lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db0p,
      IB => db0n,
      O => db0
    );
adc_db10lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db10p,
      IB => db10n,
      O => db10
    );
adc_db12lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db12p,
      IB => db12n,
      O => db12
    );
adc_db2lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db2p,
      IB => db2n,
      O => db2
    );
adc_db4lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db4p,
      IB => db4n,
      O => db4
    );
adc_db6lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db6p,
      IB => db6n,
      O => db6
    );
adc_db8lvds: unisim.vcomponents.IBUFDS
    generic map(
      IOSTANDARD => "DEFAULT"
    )
        port map (
      I => db8p,
      IB => db8n,
      O => db8
    );
\daout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(0),
      Q => daout(0),
      R => '0'
    );
\daout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(10),
      Q => daout(10),
      R => '0'
    );
\daout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(11),
      Q => daout(11),
      R => '0'
    );
\daout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(12),
      Q => daout(12),
      R => '0'
    );
\daout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(13),
      Q => daout(13),
      R => '0'
    );
\daout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(1),
      Q => daout(1),
      R => '0'
    );
\daout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(2),
      Q => daout(2),
      R => '0'
    );
\daout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(3),
      Q => daout(3),
      R => '0'
    );
\daout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(4),
      Q => daout(4),
      R => '0'
    );
\daout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(5),
      Q => daout(5),
      R => '0'
    );
\daout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(6),
      Q => daout(6),
      R => '0'
    );
\daout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(7),
      Q => daout(7),
      R => '0'
    );
\daout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(8),
      Q => daout(8),
      R => '0'
    );
\daout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => atmp(9),
      Q => daout(9),
      R => '0'
    );
\dbout_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(0),
      Q => dbout(0),
      R => '0'
    );
\dbout_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(10),
      Q => dbout(10),
      R => '0'
    );
\dbout_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(11),
      Q => dbout(11),
      R => '0'
    );
\dbout_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(12),
      Q => dbout(12),
      R => '0'
    );
\dbout_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(13),
      Q => dbout(13),
      R => '0'
    );
\dbout_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(1),
      Q => dbout(1),
      R => '0'
    );
\dbout_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(2),
      Q => dbout(2),
      R => '0'
    );
\dbout_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(3),
      Q => dbout(3),
      R => '0'
    );
\dbout_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(4),
      Q => dbout(4),
      R => '0'
    );
\dbout_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(5),
      Q => dbout(5),
      R => '0'
    );
\dbout_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(6),
      Q => dbout(6),
      R => '0'
    );
\dbout_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(7),
      Q => dbout(7),
      R => '0'
    );
\dbout_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(8),
      Q => dbout(8),
      R => '0'
    );
\dbout_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => clkinp,
      CE => '1',
      D => btmp(9),
      Q => dbout(9),
      R => '0'
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_ADS4249_Decode_0_1 is
  port (
    clkinp : in STD_LOGIC;
    da0p : in STD_LOGIC;
    da0n : in STD_LOGIC;
    da2p : in STD_LOGIC;
    da2n : in STD_LOGIC;
    da4p : in STD_LOGIC;
    da4n : in STD_LOGIC;
    da6p : in STD_LOGIC;
    da6n : in STD_LOGIC;
    da8p : in STD_LOGIC;
    da8n : in STD_LOGIC;
    da10p : in STD_LOGIC;
    da10n : in STD_LOGIC;
    da12p : in STD_LOGIC;
    da12n : in STD_LOGIC;
    db0p : in STD_LOGIC;
    db0n : in STD_LOGIC;
    db2p : in STD_LOGIC;
    db2n : in STD_LOGIC;
    db4p : in STD_LOGIC;
    db4n : in STD_LOGIC;
    db6p : in STD_LOGIC;
    db6n : in STD_LOGIC;
    db8p : in STD_LOGIC;
    db8n : in STD_LOGIC;
    db10p : in STD_LOGIC;
    db10n : in STD_LOGIC;
    db12p : in STD_LOGIC;
    db12n : in STD_LOGIC;
    daout : out STD_LOGIC_VECTOR ( 13 downto 0 );
    dbout : out STD_LOGIC_VECTOR ( 13 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_ADS4249_Decode_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_ADS4249_Decode_0_1 : entity is "design_1_ADS4249_Decode_0_1,ADS4249_Decode,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_ADS4249_Decode_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_ADS4249_Decode_0_1 : entity is "ADS4249_Decode,Vivado 2020.2";
end design_1_ADS4249_Decode_0_1;

architecture STRUCTURE of design_1_ADS4249_Decode_0_1 is
begin
inst: entity work.design_1_ADS4249_Decode_0_1_ADS4249_Decode
     port map (
      clkinp => clkinp,
      da0n => da0n,
      da0p => da0p,
      da10n => da10n,
      da10p => da10p,
      da12n => da12n,
      da12p => da12p,
      da2n => da2n,
      da2p => da2p,
      da4n => da4n,
      da4p => da4p,
      da6n => da6n,
      da6p => da6p,
      da8n => da8n,
      da8p => da8p,
      daout(13 downto 0) => daout(13 downto 0),
      db0n => db0n,
      db0p => db0p,
      db10n => db10n,
      db10p => db10p,
      db12n => db12n,
      db12p => db12p,
      db2n => db2n,
      db2p => db2p,
      db4n => db4n,
      db4p => db4p,
      db6n => db6n,
      db6p => db6p,
      db8n => db8n,
      db8p => db8p,
      dbout(13 downto 0) => dbout(13 downto 0)
    );
end STRUCTURE;
