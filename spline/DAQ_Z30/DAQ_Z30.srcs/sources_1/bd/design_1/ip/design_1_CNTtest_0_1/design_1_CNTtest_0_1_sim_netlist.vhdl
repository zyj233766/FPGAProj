-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:07 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/FPGAproj/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_CNTtest_0_1/design_1_CNTtest_0_1_sim_netlist.vhdl
-- Design      : design_1_CNTtest_0_1
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CNTtest_0_1_CNTtest is
  port (
    OUT_CNTA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_CNTB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_CNTC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_STOP : out STD_LOGIC;
    OUT_START : out STD_LOGIC;
    OUT_CNTEN : out STD_LOGIC;
    SIGN_CNTA : out STD_LOGIC;
    SIGN_CNTB : out STD_LOGIC;
    SIGN_CNTC : out STD_LOGIC;
    IN_CNTA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    sys_clk : in STD_LOGIC;
    IN_CNTB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_CNTC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_STOP : in STD_LOGIC;
    IN_START : in STD_LOGIC;
    IN_CNTEN : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_CNTtest_0_1_CNTtest : entity is "CNTtest";
end design_1_CNTtest_0_1_CNTtest;

architecture STRUCTURE of design_1_CNTtest_0_1_CNTtest is
  signal \^out_cnta\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTA_d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTA_d2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^out_cntb\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTB_d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTB_d2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^out_cntc\ : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTC_d1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_CNTC_d2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^sign_cnta\ : STD_LOGIC;
  signal SIGN_CNTA0 : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTA0_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTA0_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTA0_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTA0_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTA0_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTA0_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTA0_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTA0_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTA0_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTA1 : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTA1_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTA1_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTA1_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTA1_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTA1_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTA1_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTA1_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTA1_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTA1_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTA_i_1_n_0 : STD_LOGIC;
  signal \^sign_cntb\ : STD_LOGIC;
  signal SIGN_CNTB0 : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTB0_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTB0_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTB0_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTB0_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTB0_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTB0_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTB0_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTB0_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTB0_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTB1 : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTB1_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTB1_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTB1_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTB1_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTB1_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTB1_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTB1_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTB1_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTB1_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTB_i_1_n_0 : STD_LOGIC;
  signal \^sign_cntc\ : STD_LOGIC;
  signal SIGN_CNTC0 : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTC0_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTC0_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTC0_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTC0_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTC0_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTC0_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTC0_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTC0_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTC0_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTC1 : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_i_4_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_n_1\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_n_2\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__0_n_3\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__1_i_1_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__1_i_2_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__1_i_3_n_0\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__1_n_2\ : STD_LOGIC;
  signal \SIGN_CNTC1_carry__1_n_3\ : STD_LOGIC;
  signal SIGN_CNTC1_carry_i_1_n_0 : STD_LOGIC;
  signal SIGN_CNTC1_carry_i_2_n_0 : STD_LOGIC;
  signal SIGN_CNTC1_carry_i_3_n_0 : STD_LOGIC;
  signal SIGN_CNTC1_carry_i_4_n_0 : STD_LOGIC;
  signal SIGN_CNTC1_carry_n_0 : STD_LOGIC;
  signal SIGN_CNTC1_carry_n_1 : STD_LOGIC;
  signal SIGN_CNTC1_carry_n_2 : STD_LOGIC;
  signal SIGN_CNTC1_carry_n_3 : STD_LOGIC;
  signal SIGN_CNTC_i_1_n_0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal NLW_SIGN_CNTA0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTA0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTA0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTA0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SIGN_CNTA1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTA1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTA1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTA1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SIGN_CNTB0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTB0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTB0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTB0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SIGN_CNTB1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTB1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTB1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTB1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SIGN_CNTC0_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTC0_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTC0_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTC0_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal NLW_SIGN_CNTC1_carry_O_UNCONNECTED : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTC1_carry__0_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
  signal \NLW_SIGN_CNTC1_carry__1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  signal \NLW_SIGN_CNTC1_carry__1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 0 );
begin
  OUT_CNTA(31 downto 0) <= \^out_cnta\(31 downto 0);
  OUT_CNTB(31 downto 0) <= \^out_cntb\(31 downto 0);
  OUT_CNTC(31 downto 0) <= \^out_cntc\(31 downto 0);
  SIGN_CNTA <= \^sign_cnta\;
  SIGN_CNTB <= \^sign_cntb\;
  SIGN_CNTC <= \^sign_cntc\;
\OUT_CNTA[31]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => sys_rst_n,
      O => p_0_in
    );
\OUT_CNTA_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(0),
      Q => OUT_CNTA_d1(0)
    );
\OUT_CNTA_d1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(10),
      Q => OUT_CNTA_d1(10)
    );
\OUT_CNTA_d1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(11),
      Q => OUT_CNTA_d1(11)
    );
\OUT_CNTA_d1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(12),
      Q => OUT_CNTA_d1(12)
    );
\OUT_CNTA_d1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(13),
      Q => OUT_CNTA_d1(13)
    );
\OUT_CNTA_d1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(14),
      Q => OUT_CNTA_d1(14)
    );
\OUT_CNTA_d1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(15),
      Q => OUT_CNTA_d1(15)
    );
\OUT_CNTA_d1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(16),
      Q => OUT_CNTA_d1(16)
    );
\OUT_CNTA_d1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(17),
      Q => OUT_CNTA_d1(17)
    );
\OUT_CNTA_d1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(18),
      Q => OUT_CNTA_d1(18)
    );
\OUT_CNTA_d1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(19),
      Q => OUT_CNTA_d1(19)
    );
\OUT_CNTA_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(1),
      Q => OUT_CNTA_d1(1)
    );
\OUT_CNTA_d1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(20),
      Q => OUT_CNTA_d1(20)
    );
\OUT_CNTA_d1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(21),
      Q => OUT_CNTA_d1(21)
    );
\OUT_CNTA_d1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(22),
      Q => OUT_CNTA_d1(22)
    );
\OUT_CNTA_d1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(23),
      Q => OUT_CNTA_d1(23)
    );
\OUT_CNTA_d1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(24),
      Q => OUT_CNTA_d1(24)
    );
\OUT_CNTA_d1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(25),
      Q => OUT_CNTA_d1(25)
    );
\OUT_CNTA_d1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(26),
      Q => OUT_CNTA_d1(26)
    );
\OUT_CNTA_d1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(27),
      Q => OUT_CNTA_d1(27)
    );
\OUT_CNTA_d1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(28),
      Q => OUT_CNTA_d1(28)
    );
\OUT_CNTA_d1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(29),
      Q => OUT_CNTA_d1(29)
    );
\OUT_CNTA_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(2),
      Q => OUT_CNTA_d1(2)
    );
\OUT_CNTA_d1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(30),
      Q => OUT_CNTA_d1(30)
    );
\OUT_CNTA_d1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(31),
      Q => OUT_CNTA_d1(31)
    );
\OUT_CNTA_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(3),
      Q => OUT_CNTA_d1(3)
    );
\OUT_CNTA_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(4),
      Q => OUT_CNTA_d1(4)
    );
\OUT_CNTA_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(5),
      Q => OUT_CNTA_d1(5)
    );
\OUT_CNTA_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(6),
      Q => OUT_CNTA_d1(6)
    );
\OUT_CNTA_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(7),
      Q => OUT_CNTA_d1(7)
    );
\OUT_CNTA_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(8),
      Q => OUT_CNTA_d1(8)
    );
\OUT_CNTA_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cnta\(9),
      Q => OUT_CNTA_d1(9)
    );
\OUT_CNTA_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(0),
      Q => OUT_CNTA_d2(0)
    );
\OUT_CNTA_d2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(10),
      Q => OUT_CNTA_d2(10)
    );
\OUT_CNTA_d2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(11),
      Q => OUT_CNTA_d2(11)
    );
\OUT_CNTA_d2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(12),
      Q => OUT_CNTA_d2(12)
    );
\OUT_CNTA_d2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(13),
      Q => OUT_CNTA_d2(13)
    );
\OUT_CNTA_d2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(14),
      Q => OUT_CNTA_d2(14)
    );
\OUT_CNTA_d2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(15),
      Q => OUT_CNTA_d2(15)
    );
\OUT_CNTA_d2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(16),
      Q => OUT_CNTA_d2(16)
    );
\OUT_CNTA_d2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(17),
      Q => OUT_CNTA_d2(17)
    );
\OUT_CNTA_d2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(18),
      Q => OUT_CNTA_d2(18)
    );
\OUT_CNTA_d2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(19),
      Q => OUT_CNTA_d2(19)
    );
