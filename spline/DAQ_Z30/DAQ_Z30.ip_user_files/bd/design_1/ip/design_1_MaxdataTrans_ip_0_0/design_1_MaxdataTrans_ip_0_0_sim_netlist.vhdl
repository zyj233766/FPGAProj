-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Wed Dec 18 23:18:38 2024
-- Host        : YL running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               c:/Users/12554/Desktop/test5/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_MaxdataTrans_ip_0_0/design_1_MaxdataTrans_ip_0_0_sim_netlist.vhdl
-- Design      : design_1_MaxdataTrans_ip_0_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MaxdataTrans_ip_0_0_MaxdataTrans is
  port (
    SR : out STD_LOGIC_VECTOR ( 0 to 0 );
    Q : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    \axi_rdata_reg[31]_0\ : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_aresetn : in STD_LOGIC;
    IN_spline2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_aclk : in STD_LOGIC;
    IN_spline1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_Correction : in STD_LOGIC_VECTOR ( 31 downto 0 )
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MaxdataTrans_ip_0_0_MaxdataTrans : entity is "MaxdataTrans";
end design_1_MaxdataTrans_ip_0_0_MaxdataTrans;

architecture STRUCTURE of design_1_MaxdataTrans_ip_0_0_MaxdataTrans is
  signal \^sr\ : STD_LOGIC_VECTOR ( 0 to 0 );
begin
  SR(0) <= \^sr\(0);
\OUT_Correction_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(0),
      Q => \axi_rdata_reg[31]_0\(0),
      R => \^sr\(0)
    );
\OUT_Correction_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(10),
      Q => \axi_rdata_reg[31]_0\(10),
      R => \^sr\(0)
    );
\OUT_Correction_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(11),
      Q => \axi_rdata_reg[31]_0\(11),
      R => \^sr\(0)
    );
\OUT_Correction_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(12),
      Q => \axi_rdata_reg[31]_0\(12),
      R => \^sr\(0)
    );
\OUT_Correction_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(13),
      Q => \axi_rdata_reg[31]_0\(13),
      R => \^sr\(0)
    );
\OUT_Correction_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(14),
      Q => \axi_rdata_reg[31]_0\(14),
      R => \^sr\(0)
    );
\OUT_Correction_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(15),
      Q => \axi_rdata_reg[31]_0\(15),
      R => \^sr\(0)
    );
\OUT_Correction_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(16),
      Q => \axi_rdata_reg[31]_0\(16),
      R => \^sr\(0)
    );
\OUT_Correction_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(17),
      Q => \axi_rdata_reg[31]_0\(17),
      R => \^sr\(0)
    );
\OUT_Correction_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(18),
      Q => \axi_rdata_reg[31]_0\(18),
      R => \^sr\(0)
    );
\OUT_Correction_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(19),
      Q => \axi_rdata_reg[31]_0\(19),
      R => \^sr\(0)
    );
\OUT_Correction_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(1),
      Q => \axi_rdata_reg[31]_0\(1),
      R => \^sr\(0)
    );
\OUT_Correction_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(20),
      Q => \axi_rdata_reg[31]_0\(20),
      R => \^sr\(0)
    );
\OUT_Correction_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(21),
      Q => \axi_rdata_reg[31]_0\(21),
      R => \^sr\(0)
    );
\OUT_Correction_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(22),
      Q => \axi_rdata_reg[31]_0\(22),
      R => \^sr\(0)
    );
\OUT_Correction_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(23),
      Q => \axi_rdata_reg[31]_0\(23),
      R => \^sr\(0)
    );
\OUT_Correction_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(24),
      Q => \axi_rdata_reg[31]_0\(24),
      R => \^sr\(0)
    );
\OUT_Correction_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(25),
      Q => \axi_rdata_reg[31]_0\(25),
      R => \^sr\(0)
    );
\OUT_Correction_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(26),
      Q => \axi_rdata_reg[31]_0\(26),
      R => \^sr\(0)
    );
\OUT_Correction_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(27),
      Q => \axi_rdata_reg[31]_0\(27),
      R => \^sr\(0)
    );
