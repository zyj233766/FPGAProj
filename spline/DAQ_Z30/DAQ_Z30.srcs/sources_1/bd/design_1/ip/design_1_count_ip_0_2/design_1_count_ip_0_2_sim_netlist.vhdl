-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Dec 21 18:47:22 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim
--               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_count_ip_0_2/design_1_count_ip_0_2_sim_netlist.vhdl
-- Design      : design_1_count_ip_0_2
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ip_0_2_counter is
  port (
    s0_axi_aresetn_0 : out STD_LOGIC;
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    gate_out : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s0_axi_aclk : in STD_LOGIC;
    input_fx : in STD_LOGIC;
    s0_axi_aresetn : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_count_ip_0_2_counter : entity is "counter";
end design_1_count_ip_0_2_counter;

architecture STRUCTURE of design_1_count_ip_0_2_counter is
  signal \cnt_fx[0]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[0]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[0]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[0]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[12]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[12]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[12]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[12]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[16]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[16]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[16]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[16]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[20]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[20]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[20]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[20]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[24]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[24]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[24]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[24]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[28]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[28]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[4]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[4]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[4]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[4]_i_5_n_0\ : STD_LOGIC;
  signal \cnt_fx[8]_i_2_n_0\ : STD_LOGIC;
  signal \cnt_fx[8]_i_3_n_0\ : STD_LOGIC;
  signal \cnt_fx[8]_i_4_n_0\ : STD_LOGIC;
  signal \cnt_fx[8]_i_5_n_0\ : STD_LOGIC;
  signal cnt_fx_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \cnt_fx_reg[0]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[0]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[12]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[16]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[20]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[24]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[28]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[28]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[28]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[4]_i_1_n_7\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_0\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_1\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_2\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_3\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_4\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_5\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_6\ : STD_LOGIC;
  signal \cnt_fx_reg[8]_i_1_n_7\ : STD_LOGIC;
  signal cnt_gate_fs : STD_LOGIC_VECTOR ( 31 downto 0 );
  signal \cnt_gate_fs0_carry__0_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__0_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__0_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__0_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__1_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__1_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__1_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__1_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__2_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__2_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__2_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__2_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__3_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__3_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__3_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__3_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__4_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__4_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__4_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__4_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__5_n_0\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__5_n_1\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__5_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__5_n_3\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__6_n_2\ : STD_LOGIC;
  signal \cnt_gate_fs0_carry__6_n_3\ : STD_LOGIC;
  signal cnt_gate_fs0_carry_n_0 : STD_LOGIC;
  signal cnt_gate_fs0_carry_n_1 : STD_LOGIC;
  signal cnt_gate_fs0_carry_n_2 : STD_LOGIC;
  signal cnt_gate_fs0_carry_n_3 : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[0]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[10]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[11]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[12]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[13]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[14]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[15]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[16]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[17]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[18]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[19]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[1]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[20]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[21]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[22]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[23]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[24]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[25]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[26]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[27]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[28]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[29]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[2]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[30]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[3]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[4]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[5]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[6]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[7]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[8]\ : STD_LOGIC;
  signal \cnt_gate_fs_reg_n_0_[9]\ : STD_LOGIC;
  signal data0 : STD_LOGIC_VECTOR ( 31 downto 1 );
  signal gate_fx_d1 : STD_LOGIC;
  signal gate_fx_d2 : STD_LOGIC;
  signal gate_fx_d3 : STD_LOGIC;
  signal gate_fx_nege : STD_LOGIC;
  signal gate_out_i_10_n_0 : STD_LOGIC;
  signal gate_out_i_11_n_0 : STD_LOGIC;
  signal gate_out_i_12_n_0 : STD_LOGIC;
  signal gate_out_i_13_n_0 : STD_LOGIC;
  signal gate_out_i_14_n_0 : STD_LOGIC;
  signal gate_out_i_15_n_0 : STD_LOGIC;
  signal gate_out_i_16_n_0 : STD_LOGIC;
  signal gate_out_i_1_n_0 : STD_LOGIC;
  signal gate_out_i_2_n_0 : STD_LOGIC;
  signal gate_out_i_4_n_0 : STD_LOGIC;
  signal gate_out_i_5_n_0 : STD_LOGIC;
  signal gate_out_i_6_n_0 : STD_LOGIC;
  signal gate_out_i_7_n_0 : STD_LOGIC;
  signal gate_out_i_8_n_0 : STD_LOGIC;
  signal gate_out_i_9_n_0 : STD_LOGIC;
  signal gate_sclk : STD_LOGIC;
  signal gate_sclk_i_1_n_0 : STD_LOGIC;
  signal gate_sclk_i_2_n_0 : STD_LOGIC;
  signal p_0_in0 : STD_LOGIC;
  signal \^s0_axi_aresetn_0\ : STD_LOGIC;
  signal start_0 : STD_LOGIC;
  signal start_i_2_n_0 : STD_LOGIC;
  signal start_i_3_n_0 : STD_LOGIC;
  signal start_i_4_n_0 : STD_LOGIC;
  signal start_i_5_n_0 : STD_LOGIC;
  signal stop_i_1_n_0 : STD_LOGIC;
  signal stop_i_2_n_0 : STD_LOGIC;
  signal stop_i_3_n_0 : STD_LOGIC;
  signal stop_i_4_n_0 : STD_LOGIC;
  signal stop_i_5_n_0 : STD_LOGIC;
  signal stop_i_6_n_0 : STD_LOGIC;
  signal stop_i_7_n_0 : STD_LOGIC;
  signal stop_i_8_n_0 : STD_LOGIC;
  signal \NLW_cnt_fx_reg[28]_i_1_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 1 );
  signal \NLW_cnt_fx_reg[28]_i_1_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_gate_fs0_carry__6_CO_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \NLW_cnt_gate_fs0_carry__6_O_UNCONNECTED\ : STD_LOGIC_VECTOR ( 3 to 3 );
  attribute ADDER_THRESHOLD : integer;
  attribute ADDER_THRESHOLD of cnt_gate_fs0_carry : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__0\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__1\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__2\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__3\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__4\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__5\ : label is 35;
  attribute ADDER_THRESHOLD of \cnt_gate_fs0_carry__6\ : label is 35;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \cnt_gate_fs[0]_i_1\ : label is "soft_lutpair3";
  attribute SOFT_HLUTNM of \cnt_gate_fs[10]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of \cnt_gate_fs[11]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_gate_fs[12]_i_1\ : label is "soft_lutpair11";
  attribute SOFT_HLUTNM of \cnt_gate_fs[13]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_gate_fs[14]_i_1\ : label is "soft_lutpair12";
  attribute SOFT_HLUTNM of \cnt_gate_fs[15]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_gate_fs[16]_i_1\ : label is "soft_lutpair13";
  attribute SOFT_HLUTNM of \cnt_gate_fs[17]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_gate_fs[18]_i_1\ : label is "soft_lutpair14";
  attribute SOFT_HLUTNM of \cnt_gate_fs[19]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_gate_fs[1]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_gate_fs[20]_i_1\ : label is "soft_lutpair15";
  attribute SOFT_HLUTNM of \cnt_gate_fs[21]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_gate_fs[22]_i_1\ : label is "soft_lutpair16";
  attribute SOFT_HLUTNM of \cnt_gate_fs[23]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_gate_fs[24]_i_1\ : label is "soft_lutpair17";
  attribute SOFT_HLUTNM of \cnt_gate_fs[25]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_gate_fs[26]_i_1\ : label is "soft_lutpair18";
  attribute SOFT_HLUTNM of \cnt_gate_fs[27]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_gate_fs[28]_i_1\ : label is "soft_lutpair19";
  attribute SOFT_HLUTNM of \cnt_gate_fs[29]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_gate_fs[2]_i_1\ : label is "soft_lutpair6";
  attribute SOFT_HLUTNM of \cnt_gate_fs[30]_i_1\ : label is "soft_lutpair20";
  attribute SOFT_HLUTNM of \cnt_gate_fs[3]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_gate_fs[4]_i_1\ : label is "soft_lutpair7";
  attribute SOFT_HLUTNM of \cnt_gate_fs[5]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_gate_fs[6]_i_1\ : label is "soft_lutpair8";
  attribute SOFT_HLUTNM of \cnt_gate_fs[7]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_gate_fs[8]_i_1\ : label is "soft_lutpair9";
  attribute SOFT_HLUTNM of \cnt_gate_fs[9]_i_1\ : label is "soft_lutpair10";
  attribute SOFT_HLUTNM of gate_out_i_11 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of gate_out_i_14 : label is "soft_lutpair5";
  attribute SOFT_HLUTNM of gate_out_i_15 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of gate_out_i_2 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of gate_out_i_7 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of gate_out_i_8 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of gate_sclk_i_1 : label is "soft_lutpair4";
  attribute SOFT_HLUTNM of gate_sclk_i_2 : label is "soft_lutpair0";
  attribute SOFT_HLUTNM of start_i_4 : label is "soft_lutpair2";
  attribute SOFT_HLUTNM of stop_i_4 : label is "soft_lutpair1";
  attribute SOFT_HLUTNM of stop_i_8 : label is "soft_lutpair3";