\OUT_CNTA_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(1),
      Q => OUT_CNTA_d2(1)
    );
\OUT_CNTA_d2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(20),
      Q => OUT_CNTA_d2(20)
    );
\OUT_CNTA_d2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(21),
      Q => OUT_CNTA_d2(21)
    );
\OUT_CNTA_d2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(22),
      Q => OUT_CNTA_d2(22)
    );
\OUT_CNTA_d2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(23),
      Q => OUT_CNTA_d2(23)
    );
\OUT_CNTA_d2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(24),
      Q => OUT_CNTA_d2(24)
    );
\OUT_CNTA_d2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(25),
      Q => OUT_CNTA_d2(25)
    );
\OUT_CNTA_d2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(26),
      Q => OUT_CNTA_d2(26)
    );
\OUT_CNTA_d2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(27),
      Q => OUT_CNTA_d2(27)
    );
\OUT_CNTA_d2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(28),
      Q => OUT_CNTA_d2(28)
    );
\OUT_CNTA_d2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(29),
      Q => OUT_CNTA_d2(29)
    );
\OUT_CNTA_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(2),
      Q => OUT_CNTA_d2(2)
    );
\OUT_CNTA_d2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(30),
      Q => OUT_CNTA_d2(30)
    );
\OUT_CNTA_d2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(31),
      Q => OUT_CNTA_d2(31)
    );
\OUT_CNTA_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(3),
      Q => OUT_CNTA_d2(3)
    );
\OUT_CNTA_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(4),
      Q => OUT_CNTA_d2(4)
    );
\OUT_CNTA_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(5),
      Q => OUT_CNTA_d2(5)
    );
\OUT_CNTA_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(6),
      Q => OUT_CNTA_d2(6)
    );
\OUT_CNTA_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(7),
      Q => OUT_CNTA_d2(7)
    );
\OUT_CNTA_d2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(8),
      Q => OUT_CNTA_d2(8)
    );
\OUT_CNTA_d2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTA_d1(9),
      Q => OUT_CNTA_d2(9)
    );
\OUT_CNTA_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(0),
      Q => \^out_cnta\(0),
      R => p_0_in
    );
\OUT_CNTA_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(10),
      Q => \^out_cnta\(10),
      R => p_0_in
    );
\OUT_CNTA_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(11),
      Q => \^out_cnta\(11),
      R => p_0_in
    );
\OUT_CNTA_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(12),
      Q => \^out_cnta\(12),
      R => p_0_in
    );
\OUT_CNTA_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(13),
      Q => \^out_cnta\(13),
      R => p_0_in
    );
\OUT_CNTA_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(14),
      Q => \^out_cnta\(14),
      R => p_0_in
    );
\OUT_CNTA_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(15),
      Q => \^out_cnta\(15),
      R => p_0_in
    );
\OUT_CNTA_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(16),
      Q => \^out_cnta\(16),
      R => p_0_in
    );
\OUT_CNTA_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(17),
      Q => \^out_cnta\(17),
      R => p_0_in
    );
\OUT_CNTA_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(18),
      Q => \^out_cnta\(18),
      R => p_0_in
    );
\OUT_CNTA_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(19),
      Q => \^out_cnta\(19),
      R => p_0_in
    );
\OUT_CNTA_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(1),
      Q => \^out_cnta\(1),
      R => p_0_in
    );
\OUT_CNTA_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(20),
      Q => \^out_cnta\(20),
      R => p_0_in
    );
\OUT_CNTA_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(21),
      Q => \^out_cnta\(21),
      R => p_0_in
    );
\OUT_CNTA_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(22),
      Q => \^out_cnta\(22),
      R => p_0_in
    );
\OUT_CNTA_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(23),
      Q => \^out_cnta\(23),
      R => p_0_in
    );
\OUT_CNTA_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(24),
      Q => \^out_cnta\(24),
      R => p_0_in
    );
\OUT_CNTA_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(25),
      Q => \^out_cnta\(25),
      R => p_0_in
    );
\OUT_CNTA_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(26),
      Q => \^out_cnta\(26),
      R => p_0_in
    );
\OUT_CNTA_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(27),
      Q => \^out_cnta\(27),
      R => p_0_in
    );
\OUT_CNTA_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(28),
      Q => \^out_cnta\(28),
      R => p_0_in
    );
\OUT_CNTA_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(29),
      Q => \^out_cnta\(29),
      R => p_0_in
    );
\OUT_CNTA_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(2),
      Q => \^out_cnta\(2),
      R => p_0_in
    );
\OUT_CNTA_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(30),
      Q => \^out_cnta\(30),
      R => p_0_in
    );
\OUT_CNTA_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(31),
      Q => \^out_cnta\(31),
      R => p_0_in
    );
\OUT_CNTA_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(3),
      Q => \^out_cnta\(3),
      R => p_0_in
    );
\OUT_CNTA_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(4),
      Q => \^out_cnta\(4),
      R => p_0_in
    );
\OUT_CNTA_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(5),
      Q => \^out_cnta\(5),
      R => p_0_in
    );
\OUT_CNTA_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(6),
      Q => \^out_cnta\(6),
      R => p_0_in
    );
\OUT_CNTA_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(7),
      Q => \^out_cnta\(7),
      R => p_0_in
    );
\OUT_CNTA_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(8),
      Q => \^out_cnta\(8),
      R => p_0_in
    );
\OUT_CNTA_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTA(9),
      Q => \^out_cnta\(9),
      R => p_0_in
    );
\OUT_CNTB_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(0),
      Q => OUT_CNTB_d1(0)
    );
\OUT_CNTB_d1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(10),
      Q => OUT_CNTB_d1(10)
    );
\OUT_CNTB_d1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(11),
      Q => OUT_CNTB_d1(11)
    );
\OUT_CNTB_d1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(12),
      Q => OUT_CNTB_d1(12)
    );
\OUT_CNTB_d1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(13),
      Q => OUT_CNTB_d1(13)
    );
\OUT_CNTB_d1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(14),
      Q => OUT_CNTB_d1(14)
    );
\OUT_CNTB_d1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(15),
      Q => OUT_CNTB_d1(15)
    );
\OUT_CNTB_d1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(16),
      Q => OUT_CNTB_d1(16)
    );
\OUT_CNTB_d1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(17),
      Q => OUT_CNTB_d1(17)
    );
\OUT_CNTB_d1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(18),
      Q => OUT_CNTB_d1(18)
    );
\OUT_CNTB_d1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(19),
      Q => OUT_CNTB_d1(19)
    );
\OUT_CNTB_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(1),
      Q => OUT_CNTB_d1(1)
    );
\OUT_CNTB_d1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(20),
      Q => OUT_CNTB_d1(20)
    );
\OUT_CNTB_d1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(21),
      Q => OUT_CNTB_d1(21)
    );
\OUT_CNTB_d1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(22),
      Q => OUT_CNTB_d1(22)
    );
\OUT_CNTB_d1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(23),
      Q => OUT_CNTB_d1(23)
    );
\OUT_CNTB_d1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(24),
      Q => OUT_CNTB_d1(24)
    );
\OUT_CNTB_d1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(25),
      Q => OUT_CNTB_d1(25)
    );
\OUT_CNTB_d1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(26),
      Q => OUT_CNTB_d1(26)
    );
\OUT_CNTB_d1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(27),
      Q => OUT_CNTB_d1(27)
    );
\OUT_CNTB_d1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(28),
      Q => OUT_CNTB_d1(28)
    );
\OUT_CNTB_d1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(29),
      Q => OUT_CNTB_d1(29)
    );
\OUT_CNTB_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(2),
      Q => OUT_CNTB_d1(2)
    );
\OUT_CNTB_d1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(30),
      Q => OUT_CNTB_d1(30)
    );
\OUT_CNTB_d1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(31),
      Q => OUT_CNTB_d1(31)
    );
\OUT_CNTB_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(3),
      Q => OUT_CNTB_d1(3)
    );
\OUT_CNTB_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(4),
      Q => OUT_CNTB_d1(4)
    );
\OUT_CNTB_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(5),
      Q => OUT_CNTB_d1(5)
    );
\OUT_CNTB_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(6),
      Q => OUT_CNTB_d1(6)
    );
\OUT_CNTB_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(7),
      Q => OUT_CNTB_d1(7)
    );
\OUT_CNTB_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(8),
      Q => OUT_CNTB_d1(8)
    );
\OUT_CNTB_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntb\(9),
      Q => OUT_CNTB_d1(9)
    );
\OUT_CNTB_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(0),
      Q => OUT_CNTB_d2(0)
    );
\OUT_CNTB_d2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(10),
      Q => OUT_CNTB_d2(10)
    );