\OUT_Correction_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(28),
      Q => \axi_rdata_reg[31]_0\(28),
      R => \^sr\(0)
    );
\OUT_Correction_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(29),
      Q => \axi_rdata_reg[31]_0\(29),
      R => \^sr\(0)
    );
\OUT_Correction_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(2),
      Q => \axi_rdata_reg[31]_0\(2),
      R => \^sr\(0)
    );
\OUT_Correction_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(30),
      Q => \axi_rdata_reg[31]_0\(30),
      R => \^sr\(0)
    );
\OUT_Correction_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(31),
      Q => \axi_rdata_reg[31]_0\(31),
      R => \^sr\(0)
    );
\OUT_Correction_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(3),
      Q => \axi_rdata_reg[31]_0\(3),
      R => \^sr\(0)
    );
\OUT_Correction_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(4),
      Q => \axi_rdata_reg[31]_0\(4),
      R => \^sr\(0)
    );
\OUT_Correction_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(5),
      Q => \axi_rdata_reg[31]_0\(5),
      R => \^sr\(0)
    );
\OUT_Correction_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(6),
      Q => \axi_rdata_reg[31]_0\(6),
      R => \^sr\(0)
    );
\OUT_Correction_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(7),
      Q => \axi_rdata_reg[31]_0\(7),
      R => \^sr\(0)
    );
\OUT_Correction_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(8),
      Q => \axi_rdata_reg[31]_0\(8),
      R => \^sr\(0)
    );
\OUT_Correction_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_Correction(9),
      Q => \axi_rdata_reg[31]_0\(9),
      R => \^sr\(0)
    );
\OUT_spline1_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(0),
      Q => \axi_rdata_reg[31]\(0),
      R => \^sr\(0)
    );
\OUT_spline1_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(10),
      Q => \axi_rdata_reg[31]\(10),
      R => \^sr\(0)
    );
\OUT_spline1_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(11),
      Q => \axi_rdata_reg[31]\(11),
      R => \^sr\(0)
    );
\OUT_spline1_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(12),
      Q => \axi_rdata_reg[31]\(12),
      R => \^sr\(0)
    );
\OUT_spline1_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(13),
      Q => \axi_rdata_reg[31]\(13),
      R => \^sr\(0)
    );
\OUT_spline1_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(14),
      Q => \axi_rdata_reg[31]\(14),
      R => \^sr\(0)
    );
\OUT_spline1_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(15),
      Q => \axi_rdata_reg[31]\(15),
      R => \^sr\(0)
    );
\OUT_spline1_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(16),
      Q => \axi_rdata_reg[31]\(16),
      R => \^sr\(0)
    );
\OUT_spline1_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(17),
      Q => \axi_rdata_reg[31]\(17),
      R => \^sr\(0)
    );
\OUT_spline1_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(18),
      Q => \axi_rdata_reg[31]\(18),
      R => \^sr\(0)
    );
\OUT_spline1_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(19),
      Q => \axi_rdata_reg[31]\(19),
      R => \^sr\(0)
    );
\OUT_spline1_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(1),
      Q => \axi_rdata_reg[31]\(1),
      R => \^sr\(0)
    );
\OUT_spline1_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(20),
      Q => \axi_rdata_reg[31]\(20),
      R => \^sr\(0)
    );
\OUT_spline1_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(21),
      Q => \axi_rdata_reg[31]\(21),
      R => \^sr\(0)
    );
\OUT_spline1_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(22),
      Q => \axi_rdata_reg[31]\(22),
      R => \^sr\(0)
    );
\OUT_spline1_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(23),
      Q => \axi_rdata_reg[31]\(23),
      R => \^sr\(0)
    );
\OUT_spline1_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(24),
      Q => \axi_rdata_reg[31]\(24),
      R => \^sr\(0)
    );
\OUT_spline1_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(25),
      Q => \axi_rdata_reg[31]\(25),
      R => \^sr\(0)
    );
\OUT_spline1_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(26),
      Q => \axi_rdata_reg[31]\(26),
      R => \^sr\(0)
    );
