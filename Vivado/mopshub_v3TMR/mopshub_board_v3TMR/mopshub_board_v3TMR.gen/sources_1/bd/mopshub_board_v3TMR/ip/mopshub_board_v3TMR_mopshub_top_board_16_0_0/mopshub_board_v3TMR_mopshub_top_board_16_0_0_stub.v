// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jun 13 01:06:00 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub
//               /home/dcs/git/mopshub/Vivado/mopshub_v3TMR/mopshub_board_v3TMR/mopshub_board_v3TMR.gen/sources_1/bd/mopshub_board_v3TMR/ip/mopshub_board_v3TMR_mopshub_top_board_16_0_0/mopshub_board_v3TMR_mopshub_top_board_16_0_0_stub.v
// Design      : mopshub_board_v3TMR_mopshub_top_board_16_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7a200tfbg484-2
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mopshub_top_board_16busTMR,Vivado 2020.2" *)
module mopshub_board_v3TMR_mopshub_top_board_16_0_0(clk_40, clk_elink, clk_m, clk_uart, in_rx_serial, 
  locked, miso_c, miso_m, mopshub_id, reset, rx0, rx1, rx10, rx11, rx12, rx13, rx14, rx15, rx2, rx3, rx4, rx5, rx6, 
  rx7, rx8, rx9, rx_elink2bit, shift_clk, shift_data, shift_mode, clk_out_n, clk_out_p, cs_c0, cs_c1, 
  cs_c10, cs_c11, cs_c12, cs_c13, cs_c14, cs_c15, cs_c2, cs_c3, cs_c4, cs_c5, cs_c6, cs_c7, cs_c8, cs_c9, 
  cs_m0, cs_m1, cs_m10, cs_m11, cs_m12, cs_m13, cs_m14, cs_m15, cs_m2, cs_m3, cs_m4, cs_m5, cs_m6, cs_m7, 
  cs_m8, cs_m9, irq_can_rec, irq_can_tra, irq_elink_rec, irq_elink_tra, mosi_c, mosi_m, 
  out_tx_serial, rx_data_rdy, sck_c, sck_m, simple_out, tmr_out, tx0, tx1, tx10, tx11, tx12, tx13, tx14, 
  tx15, tx2, tx3, tx4, tx5, tx6, tx7, tx8, tx9, tx_data_rdy, tx_elink2bit)
/* synthesis syn_black_box black_box_pad_pin="clk_40,clk_elink,clk_m,clk_uart,in_rx_serial,locked,miso_c,miso_m,mopshub_id[3:0],reset,rx0,rx1,rx10,rx11,rx12,rx13,rx14,rx15,rx2,rx3,rx4,rx5,rx6,rx7,rx8,rx9,rx_elink2bit[1:0],shift_clk,shift_data,shift_mode,clk_out_n,clk_out_p,cs_c0,cs_c1,cs_c10,cs_c11,cs_c12,cs_c13,cs_c14,cs_c15,cs_c2,cs_c3,cs_c4,cs_c5,cs_c6,cs_c7,cs_c8,cs_c9,cs_m0,cs_m1,cs_m10,cs_m11,cs_m12,cs_m13,cs_m14,cs_m15,cs_m2,cs_m3,cs_m4,cs_m5,cs_m6,cs_m7,cs_m8,cs_m9,irq_can_rec,irq_can_tra,irq_elink_rec,irq_elink_tra,mosi_c,mosi_m,out_tx_serial,rx_data_rdy,sck_c,sck_m,simple_out,tmr_out,tx0,tx1,tx10,tx11,tx12,tx13,tx14,tx15,tx2,tx3,tx4,tx5,tx6,tx7,tx8,tx9,tx_data_rdy,tx_elink2bit[1:0]" */;
  input clk_40;
  input clk_elink;
  input clk_m;
  input clk_uart;
  input in_rx_serial;
  input locked;
  input miso_c;
  input miso_m;
  input [3:0]mopshub_id;
  input reset;
  input rx0;
  input rx1;
  input rx10;
  input rx11;
  input rx12;
  input rx13;
  input rx14;
  input rx15;
  input rx2;
  input rx3;
  input rx4;
  input rx5;
  input rx6;
  input rx7;
  input rx8;
  input rx9;
  input [1:0]rx_elink2bit;
  input shift_clk;
  input shift_data;
  input shift_mode;
  output clk_out_n;
  output clk_out_p;
  output cs_c0;
  output cs_c1;
  output cs_c10;
  output cs_c11;
  output cs_c12;
  output cs_c13;
  output cs_c14;
  output cs_c15;
  output cs_c2;
  output cs_c3;
  output cs_c4;
  output cs_c5;
  output cs_c6;
  output cs_c7;
  output cs_c8;
  output cs_c9;
  output cs_m0;
  output cs_m1;
  output cs_m10;
  output cs_m11;
  output cs_m12;
  output cs_m13;
  output cs_m14;
  output cs_m15;
  output cs_m2;
  output cs_m3;
  output cs_m4;
  output cs_m5;
  output cs_m6;
  output cs_m7;
  output cs_m8;
  output cs_m9;
  output irq_can_rec;
  output irq_can_tra;
  output irq_elink_rec;
  output irq_elink_tra;
  output mosi_c;
  output mosi_m;
  output out_tx_serial;
  output rx_data_rdy;
  output sck_c;
  output sck_m;
  output simple_out;
  output tmr_out;
  output tx0;
  output tx1;
  output tx10;
  output tx11;
  output tx12;
  output tx13;
  output tx14;
  output tx15;
  output tx2;
  output tx3;
  output tx4;
  output tx5;
  output tx6;
  output tx7;
  output tx8;
  output tx9;
  output tx_data_rdy;
  output [1:0]tx_elink2bit;
endmodule