\OUT_CNTB_d2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(11),
      Q => OUT_CNTB_d2(11)
    );
\OUT_CNTB_d2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(12),
      Q => OUT_CNTB_d2(12)
    );
\OUT_CNTB_d2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(13),
      Q => OUT_CNTB_d2(13)
    );
\OUT_CNTB_d2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(14),
      Q => OUT_CNTB_d2(14)
    );
\OUT_CNTB_d2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(15),
      Q => OUT_CNTB_d2(15)
    );
\OUT_CNTB_d2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(16),
      Q => OUT_CNTB_d2(16)
    );
\OUT_CNTB_d2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(17),
      Q => OUT_CNTB_d2(17)
    );
\OUT_CNTB_d2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(18),
      Q => OUT_CNTB_d2(18)
    );
\OUT_CNTB_d2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(19),
      Q => OUT_CNTB_d2(19)
    );
\OUT_CNTB_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(1),
      Q => OUT_CNTB_d2(1)
    );
\OUT_CNTB_d2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(20),
      Q => OUT_CNTB_d2(20)
    );
\OUT_CNTB_d2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(21),
      Q => OUT_CNTB_d2(21)
    );
\OUT_CNTB_d2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(22),
      Q => OUT_CNTB_d2(22)
    );
\OUT_CNTB_d2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(23),
      Q => OUT_CNTB_d2(23)
    );
\OUT_CNTB_d2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(24),
      Q => OUT_CNTB_d2(24)
    );
\OUT_CNTB_d2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(25),
      Q => OUT_CNTB_d2(25)
    );
\OUT_CNTB_d2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(26),
      Q => OUT_CNTB_d2(26)
    );
\OUT_CNTB_d2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(27),
      Q => OUT_CNTB_d2(27)
    );
\OUT_CNTB_d2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(28),
      Q => OUT_CNTB_d2(28)
    );
\OUT_CNTB_d2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(29),
      Q => OUT_CNTB_d2(29)
    );
\OUT_CNTB_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(2),
      Q => OUT_CNTB_d2(2)
    );
\OUT_CNTB_d2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(30),
      Q => OUT_CNTB_d2(30)
    );
\OUT_CNTB_d2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(31),
      Q => OUT_CNTB_d2(31)
    );
\OUT_CNTB_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(3),
      Q => OUT_CNTB_d2(3)
    );
\OUT_CNTB_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(4),
      Q => OUT_CNTB_d2(4)
    );
\OUT_CNTB_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(5),
      Q => OUT_CNTB_d2(5)
    );
\OUT_CNTB_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(6),
      Q => OUT_CNTB_d2(6)
    );
\OUT_CNTB_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(7),
      Q => OUT_CNTB_d2(7)
    );
\OUT_CNTB_d2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(8),
      Q => OUT_CNTB_d2(8)
    );
\OUT_CNTB_d2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTB_d1(9),
      Q => OUT_CNTB_d2(9)
    );
\OUT_CNTB_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(0),
      Q => \^out_cntb\(0),
      R => p_0_in
    );
\OUT_CNTB_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(10),
      Q => \^out_cntb\(10),
      R => p_0_in
    );
\OUT_CNTB_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(11),
      Q => \^out_cntb\(11),
      R => p_0_in
    );
\OUT_CNTB_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(12),
      Q => \^out_cntb\(12),
      R => p_0_in
    );
\OUT_CNTB_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(13),
      Q => \^out_cntb\(13),
      R => p_0_in
    );
\OUT_CNTB_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(14),
      Q => \^out_cntb\(14),
      R => p_0_in
    );
\OUT_CNTB_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(15),
      Q => \^out_cntb\(15),
      R => p_0_in
    );
\OUT_CNTB_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(16),
      Q => \^out_cntb\(16),
      R => p_0_in
    );
\OUT_CNTB_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(17),
      Q => \^out_cntb\(17),
      R => p_0_in
    );
\OUT_CNTB_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(18),
      Q => \^out_cntb\(18),
      R => p_0_in
    );
\OUT_CNTB_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(19),
      Q => \^out_cntb\(19),
      R => p_0_in
    );
\OUT_CNTB_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(1),
      Q => \^out_cntb\(1),
      R => p_0_in
    );
\OUT_CNTB_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(20),
      Q => \^out_cntb\(20),
      R => p_0_in
    );
\OUT_CNTB_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(21),
      Q => \^out_cntb\(21),
      R => p_0_in
    );
\OUT_CNTB_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(22),
      Q => \^out_cntb\(22),
      R => p_0_in
    );
\OUT_CNTB_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(23),
      Q => \^out_cntb\(23),
      R => p_0_in
    );
\OUT_CNTB_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(24),
      Q => \^out_cntb\(24),
      R => p_0_in
    );
\OUT_CNTB_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(25),
      Q => \^out_cntb\(25),
      R => p_0_in
    );
\OUT_CNTB_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(26),
      Q => \^out_cntb\(26),
      R => p_0_in
    );
\OUT_CNTB_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(27),
      Q => \^out_cntb\(27),
      R => p_0_in
    );
\OUT_CNTB_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(28),
      Q => \^out_cntb\(28),
      R => p_0_in
    );
\OUT_CNTB_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(29),
      Q => \^out_cntb\(29),
      R => p_0_in
    );
\OUT_CNTB_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(2),
      Q => \^out_cntb\(2),
      R => p_0_in
    );
\OUT_CNTB_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(30),
      Q => \^out_cntb\(30),
      R => p_0_in
    );
\OUT_CNTB_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(31),
      Q => \^out_cntb\(31),
      R => p_0_in
    );
\OUT_CNTB_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(3),
      Q => \^out_cntb\(3),
      R => p_0_in
    );
\OUT_CNTB_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(4),
      Q => \^out_cntb\(4),
      R => p_0_in
    );
\OUT_CNTB_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(5),
      Q => \^out_cntb\(5),
      R => p_0_in
    );
\OUT_CNTB_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(6),
      Q => \^out_cntb\(6),
      R => p_0_in
    );
\OUT_CNTB_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(7),
      Q => \^out_cntb\(7),
      R => p_0_in
    );
\OUT_CNTB_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(8),
      Q => \^out_cntb\(8),
      R => p_0_in
    );
\OUT_CNTB_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTB(9),
      Q => \^out_cntb\(9),
      R => p_0_in
    );
\OUT_CNTC_d1_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(0),
      Q => OUT_CNTC_d1(0)
    );
\OUT_CNTC_d1_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(10),
      Q => OUT_CNTC_d1(10)
    );
\OUT_CNTC_d1_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(11),
      Q => OUT_CNTC_d1(11)
    );
\OUT_CNTC_d1_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(12),
      Q => OUT_CNTC_d1(12)
    );
\OUT_CNTC_d1_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(13),
      Q => OUT_CNTC_d1(13)
    );
\OUT_CNTC_d1_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(14),
      Q => OUT_CNTC_d1(14)
    );
\OUT_CNTC_d1_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(15),
      Q => OUT_CNTC_d1(15)
    );
\OUT_CNTC_d1_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(16),
      Q => OUT_CNTC_d1(16)
    );
\OUT_CNTC_d1_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(17),
      Q => OUT_CNTC_d1(17)
    );
\OUT_CNTC_d1_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(18),
      Q => OUT_CNTC_d1(18)
    );
\OUT_CNTC_d1_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(19),
      Q => OUT_CNTC_d1(19)
    );
\OUT_CNTC_d1_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(1),
      Q => OUT_CNTC_d1(1)
    );
\OUT_CNTC_d1_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(20),
      Q => OUT_CNTC_d1(20)
    );
\OUT_CNTC_d1_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(21),
      Q => OUT_CNTC_d1(21)
    );
\OUT_CNTC_d1_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(22),
      Q => OUT_CNTC_d1(22)
    );
\OUT_CNTC_d1_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(23),
      Q => OUT_CNTC_d1(23)
    );
\OUT_CNTC_d1_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(24),
      Q => OUT_CNTC_d1(24)
    );
\OUT_CNTC_d1_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(25),
      Q => OUT_CNTC_d1(25)
    );
\OUT_CNTC_d1_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(26),
      Q => OUT_CNTC_d1(26)
    );
\OUT_CNTC_d1_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(27),
      Q => OUT_CNTC_d1(27)
    );
\OUT_CNTC_d1_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(28),
      Q => OUT_CNTC_d1(28)
    );
\OUT_CNTC_d1_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(29),
      Q => OUT_CNTC_d1(29)
    );
\OUT_CNTC_d1_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(2),
      Q => OUT_CNTC_d1(2)
    );