\OUT_spline1_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(27),
      Q => \axi_rdata_reg[31]\(27),
      R => \^sr\(0)
    );
\OUT_spline1_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(28),
      Q => \axi_rdata_reg[31]\(28),
      R => \^sr\(0)
    );
\OUT_spline1_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(29),
      Q => \axi_rdata_reg[31]\(29),
      R => \^sr\(0)
    );
\OUT_spline1_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(2),
      Q => \axi_rdata_reg[31]\(2),
      R => \^sr\(0)
    );
\OUT_spline1_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(30),
      Q => \axi_rdata_reg[31]\(30),
      R => \^sr\(0)
    );
\OUT_spline1_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(31),
      Q => \axi_rdata_reg[31]\(31),
      R => \^sr\(0)
    );
\OUT_spline1_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(3),
      Q => \axi_rdata_reg[31]\(3),
      R => \^sr\(0)
    );
\OUT_spline1_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(4),
      Q => \axi_rdata_reg[31]\(4),
      R => \^sr\(0)
    );
\OUT_spline1_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(5),
      Q => \axi_rdata_reg[31]\(5),
      R => \^sr\(0)
    );
\OUT_spline1_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(6),
      Q => \axi_rdata_reg[31]\(6),
      R => \^sr\(0)
    );
\OUT_spline1_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(7),
      Q => \axi_rdata_reg[31]\(7),
      R => \^sr\(0)
    );
\OUT_spline1_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(8),
      Q => \axi_rdata_reg[31]\(8),
      R => \^sr\(0)
    );
\OUT_spline1_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline1(9),
      Q => \axi_rdata_reg[31]\(9),
      R => \^sr\(0)
    );
\OUT_spline2_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(0),
      Q => Q(0),
      R => \^sr\(0)
    );
\OUT_spline2_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(10),
      Q => Q(10),
      R => \^sr\(0)
    );
\OUT_spline2_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(11),
      Q => Q(11),
      R => \^sr\(0)
    );
\OUT_spline2_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(12),
      Q => Q(12),
      R => \^sr\(0)
    );
\OUT_spline2_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(13),
      Q => Q(13),
      R => \^sr\(0)
    );
\OUT_spline2_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(14),
      Q => Q(14),
      R => \^sr\(0)
    );
\OUT_spline2_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(15),
      Q => Q(15),
      R => \^sr\(0)
    );
\OUT_spline2_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(16),
      Q => Q(16),
      R => \^sr\(0)
    );
\OUT_spline2_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(17),
      Q => Q(17),
      R => \^sr\(0)
    );
\OUT_spline2_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(18),
      Q => Q(18),
      R => \^sr\(0)
    );
\OUT_spline2_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(19),
      Q => Q(19),
      R => \^sr\(0)
    );
\OUT_spline2_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(1),
      Q => Q(1),
      R => \^sr\(0)
    );
\OUT_spline2_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(20),
      Q => Q(20),
      R => \^sr\(0)
    );
\OUT_spline2_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(21),
      Q => Q(21),
      R => \^sr\(0)
    );
\OUT_spline2_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(22),
      Q => Q(22),
      R => \^sr\(0)
    );
\OUT_spline2_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(23),
      Q => Q(23),
      R => \^sr\(0)
    );
\OUT_spline2_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(24),
      Q => Q(24),
      R => \^sr\(0)
    );
\OUT_spline2_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(25),
      Q => Q(25),
      R => \^sr\(0)
    );
\OUT_spline2_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(26),
      Q => Q(26),
      R => \^sr\(0)
    );
\OUT_spline2_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(27),
      Q => Q(27),
      R => \^sr\(0)
    );
\OUT_spline2_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(28),
      Q => Q(28),
      R => \^sr\(0)
    );
\OUT_spline2_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(29),
      Q => Q(29),
      R => \^sr\(0)
    );
\OUT_spline2_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(2),
      Q => Q(2),
      R => \^sr\(0)
    );
\OUT_spline2_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(30),
      Q => Q(30),
      R => \^sr\(0)
    );
\OUT_spline2_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(31),
      Q => Q(31),
      R => \^sr\(0)
    );