begin
  s0_axi_aresetn_0 <= \^s0_axi_aresetn_0\;
\cnt_fx[0]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(3),
      O => \cnt_fx[0]_i_2_n_0\
    );
\cnt_fx[0]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(2),
      O => \cnt_fx[0]_i_3_n_0\
    );
\cnt_fx[0]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(1),
      O => \cnt_fx[0]_i_4_n_0\
    );
\cnt_fx[0]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"4"
    )
        port map (
      I0 => cnt_fx_reg(0),
      I1 => gate_fx_d2,
      O => \cnt_fx[0]_i_5_n_0\
    );
\cnt_fx[12]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(15),
      O => \cnt_fx[12]_i_2_n_0\
    );
\cnt_fx[12]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(14),
      O => \cnt_fx[12]_i_3_n_0\
    );
\cnt_fx[12]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(13),
      O => \cnt_fx[12]_i_4_n_0\
    );
\cnt_fx[12]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(12),
      O => \cnt_fx[12]_i_5_n_0\
    );
\cnt_fx[16]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(19),
      O => \cnt_fx[16]_i_2_n_0\
    );
\cnt_fx[16]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(18),
      O => \cnt_fx[16]_i_3_n_0\
    );
\cnt_fx[16]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(17),
      O => \cnt_fx[16]_i_4_n_0\
    );
\cnt_fx[16]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(16),
      O => \cnt_fx[16]_i_5_n_0\
    );
\cnt_fx[20]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(23),
      O => \cnt_fx[20]_i_2_n_0\
    );
\cnt_fx[20]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(22),
      O => \cnt_fx[20]_i_3_n_0\
    );
\cnt_fx[20]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(21),
      O => \cnt_fx[20]_i_4_n_0\
    );
\cnt_fx[20]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(20),
      O => \cnt_fx[20]_i_5_n_0\
    );
\cnt_fx[24]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(27),
      O => \cnt_fx[24]_i_2_n_0\
    );
\cnt_fx[24]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(26),
      O => \cnt_fx[24]_i_3_n_0\
    );
\cnt_fx[24]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(25),
      O => \cnt_fx[24]_i_4_n_0\
    );
\cnt_fx[24]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(24),
      O => \cnt_fx[24]_i_5_n_0\
    );
\cnt_fx[28]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(29),
      O => \cnt_fx[28]_i_2_n_0\
    );
\cnt_fx[28]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(28),
      O => \cnt_fx[28]_i_3_n_0\
    );
\cnt_fx[4]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(7),
      O => \cnt_fx[4]_i_2_n_0\
    );
\cnt_fx[4]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(6),
      O => \cnt_fx[4]_i_3_n_0\
    );
\cnt_fx[4]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(5),
      O => \cnt_fx[4]_i_4_n_0\
    );
\cnt_fx[4]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(4),
      O => \cnt_fx[4]_i_5_n_0\
    );
\cnt_fx[8]_i_2\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(11),
      O => \cnt_fx[8]_i_2_n_0\
    );
\cnt_fx[8]_i_3\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(10),
      O => \cnt_fx[8]_i_3_n_0\
    );
\cnt_fx[8]_i_4\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(9),
      O => \cnt_fx[8]_i_4_n_0\
    );
\cnt_fx[8]_i_5\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_fx_d2,
      I1 => cnt_fx_reg(8),
      O => \cnt_fx[8]_i_5_n_0\
    );
\cnt_fx_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[0]_i_1_n_7\,
      Q => cnt_fx_reg(0)
    );
\cnt_fx_reg[0]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => \cnt_fx_reg[0]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[0]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[0]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[0]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 1) => B"000",
      DI(0) => gate_fx_d2,
      O(3) => \cnt_fx_reg[0]_i_1_n_4\,
      O(2) => \cnt_fx_reg[0]_i_1_n_5\,
      O(1) => \cnt_fx_reg[0]_i_1_n_6\,
      O(0) => \cnt_fx_reg[0]_i_1_n_7\,
      S(3) => \cnt_fx[0]_i_2_n_0\,
      S(2) => \cnt_fx[0]_i_3_n_0\,
      S(1) => \cnt_fx[0]_i_4_n_0\,
      S(0) => \cnt_fx[0]_i_5_n_0\
    );
\cnt_fx_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[8]_i_1_n_5\,
      Q => cnt_fx_reg(10)
    );
\cnt_fx_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[8]_i_1_n_4\,
      Q => cnt_fx_reg(11)
    );
\cnt_fx_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[12]_i_1_n_7\,
      Q => cnt_fx_reg(12)
    );
\cnt_fx_reg[12]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[8]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[12]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[12]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[12]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[12]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[12]_i_1_n_4\,
      O(2) => \cnt_fx_reg[12]_i_1_n_5\,
      O(1) => \cnt_fx_reg[12]_i_1_n_6\,
      O(0) => \cnt_fx_reg[12]_i_1_n_7\,
      S(3) => \cnt_fx[12]_i_2_n_0\,
      S(2) => \cnt_fx[12]_i_3_n_0\,
      S(1) => \cnt_fx[12]_i_4_n_0\,
      S(0) => \cnt_fx[12]_i_5_n_0\
    );
\cnt_fx_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[12]_i_1_n_6\,
      Q => cnt_fx_reg(13)
    );
\cnt_fx_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[12]_i_1_n_5\,
      Q => cnt_fx_reg(14)
    );
\cnt_fx_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[12]_i_1_n_4\,
      Q => cnt_fx_reg(15)
    );
\cnt_fx_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[16]_i_1_n_7\,
      Q => cnt_fx_reg(16)
    );
\cnt_fx_reg[16]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[12]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[16]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[16]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[16]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[16]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[16]_i_1_n_4\,
      O(2) => \cnt_fx_reg[16]_i_1_n_5\,
      O(1) => \cnt_fx_reg[16]_i_1_n_6\,
      O(0) => \cnt_fx_reg[16]_i_1_n_7\,
      S(3) => \cnt_fx[16]_i_2_n_0\,
      S(2) => \cnt_fx[16]_i_3_n_0\,
      S(1) => \cnt_fx[16]_i_4_n_0\,
      S(0) => \cnt_fx[16]_i_5_n_0\
    );
\cnt_fx_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[16]_i_1_n_6\,
      Q => cnt_fx_reg(17)
    );
\cnt_fx_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[16]_i_1_n_5\,
      Q => cnt_fx_reg(18)
    );
\cnt_fx_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[16]_i_1_n_4\,
      Q => cnt_fx_reg(19)
    );
\cnt_fx_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[0]_i_1_n_6\,
      Q => cnt_fx_reg(1)
    );
\cnt_fx_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[20]_i_1_n_7\,
      Q => cnt_fx_reg(20)
    );
\cnt_fx_reg[20]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[16]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[20]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[20]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[20]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[20]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[20]_i_1_n_4\,
      O(2) => \cnt_fx_reg[20]_i_1_n_5\,
      O(1) => \cnt_fx_reg[20]_i_1_n_6\,
      O(0) => \cnt_fx_reg[20]_i_1_n_7\,
      S(3) => \cnt_fx[20]_i_2_n_0\,
      S(2) => \cnt_fx[20]_i_3_n_0\,
      S(1) => \cnt_fx[20]_i_4_n_0\,
      S(0) => \cnt_fx[20]_i_5_n_0\
    );
\cnt_fx_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[20]_i_1_n_6\,
      Q => cnt_fx_reg(21)
    );
\cnt_fx_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[20]_i_1_n_5\,
      Q => cnt_fx_reg(22)
    );
\cnt_fx_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[20]_i_1_n_4\,
      Q => cnt_fx_reg(23)
    );
\cnt_fx_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[24]_i_1_n_7\,
      Q => cnt_fx_reg(24)
    );
\cnt_fx_reg[24]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[20]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[24]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[24]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[24]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[24]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[24]_i_1_n_4\,
      O(2) => \cnt_fx_reg[24]_i_1_n_5\,
      O(1) => \cnt_fx_reg[24]_i_1_n_6\,
      O(0) => \cnt_fx_reg[24]_i_1_n_7\,
      S(3) => \cnt_fx[24]_i_2_n_0\,
      S(2) => \cnt_fx[24]_i_3_n_0\,
      S(1) => \cnt_fx[24]_i_4_n_0\,
      S(0) => \cnt_fx[24]_i_5_n_0\
    );
