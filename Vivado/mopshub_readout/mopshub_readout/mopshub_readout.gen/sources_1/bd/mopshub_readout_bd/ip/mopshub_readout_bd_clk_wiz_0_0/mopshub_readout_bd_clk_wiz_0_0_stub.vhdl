-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 12:57:30 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_clk_wiz_0_0/mopshub_readout_bd_clk_wiz_0_0_stub.vhdl
-- Design      : mopshub_readout_bd_clk_wiz_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xczu9eg-ffvb1156-2-e
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_readout_bd_clk_wiz_0_0 is
  Port ( 
    clk_tx : out STD_LOGIC;
    clk_rx : out STD_LOGIC;
    clk_elink : out STD_LOGIC;
    clk_m : out STD_LOGIC;
    clk_in1_p : in STD_LOGIC;
    clk_in1_n : in STD_LOGIC
  );

end mopshub_readout_bd_clk_wiz_0_0;

architecture stub of mopshub_readout_bd_clk_wiz_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk_tx,clk_rx,clk_elink,clk_m,clk_in1_p,clk_in1_n";
begin
end;