\OUT_spline2_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(3),
      Q => Q(3),
      R => \^sr\(0)
    );
\OUT_spline2_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(4),
      Q => Q(4),
      R => \^sr\(0)
    );
\OUT_spline2_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(5),
      Q => Q(5),
      R => \^sr\(0)
    );
\OUT_spline2_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(6),
      Q => Q(6),
      R => \^sr\(0)
    );
\OUT_spline2_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(7),
      Q => Q(7),
      R => \^sr\(0)
    );
\OUT_spline2_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(8),
      Q => Q(8),
      R => \^sr\(0)
    );
\OUT_spline2_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => IN_spline2(9),
      Q => Q(9),
      R => \^sr\(0)
    );
axi_awready_i_1: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s0_axi_aresetn,
      O => \^sr\(0)
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI is
  port (
    s0_axi_arready : out STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    s0_axi_awready : out STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_aclk : in STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IN_spline2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_spline1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_Correction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_aresetn : in STD_LOGIC;
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI : entity is "MaxdataTrans_ip_v1_0_S0_AXI";
end design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI;

architecture STRUCTURE of design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI is
  signal OUT_Correction : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_spline1 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal OUT_spline2 : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready_i_1_n_0 : STD_LOGIC;
  signal axi_awready0 : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal axi_wready0 : STD_LOGIC;
  signal p_0_in : STD_LOGIC;
  signal reg_data_out : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \^s0_axi_arready\ : STD_LOGIC;
  signal \^s0_axi_awready\ : STD_LOGIC;
  signal \^s0_axi_bvalid\ : STD_LOGIC;
  signal \^s0_axi_rvalid\ : STD_LOGIC;
  signal \^s0_axi_wready\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[2]_i_1\ : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of axi_awready_i_2 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of axi_wready_i_1 : label is "soft_lutpair1";
begin
  s0_axi_arready <= \^s0_axi_arready\;
  s0_axi_awready <= \^s0_axi_awready\;
  s0_axi_bvalid <= \^s0_axi_bvalid\;
  s0_axi_rvalid <= \^s0_axi_rvalid\;
  s0_axi_wready <= \^s0_axi_wready\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FF7FF070F070F070"
    )
        port map (
      I0 => s0_axi_awvalid,
      I1 => s0_axi_wvalid,
      I2 => aw_en_reg_n_0,
      I3 => \^s0_axi_awready\,
      I4 => s0_axi_bready,
      I5 => \^s0_axi_bvalid\,
      O => aw_en_i_1_n_0
    );
aw_en_reg: unisim.vcomponents.FDSE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => aw_en_i_1_n_0,
      Q => aw_en_reg_n_0,
      S => p_0_in
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s0_axi_araddr(0),
      I1 => s0_axi_arvalid,
      I2 => \^s0_axi_arready\,
      I3 => axi_araddr(2),
      O => \axi_araddr[2]_i_1_n_0\
    );
\axi_araddr[3]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s0_axi_araddr(1),
      I1 => s0_axi_arvalid,
      I2 => \^s0_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => p_0_in
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => p_0_in
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s0_axi_arvalid,
      I1 => \^s0_axi_arready\,
      O => axi_arready_i_1_n_0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_arready_i_1_n_0,
      Q => \^s0_axi_arready\,
      R => p_0_in
    );
axi_awready_i_2: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s0_axi_awready\,
      I1 => aw_en_reg_n_0,
      I2 => s0_axi_wvalid,
      I3 => s0_axi_awvalid,
      O => axi_awready0
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_awready0,
      Q => \^s0_axi_awready\,
      R => p_0_in
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s0_axi_wready\,
      I1 => s0_axi_awvalid,
      I2 => s0_axi_wvalid,
      I3 => \^s0_axi_awready\,
      I4 => s0_axi_bready,
      I5 => \^s0_axi_bvalid\,
      O => axi_bvalid_i_1_n_0
    );
