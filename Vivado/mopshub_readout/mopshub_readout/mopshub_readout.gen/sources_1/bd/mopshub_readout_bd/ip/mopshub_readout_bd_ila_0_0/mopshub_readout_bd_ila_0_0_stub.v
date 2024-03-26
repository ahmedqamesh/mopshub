// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 12:57:12 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_ila_0_0/mopshub_readout_bd_ila_0_0_stub.v
// Design      : mopshub_readout_bd_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "ila,Vivado 2020.2" *)
module mopshub_readout_bd_ila_0_0(clk, probe0, probe1, probe2, probe3, probe4, probe5)
/* synthesis syn_black_box black_box_pad_pin="clk,probe0[7:0],probe1[7:0],probe2[7:0],probe3[7:0],probe4[7:0],probe5[7:0]" */;
  input clk;
  input [7:0]probe0;
  input [7:0]probe1;
  input [7:0]probe2;
  input [7:0]probe3;
  input [7:0]probe4;
  input [7:0]probe5;
endmodule
