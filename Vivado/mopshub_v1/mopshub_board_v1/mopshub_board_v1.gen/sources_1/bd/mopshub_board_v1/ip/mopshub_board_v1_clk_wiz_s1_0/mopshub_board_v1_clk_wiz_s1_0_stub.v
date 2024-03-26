// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 14:11:57 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub/Vivado/mopshub_v1/mopshub_board_v1/mopshub_board_v1.gen/sources_1/bd/mopshub_board_v1/ip/mopshub_board_v1_clk_wiz_s1_0/mopshub_board_v1_clk_wiz_s1_0_stub.v
// Design      : mopshub_board_v1_clk_wiz_s1_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mopshub_board_v1_clk_wiz_s1_0(clk_40, clk_m, clk_rx, clk_tx, clk_elink, clk_uart, 
  locked, clk_in1_p, clk_in1_n)
/* synthesis syn_black_box black_box_pad_pin="clk_40,clk_m,clk_rx,clk_tx,clk_elink,clk_uart,locked,clk_in1_p,clk_in1_n" */;
  output clk_40;
  output clk_m;
  output clk_rx;
  output clk_tx;
  output clk_elink;
  output clk_uart;
  output locked;
  input clk_in1_p;
  input clk_in1_n;
endmodule