\cnt_fx_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[24]_i_1_n_6\,
      Q => cnt_fx_reg(25)
    );
\cnt_fx_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[24]_i_1_n_5\,
      Q => cnt_fx_reg(26)
    );
\cnt_fx_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[24]_i_1_n_4\,
      Q => cnt_fx_reg(27)
    );
\cnt_fx_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[28]_i_1_n_7\,
      Q => cnt_fx_reg(28)
    );
\cnt_fx_reg[28]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[24]_i_1_n_0\,
      CO(3 downto 1) => \NLW_cnt_fx_reg[28]_i_1_CO_UNCONNECTED\(3 downto 1),
      CO(0) => \cnt_fx_reg[28]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 2) => \NLW_cnt_fx_reg[28]_i_1_O_UNCONNECTED\(3 downto 2),
      O(1) => \cnt_fx_reg[28]_i_1_n_6\,
      O(0) => \cnt_fx_reg[28]_i_1_n_7\,
      S(3 downto 2) => B"00",
      S(1) => \cnt_fx[28]_i_2_n_0\,
      S(0) => \cnt_fx[28]_i_3_n_0\
    );
\cnt_fx_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[28]_i_1_n_6\,
      Q => cnt_fx_reg(29)
    );
\cnt_fx_reg[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => gate_fx_d3,
      I1 => gate_fx_d2,
      O => gate_fx_nege
    );
\cnt_fx_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[0]_i_1_n_5\,
      Q => cnt_fx_reg(2)
    );
\cnt_fx_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[0]_i_1_n_4\,
      Q => cnt_fx_reg(3)
    );
\cnt_fx_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[4]_i_1_n_7\,
      Q => cnt_fx_reg(4)
    );
\cnt_fx_reg[4]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[0]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[4]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[4]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[4]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[4]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[4]_i_1_n_4\,
      O(2) => \cnt_fx_reg[4]_i_1_n_5\,
      O(1) => \cnt_fx_reg[4]_i_1_n_6\,
      O(0) => \cnt_fx_reg[4]_i_1_n_7\,
      S(3) => \cnt_fx[4]_i_2_n_0\,
      S(2) => \cnt_fx[4]_i_3_n_0\,
      S(1) => \cnt_fx[4]_i_4_n_0\,
      S(0) => \cnt_fx[4]_i_5_n_0\
    );
\cnt_fx_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[4]_i_1_n_6\,
      Q => cnt_fx_reg(5)
    );
\cnt_fx_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[4]_i_1_n_5\,
      Q => cnt_fx_reg(6)
    );
\cnt_fx_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[4]_i_1_n_4\,
      Q => cnt_fx_reg(7)
    );
\cnt_fx_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[8]_i_1_n_7\,
      Q => cnt_fx_reg(8)
    );
\cnt_fx_reg[8]_i_1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_fx_reg[4]_i_1_n_0\,
      CO(3) => \cnt_fx_reg[8]_i_1_n_0\,
      CO(2) => \cnt_fx_reg[8]_i_1_n_1\,
      CO(1) => \cnt_fx_reg[8]_i_1_n_2\,
      CO(0) => \cnt_fx_reg[8]_i_1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \cnt_fx_reg[8]_i_1_n_4\,
      O(2) => \cnt_fx_reg[8]_i_1_n_5\,
      O(1) => \cnt_fx_reg[8]_i_1_n_6\,
      O(0) => \cnt_fx_reg[8]_i_1_n_7\,
      S(3) => \cnt_fx[8]_i_2_n_0\,
      S(2) => \cnt_fx[8]_i_3_n_0\,
      S(1) => \cnt_fx[8]_i_4_n_0\,
      S(0) => \cnt_fx[8]_i_5_n_0\
    );
\cnt_fx_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => \cnt_fx_reg[8]_i_1_n_6\,
      Q => cnt_fx_reg(9)
    );
\cnt_fx_reg_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(0),
      Q => Q(0)
    );
\cnt_fx_reg_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(10),
      Q => Q(10)
    );
\cnt_fx_reg_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(11),
      Q => Q(11)
    );
\cnt_fx_reg_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(12),
      Q => Q(12)
    );
\cnt_fx_reg_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(13),
      Q => Q(13)
    );
\cnt_fx_reg_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(14),
      Q => Q(14)
    );
\cnt_fx_reg_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(15),
      Q => Q(15)
    );
\cnt_fx_reg_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(16),
      Q => Q(16)
    );
\cnt_fx_reg_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(17),
      Q => Q(17)
    );
\cnt_fx_reg_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(18),
      Q => Q(18)
    );
\cnt_fx_reg_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(19),
      Q => Q(19)
    );
\cnt_fx_reg_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(1),
      Q => Q(1)
    );
\cnt_fx_reg_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(20),
      Q => Q(20)
    );
\cnt_fx_reg_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(21),
      Q => Q(21)
    );
\cnt_fx_reg_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(22),
      Q => Q(22)
    );
\cnt_fx_reg_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(23),
      Q => Q(23)
    );
\cnt_fx_reg_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(24),
      Q => Q(24)
    );
\cnt_fx_reg_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(25),
      Q => Q(25)
    );
\cnt_fx_reg_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(26),
      Q => Q(26)
    );
\cnt_fx_reg_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(27),
      Q => Q(27)
    );
\cnt_fx_reg_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(28),
      Q => Q(28)
    );
\cnt_fx_reg_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(29),
      Q => Q(29)
    );
\cnt_fx_reg_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(2),
      Q => Q(2)
    );
\cnt_fx_reg_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(3),
      Q => Q(3)
    );
\cnt_fx_reg_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(4),
      Q => Q(4)
    );
\cnt_fx_reg_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(5),
      Q => Q(5)
    );
\cnt_fx_reg_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(6),
      Q => Q(6)
    );
\cnt_fx_reg_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(7),
      Q => Q(7)
    );
\cnt_fx_reg_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(8),
      Q => Q(8)
    );
\cnt_fx_reg_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => gate_fx_nege,
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_fx_reg(9),
      Q => Q(9)
    );
cnt_gate_fs0_carry: unisim.vcomponents.CARRY4
     port map (
      CI => '0',
      CO(3) => cnt_gate_fs0_carry_n_0,
      CO(2) => cnt_gate_fs0_carry_n_1,
      CO(1) => cnt_gate_fs0_carry_n_2,
      CO(0) => cnt_gate_fs0_carry_n_3,
      CYINIT => \cnt_gate_fs_reg_n_0_[0]\,
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(4 downto 1),
      S(3) => \cnt_gate_fs_reg_n_0_[4]\,
      S(2) => \cnt_gate_fs_reg_n_0_[3]\,
      S(1) => \cnt_gate_fs_reg_n_0_[2]\,
      S(0) => \cnt_gate_fs_reg_n_0_[1]\
    );
\cnt_gate_fs0_carry__0\: unisim.vcomponents.CARRY4
     port map (
      CI => cnt_gate_fs0_carry_n_0,
      CO(3) => \cnt_gate_fs0_carry__0_n_0\,
      CO(2) => \cnt_gate_fs0_carry__0_n_1\,
      CO(1) => \cnt_gate_fs0_carry__0_n_2\,
      CO(0) => \cnt_gate_fs0_carry__0_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(8 downto 5),
      S(3) => \cnt_gate_fs_reg_n_0_[8]\,
      S(2) => \cnt_gate_fs_reg_n_0_[7]\,
      S(1) => \cnt_gate_fs_reg_n_0_[6]\,
      S(0) => \cnt_gate_fs_reg_n_0_[5]\
    );
\cnt_gate_fs0_carry__1\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__0_n_0\,
      CO(3) => \cnt_gate_fs0_carry__1_n_0\,
      CO(2) => \cnt_gate_fs0_carry__1_n_1\,
      CO(1) => \cnt_gate_fs0_carry__1_n_2\,
      CO(0) => \cnt_gate_fs0_carry__1_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(12 downto 9),
      S(3) => \cnt_gate_fs_reg_n_0_[12]\,
      S(2) => \cnt_gate_fs_reg_n_0_[11]\,
      S(1) => \cnt_gate_fs_reg_n_0_[10]\,
      S(0) => \cnt_gate_fs_reg_n_0_[9]\
    );