\OUT_CNTC_d1_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(30),
      Q => OUT_CNTC_d1(30)
    );
\OUT_CNTC_d1_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(31),
      Q => OUT_CNTC_d1(31)
    );
\OUT_CNTC_d1_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(3),
      Q => OUT_CNTC_d1(3)
    );
\OUT_CNTC_d1_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(4),
      Q => OUT_CNTC_d1(4)
    );
\OUT_CNTC_d1_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(5),
      Q => OUT_CNTC_d1(5)
    );
\OUT_CNTC_d1_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(6),
      Q => OUT_CNTC_d1(6)
    );
\OUT_CNTC_d1_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(7),
      Q => OUT_CNTC_d1(7)
    );
\OUT_CNTC_d1_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(8),
      Q => OUT_CNTC_d1(8)
    );
\OUT_CNTC_d1_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => \^out_cntc\(9),
      Q => OUT_CNTC_d1(9)
    );
\OUT_CNTC_d2_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(0),
      Q => OUT_CNTC_d2(0)
    );
\OUT_CNTC_d2_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(10),
      Q => OUT_CNTC_d2(10)
    );
\OUT_CNTC_d2_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(11),
      Q => OUT_CNTC_d2(11)
    );
\OUT_CNTC_d2_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(12),
      Q => OUT_CNTC_d2(12)
    );
\OUT_CNTC_d2_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(13),
      Q => OUT_CNTC_d2(13)
    );
\OUT_CNTC_d2_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(14),
      Q => OUT_CNTC_d2(14)
    );
\OUT_CNTC_d2_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(15),
      Q => OUT_CNTC_d2(15)
    );
\OUT_CNTC_d2_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(16),
      Q => OUT_CNTC_d2(16)
    );
\OUT_CNTC_d2_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(17),
      Q => OUT_CNTC_d2(17)
    );
\OUT_CNTC_d2_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(18),
      Q => OUT_CNTC_d2(18)
    );
\OUT_CNTC_d2_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(19),
      Q => OUT_CNTC_d2(19)
    );
\OUT_CNTC_d2_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(1),
      Q => OUT_CNTC_d2(1)
    );
\OUT_CNTC_d2_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(20),
      Q => OUT_CNTC_d2(20)
    );
\OUT_CNTC_d2_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(21),
      Q => OUT_CNTC_d2(21)
    );
\OUT_CNTC_d2_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(22),
      Q => OUT_CNTC_d2(22)
    );
\OUT_CNTC_d2_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(23),
      Q => OUT_CNTC_d2(23)
    );
\OUT_CNTC_d2_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(24),
      Q => OUT_CNTC_d2(24)
    );
\OUT_CNTC_d2_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(25),
      Q => OUT_CNTC_d2(25)
    );
\OUT_CNTC_d2_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(26),
      Q => OUT_CNTC_d2(26)
    );
\OUT_CNTC_d2_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(27),
      Q => OUT_CNTC_d2(27)
    );
\OUT_CNTC_d2_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(28),
      Q => OUT_CNTC_d2(28)
    );
\OUT_CNTC_d2_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(29),
      Q => OUT_CNTC_d2(29)
    );
\OUT_CNTC_d2_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(2),
      Q => OUT_CNTC_d2(2)
    );
\OUT_CNTC_d2_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(30),
      Q => OUT_CNTC_d2(30)
    );
\OUT_CNTC_d2_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(31),
      Q => OUT_CNTC_d2(31)
    );
\OUT_CNTC_d2_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(3),
      Q => OUT_CNTC_d2(3)
    );
\OUT_CNTC_d2_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(4),
      Q => OUT_CNTC_d2(4)
    );
\OUT_CNTC_d2_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(5),
      Q => OUT_CNTC_d2(5)
    );
\OUT_CNTC_d2_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(6),
      Q => OUT_CNTC_d2(6)
    );
\OUT_CNTC_d2_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(7),
      Q => OUT_CNTC_d2(7)
    );
\OUT_CNTC_d2_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(8),
      Q => OUT_CNTC_d2(8)
    );
\OUT_CNTC_d2_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => OUT_CNTC_d1(9),
      Q => OUT_CNTC_d2(9)
    );
\OUT_CNTC_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(0),
      Q => \^out_cntc\(0),
      R => p_0_in
    );
\OUT_CNTC_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(10),
      Q => \^out_cntc\(10),
      R => p_0_in
    );
\OUT_CNTC_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(11),
      Q => \^out_cntc\(11),
      R => p_0_in
    );
\OUT_CNTC_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(12),
      Q => \^out_cntc\(12),
      R => p_0_in
    );
\OUT_CNTC_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(13),
      Q => \^out_cntc\(13),
      R => p_0_in
    );
\OUT_CNTC_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(14),
      Q => \^out_cntc\(14),
      R => p_0_in
    );
\OUT_CNTC_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(15),
      Q => \^out_cntc\(15),
      R => p_0_in
    );
\OUT_CNTC_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(16),
      Q => \^out_cntc\(16),
      R => p_0_in
    );
\OUT_CNTC_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(17),
      Q => \^out_cntc\(17),
      R => p_0_in
    );
\OUT_CNTC_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(18),
      Q => \^out_cntc\(18),
      R => p_0_in
    );
\OUT_CNTC_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(19),
      Q => \^out_cntc\(19),
      R => p_0_in
    );
\OUT_CNTC_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(1),
      Q => \^out_cntc\(1),
      R => p_0_in
    );
\OUT_CNTC_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(20),
      Q => \^out_cntc\(20),
      R => p_0_in
    );
\OUT_CNTC_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(21),
      Q => \^out_cntc\(21),
      R => p_0_in
    );
\OUT_CNTC_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(22),
      Q => \^out_cntc\(22),
      R => p_0_in
    );
\OUT_CNTC_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(23),
      Q => \^out_cntc\(23),
      R => p_0_in
    );
\OUT_CNTC_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(24),
      Q => \^out_cntc\(24),
      R => p_0_in
    );
\OUT_CNTC_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(25),
      Q => \^out_cntc\(25),
      R => p_0_in
    );
\OUT_CNTC_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(26),
      Q => \^out_cntc\(26),
      R => p_0_in
    );
\OUT_CNTC_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(27),
      Q => \^out_cntc\(27),
      R => p_0_in
    );
\OUT_CNTC_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(28),
      Q => \^out_cntc\(28),
      R => p_0_in
    );
\OUT_CNTC_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(29),
      Q => \^out_cntc\(29),
      R => p_0_in
    );
\OUT_CNTC_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(2),
      Q => \^out_cntc\(2),
      R => p_0_in
    );
\OUT_CNTC_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(30),
      Q => \^out_cntc\(30),
      R => p_0_in
    );
\OUT_CNTC_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(31),
      Q => \^out_cntc\(31),
      R => p_0_in
    );
\OUT_CNTC_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(3),
      Q => \^out_cntc\(3),
      R => p_0_in
    );
\OUT_CNTC_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(4),
      Q => \^out_cntc\(4),
      R => p_0_in
    );
\OUT_CNTC_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(5),
      Q => \^out_cntc\(5),
      R => p_0_in
    );
\OUT_CNTC_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(6),
      Q => \^out_cntc\(6),
      R => p_0_in
    );
\OUT_CNTC_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(7),
      Q => \^out_cntc\(7),
      R => p_0_in
    );
\OUT_CNTC_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(8),
      Q => \^out_cntc\(8),
      R => p_0_in
    );
\OUT_CNTC_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTC(9),
      Q => \^out_cntc\(9),
      R => p_0_in
    );
OUT_CNTEN_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_CNTEN,
      Q => OUT_CNTEN,
      R => p_0_in
    );
OUT_START_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_START,
      Q => OUT_START,
      R => p_0_in
    );
OUT_STOP_reg: unisim.vcomponents.FDRE
     port map (
      C => sys_clk,
      CE => '1',
      D => IN_STOP,
      Q => OUT_STOP,
      R => p_0_in
    );
SIGN_CNTA0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTA0_carry_n_0,
      CO(2) => SIGN_CNTA0_carry_n_1,
      CO(1) => SIGN_CNTA0_carry_n_2,
      CO(0) => SIGN_CNTA0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTA0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTA0_carry_i_1_n_0,
      S(2) => SIGN_CNTA0_carry_i_2_n_0,
      S(1) => SIGN_CNTA0_carry_i_3_n_0,
      S(0) => SIGN_CNTA0_carry_i_4_n_0
    );
\SIGN_CNTA0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTA0_carry_n_0,
      CO(3) => \SIGN_CNTA0_carry__0_n_0\,
      CO(2) => \SIGN_CNTA0_carry__0_n_1\,
      CO(1) => \SIGN_CNTA0_carry__0_n_2\,
      CO(0) => \SIGN_CNTA0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTA0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTA0_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTA0_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTA0_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTA0_carry__0_i_4_n_0\
    );
