-- Copyright 1986-2017 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2017.4 (win64) Build 2086221 Fri Dec 15 20:55:39 MST 2017
-- Date        : Thu Jan  4 15:38:56 2024
-- Host        : Lenovo running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/12554/Desktop/DAQ/DAQ_Z30/DAQ_Z30.srcs/sources_1/bd/design_1/ip/design_1_mj_not_0_0/design_1_mj_not_0_0_stub.vhdl
-- Design      : design_1_mj_not_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z030ffg676-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity design_1_mj_not_0_0 is
  Port ( 
    in1 : in STD_LOGIC;
    out1 : out STD_LOGIC
  );

end design_1_mj_not_0_0;

architecture stub of design_1_mj_not_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "in1,out1";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "mj_not,Vivado 2017.4";
begin
end;