\cnt_gate_fs0_carry__2\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__1_n_0\,
      CO(3) => \cnt_gate_fs0_carry__2_n_0\,
      CO(2) => \cnt_gate_fs0_carry__2_n_1\,
      CO(1) => \cnt_gate_fs0_carry__2_n_2\,
      CO(0) => \cnt_gate_fs0_carry__2_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(16 downto 13),
      S(3) => \cnt_gate_fs_reg_n_0_[16]\,
      S(2) => \cnt_gate_fs_reg_n_0_[15]\,
      S(1) => \cnt_gate_fs_reg_n_0_[14]\,
      S(0) => \cnt_gate_fs_reg_n_0_[13]\
    );
\cnt_gate_fs0_carry__3\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__2_n_0\,
      CO(3) => \cnt_gate_fs0_carry__3_n_0\,
      CO(2) => \cnt_gate_fs0_carry__3_n_1\,
      CO(1) => \cnt_gate_fs0_carry__3_n_2\,
      CO(0) => \cnt_gate_fs0_carry__3_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(20 downto 17),
      S(3) => \cnt_gate_fs_reg_n_0_[20]\,
      S(2) => \cnt_gate_fs_reg_n_0_[19]\,
      S(1) => \cnt_gate_fs_reg_n_0_[18]\,
      S(0) => \cnt_gate_fs_reg_n_0_[17]\
    );
\cnt_gate_fs0_carry__4\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__3_n_0\,
      CO(3) => \cnt_gate_fs0_carry__4_n_0\,
      CO(2) => \cnt_gate_fs0_carry__4_n_1\,
      CO(1) => \cnt_gate_fs0_carry__4_n_2\,
      CO(0) => \cnt_gate_fs0_carry__4_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(24 downto 21),
      S(3) => \cnt_gate_fs_reg_n_0_[24]\,
      S(2) => \cnt_gate_fs_reg_n_0_[23]\,
      S(1) => \cnt_gate_fs_reg_n_0_[22]\,
      S(0) => \cnt_gate_fs_reg_n_0_[21]\
    );
\cnt_gate_fs0_carry__5\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__4_n_0\,
      CO(3) => \cnt_gate_fs0_carry__5_n_0\,
      CO(2) => \cnt_gate_fs0_carry__5_n_1\,
      CO(1) => \cnt_gate_fs0_carry__5_n_2\,
      CO(0) => \cnt_gate_fs0_carry__5_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3 downto 0) => data0(28 downto 25),
      S(3) => \cnt_gate_fs_reg_n_0_[28]\,
      S(2) => \cnt_gate_fs_reg_n_0_[27]\,
      S(1) => \cnt_gate_fs_reg_n_0_[26]\,
      S(0) => \cnt_gate_fs_reg_n_0_[25]\
    );
\cnt_gate_fs0_carry__6\: unisim.vcomponents.CARRY4
     port map (
      CI => \cnt_gate_fs0_carry__5_n_0\,
      CO(3 downto 2) => \NLW_cnt_gate_fs0_carry__6_CO_UNCONNECTED\(3 downto 2),
      CO(1) => \cnt_gate_fs0_carry__6_n_2\,
      CO(0) => \cnt_gate_fs0_carry__6_n_3\,
      CYINIT => '0',
      DI(3 downto 0) => B"0000",
      O(3) => \NLW_cnt_gate_fs0_carry__6_O_UNCONNECTED\(3),
      O(2 downto 0) => data0(31 downto 29),
      S(3) => '0',
      S(2) => p_0_in0,
      S(1) => \cnt_gate_fs_reg_n_0_[30]\,
      S(0) => \cnt_gate_fs_reg_n_0_[29]\
    );
\cnt_gate_fs[0]_i_1\: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[0]\,
      O => cnt_gate_fs(0)
    );
\cnt_gate_fs[10]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(10),
      O => cnt_gate_fs(10)
    );
\cnt_gate_fs[11]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(11),
      O => cnt_gate_fs(11)
    );
\cnt_gate_fs[12]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(12),
      O => cnt_gate_fs(12)
    );
\cnt_gate_fs[13]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(13),
      O => cnt_gate_fs(13)
    );
\cnt_gate_fs[14]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(14),
      O => cnt_gate_fs(14)
    );
\cnt_gate_fs[15]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(15),
      O => cnt_gate_fs(15)
    );
\cnt_gate_fs[16]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(16),
      O => cnt_gate_fs(16)
    );
\cnt_gate_fs[17]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(17),
      O => cnt_gate_fs(17)
    );
\cnt_gate_fs[18]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(18),
      O => cnt_gate_fs(18)
    );
\cnt_gate_fs[19]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(19),
      O => cnt_gate_fs(19)
    );
\cnt_gate_fs[1]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(1),
      O => cnt_gate_fs(1)
    );
\cnt_gate_fs[20]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(20),
      O => cnt_gate_fs(20)
    );
\cnt_gate_fs[21]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(21),
      O => cnt_gate_fs(21)
    );
\cnt_gate_fs[22]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(22),
      O => cnt_gate_fs(22)
    );
\cnt_gate_fs[23]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(23),
      O => cnt_gate_fs(23)
    );
\cnt_gate_fs[24]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(24),
      O => cnt_gate_fs(24)
    );
\cnt_gate_fs[25]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(25),
      O => cnt_gate_fs(25)
    );
\cnt_gate_fs[26]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(26),
      O => cnt_gate_fs(26)
    );
\cnt_gate_fs[27]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(27),
      O => cnt_gate_fs(27)
    );
\cnt_gate_fs[28]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(28),
      O => cnt_gate_fs(28)
    );
\cnt_gate_fs[29]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(29),
      O => cnt_gate_fs(29)
    );
\cnt_gate_fs[2]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(2),
      O => cnt_gate_fs(2)
    );
\cnt_gate_fs[30]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(30),
      O => cnt_gate_fs(30)
    );
\cnt_gate_fs[31]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(31),
      O => cnt_gate_fs(31)
    );
\cnt_gate_fs[3]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(3),
      O => cnt_gate_fs(3)
    );
\cnt_gate_fs[4]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(4),
      O => cnt_gate_fs(4)
    );
\cnt_gate_fs[5]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(5),
      O => cnt_gate_fs(5)
    );
\cnt_gate_fs[6]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(6),
      O => cnt_gate_fs(6)
    );
\cnt_gate_fs[7]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(7),
      O => cnt_gate_fs(7)
    );
\cnt_gate_fs[8]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(8),
      O => cnt_gate_fs(8)
    );
\cnt_gate_fs[9]_i_1\: unisim.vcomponents.LUT2
    generic map(
      INIT => X"8"
    )
        port map (
      I0 => gate_out_i_6_n_0,
      I1 => data0(9),
      O => cnt_gate_fs(9)
    );
\cnt_gate_fs_reg[0]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(0),
      Q => \cnt_gate_fs_reg_n_0_[0]\
    );
\cnt_gate_fs_reg[10]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(10),
      Q => \cnt_gate_fs_reg_n_0_[10]\
    );
\cnt_gate_fs_reg[11]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(11),
      Q => \cnt_gate_fs_reg_n_0_[11]\
    );
\cnt_gate_fs_reg[12]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(12),
      Q => \cnt_gate_fs_reg_n_0_[12]\
    );
\cnt_gate_fs_reg[13]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(13),
      Q => \cnt_gate_fs_reg_n_0_[13]\
    );
\cnt_gate_fs_reg[14]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(14),
      Q => \cnt_gate_fs_reg_n_0_[14]\
    );
\cnt_gate_fs_reg[15]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(15),
      Q => \cnt_gate_fs_reg_n_0_[15]\
    );
\cnt_gate_fs_reg[16]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(16),
      Q => \cnt_gate_fs_reg_n_0_[16]\
    );
\cnt_gate_fs_reg[17]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(17),
      Q => \cnt_gate_fs_reg_n_0_[17]\
    );
\cnt_gate_fs_reg[18]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(18),
      Q => \cnt_gate_fs_reg_n_0_[18]\
    );
\cnt_gate_fs_reg[19]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(19),
      Q => \cnt_gate_fs_reg_n_0_[19]\
    );
\cnt_gate_fs_reg[1]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(1),
      Q => \cnt_gate_fs_reg_n_0_[1]\
    );
\cnt_gate_fs_reg[20]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(20),
      Q => \cnt_gate_fs_reg_n_0_[20]\
    );
\cnt_gate_fs_reg[21]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(21),
      Q => \cnt_gate_fs_reg_n_0_[21]\
    );
\cnt_gate_fs_reg[22]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(22),
      Q => \cnt_gate_fs_reg_n_0_[22]\
    );
\cnt_gate_fs_reg[23]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(23),
      Q => \cnt_gate_fs_reg_n_0_[23]\
    );