\SIGN_CNTA0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(21),
      I1 => \^out_cnta\(21),
      I2 => \^out_cnta\(23),
      I3 => OUT_CNTA_d1(23),
      I4 => \^out_cnta\(22),
      I5 => OUT_CNTA_d1(22),
      O => \SIGN_CNTA0_carry__0_i_1_n_0\
    );
\SIGN_CNTA0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(18),
      I1 => \^out_cnta\(18),
      I2 => \^out_cnta\(20),
      I3 => OUT_CNTA_d1(20),
      I4 => \^out_cnta\(19),
      I5 => OUT_CNTA_d1(19),
      O => \SIGN_CNTA0_carry__0_i_2_n_0\
    );
\SIGN_CNTA0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(15),
      I1 => \^out_cnta\(15),
      I2 => \^out_cnta\(17),
      I3 => OUT_CNTA_d1(17),
      I4 => \^out_cnta\(16),
      I5 => OUT_CNTA_d1(16),
      O => \SIGN_CNTA0_carry__0_i_3_n_0\
    );
\SIGN_CNTA0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(12),
      I1 => \^out_cnta\(12),
      I2 => \^out_cnta\(14),
      I3 => OUT_CNTA_d1(14),
      I4 => \^out_cnta\(13),
      I5 => OUT_CNTA_d1(13),
      O => \SIGN_CNTA0_carry__0_i_4_n_0\
    );
\SIGN_CNTA0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTA0_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTA0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTA0,
      CO(1) => \SIGN_CNTA0_carry__1_n_2\,
      CO(0) => \SIGN_CNTA0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTA0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTA0_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTA0_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTA0_carry__1_i_3_n_0\
    );
\SIGN_CNTA0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTA_d1(30),
      I1 => \^out_cnta\(30),
      I2 => OUT_CNTA_d1(31),
      I3 => \^out_cnta\(31),
      O => \SIGN_CNTA0_carry__1_i_1_n_0\
    );
\SIGN_CNTA0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(27),
      I1 => \^out_cnta\(27),
      I2 => \^out_cnta\(29),
      I3 => OUT_CNTA_d1(29),
      I4 => \^out_cnta\(28),
      I5 => OUT_CNTA_d1(28),
      O => \SIGN_CNTA0_carry__1_i_2_n_0\
    );
\SIGN_CNTA0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(24),
      I1 => \^out_cnta\(24),
      I2 => \^out_cnta\(26),
      I3 => OUT_CNTA_d1(26),
      I4 => \^out_cnta\(25),
      I5 => OUT_CNTA_d1(25),
      O => \SIGN_CNTA0_carry__1_i_3_n_0\
    );
SIGN_CNTA0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(9),
      I1 => \^out_cnta\(9),
      I2 => \^out_cnta\(11),
      I3 => OUT_CNTA_d1(11),
      I4 => \^out_cnta\(10),
      I5 => OUT_CNTA_d1(10),
      O => SIGN_CNTA0_carry_i_1_n_0
    );
SIGN_CNTA0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(6),
      I1 => \^out_cnta\(6),
      I2 => \^out_cnta\(8),
      I3 => OUT_CNTA_d1(8),
      I4 => \^out_cnta\(7),
      I5 => OUT_CNTA_d1(7),
      O => SIGN_CNTA0_carry_i_2_n_0
    );
SIGN_CNTA0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(3),
      I1 => \^out_cnta\(3),
      I2 => \^out_cnta\(5),
      I3 => OUT_CNTA_d1(5),
      I4 => \^out_cnta\(4),
      I5 => OUT_CNTA_d1(4),
      O => SIGN_CNTA0_carry_i_3_n_0
    );
SIGN_CNTA0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d1(0),
      I1 => \^out_cnta\(0),
      I2 => \^out_cnta\(2),
      I3 => OUT_CNTA_d1(2),
      I4 => \^out_cnta\(1),
      I5 => OUT_CNTA_d1(1),
      O => SIGN_CNTA0_carry_i_4_n_0
    );
SIGN_CNTA1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTA1_carry_n_0,
      CO(2) => SIGN_CNTA1_carry_n_1,
      CO(1) => SIGN_CNTA1_carry_n_2,
      CO(0) => SIGN_CNTA1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTA1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTA1_carry_i_1_n_0,
      S(2) => SIGN_CNTA1_carry_i_2_n_0,
      S(1) => SIGN_CNTA1_carry_i_3_n_0,
      S(0) => SIGN_CNTA1_carry_i_4_n_0
    );
\SIGN_CNTA1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTA1_carry_n_0,
      CO(3) => \SIGN_CNTA1_carry__0_n_0\,
      CO(2) => \SIGN_CNTA1_carry__0_n_1\,
      CO(1) => \SIGN_CNTA1_carry__0_n_2\,
      CO(0) => \SIGN_CNTA1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTA1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTA1_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTA1_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTA1_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTA1_carry__0_i_4_n_0\
    );
\SIGN_CNTA1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(21),
      I1 => OUT_CNTA_d1(21),
      I2 => OUT_CNTA_d1(23),
      I3 => OUT_CNTA_d2(23),
      I4 => OUT_CNTA_d1(22),
      I5 => OUT_CNTA_d2(22),
      O => \SIGN_CNTA1_carry__0_i_1_n_0\
    );
\SIGN_CNTA1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(18),
      I1 => OUT_CNTA_d1(18),
      I2 => OUT_CNTA_d1(20),
      I3 => OUT_CNTA_d2(20),
      I4 => OUT_CNTA_d1(19),
      I5 => OUT_CNTA_d2(19),
      O => \SIGN_CNTA1_carry__0_i_2_n_0\
    );
\SIGN_CNTA1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(15),
      I1 => OUT_CNTA_d1(15),
      I2 => OUT_CNTA_d1(17),
      I3 => OUT_CNTA_d2(17),
      I4 => OUT_CNTA_d1(16),
      I5 => OUT_CNTA_d2(16),
      O => \SIGN_CNTA1_carry__0_i_3_n_0\
    );
\SIGN_CNTA1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(12),
      I1 => OUT_CNTA_d1(12),
      I2 => OUT_CNTA_d1(14),
      I3 => OUT_CNTA_d2(14),
      I4 => OUT_CNTA_d1(13),
      I5 => OUT_CNTA_d2(13),
      O => \SIGN_CNTA1_carry__0_i_4_n_0\
    );
\SIGN_CNTA1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTA1_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTA1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTA1,
      CO(1) => \SIGN_CNTA1_carry__1_n_2\,
      CO(0) => \SIGN_CNTA1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTA1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTA1_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTA1_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTA1_carry__1_i_3_n_0\
    );
\SIGN_CNTA1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTA_d2(30),
      I1 => OUT_CNTA_d1(30),
      I2 => OUT_CNTA_d2(31),
      I3 => OUT_CNTA_d1(31),
      O => \SIGN_CNTA1_carry__1_i_1_n_0\
    );
\SIGN_CNTA1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(27),
      I1 => OUT_CNTA_d1(27),
      I2 => OUT_CNTA_d1(29),
      I3 => OUT_CNTA_d2(29),
      I4 => OUT_CNTA_d1(28),
      I5 => OUT_CNTA_d2(28),
      O => \SIGN_CNTA1_carry__1_i_2_n_0\
    );
\SIGN_CNTA1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(24),
      I1 => OUT_CNTA_d1(24),
      I2 => OUT_CNTA_d1(26),
      I3 => OUT_CNTA_d2(26),
      I4 => OUT_CNTA_d1(25),
      I5 => OUT_CNTA_d2(25),
      O => \SIGN_CNTA1_carry__1_i_3_n_0\
    );
SIGN_CNTA1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(9),
      I1 => OUT_CNTA_d1(9),
      I2 => OUT_CNTA_d1(11),
      I3 => OUT_CNTA_d2(11),
      I4 => OUT_CNTA_d1(10),
      I5 => OUT_CNTA_d2(10),
      O => SIGN_CNTA1_carry_i_1_n_0
    );
SIGN_CNTA1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(6),
      I1 => OUT_CNTA_d1(6),
      I2 => OUT_CNTA_d1(8),
      I3 => OUT_CNTA_d2(8),
      I4 => OUT_CNTA_d1(7),
      I5 => OUT_CNTA_d2(7),
      O => SIGN_CNTA1_carry_i_2_n_0
    );