axi_bvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_bvalid_i_1_n_0,
      Q => \^s0_axi_bvalid\,
      R => p_0_in
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(0),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(0),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(0),
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(10),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(10),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(10),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(11),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(11),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(11),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(12),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(12),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(12),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(13),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(13),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(13),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(14),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(14),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(14),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(15),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(15),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(15),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(16),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(16),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(16),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(17),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(17),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(17),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(18),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(18),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(18),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(19),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(19),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(19),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(1),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(1),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(1),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(20),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(20),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(20),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(21),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(21),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(21),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(22),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(22),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(22),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(23),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(23),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(23),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(24),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(24),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(24),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(25),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(25),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(25),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(26),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(26),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(26),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(27),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(27),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(27),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(28),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(28),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(28),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(29),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(29),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(29),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(2),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(2),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(2),
      O => reg_data_out(2)
    );
\axi_rdata[30]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(30),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(30),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(30),
      O => reg_data_out(30)
    );
\axi_rdata[31]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(31),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(31),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(31),
      O => reg_data_out(31)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(3),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(3),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(3),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(4),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(4),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(4),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(5),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(5),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(5),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => OUT_spline1(6),
      I1 => axi_araddr(2),
      I2 => OUT_spline2(6),
      I3 => axi_araddr(3),
      I4 => OUT_Correction(6),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(7),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(7),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(7),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(8),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(8),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(8),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFB8CCB8"
    )
        port map (
      I0 => OUT_spline2(9),
      I1 => axi_araddr(3),
      I2 => OUT_Correction(9),
      I3 => axi_araddr(2),
      I4 => OUT_spline1(9),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s0_axi_rdata(0),
      R => p_0_in
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s0_axi_rdata(10),
      R => p_0_in
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s0_axi_rdata(11),
      R => p_0_in
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s0_axi_rdata(12),
      R => p_0_in
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s0_axi_rdata(13),
      R => p_0_in
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s0_axi_rdata(14),
      R => p_0_in
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s0_axi_rdata(15),
      R => p_0_in
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s0_axi_rdata(16),
      R => p_0_in
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s0_axi_rdata(17),
      R => p_0_in
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s0_axi_rdata(18),
      R => p_0_in
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s0_axi_rdata(19),
      R => p_0_in
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s0_axi_rdata(1),
      R => p_0_in
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s0_axi_rdata(20),
      R => p_0_in
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s0_axi_rdata(21),
      R => p_0_in
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s0_axi_rdata(22),
      R => p_0_in
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s0_axi_rdata(23),
      R => p_0_in
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s0_axi_rdata(24),
      R => p_0_in
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s0_axi_rdata(25),
      R => p_0_in
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s0_axi_rdata(26),
      R => p_0_in
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s0_axi_rdata(27),
      R => p_0_in
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s0_axi_rdata(28),
      R => p_0_in
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s0_axi_rdata(29),
      R => p_0_in
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s0_axi_rdata(2),
      R => p_0_in
    );
\axi_rdata_reg[30]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(30),
      Q => s0_axi_rdata(30),
      R => p_0_in
    );
\axi_rdata_reg[31]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(31),
      Q => s0_axi_rdata(31),
      R => p_0_in
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s0_axi_rdata(3),
      R => p_0_in
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s0_axi_rdata(4),
      R => p_0_in
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s0_axi_rdata(5),
      R => p_0_in
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s0_axi_rdata(6),
      R => p_0_in
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s0_axi_rdata(7),
      R => p_0_in
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s0_axi_rdata(8),
      R => p_0_in
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s0_axi_rdata(9),
      R => p_0_in
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s0_axi_arready\,
      I1 => s0_axi_arvalid,
      I2 => \^s0_axi_rvalid\,
      I3 => s0_axi_rready,
      O => axi_rvalid_i_1_n_0
    );
axi_rvalid_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_rvalid_i_1_n_0,
      Q => \^s0_axi_rvalid\,
      R => p_0_in
    );
axi_wready_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"4000"
    )
        port map (
      I0 => \^s0_axi_wready\,
      I1 => aw_en_reg_n_0,
      I2 => s0_axi_wvalid,
      I3 => s0_axi_awvalid,
      O => axi_wready0
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_wready0,
      Q => \^s0_axi_wready\,
      R => p_0_in
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => \^s0_axi_rvalid\,
      I1 => s0_axi_arvalid,
      I2 => \^s0_axi_arready\,
      O => \slv_reg_rden__0\
    );
