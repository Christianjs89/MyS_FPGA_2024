-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Tue Nov 26 19:18:11 2024
-- Host        : Asus-Vivobook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               C:/Users/chris/Documents/FPGA/lab3/lab3.srcs/sources_1/bd/system/ip/system_vio_0_0/system_vio_0_0_stub.vhdl
-- Design      : system_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity system_vio_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out0 : out STD_LOGIC_VECTOR ( 3 downto 0 );
    probe_out1 : out STD_LOGIC_VECTOR ( 1 downto 0 )
  );

end system_vio_0_0;

architecture stub of system_vio_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[3:0],probe_out0[3:0],probe_out1[1:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2018.1";
begin
end;