SIGN_CNTA1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(3),
      I1 => OUT_CNTA_d1(3),
      I2 => OUT_CNTA_d1(5),
      I3 => OUT_CNTA_d2(5),
      I4 => OUT_CNTA_d1(4),
      I5 => OUT_CNTA_d2(4),
      O => SIGN_CNTA1_carry_i_3_n_0
    );
SIGN_CNTA1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTA_d2(0),
      I1 => OUT_CNTA_d1(0),
      I2 => OUT_CNTA_d1(2),
      I3 => OUT_CNTA_d2(2),
      I4 => OUT_CNTA_d1(1),
      I5 => OUT_CNTA_d2(1),
      O => SIGN_CNTA1_carry_i_4_n_0
    );
SIGN_CNTA_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => SIGN_CNTA1,
      I1 => SIGN_CNTA0,
      I2 => \^sign_cnta\,
      O => SIGN_CNTA_i_1_n_0
    );
SIGN_CNTA_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => SIGN_CNTA_i_1_n_0,
      Q => \^sign_cnta\
    );
SIGN_CNTB0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTB0_carry_n_0,
      CO(2) => SIGN_CNTB0_carry_n_1,
      CO(1) => SIGN_CNTB0_carry_n_2,
      CO(0) => SIGN_CNTB0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTB0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTB0_carry_i_1_n_0,
      S(2) => SIGN_CNTB0_carry_i_2_n_0,
      S(1) => SIGN_CNTB0_carry_i_3_n_0,
      S(0) => SIGN_CNTB0_carry_i_4_n_0
    );
\SIGN_CNTB0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTB0_carry_n_0,
      CO(3) => \SIGN_CNTB0_carry__0_n_0\,
      CO(2) => \SIGN_CNTB0_carry__0_n_1\,
      CO(1) => \SIGN_CNTB0_carry__0_n_2\,
      CO(0) => \SIGN_CNTB0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTB0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTB0_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTB0_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTB0_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTB0_carry__0_i_4_n_0\
    );
\SIGN_CNTB0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(21),
      I1 => \^out_cntb\(21),
      I2 => \^out_cntb\(23),
      I3 => OUT_CNTB_d1(23),
      I4 => \^out_cntb\(22),
      I5 => OUT_CNTB_d1(22),
      O => \SIGN_CNTB0_carry__0_i_1_n_0\
    );
\SIGN_CNTB0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(18),
      I1 => \^out_cntb\(18),
      I2 => \^out_cntb\(20),
      I3 => OUT_CNTB_d1(20),
      I4 => \^out_cntb\(19),
      I5 => OUT_CNTB_d1(19),
      O => \SIGN_CNTB0_carry__0_i_2_n_0\
    );
\SIGN_CNTB0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(15),
      I1 => \^out_cntb\(15),
      I2 => \^out_cntb\(17),
      I3 => OUT_CNTB_d1(17),
      I4 => \^out_cntb\(16),
      I5 => OUT_CNTB_d1(16),
      O => \SIGN_CNTB0_carry__0_i_3_n_0\
    );
\SIGN_CNTB0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(12),
      I1 => \^out_cntb\(12),
      I2 => \^out_cntb\(14),
      I3 => OUT_CNTB_d1(14),
      I4 => \^out_cntb\(13),
      I5 => OUT_CNTB_d1(13),
      O => \SIGN_CNTB0_carry__0_i_4_n_0\
    );
\SIGN_CNTB0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTB0_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTB0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTB0,
      CO(1) => \SIGN_CNTB0_carry__1_n_2\,
      CO(0) => \SIGN_CNTB0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTB0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTB0_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTB0_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTB0_carry__1_i_3_n_0\
    );
\SIGN_CNTB0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTB_d1(30),
      I1 => \^out_cntb\(30),
      I2 => OUT_CNTB_d1(31),
      I3 => \^out_cntb\(31),
      O => \SIGN_CNTB0_carry__1_i_1_n_0\
    );
\SIGN_CNTB0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(27),
      I1 => \^out_cntb\(27),
      I2 => \^out_cntb\(29),
      I3 => OUT_CNTB_d1(29),
      I4 => \^out_cntb\(28),
      I5 => OUT_CNTB_d1(28),
      O => \SIGN_CNTB0_carry__1_i_2_n_0\
    );
\SIGN_CNTB0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(24),
      I1 => \^out_cntb\(24),
      I2 => \^out_cntb\(26),
      I3 => OUT_CNTB_d1(26),
      I4 => \^out_cntb\(25),
      I5 => OUT_CNTB_d1(25),
      O => \SIGN_CNTB0_carry__1_i_3_n_0\
    );
SIGN_CNTB0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(9),
      I1 => \^out_cntb\(9),
      I2 => \^out_cntb\(11),
      I3 => OUT_CNTB_d1(11),
      I4 => \^out_cntb\(10),
      I5 => OUT_CNTB_d1(10),
      O => SIGN_CNTB0_carry_i_1_n_0
    );
SIGN_CNTB0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(6),
      I1 => \^out_cntb\(6),
      I2 => \^out_cntb\(8),
      I3 => OUT_CNTB_d1(8),
      I4 => \^out_cntb\(7),
      I5 => OUT_CNTB_d1(7),
      O => SIGN_CNTB0_carry_i_2_n_0
    );
SIGN_CNTB0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(3),
      I1 => \^out_cntb\(3),
      I2 => \^out_cntb\(5),
      I3 => OUT_CNTB_d1(5),
      I4 => \^out_cntb\(4),
      I5 => OUT_CNTB_d1(4),
      O => SIGN_CNTB0_carry_i_3_n_0
    );
SIGN_CNTB0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d1(0),
      I1 => \^out_cntb\(0),
      I2 => \^out_cntb\(2),
      I3 => OUT_CNTB_d1(2),
      I4 => \^out_cntb\(1),
      I5 => OUT_CNTB_d1(1),
      O => SIGN_CNTB0_carry_i_4_n_0
    );
SIGN_CNTB1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTB1_carry_n_0,
      CO(2) => SIGN_CNTB1_carry_n_1,
      CO(1) => SIGN_CNTB1_carry_n_2,
      CO(0) => SIGN_CNTB1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTB1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTB1_carry_i_1_n_0,
      S(2) => SIGN_CNTB1_carry_i_2_n_0,
      S(1) => SIGN_CNTB1_carry_i_3_n_0,
      S(0) => SIGN_CNTB1_carry_i_4_n_0
    );
\SIGN_CNTB1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTB1_carry_n_0,
      CO(3) => \SIGN_CNTB1_carry__0_n_0\,
      CO(2) => \SIGN_CNTB1_carry__0_n_1\,
      CO(1) => \SIGN_CNTB1_carry__0_n_2\,
      CO(0) => \SIGN_CNTB1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTB1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTB1_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTB1_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTB1_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTB1_carry__0_i_4_n_0\
    );
\SIGN_CNTB1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(21),
      I1 => OUT_CNTB_d1(21),
      I2 => OUT_CNTB_d1(23),
      I3 => OUT_CNTB_d2(23),
      I4 => OUT_CNTB_d1(22),
      I5 => OUT_CNTB_d2(22),
      O => \SIGN_CNTB1_carry__0_i_1_n_0\
    );
\SIGN_CNTB1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(18),
      I1 => OUT_CNTB_d1(18),
      I2 => OUT_CNTB_d1(20),
      I3 => OUT_CNTB_d2(20),
      I4 => OUT_CNTB_d1(19),
      I5 => OUT_CNTB_d2(19),
      O => \SIGN_CNTB1_carry__0_i_2_n_0\
    );
\SIGN_CNTB1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(15),
      I1 => OUT_CNTB_d1(15),
      I2 => OUT_CNTB_d1(17),
      I3 => OUT_CNTB_d2(17),
      I4 => OUT_CNTB_d1(16),
      I5 => OUT_CNTB_d2(16),
      O => \SIGN_CNTB1_carry__0_i_3_n_0\
    );
\SIGN_CNTB1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(12),
      I1 => OUT_CNTB_d1(12),
      I2 => OUT_CNTB_d1(14),
      I3 => OUT_CNTB_d2(14),
      I4 => OUT_CNTB_d1(13),
      I5 => OUT_CNTB_d2(13),
      O => \SIGN_CNTB1_carry__0_i_4_n_0\
    );
\SIGN_CNTB1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTB1_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTB1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTB1,
      CO(1) => \SIGN_CNTB1_carry__1_n_2\,
      CO(0) => \SIGN_CNTB1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTB1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTB1_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTB1_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTB1_carry__1_i_3_n_0\
    );
\SIGN_CNTB1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTB_d2(30),
      I1 => OUT_CNTB_d1(30),
      I2 => OUT_CNTB_d2(31),
      I3 => OUT_CNTB_d1(31),
      O => \SIGN_CNTB1_carry__1_i_1_n_0\
    );
