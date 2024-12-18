-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Tue Dec 17 21:46:06 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_CNTtest_0_1_stub.vhdl
-- Design      : design_1_CNTtest_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
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

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "sys_clk,sys_rst_n,IN_CNTA[31:0],IN_CNTB[31:0],IN_CNTC[31:0],IN_STOP,IN_START,IN_CNTEN,OUT_CNTA[31:0],OUT_CNTB[31:0],OUT_CNTC[31:0],OUT_STOP,OUT_START,OUT_CNTEN,SIGN_CNTA,SIGN_CNTB,SIGN_CNTC";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "CNTtest,Vivado 2020.2";
begin
end;
