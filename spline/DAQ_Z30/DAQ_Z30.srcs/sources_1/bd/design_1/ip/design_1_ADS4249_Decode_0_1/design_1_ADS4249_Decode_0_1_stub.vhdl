-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (win64) Build 3064766 Wed Nov 18 09:12:45 MST 2020
-- Date        : Sat Dec 21 18:47:20 2024
-- Host        : DESKTOP-V402F34 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               d:/Git/spline/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_ADS4249_Decode_0_1/design_1_ADS4249_Decode_0_1_stub.vhdl
-- Design      : design_1_ADS4249_Decode_0_1
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_ADS4249_Decode_0_1 is
  Port ( 
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

end design_1_ADS4249_Decode_0_1;

architecture stub of design_1_ADS4249_Decode_0_1 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clkinp,da0p,da0n,da2p,da2n,da4p,da4n,da6p,da6n,da8p,da8n,da10p,da10n,da12p,da12n,db0p,db0n,db2p,db2n,db4p,db4n,db6p,db6n,db8p,db8n,db10p,db10n,db12p,db12n,daout[13:0],dbout[13:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ADS4249_Decode,Vivado 2020.2";
begin
end;
