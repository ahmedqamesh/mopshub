// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 12:33:35 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub/Vivado/mopshub_v2/mopshub_board_v2/mopshub_board_v2.gen/sources_1/bd/mopshub_board_v2/ip/mopshub_board_v2_clk_wiz_s_0/mopshub_board_v2_clk_wiz_s_0_stub.v
// Design      : mopshub_board_v2_clk_wiz_s_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
module mopshub_board_v2_clk_wiz_s_0(clk_40, clk_m, clk_uart, locked, clk_in1)
/* synthesis syn_black_box black_box_pad_pin="clk_40,clk_m,clk_uart,locked,clk_in1" */;
  output clk_40;
  output clk_m;
  output clk_uart;
  output locked;
  input clk_in1;
endmodule