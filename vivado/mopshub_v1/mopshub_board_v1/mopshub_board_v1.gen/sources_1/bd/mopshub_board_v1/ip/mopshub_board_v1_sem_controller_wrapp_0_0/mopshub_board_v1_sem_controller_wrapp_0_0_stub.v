// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 14:33:35 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub/Vivado/mopshub_v1/mopshub_board_v1/mopshub_board_v1.gen/sources_1/bd/mopshub_board_v1/ip/mopshub_board_v1_sem_controller_wrapp_0_0/mopshub_board_v1_sem_controller_wrapp_0_0_stub.v
// Design      : mopshub_board_v1_sem_controller_wrapp_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "sem_controller_wrapper,Vivado 2020.2" *)
module mopshub_board_v1_sem_controller_wrapp_0_0(reset, clk_icap, status_heartbeat, 
  status_initialization, status_observation, status_correction, status_classification, 
  status_injection, status_essential, status_uncorrectable)
/* synthesis syn_black_box black_box_pad_pin="reset,clk_icap,status_heartbeat,status_initialization,status_observation,status_correction,status_classification,status_injection,status_essential,status_uncorrectable" */;
  input reset;
  input clk_icap;
  output status_heartbeat;
  output status_initialization;
  output status_observation;
  output status_correction;
  output status_classification;
  output status_injection;
  output status_essential;
  output status_uncorrectable;
endmodule