\cnt_gate_fs_reg[24]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(24),
      Q => \cnt_gate_fs_reg_n_0_[24]\
    );
\cnt_gate_fs_reg[25]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(25),
      Q => \cnt_gate_fs_reg_n_0_[25]\
    );
\cnt_gate_fs_reg[26]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(26),
      Q => \cnt_gate_fs_reg_n_0_[26]\
    );
\cnt_gate_fs_reg[27]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(27),
      Q => \cnt_gate_fs_reg_n_0_[27]\
    );
\cnt_gate_fs_reg[28]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(28),
      Q => \cnt_gate_fs_reg_n_0_[28]\
    );
\cnt_gate_fs_reg[29]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(29),
      Q => \cnt_gate_fs_reg_n_0_[29]\
    );
\cnt_gate_fs_reg[2]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(2),
      Q => \cnt_gate_fs_reg_n_0_[2]\
    );
\cnt_gate_fs_reg[30]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(30),
      Q => \cnt_gate_fs_reg_n_0_[30]\
    );
\cnt_gate_fs_reg[31]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(31),
      Q => p_0_in0
    );
\cnt_gate_fs_reg[3]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(3),
      Q => \cnt_gate_fs_reg_n_0_[3]\
    );
\cnt_gate_fs_reg[4]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(4),
      Q => \cnt_gate_fs_reg_n_0_[4]\
    );
\cnt_gate_fs_reg[5]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(5),
      Q => \cnt_gate_fs_reg_n_0_[5]\
    );
\cnt_gate_fs_reg[6]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(6),
      Q => \cnt_gate_fs_reg_n_0_[6]\
    );
\cnt_gate_fs_reg[7]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(7),
      Q => \cnt_gate_fs_reg_n_0_[7]\
    );
\cnt_gate_fs_reg[8]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(8),
      Q => \cnt_gate_fs_reg_n_0_[8]\
    );
\cnt_gate_fs_reg[9]\: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => cnt_gate_fs(9),
      Q => \cnt_gate_fs_reg_n_0_[9]\
    );
gate_fx_d1_reg: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => gate_sclk,
      Q => gate_fx_d1
    );
gate_fx_d2_reg: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => gate_fx_d1,
      Q => gate_fx_d2
    );
gate_fx_d3_reg: unisim.vcomponents.FDCE
     port map (
      C => input_fx,
      CE => '1',
      CLR => \^s0_axi_aresetn_0\,
      D => gate_fx_d2,
      Q => gate_fx_d3
    );
gate_out_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFEF"
    )
        port map (
      I0 => gate_out_i_4_n_0,
      I1 => gate_out_i_5_n_0,
      I2 => gate_out_i_6_n_0,
      I3 => start_0,
      O => gate_out_i_1_n_0
    );
gate_out_i_10: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0001000000000000"
    )
        port map (
      I0 => stop_i_8_n_0,
      I1 => start_i_5_n_0,
      I2 => stop_i_7_n_0,
      I3 => \cnt_gate_fs_reg_n_0_[27]\,
      I4 => gate_out_i_15_n_0,
      I5 => gate_out_i_16_n_0,
      O => gate_out_i_10_n_0
    );
gate_out_i_11: unisim.vcomponents.LUT3
    generic map(
      INIT => X"04"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[9]\,
      I1 => \cnt_gate_fs_reg_n_0_[14]\,
      I2 => \cnt_gate_fs_reg_n_0_[28]\,
      O => gate_out_i_11_n_0
    );
gate_out_i_12: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000400000"
    )
        port map (
      I0 => stop_i_4_n_0,
      I1 => \cnt_gate_fs_reg_n_0_[27]\,
      I2 => \cnt_gate_fs_reg_n_0_[20]\,
      I3 => \cnt_gate_fs_reg_n_0_[19]\,
      I4 => \cnt_gate_fs_reg_n_0_[21]\,
      I5 => gate_out_i_13_n_0,
      O => gate_out_i_12_n_0
    );
gate_out_i_13: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFEFFFFFF"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[16]\,
      I1 => \cnt_gate_fs_reg_n_0_[24]\,
      I2 => \cnt_gate_fs_reg_n_0_[13]\,
      I3 => \cnt_gate_fs_reg_n_0_[12]\,
      I4 => \cnt_gate_fs_reg_n_0_[8]\,
      I5 => \cnt_gate_fs_reg_n_0_[7]\,
      O => gate_out_i_13_n_0
    );
gate_out_i_14: unisim.vcomponents.LUT3
    generic map(
      INIT => X"DF"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[28]\,
      I1 => \cnt_gate_fs_reg_n_0_[14]\,
      I2 => \cnt_gate_fs_reg_n_0_[9]\,
      O => gate_out_i_14_n_0
    );
gate_out_i_15: unisim.vcomponents.LUT2
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[3]\,
      I1 => \cnt_gate_fs_reg_n_0_[4]\,
      O => gate_out_i_15_n_0
    );
gate_out_i_16: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0008"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[12]\,
      I1 => \cnt_gate_fs_reg_n_0_[10]\,
      I2 => \cnt_gate_fs_reg_n_0_[6]\,
      I3 => \cnt_gate_fs_reg_n_0_[5]\,
      O => gate_out_i_16_n_0
    );
gate_out_i_2: unisim.vcomponents.LUT2
    generic map(
      INIT => X"E"
    )
        port map (
      I0 => gate_out_i_4_n_0,
      I1 => start_0,
      O => gate_out_i_2_n_0
    );
gate_out_i_3: unisim.vcomponents.LUT1
    generic map(
      INIT => X"1"
    )
        port map (
      I0 => s0_axi_aresetn,
      O => \^s0_axi_aresetn_0\
    );
gate_out_i_4: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFF000F44440000"
    )
        port map (
      I0 => gate_out_i_7_n_0,
      I1 => gate_out_i_8_n_0,
      I2 => \cnt_gate_fs_reg_n_0_[12]\,
      I3 => gate_out_i_9_n_0,
      I4 => gate_out_i_10_n_0,
      I5 => stop_i_2_n_0,
      O => gate_out_i_4_n_0
    );
gate_out_i_5: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00100000"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[18]\,
      I1 => \cnt_gate_fs_reg_n_0_[26]\,
      I2 => gate_out_i_11_n_0,
      I3 => stop_i_3_n_0,
      I4 => gate_out_i_12_n_0,
      O => gate_out_i_5_n_0
    );
gate_out_i_6: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFB"
    )
        port map (
      I0 => gate_out_i_13_n_0,
      I1 => \cnt_gate_fs_reg_n_0_[19]\,
      I2 => \cnt_gate_fs_reg_n_0_[21]\,
      I3 => gate_out_i_14_n_0,
      I4 => start_i_3_n_0,
      O => gate_out_i_6_n_0
    );
gate_out_i_7: unisim.vcomponents.LUT3
    generic map(
      INIT => X"7F"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[26]\,
      I1 => \cnt_gate_fs_reg_n_0_[20]\,
      I2 => \cnt_gate_fs_reg_n_0_[18]\,
      O => gate_out_i_7_n_0
    );
gate_out_i_8: unisim.vcomponents.LUT5
    generic map(
      INIT => X"20000000"
    )
        port map (
      I0 => gate_out_i_11_n_0,
      I1 => \cnt_gate_fs_reg_n_0_[19]\,
      I2 => \cnt_gate_fs_reg_n_0_[21]\,
      I3 => \cnt_gate_fs_reg_n_0_[24]\,
      I4 => stop_i_5_n_0,
      O => gate_out_i_8_n_0
    );
gate_out_i_9: unisim.vcomponents.LUT5
    generic map(
      INIT => X"FFFFFFFE"
    )
        port map (
      I0 => stop_i_4_n_0,
      I1 => \cnt_gate_fs_reg_n_0_[27]\,
      I2 => stop_i_7_n_0,
      I3 => start_i_5_n_0,
      I4 => stop_i_8_n_0,
      O => gate_out_i_9_n_0
    );
gate_out_reg: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => gate_out_i_1_n_0,
      CLR => \^s0_axi_aresetn_0\,
      D => gate_out_i_2_n_0,
      Q => gate_out
    );
gate_sclk_i_1: unisim.vcomponents.LUT3
    generic map(
      INIT => X"FE"
    )
        port map (
      I0 => gate_out_i_5_n_0,
      I1 => start_0,
      I2 => gate_sclk_i_2_n_0,
      O => gate_sclk_i_1_n_0
    );
gate_sclk_i_2: unisim.vcomponents.LUT5
    generic map(
      INIT => X"80000000"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[26]\,
      I1 => \cnt_gate_fs_reg_n_0_[20]\,
      I2 => \cnt_gate_fs_reg_n_0_[18]\,
      I3 => gate_out_i_8_n_0,
      I4 => gate_out_i_10_n_0,
      O => gate_sclk_i_2_n_0
    );