\SIGN_CNTB1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(27),
      I1 => OUT_CNTB_d1(27),
      I2 => OUT_CNTB_d1(29),
      I3 => OUT_CNTB_d2(29),
      I4 => OUT_CNTB_d1(28),
      I5 => OUT_CNTB_d2(28),
      O => \SIGN_CNTB1_carry__1_i_2_n_0\
    );
\SIGN_CNTB1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(24),
      I1 => OUT_CNTB_d1(24),
      I2 => OUT_CNTB_d1(26),
      I3 => OUT_CNTB_d2(26),
      I4 => OUT_CNTB_d1(25),
      I5 => OUT_CNTB_d2(25),
      O => \SIGN_CNTB1_carry__1_i_3_n_0\
    );
SIGN_CNTB1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(9),
      I1 => OUT_CNTB_d1(9),
      I2 => OUT_CNTB_d1(11),
      I3 => OUT_CNTB_d2(11),
      I4 => OUT_CNTB_d1(10),
      I5 => OUT_CNTB_d2(10),
      O => SIGN_CNTB1_carry_i_1_n_0
    );
SIGN_CNTB1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(6),
      I1 => OUT_CNTB_d1(6),
      I2 => OUT_CNTB_d1(8),
      I3 => OUT_CNTB_d2(8),
      I4 => OUT_CNTB_d1(7),
      I5 => OUT_CNTB_d2(7),
      O => SIGN_CNTB1_carry_i_2_n_0
    );
SIGN_CNTB1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(3),
      I1 => OUT_CNTB_d1(3),
      I2 => OUT_CNTB_d1(5),
      I3 => OUT_CNTB_d2(5),
      I4 => OUT_CNTB_d1(4),
      I5 => OUT_CNTB_d2(4),
      O => SIGN_CNTB1_carry_i_3_n_0
    );
SIGN_CNTB1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTB_d2(0),
      I1 => OUT_CNTB_d1(0),
      I2 => OUT_CNTB_d1(2),
      I3 => OUT_CNTB_d2(2),
      I4 => OUT_CNTB_d1(1),
      I5 => OUT_CNTB_d2(1),
      O => SIGN_CNTB1_carry_i_4_n_0
    );
SIGN_CNTB_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => SIGN_CNTB1,
      I1 => SIGN_CNTB0,
      I2 => \^sign_cntb\,
      O => SIGN_CNTB_i_1_n_0
    );
SIGN_CNTB_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => SIGN_CNTB_i_1_n_0,
      Q => \^sign_cntb\
    );
SIGN_CNTC0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTC0_carry_n_0,
      CO(2) => SIGN_CNTC0_carry_n_1,
      CO(1) => SIGN_CNTC0_carry_n_2,
      CO(0) => SIGN_CNTC0_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTC0_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTC0_carry_i_1_n_0,
      S(2) => SIGN_CNTC0_carry_i_2_n_0,
      S(1) => SIGN_CNTC0_carry_i_3_n_0,
      S(0) => SIGN_CNTC0_carry_i_4_n_0
    );
\SIGN_CNTC0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTC0_carry_n_0,
      CO(3) => \SIGN_CNTC0_carry__0_n_0\,
      CO(2) => \SIGN_CNTC0_carry__0_n_1\,
      CO(1) => \SIGN_CNTC0_carry__0_n_2\,
      CO(0) => \SIGN_CNTC0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTC0_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTC0_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTC0_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTC0_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTC0_carry__0_i_4_n_0\
    );
\SIGN_CNTC0_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(21),
      I1 => \^out_cntc\(21),
      I2 => \^out_cntc\(23),
      I3 => OUT_CNTC_d1(23),
      I4 => \^out_cntc\(22),
      I5 => OUT_CNTC_d1(22),
      O => \SIGN_CNTC0_carry__0_i_1_n_0\
    );
\SIGN_CNTC0_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(18),
      I1 => \^out_cntc\(18),
      I2 => \^out_cntc\(20),
      I3 => OUT_CNTC_d1(20),
      I4 => \^out_cntc\(19),
      I5 => OUT_CNTC_d1(19),
      O => \SIGN_CNTC0_carry__0_i_2_n_0\
    );
\SIGN_CNTC0_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(15),
      I1 => \^out_cntc\(15),
      I2 => \^out_cntc\(17),
      I3 => OUT_CNTC_d1(17),
      I4 => \^out_cntc\(16),
      I5 => OUT_CNTC_d1(16),
      O => \SIGN_CNTC0_carry__0_i_3_n_0\
    );
\SIGN_CNTC0_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(12),
      I1 => \^out_cntc\(12),
      I2 => \^out_cntc\(14),
      I3 => OUT_CNTC_d1(14),
      I4 => \^out_cntc\(13),
      I5 => OUT_CNTC_d1(13),
      O => \SIGN_CNTC0_carry__0_i_4_n_0\
    );
\SIGN_CNTC0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTC0_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTC0_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTC0,
      CO(1) => \SIGN_CNTC0_carry__1_n_2\,
      CO(0) => \SIGN_CNTC0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTC0_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTC0_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTC0_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTC0_carry__1_i_3_n_0\
    );
\SIGN_CNTC0_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTC_d1(30),
      I1 => \^out_cntc\(30),
      I2 => OUT_CNTC_d1(31),
      I3 => \^out_cntc\(31),
      O => \SIGN_CNTC0_carry__1_i_1_n_0\
    );
\SIGN_CNTC0_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(27),
      I1 => \^out_cntc\(27),
      I2 => \^out_cntc\(29),
      I3 => OUT_CNTC_d1(29),
      I4 => \^out_cntc\(28),
      I5 => OUT_CNTC_d1(28),
      O => \SIGN_CNTC0_carry__1_i_2_n_0\
    );
\SIGN_CNTC0_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(24),
      I1 => \^out_cntc\(24),
      I2 => \^out_cntc\(26),
      I3 => OUT_CNTC_d1(26),
      I4 => \^out_cntc\(25),
      I5 => OUT_CNTC_d1(25),
      O => \SIGN_CNTC0_carry__1_i_3_n_0\
    );
SIGN_CNTC0_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(9),
      I1 => \^out_cntc\(9),
      I2 => \^out_cntc\(11),
      I3 => OUT_CNTC_d1(11),
      I4 => \^out_cntc\(10),
      I5 => OUT_CNTC_d1(10),
      O => SIGN_CNTC0_carry_i_1_n_0
    );
SIGN_CNTC0_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(6),
      I1 => \^out_cntc\(6),
      I2 => \^out_cntc\(8),
      I3 => OUT_CNTC_d1(8),
      I4 => \^out_cntc\(7),
      I5 => OUT_CNTC_d1(7),
      O => SIGN_CNTC0_carry_i_2_n_0
    );
SIGN_CNTC0_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(3),
      I1 => \^out_cntc\(3),
      I2 => \^out_cntc\(5),
      I3 => OUT_CNTC_d1(5),
      I4 => \^out_cntc\(4),
      I5 => OUT_CNTC_d1(4),
      O => SIGN_CNTC0_carry_i_3_n_0
    );
SIGN_CNTC0_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d1(0),
      I1 => \^out_cntc\(0),
      I2 => \^out_cntc\(2),
      I3 => OUT_CNTC_d1(2),
      I4 => \^out_cntc\(1),
      I5 => OUT_CNTC_d1(1),
      O => SIGN_CNTC0_carry_i_4_n_0
    );
SIGN_CNTC1_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => SIGN_CNTC1_carry_n_0,
      CO(2) => SIGN_CNTC1_carry_n_1,
      CO(1) => SIGN_CNTC1_carry_n_2,
      CO(0) => SIGN_CNTC1_carry_n_3,
      CYINIT => '1',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => NLW_SIGN_CNTC1_carry_O_UNCONNECTED(3 downto 0),
      S(3) => SIGN_CNTC1_carry_i_1_n_0,
      S(2) => SIGN_CNTC1_carry_i_2_n_0,
      S(1) => SIGN_CNTC1_carry_i_3_n_0,
      S(0) => SIGN_CNTC1_carry_i_4_n_0
    );
\SIGN_CNTC1_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => SIGN_CNTC1_carry_n_0,
      CO(3) => \SIGN_CNTC1_carry__0_n_0\,
      CO(2) => \SIGN_CNTC1_carry__0_n_1\,
      CO(1) => \SIGN_CNTC1_carry__0_n_2\,
      CO(0) => \SIGN_CNTC1_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTC1_carry__0_O_UNCONNECTED\(3 downto 0),
      S(3) => \SIGN_CNTC1_carry__0_i_1_n_0\,
      S(2) => \SIGN_CNTC1_carry__0_i_2_n_0\,
      S(1) => \SIGN_CNTC1_carry__0_i_3_n_0\,
      S(0) => \SIGN_CNTC1_carry__0_i_4_n_0\
    );