u_MaxdataTrans: entity work.design_1_MaxdataTrans_ip_0_0_MaxdataTrans
     port map (
      IN_Correction(31 downto 0) => IN_Correction(31 downto 0),
      IN_spline1(31 downto 0) => IN_spline1(31 downto 0),
      IN_spline2(31 downto 0) => IN_spline2(31 downto 0),
      Q(31 downto 0) => OUT_spline2(31 downto 0),
      SR(0) => p_0_in,
      \axi_rdata_reg[31]\(31 downto 0) => OUT_spline1(31 downto 0),
      \axi_rdata_reg[31]_0\(31 downto 0) => OUT_Correction(31 downto 0),
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_aresetn => s0_axi_aresetn
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0 is
  port (
    S_AXI_ARREADY : out STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_aclk : in STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    IN_spline2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_spline1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_Correction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    s0_axi_aresetn : in STD_LOGIC;
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0 : entity is "MaxdataTrans_ip_v1_0";
end design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0;

architecture STRUCTURE of design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0 is
begin
MaxdataTrans_ip_v1_0_S0_AXI_inst: entity work.design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0_S0_AXI
     port map (
      IN_Correction(31 downto 0) => IN_Correction(31 downto 0),
      IN_spline1(31 downto 0) => IN_spline1(31 downto 0),
      IN_spline2(31 downto 0) => IN_spline2(31 downto 0),
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_araddr(1 downto 0) => s0_axi_araddr(1 downto 0),
      s0_axi_aresetn => s0_axi_aresetn,
      s0_axi_arready => S_AXI_ARREADY,
      s0_axi_arvalid => s0_axi_arvalid,
      s0_axi_awready => S_AXI_AWREADY,
      s0_axi_awvalid => s0_axi_awvalid,
      s0_axi_bready => s0_axi_bready,
      s0_axi_bvalid => s0_axi_bvalid,
      s0_axi_rdata(31 downto 0) => s0_axi_rdata(31 downto 0),
      s0_axi_rready => s0_axi_rready,
      s0_axi_rvalid => s0_axi_rvalid,
      s0_axi_wready => s0_axi_wready,
      s0_axi_wvalid => s0_axi_wvalid
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_MaxdataTrans_ip_0_0 is
  port (
    IN_Correction : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_spline1 : in STD_LOGIC_VECTOR ( 31 downto 0 );
    IN_spline2 : in STD_LOGIC_VECTOR ( 31 downto 0 );
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_MaxdataTrans_ip_0_0 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_MaxdataTrans_ip_0_0 : entity is "design_1_MaxdataTrans_ip_0_0,MaxdataTrans_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_MaxdataTrans_ip_0_0 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_MaxdataTrans_ip_0_0 : entity is "MaxdataTrans_ip_v1_0,Vivado 2017.4";
end design_1_MaxdataTrans_ip_0_0;

architecture STRUCTURE of design_1_MaxdataTrans_ip_0_0 is
  signal \<const0>\ : STD_LOGIC;
  attribute X_INTERFACE_INFO : string;
  attribute X_INTERFACE_INFO of s0_axi_aclk : signal is "xilinx.com:signal:clock:1.0 S0_AXI_CLK CLK";
  attribute X_INTERFACE_PARAMETER : string;
  attribute X_INTERFACE_PARAMETER of s0_axi_aclk : signal is "XIL_INTERFACENAME S0_AXI_CLK, ASSOCIATED_BUSIF S0_AXI, ASSOCIATED_RESET s0_axi_aresetn, FREQ_HZ 250000000, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1";
  attribute X_INTERFACE_INFO of s0_axi_aresetn : signal is "xilinx.com:signal:reset:1.0 S0_AXI_RST RST";
  attribute X_INTERFACE_PARAMETER of s0_axi_aresetn : signal is "XIL_INTERFACENAME S0_AXI_RST, POLARITY ACTIVE_LOW";
  attribute X_INTERFACE_INFO of s0_axi_arready : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARREADY";
  attribute X_INTERFACE_INFO of s0_axi_arvalid : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARVALID";
  attribute X_INTERFACE_INFO of s0_axi_awready : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWREADY";
  attribute X_INTERFACE_INFO of s0_axi_awvalid : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWVALID";
  attribute X_INTERFACE_INFO of s0_axi_bready : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BREADY";
  attribute X_INTERFACE_INFO of s0_axi_bvalid : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BVALID";
  attribute X_INTERFACE_INFO of s0_axi_rready : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RREADY";
  attribute X_INTERFACE_PARAMETER of s0_axi_rready : signal is "XIL_INTERFACENAME S0_AXI, WIZ_DATA_WIDTH 32, WIZ_NUM_REG 4, SUPPORTS_NARROW_BURST 0, DATA_WIDTH 32, PROTOCOL AXI4LITE, FREQ_HZ 250000000, ID_WIDTH 0, ADDR_WIDTH 4, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, READ_WRITE_MODE READ_WRITE, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 1, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, NUM_READ_OUTSTANDING 1, NUM_WRITE_OUTSTANDING 1, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_clk_wiz_1_0_clk_out1, NUM_READ_THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0";
  attribute X_INTERFACE_INFO of s0_axi_rvalid : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RVALID";
  attribute X_INTERFACE_INFO of s0_axi_wready : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WREADY";
  attribute X_INTERFACE_INFO of s0_axi_wvalid : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WVALID";
  attribute X_INTERFACE_INFO of s0_axi_araddr : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARADDR";
  attribute X_INTERFACE_INFO of s0_axi_arprot : signal is "xilinx.com:interface:aximm:1.0 S0_AXI ARPROT";
  attribute X_INTERFACE_INFO of s0_axi_awaddr : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWADDR";
  attribute X_INTERFACE_INFO of s0_axi_awprot : signal is "xilinx.com:interface:aximm:1.0 S0_AXI AWPROT";
  attribute X_INTERFACE_INFO of s0_axi_bresp : signal is "xilinx.com:interface:aximm:1.0 S0_AXI BRESP";
  attribute X_INTERFACE_INFO of s0_axi_rdata : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RDATA";
  attribute X_INTERFACE_INFO of s0_axi_rresp : signal is "xilinx.com:interface:aximm:1.0 S0_AXI RRESP";
  attribute X_INTERFACE_INFO of s0_axi_wdata : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WDATA";
  attribute X_INTERFACE_INFO of s0_axi_wstrb : signal is "xilinx.com:interface:aximm:1.0 S0_AXI WSTRB";
begin
  s0_axi_bresp(1) <= \<const0>\;
  s0_axi_bresp(0) <= \<const0>\;
  s0_axi_rresp(1) <= \<const0>\;
  s0_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_MaxdataTrans_ip_0_0_MaxdataTrans_ip_v1_0
     port map (
      IN_Correction(31 downto 0) => IN_Correction(31 downto 0),
      IN_spline1(31 downto 0) => IN_spline1(31 downto 0),
      IN_spline2(31 downto 0) => IN_spline2(31 downto 0),
      S_AXI_ARREADY => s0_axi_arready,
      S_AXI_AWREADY => s0_axi_awready,
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_araddr(1 downto 0) => s0_axi_araddr(3 downto 2),
      s0_axi_aresetn => s0_axi_aresetn,
      s0_axi_arvalid => s0_axi_arvalid,
      s0_axi_awvalid => s0_axi_awvalid,
      s0_axi_bready => s0_axi_bready,
      s0_axi_bvalid => s0_axi_bvalid,
      s0_axi_rdata(31 downto 0) => s0_axi_rdata(31 downto 0),
      s0_axi_rready => s0_axi_rready,
      s0_axi_rvalid => s0_axi_rvalid,
      s0_axi_wready => s0_axi_wready,
      s0_axi_wvalid => s0_axi_wvalid
    );
end STRUCTURE;