gate_sclk_reg: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => gate_out_i_1_n_0,
      CLR => \^s0_axi_aresetn_0\,
      D => gate_sclk_i_1_n_0,
      Q => gate_sclk
    );
start_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000000000100000"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[12]\,
      I1 => \cnt_gate_fs_reg_n_0_[28]\,
      I2 => \cnt_gate_fs_reg_n_0_[14]\,
      I3 => \cnt_gate_fs_reg_n_0_[9]\,
      I4 => start_i_2_n_0,
      I5 => start_i_3_n_0,
      O => start_0
    );
start_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"2000000000000000"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[7]\,
      I1 => \cnt_gate_fs_reg_n_0_[8]\,
      I2 => \cnt_gate_fs_reg_n_0_[13]\,
      I3 => \cnt_gate_fs_reg_n_0_[16]\,
      I4 => \cnt_gate_fs_reg_n_0_[24]\,
      I5 => start_i_4_n_0,
      O => start_i_2_n_0
    );
start_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFFFFFFFE"
    )
        port map (
      I0 => stop_i_8_n_0,
      I1 => start_i_5_n_0,
      I2 => stop_i_7_n_0,
      I3 => \cnt_gate_fs_reg_n_0_[27]\,
      I4 => stop_i_4_n_0,
      I5 => gate_out_i_7_n_0,
      O => start_i_3_n_0
    );
start_i_4: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[21]\,
      I1 => \cnt_gate_fs_reg_n_0_[19]\,
      O => start_i_4_n_0
    );
start_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"DFFF"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[15]\,
      I1 => \cnt_gate_fs_reg_n_0_[17]\,
      I2 => \cnt_gate_fs_reg_n_0_[23]\,
      I3 => \cnt_gate_fs_reg_n_0_[22]\,
      O => start_i_5_n_0
    );
start_reg: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => gate_out_i_1_n_0,
      CLR => \^s0_axi_aresetn_0\,
      D => start_0,
      Q => start
    );
stop_i_1: unisim.vcomponents.LUT5
    generic map(
      INIT => X"00000004"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[12]\,
      I1 => stop_i_2_n_0,
      I2 => stop_i_3_n_0,
      I3 => \cnt_gate_fs_reg_n_0_[27]\,
      I4 => stop_i_4_n_0,
      O => stop_i_1_n_0
    );
stop_i_2: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000400000000000"
    )
        port map (
      I0 => gate_out_i_14_n_0,
      I1 => stop_i_5_n_0,
      I2 => \cnt_gate_fs_reg_n_0_[24]\,
      I3 => \cnt_gate_fs_reg_n_0_[21]\,
      I4 => \cnt_gate_fs_reg_n_0_[19]\,
      I5 => stop_i_6_n_0,
      O => stop_i_2_n_0
    );
stop_i_3: unisim.vcomponents.LUT6
    generic map(
      INIT => X"FFFFFFFFFBFFFFFF"
    )
        port map (
      I0 => stop_i_7_n_0,
      I1 => \cnt_gate_fs_reg_n_0_[15]\,
      I2 => \cnt_gate_fs_reg_n_0_[17]\,
      I3 => \cnt_gate_fs_reg_n_0_[23]\,
      I4 => \cnt_gate_fs_reg_n_0_[22]\,
      I5 => stop_i_8_n_0,
      O => stop_i_3_n_0
    );
stop_i_4: unisim.vcomponents.LUT5
    generic map(
      INIT => X"DFFFFFFF"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[3]\,
      I1 => \cnt_gate_fs_reg_n_0_[10]\,
      I2 => \cnt_gate_fs_reg_n_0_[6]\,
      I3 => \cnt_gate_fs_reg_n_0_[5]\,
      I4 => \cnt_gate_fs_reg_n_0_[4]\,
      O => stop_i_4_n_0
    );
stop_i_5: unisim.vcomponents.LUT4
    generic map(
      INIT => X"0800"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[16]\,
      I1 => \cnt_gate_fs_reg_n_0_[13]\,
      I2 => \cnt_gate_fs_reg_n_0_[8]\,
      I3 => \cnt_gate_fs_reg_n_0_[7]\,
      O => stop_i_5_n_0
    );
stop_i_6: unisim.vcomponents.LUT3
    generic map(
      INIT => X"01"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[26]\,
      I1 => \cnt_gate_fs_reg_n_0_[18]\,
      I2 => \cnt_gate_fs_reg_n_0_[20]\,
      O => stop_i_6_n_0
    );
stop_i_7: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FFFE"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[29]\,
      I1 => \cnt_gate_fs_reg_n_0_[25]\,
      I2 => p_0_in0,
      I3 => \cnt_gate_fs_reg_n_0_[30]\,
      O => stop_i_7_n_0
    );
stop_i_8: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FF7F"
    )
        port map (
      I0 => \cnt_gate_fs_reg_n_0_[1]\,
      I1 => \cnt_gate_fs_reg_n_0_[0]\,
      I2 => \cnt_gate_fs_reg_n_0_[2]\,
      I3 => \cnt_gate_fs_reg_n_0_[11]\,
      O => stop_i_8_n_0
    );
stop_reg: unisim.vcomponents.FDCE
     port map (
      C => s0_axi_aclk,
      CE => gate_out_i_1_n_0,
      CLR => \^s0_axi_aresetn_0\,
      D => stop_i_1_n_0,
      Q => stop
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ip_0_2_count_ip_v1_0_S0_AXI is
  port (
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    gate_out : out STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_aclk : in STD_LOGIC;
    input_fx : in STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_aresetn : in STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_count_ip_0_2_count_ip_v1_0_S0_AXI : entity is "count_ip_v1_0_S0_AXI";
end design_1_count_ip_0_2_count_ip_v1_0_S0_AXI;

architecture STRUCTURE of design_1_count_ip_0_2_count_ip_v1_0_S0_AXI is
  signal \^s_axi_arready\ : STD_LOGIC;
  signal \^s_axi_awready\ : STD_LOGIC;
  signal aw_en_i_1_n_0 : STD_LOGIC;
  signal aw_en_reg_n_0 : STD_LOGIC;
  signal axi_araddr : STD_LOGIC_VECTOR ( 3 downto 2 );
  signal \axi_araddr[2]_i_1_n_0\ : STD_LOGIC;
  signal \axi_araddr[3]_i_1_n_0\ : STD_LOGIC;
  signal axi_arready0 : STD_LOGIC;
  signal \axi_awready0__0\ : STD_LOGIC;
  signal axi_bvalid_i_1_n_0 : STD_LOGIC;
  signal axi_rvalid_i_1_n_0 : STD_LOGIC;
  signal \axi_wready0__0\ : STD_LOGIC;
  signal cnt_fx_reg : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal reg_data_out : STD_LOGIC_VECTOR ( 29 downto 0 );
  signal \^s0_axi_bvalid\ : STD_LOGIC;
  signal \^s0_axi_rvalid\ : STD_LOGIC;
  signal \^s0_axi_wready\ : STD_LOGIC;
  signal \slv_reg_rden__0\ : STD_LOGIC;
  signal \^start\ : STD_LOGIC;
  signal \^stop\ : STD_LOGIC;
  signal u_counter_n_0 : STD_LOGIC;
  attribute SOFT_HLUTNM : string;
  attribute SOFT_HLUTNM of \axi_araddr[3]_i_1\ : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_arready_i_1 : label is "soft_lutpair21";
  attribute SOFT_HLUTNM of axi_awready0 : label is "soft_lutpair22";
  attribute SOFT_HLUTNM of \axi_rdata[10]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of \axi_rdata[11]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[12]_i_1\ : label is "soft_lutpair28";
  attribute SOFT_HLUTNM of \axi_rdata[13]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_rdata[14]_i_1\ : label is "soft_lutpair29";
  attribute SOFT_HLUTNM of \axi_rdata[15]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_rdata[16]_i_1\ : label is "soft_lutpair30";
  attribute SOFT_HLUTNM of \axi_rdata[17]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_rdata[18]_i_1\ : label is "soft_lutpair31";
  attribute SOFT_HLUTNM of \axi_rdata[19]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_rdata[1]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_rdata[20]_i_1\ : label is "soft_lutpair32";
  attribute SOFT_HLUTNM of \axi_rdata[21]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_rdata[22]_i_1\ : label is "soft_lutpair33";
  attribute SOFT_HLUTNM of \axi_rdata[23]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_rdata[24]_i_1\ : label is "soft_lutpair34";
  attribute SOFT_HLUTNM of \axi_rdata[25]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_rdata[26]_i_1\ : label is "soft_lutpair35";
  attribute SOFT_HLUTNM of \axi_rdata[27]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_rdata[28]_i_1\ : label is "soft_lutpair36";
  attribute SOFT_HLUTNM of \axi_rdata[2]_i_1\ : label is "soft_lutpair23";
  attribute SOFT_HLUTNM of \axi_rdata[3]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[4]_i_1\ : label is "soft_lutpair24";
  attribute SOFT_HLUTNM of \axi_rdata[5]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_rdata[6]_i_1\ : label is "soft_lutpair25";
  attribute SOFT_HLUTNM of \axi_rdata[7]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_rdata[8]_i_1\ : label is "soft_lutpair26";
  attribute SOFT_HLUTNM of \axi_rdata[9]_i_1\ : label is "soft_lutpair27";
  attribute SOFT_HLUTNM of axi_wready0 : label is "soft_lutpair22";
begin
  S_AXI_ARREADY <= \^s_axi_arready\;
  S_AXI_AWREADY <= \^s_axi_awready\;
  s0_axi_bvalid <= \^s0_axi_bvalid\;
  s0_axi_rvalid <= \^s0_axi_rvalid\;
  s0_axi_wready <= \^s0_axi_wready\;
  start <= \^start\;
  stop <= \^stop\;
aw_en_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"F7FFF700F700F700"
    )
        port map (
      I0 => s0_axi_awvalid,
      I1 => s0_axi_wvalid,
      I2 => \^s_axi_awready\,
      I3 => aw_en_reg_n_0,
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
      S => u_counter_n_0
    );
\axi_araddr[2]_i_1\: unisim.vcomponents.LUT4
    generic map(
      INIT => X"FB08"
    )
        port map (
      I0 => s0_axi_araddr(0),
      I1 => s0_axi_arvalid,
      I2 => \^s_axi_arready\,
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
      I2 => \^s_axi_arready\,
      I3 => axi_araddr(3),
      O => \axi_araddr[3]_i_1_n_0\
    );
\axi_araddr_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_araddr[2]_i_1_n_0\,
      Q => axi_araddr(2),
      R => u_counter_n_0
    );
