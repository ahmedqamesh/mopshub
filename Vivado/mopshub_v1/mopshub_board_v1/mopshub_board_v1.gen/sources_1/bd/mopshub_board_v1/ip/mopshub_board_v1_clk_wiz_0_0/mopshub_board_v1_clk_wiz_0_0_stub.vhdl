-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 14:10:52 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_v1/mopshub_board_v1/mopshub_board_v1.gen/sources_1/bd/mopshub_board_v1/ip/mopshub_board_v1_clk_wiz_0_0/mopshub_board_v1_clk_wiz_0_0_stub.vhdl
-- Design      : mopshub_board_v1_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_board_v1_clk_wiz_0_0 is
  Port ( 
    clk_100 : out STD_LOGIC;
    clk_in1 : in STD_LOGIC
  );

end mopshub_board_v1_clk_wiz_0_0;

architecture stub of mopshub_board_v1_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_100,clk_in1";
begin
end;