\SIGN_CNTC1_carry__0_i_1\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(21),
      I1 => OUT_CNTC_d1(21),
      I2 => OUT_CNTC_d1(23),
      I3 => OUT_CNTC_d2(23),
      I4 => OUT_CNTC_d1(22),
      I5 => OUT_CNTC_d2(22),
      O => \SIGN_CNTC1_carry__0_i_1_n_0\
    );
\SIGN_CNTC1_carry__0_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(18),
      I1 => OUT_CNTC_d1(18),
      I2 => OUT_CNTC_d1(20),
      I3 => OUT_CNTC_d2(20),
      I4 => OUT_CNTC_d1(19),
      I5 => OUT_CNTC_d2(19),
      O => \SIGN_CNTC1_carry__0_i_2_n_0\
    );
\SIGN_CNTC1_carry__0_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(15),
      I1 => OUT_CNTC_d1(15),
      I2 => OUT_CNTC_d1(17),
      I3 => OUT_CNTC_d2(17),
      I4 => OUT_CNTC_d1(16),
      I5 => OUT_CNTC_d2(16),
      O => \SIGN_CNTC1_carry__0_i_3_n_0\
    );
\SIGN_CNTC1_carry__0_i_4\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(12),
      I1 => OUT_CNTC_d1(12),
      I2 => OUT_CNTC_d1(14),
      I3 => OUT_CNTC_d2(14),
      I4 => OUT_CNTC_d1(13),
      I5 => OUT_CNTC_d2(13),
      O => \SIGN_CNTC1_carry__0_i_4_n_0\
    );
\SIGN_CNTC1_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \SIGN_CNTC1_carry__0_n_0\,
      CO(3) => \NLW_SIGN_CNTC1_carry__1_CO_UNCONNECTED\(3),
      CO(2) => SIGN_CNTC1,
      CO(1) => \SIGN_CNTC1_carry__1_n_2\,
      CO(0) => \SIGN_CNTC1_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => \NLW_SIGN_CNTC1_carry__1_O_UNCONNECTED\(3 downto 0),
      S(3) => '0',
      S(2) => \SIGN_CNTC1_carry__1_i_1_n_0\,
      S(1) => \SIGN_CNTC1_carry__1_i_2_n_0\,
      S(0) => \SIGN_CNTC1_carry__1_i_3_n_0\
    );
\SIGN_CNTC1_carry__1_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"9009"
    )
        port map (
      I0 => OUT_CNTC_d2(30),
      I1 => OUT_CNTC_d1(30),
      I2 => OUT_CNTC_d2(31),
      I3 => OUT_CNTC_d1(31),
      O => \SIGN_CNTC1_carry__1_i_1_n_0\
    );
\SIGN_CNTC1_carry__1_i_2\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(27),
      I1 => OUT_CNTC_d1(27),
      I2 => OUT_CNTC_d1(29),
      I3 => OUT_CNTC_d2(29),
      I4 => OUT_CNTC_d1(28),
      I5 => OUT_CNTC_d2(28),
      O => \SIGN_CNTC1_carry__1_i_2_n_0\
    );
\SIGN_CNTC1_carry__1_i_3\: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(24),
      I1 => OUT_CNTC_d1(24),
      I2 => OUT_CNTC_d1(26),
      I3 => OUT_CNTC_d2(26),
      I4 => OUT_CNTC_d1(25),
      I5 => OUT_CNTC_d2(25),
      O => \SIGN_CNTC1_carry__1_i_3_n_0\
    );
SIGN_CNTC1_carry_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(9),
      I1 => OUT_CNTC_d1(9),
      I2 => OUT_CNTC_d1(11),
      I3 => OUT_CNTC_d2(11),
      I4 => OUT_CNTC_d1(10),
      I5 => OUT_CNTC_d2(10),
      O => SIGN_CNTC1_carry_i_1_n_0
    );
SIGN_CNTC1_carry_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(6),
      I1 => OUT_CNTC_d1(6),
      I2 => OUT_CNTC_d1(8),
      I3 => OUT_CNTC_d2(8),
      I4 => OUT_CNTC_d1(7),
      I5 => OUT_CNTC_d2(7),
      O => SIGN_CNTC1_carry_i_2_n_0
    );
SIGN_CNTC1_carry_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(3),
      I1 => OUT_CNTC_d1(3),
      I2 => OUT_CNTC_d1(5),
      I3 => OUT_CNTC_d2(5),
      I4 => OUT_CNTC_d1(4),
      I5 => OUT_CNTC_d2(4),
      O => SIGN_CNTC1_carry_i_3_n_0
    );
SIGN_CNTC1_carry_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"9009000000009009"
    )
        port map (
      I0 => OUT_CNTC_d2(0),
      I1 => OUT_CNTC_d1(0),
      I2 => OUT_CNTC_d1(2),
      I3 => OUT_CNTC_d2(2),
      I4 => OUT_CNTC_d1(1),
      I5 => OUT_CNTC_d2(1),
      O => SIGN_CNTC1_carry_i_4_n_0
    );
SIGN_CNTC_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"54"
    )
        port map (
      I0 => SIGN_CNTC1,
      I1 => SIGN_CNTC0,
      I2 => \^sign_cntc\,
      O => SIGN_CNTC_i_1_n_0
    );
SIGN_CNTC_reg: unisim.vcomponents.FDCE
     port map (
      C => sys_clk,
      CE => '1',
      CLR => p_0_in,
      D => SIGN_CNTC_i_1_n_0,
      Q => \^sign_cntc\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_CNTtest_0_1 is
  port (
    sys_clk : in STD_LOGIC;
    sys_rst_n : in STD_LOGIC;
    IN_CNTA : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_CNTB : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_CNTC : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_STOP : in STD_LOGIC;
    IN_START : in STD_LOGIC;
    IN_CNTEN : in STD_LOGIC;
    OUT_CNTA : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_CNTB : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_CNTC : out STD_LOGIC_VECTOR ( 31 downto 0 );
    OUT_STOP : out STD_LOGIC;
    OUT_START : out STD_LOGIC;
    OUT_CNTEN : out STD_LOGIC;
    SIGN_CNTA : out STD_LOGIC;
    SIGN_CNTB : out STD_LOGIC;
    SIGN_CNTC : out STD_LOGIC
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_CNTtest_0_1 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_CNTtest_0_1 : entity is "design_1_CNTtest_0_1,CNTtest,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_CNTtest_0_1 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_CNTtest_0_1 : entity is "CNTtest,Vivado 2020.2";
end design_1_CNTtest_0_1;

architecture STRUCTURE of design_1_CNTtest_0_1 is
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of sys_clk : signal is "xilinx.com:signal:clock:1.0 sys_clk CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of sys_clk : signal is "XIL_INTERFACENAME sys_clk, ASSOCIATED_RESET sys_rst_n, FREQ_HZ 1e+08, PHASE 0.000, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0";
  attribute X_INTERFACE_INFO of sys_rst_n : signal is "xilinx.com:signal:reset:1.0 sys_rst_n RST";
  attribute X_INTERFACE_PARAMETER of sys_rst_n : signal is "XIL_INTERFACENAME sys_rst_n, POLARITY ACTIVE_LOW";
begin
inst: entity work.design_1_CNTtest_0_1_CNTtest
     port map (
      IN_CNTA(31 downto 0) => IN_CNTA(31 downto 0),
      IN_CNTB(31 downto 0) => IN_CNTB(31 downto 0),
      IN_CNTC(31 downto 0) => IN_CNTC(31 downto 0),
      IN_CNTEN => IN_CNTEN,
      IN_START => IN_START,
      IN_STOP => IN_STOP,
      OUT_CNTA(31 downto 0) => OUT_CNTA(31 downto 0),
      OUT_CNTB(31 downto 0) => OUT_CNTB(31 downto 0),
      OUT_CNTC(31 downto 0) => OUT_CNTC(31 downto 0),
      OUT_CNTEN => OUT_CNTEN,
      OUT_START => OUT_START,
      OUT_STOP => OUT_STOP,
      SIGN_CNTA => SIGN_CNTA,
      SIGN_CNTB => SIGN_CNTB,
      SIGN_CNTC => SIGN_CNTC,
      sys_clk => sys_clk,
      sys_rst_n => sys_rst_n
    );
end STRUCTURE;
