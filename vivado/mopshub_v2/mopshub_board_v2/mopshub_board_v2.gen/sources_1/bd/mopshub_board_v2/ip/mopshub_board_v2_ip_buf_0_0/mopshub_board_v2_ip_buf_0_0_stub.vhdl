-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Wed Jun 12 23:37:15 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_v2/mopshub_board_v2/mopshub_board_v2.gen/sources_1/bd/mopshub_board_v2/ip/mopshub_board_v2_ip_buf_0_0/mopshub_board_v2_ip_buf_0_0_stub.vhdl
-- Design      : mopshub_board_v2_ip_buf_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_board_v2_ip_buf_0_0 is
  Port ( 
    input_wire : in STD_LOGIC;
    output_wire : out STD_LOGIC
  );

end mopshub_board_v2_ip_buf_0_0;

architecture stub of mopshub_board_v2_ip_buf_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "input_wire,output_wire";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "ip_buf,Vivado 2020.2";
begin
end;
