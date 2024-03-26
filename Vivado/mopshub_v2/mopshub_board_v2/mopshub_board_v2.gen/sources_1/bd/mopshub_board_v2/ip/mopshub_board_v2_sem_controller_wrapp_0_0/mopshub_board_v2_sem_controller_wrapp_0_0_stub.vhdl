-- Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
-- Date        : Tue Mar 26 12:29:41 2024
-- Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
-- Command     : write_vhdl -force -mode synth_stub
--               /home/dcs/git/mopshub/Vivado/mopshub_v2/mopshub_board_v2/mopshub_board_v2.gen/sources_1/bd/mopshub_board_v2/ip/mopshub_board_v2_sem_controller_wrapp_0_0/mopshub_board_v2_sem_controller_wrapp_0_0_stub.vhdl
-- Design      : mopshub_board_v2_sem_controller_wrapp_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7a200tfbg484-2
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity mopshub_board_v2_sem_controller_wrapp_0_0 is
  Port ( 
    reset : in STD_LOGIC;
    clk_icap : in STD_LOGIC;
    status_heartbeat : out STD_LOGIC;
    status_initialization : out STD_LOGIC;
    status_observation : out STD_LOGIC;
    status_correction : out STD_LOGIC;
    status_classification : out STD_LOGIC;
    status_injection : out STD_LOGIC;
    status_essential : out STD_LOGIC;
    status_uncorrectable : out STD_LOGIC
  );

end mopshub_board_v2_sem_controller_wrapp_0_0;

architecture stub of mopshub_board_v2_sem_controller_wrapp_0_0 is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "reset,clk_icap,status_heartbeat,status_initialization,status_observation,status_correction,status_classification,status_injection,status_essential,status_uncorrectable";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "sem_controller_wrapper,Vivado 2020.2";
begin
end;