\axi_araddr_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_araddr[3]_i_1_n_0\,
      Q => axi_araddr(3),
      R => u_counter_n_0
    );
axi_arready_i_1: unisim.vcomponents.LUT2
    generic map(
      INIT => X"2"
    )
        port map (
      I0 => s0_axi_arvalid,
      I1 => \^s_axi_arready\,
      O => axi_arready0
    );
axi_arready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => axi_arready0,
      Q => \^s_axi_arready\,
      R => u_counter_n_0
    );
axi_awready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s_axi_awready\,
      I2 => s0_axi_wvalid,
      I3 => s0_axi_awvalid,
      O => \axi_awready0__0\
    );
axi_awready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_awready0__0\,
      Q => \^s_axi_awready\,
      R => u_counter_n_0
    );
axi_bvalid_i_1: unisim.vcomponents.LUT6
    generic map(
      INIT => X"0000FFFF80008000"
    )
        port map (
      I0 => \^s_axi_awready\,
      I1 => \^s0_axi_wready\,
      I2 => s0_axi_awvalid,
      I3 => s0_axi_wvalid,
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
      R => u_counter_n_0
    );
\axi_rdata[0]_i_1\: unisim.vcomponents.LUT5
    generic map(
      INIT => X"30BB3088"
    )
        port map (
      I0 => \^stop\,
      I1 => axi_araddr(2),
      I2 => cnt_fx_reg(0),
      I3 => axi_araddr(3),
      I4 => \^start\,
      O => reg_data_out(0)
    );
\axi_rdata[10]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(10),
      I2 => axi_araddr(3),
      O => reg_data_out(10)
    );
\axi_rdata[11]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(11),
      I2 => axi_araddr(3),
      O => reg_data_out(11)
    );
\axi_rdata[12]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(12),
      I2 => axi_araddr(3),
      O => reg_data_out(12)
    );
\axi_rdata[13]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(13),
      I2 => axi_araddr(2),
      O => reg_data_out(13)
    );
\axi_rdata[14]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(14),
      I2 => axi_araddr(2),
      O => reg_data_out(14)
    );
\axi_rdata[15]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(15),
      I2 => axi_araddr(3),
      O => reg_data_out(15)
    );
\axi_rdata[16]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(16),
      I2 => axi_araddr(3),
      O => reg_data_out(16)
    );
\axi_rdata[17]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(17),
      I2 => axi_araddr(3),
      O => reg_data_out(17)
    );
\axi_rdata[18]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(18),
      I2 => axi_araddr(2),
      O => reg_data_out(18)
    );
\axi_rdata[19]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(19),
      I2 => axi_araddr(2),
      O => reg_data_out(19)
    );
\axi_rdata[1]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(1),
      I2 => axi_araddr(2),
      O => reg_data_out(1)
    );
\axi_rdata[20]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(20),
      I2 => axi_araddr(2),
      O => reg_data_out(20)
    );
\axi_rdata[21]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(21),
      I2 => axi_araddr(2),
      O => reg_data_out(21)
    );
\axi_rdata[22]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(22),
      I2 => axi_araddr(3),
      O => reg_data_out(22)
    );
\axi_rdata[23]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(23),
      I2 => axi_araddr(2),
      O => reg_data_out(23)
    );
\axi_rdata[24]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(24),
      I2 => axi_araddr(3),
      O => reg_data_out(24)
    );
\axi_rdata[25]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(25),
      I2 => axi_araddr(3),
      O => reg_data_out(25)
    );
\axi_rdata[26]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(26),
      I2 => axi_araddr(3),
      O => reg_data_out(26)
    );
\axi_rdata[27]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(27),
      I2 => axi_araddr(3),
      O => reg_data_out(27)
    );
\axi_rdata[28]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(28),
      I2 => axi_araddr(3),
      O => reg_data_out(28)
    );
\axi_rdata[29]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(29),
      I2 => axi_araddr(3),
      O => reg_data_out(29)
    );
\axi_rdata[2]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(2),
      I2 => axi_araddr(2),
      O => reg_data_out(2)
    );
\axi_rdata[3]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(3),
      I2 => axi_araddr(2),
      O => reg_data_out(3)
    );
\axi_rdata[4]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(4),
      I2 => axi_araddr(3),
      O => reg_data_out(4)
    );
\axi_rdata[5]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(5),
      I2 => axi_araddr(3),
      O => reg_data_out(5)
    );
\axi_rdata[6]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(6),
      I2 => axi_araddr(2),
      O => reg_data_out(6)
    );
\axi_rdata[7]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(7),
      I2 => axi_araddr(3),
      O => reg_data_out(7)
    );
\axi_rdata[8]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"A8"
    )
        port map (
      I0 => axi_araddr(3),
      I1 => cnt_fx_reg(8),
      I2 => axi_araddr(2),
      O => reg_data_out(8)
    );
\axi_rdata[9]_i_1\: unisim.vcomponents.LUT3
    generic map(
      INIT => X"40"
    )
        port map (
      I0 => axi_araddr(2),
      I1 => cnt_fx_reg(9),
      I2 => axi_araddr(3),
      O => reg_data_out(9)
    );
\axi_rdata_reg[0]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(0),
      Q => s0_axi_rdata(0),
      R => u_counter_n_0
    );
\axi_rdata_reg[10]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(10),
      Q => s0_axi_rdata(10),
      R => u_counter_n_0
    );
\axi_rdata_reg[11]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(11),
      Q => s0_axi_rdata(11),
      R => u_counter_n_0
    );
\axi_rdata_reg[12]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(12),
      Q => s0_axi_rdata(12),
      R => u_counter_n_0
    );
\axi_rdata_reg[13]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(13),
      Q => s0_axi_rdata(13),
      R => u_counter_n_0
    );
\axi_rdata_reg[14]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(14),
      Q => s0_axi_rdata(14),
      R => u_counter_n_0
    );
\axi_rdata_reg[15]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(15),
      Q => s0_axi_rdata(15),
      R => u_counter_n_0
    );
\axi_rdata_reg[16]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(16),
      Q => s0_axi_rdata(16),
      R => u_counter_n_0
    );
\axi_rdata_reg[17]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(17),
      Q => s0_axi_rdata(17),
      R => u_counter_n_0
    );
\axi_rdata_reg[18]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(18),
      Q => s0_axi_rdata(18),
      R => u_counter_n_0
    );
\axi_rdata_reg[19]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(19),
      Q => s0_axi_rdata(19),
      R => u_counter_n_0
    );
