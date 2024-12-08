-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.1 (win64) Build 2188600 Wed Apr  4 18:40:38 MDT 2018
-- Date        : Sat Dec  7 14:48:38 2024
-- Host        : Asus-Vivobook running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub
--               c:/Users/chris/Documents/FPGA/TP_contador_uart/TP_counter_uart_ip/TP_counter_uart_ip/TP_counter_uart_ip.srcs/sources_1/bd/counter_system/ip/counter_system_vio_0_0/counter_system_vio_0_0_stub.vhdl
-- Design      : counter_system_vio_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z010clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity counter_system_vio_0_0 is
  Port ( 
    clk : in STD_LOGIC;
    probe_in0 : in STD_LOGIC_VECTOR ( 7 downto 0 );
    probe_in1 : in STD_LOGIC_VECTOR ( 7 downto 0 )
  );

end counter_system_vio_0_0;

architecture stub of counter_system_vio_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe_in0[7:0],probe_in1[7:0]";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "vio,Vivado 2018.1";
begin
end;