\axi_rdata_reg[1]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(1),
      Q => s0_axi_rdata(1),
      R => u_counter_n_0
    );
\axi_rdata_reg[20]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(20),
      Q => s0_axi_rdata(20),
      R => u_counter_n_0
    );
\axi_rdata_reg[21]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(21),
      Q => s0_axi_rdata(21),
      R => u_counter_n_0
    );
\axi_rdata_reg[22]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(22),
      Q => s0_axi_rdata(22),
      R => u_counter_n_0
    );
\axi_rdata_reg[23]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(23),
      Q => s0_axi_rdata(23),
      R => u_counter_n_0
    );
\axi_rdata_reg[24]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(24),
      Q => s0_axi_rdata(24),
      R => u_counter_n_0
    );
\axi_rdata_reg[25]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(25),
      Q => s0_axi_rdata(25),
      R => u_counter_n_0
    );
\axi_rdata_reg[26]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(26),
      Q => s0_axi_rdata(26),
      R => u_counter_n_0
    );
\axi_rdata_reg[27]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(27),
      Q => s0_axi_rdata(27),
      R => u_counter_n_0
    );
\axi_rdata_reg[28]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(28),
      Q => s0_axi_rdata(28),
      R => u_counter_n_0
    );
\axi_rdata_reg[29]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(29),
      Q => s0_axi_rdata(29),
      R => u_counter_n_0
    );
\axi_rdata_reg[2]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(2),
      Q => s0_axi_rdata(2),
      R => u_counter_n_0
    );
\axi_rdata_reg[3]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(3),
      Q => s0_axi_rdata(3),
      R => u_counter_n_0
    );
\axi_rdata_reg[4]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(4),
      Q => s0_axi_rdata(4),
      R => u_counter_n_0
    );
\axi_rdata_reg[5]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(5),
      Q => s0_axi_rdata(5),
      R => u_counter_n_0
    );
\axi_rdata_reg[6]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(6),
      Q => s0_axi_rdata(6),
      R => u_counter_n_0
    );
\axi_rdata_reg[7]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(7),
      Q => s0_axi_rdata(7),
      R => u_counter_n_0
    );
\axi_rdata_reg[8]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(8),
      Q => s0_axi_rdata(8),
      R => u_counter_n_0
    );
\axi_rdata_reg[9]\: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => \slv_reg_rden__0\,
      D => reg_data_out(9),
      Q => s0_axi_rdata(9),
      R => u_counter_n_0
    );
axi_rvalid_i_1: unisim.vcomponents.LUT4
    generic map(
      INIT => X"08F8"
    )
        port map (
      I0 => \^s_axi_arready\,
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
      R => u_counter_n_0
    );
axi_wready0: unisim.vcomponents.LUT4
    generic map(
      INIT => X"2000"
    )
        port map (
      I0 => aw_en_reg_n_0,
      I1 => \^s0_axi_wready\,
      I2 => s0_axi_wvalid,
      I3 => s0_axi_awvalid,
      O => \axi_wready0__0\
    );
axi_wready_reg: unisim.vcomponents.FDRE
     port map (
      C => s0_axi_aclk,
      CE => '1',
      D => \axi_wready0__0\,
      Q => \^s0_axi_wready\,
      R => u_counter_n_0
    );
slv_reg_rden: unisim.vcomponents.LUT3
    generic map(
      INIT => X"20"
    )
        port map (
      I0 => s0_axi_arvalid,
      I1 => \^s0_axi_rvalid\,
      I2 => \^s_axi_arready\,
      O => \slv_reg_rden__0\
    );
u_counter: entity work.design_1_count_ip_0_2_counter
     port map (
      Q(29 downto 0) => cnt_fx_reg(29 downto 0),
      gate_out => gate_out,
      input_fx => input_fx,
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_aresetn => s0_axi_aresetn,
      s0_axi_aresetn_0 => u_counter_n_0,
      start => \^start\,
      stop => \^stop\
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ip_0_2_count_ip_v1_0 is
  port (
    start : out STD_LOGIC;
    stop : out STD_LOGIC;
    gate_out : out STD_LOGIC;
    s0_axi_wready : out STD_LOGIC;
    S_AXI_AWREADY : out STD_LOGIC;
    S_AXI_ARREADY : out STD_LOGIC;
    s0_axi_rdata : out STD_LOGIC_VECTOR ( 29 downto 0 );
    s0_axi_rvalid : out STD_LOGIC;
    s0_axi_bvalid : out STD_LOGIC;
    s0_axi_aclk : in STD_LOGIC;
    input_fx : in STD_LOGIC;
    s0_axi_araddr : in STD_LOGIC_VECTOR ( 1 downto 0 );
    s0_axi_arvalid : in STD_LOGIC;
    s0_axi_wvalid : in STD_LOGIC;
    s0_axi_awvalid : in STD_LOGIC;
    s0_axi_aresetn : in STD_LOGIC;
    s0_axi_bready : in STD_LOGIC;
    s0_axi_rready : in STD_LOGIC
  );
  attribute ORIG_REF_NAME : string;
  attribute ORIG_REF_NAME of design_1_count_ip_0_2_count_ip_v1_0 : entity is "count_ip_v1_0";
end design_1_count_ip_0_2_count_ip_v1_0;

architecture STRUCTURE of design_1_count_ip_0_2_count_ip_v1_0 is
begin
count_ip_v1_0_S0_AXI_inst: entity work.design_1_count_ip_0_2_count_ip_v1_0_S0_AXI
     port map (
      S_AXI_ARREADY => S_AXI_ARREADY,
      S_AXI_AWREADY => S_AXI_AWREADY,
      gate_out => gate_out,
      input_fx => input_fx,
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_araddr(1 downto 0) => s0_axi_araddr(1 downto 0),
      s0_axi_aresetn => s0_axi_aresetn,
      s0_axi_arvalid => s0_axi_arvalid,
      s0_axi_awvalid => s0_axi_awvalid,
      s0_axi_bready => s0_axi_bready,
      s0_axi_bvalid => s0_axi_bvalid,
      s0_axi_rdata(29 downto 0) => s0_axi_rdata(29 downto 0),
      s0_axi_rready => s0_axi_rready,
      s0_axi_rvalid => s0_axi_rvalid,
      s0_axi_wready => s0_axi_wready,
      s0_axi_wvalid => s0_axi_wvalid,
      start => start,
      stop => stop
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity design_1_count_ip_0_2 is
  port (
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
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of design_1_count_ip_0_2 : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of design_1_count_ip_0_2 : entity is "design_1_count_ip_0_2,count_ip_v1_0,{}";
  attribute DowngradeIPIdentifiedWarnings : string;
  attribute DowngradeIPIdentifiedWarnings of design_1_count_ip_0_2 : entity is "yes";
  attribute X_CORE_INFO : string;
  attribute X_CORE_INFO of design_1_count_ip_0_2 : entity is "count_ip_v1_0,Vivado 2020.2";
end design_1_count_ip_0_2;

architecture STRUCTURE of design_1_count_ip_0_2 is
  signal \<const0>\ : STD_LOGIC;
  signal \^s0_axi_rdata\ : STD_LOGIC_VECTOR ( 29 downto 0 );
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
  s0_axi_rdata(31) <= \<const0>\;
  s0_axi_rdata(30) <= \<const0>\;
  s0_axi_rdata(29 downto 0) <= \^s0_axi_rdata\(29 downto 0);
  s0_axi_rresp(1) <= \<const0>\;
  s0_axi_rresp(0) <= \<const0>\;
GND: unisim.vcomponents.GND
     port map (
      G => \<const0>\
    );
inst: entity work.design_1_count_ip_0_2_count_ip_v1_0
     port map (
      S_AXI_ARREADY => s0_axi_arready,
      S_AXI_AWREADY => s0_axi_awready,
      gate_out => gate_out,
      input_fx => input_fx,
      s0_axi_aclk => s0_axi_aclk,
      s0_axi_araddr(1 downto 0) => s0_axi_araddr(3 downto 2),
      s0_axi_aresetn => s0_axi_aresetn,
      s0_axi_arvalid => s0_axi_arvalid,
      s0_axi_awvalid => s0_axi_awvalid,
      s0_axi_bready => s0_axi_bready,
      s0_axi_bvalid => s0_axi_bvalid,
      s0_axi_rdata(29 downto 0) => \^s0_axi_rdata\(29 downto 0),
      s0_axi_rready => s0_axi_rready,
      s0_axi_rvalid => s0_axi_rvalid,
      s0_axi_wready => s0_axi_wready,
      s0_axi_wvalid => s0_axi_wvalid,
      start => start,
      stop => stop
    );
end STRUCTURE;
