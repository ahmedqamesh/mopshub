// (c) Copyright 1995-2024 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


// IP VLNV: xilinx.com:module_ref:mopshub_top_board_16bus:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mopshub_board_v1_mopshub_top_board_16_0_0 (
  clk_40,
  clk_elink,
  clk_m,
  clk_uart,
  in_rx_serial,
  locked,
  miso_c,
  miso_m,
  mopshub_id,
  reset,
  rx0,
  rx1,
  rx10,
  rx11,
  rx12,
  rx13,
  rx14,
  rx15,
  rx2,
  rx3,
  rx4,
  rx5,
  rx6,
  rx7,
  rx8,
  rx9,
  rx_elink2bit,
  shift_clk,
  shift_data,
  shift_mode,
  clk_out_n,
  clk_out_p,
  cs_c0,
  cs_c1,
  cs_c10,
  cs_c11,
  cs_c12,
  cs_c13,
  cs_c14,
  cs_c15,
  cs_c2,
  cs_c3,
  cs_c4,
  cs_c5,
  cs_c6,
  cs_c7,
  cs_c8,
  cs_c9,
  cs_m0,
  cs_m1,
  cs_m10,
  cs_m11,
  cs_m12,
  cs_m13,
  cs_m14,
  cs_m15,
  cs_m2,
  cs_m3,
  cs_m4,
  cs_m5,
  cs_m6,
  cs_m7,
  cs_m8,
  cs_m9,
  irq_can_rec,
  irq_can_tra,
  irq_elink_rec,
  irq_elink_tra,
  mosi_c,
  mosi_m,
  out_tx_serial,
  rx_data_rdy,
  sck_c,
  sck_m,
  simple_out,
  tmr_out,
  tx0,
  tx1,
  tx10,
  tx11,
  tx12,
  tx13,
  tx14,
  tx15,
  tx2,
  tx3,
  tx4,
  tx5,
  tx6,
  tx7,
  tx8,
  tx9,
  tx_data_rdy,
  tx_elink2bit
);

input wire clk_40;
input wire clk_elink;
input wire clk_m;
input wire clk_uart;
input wire in_rx_serial;
input wire locked;
input wire miso_c;
input wire miso_m;
input wire [3 : 0] mopshub_id;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire rx0;
input wire rx1;
input wire rx10;
input wire rx11;
input wire rx12;
input wire rx13;
input wire rx14;
input wire rx15;
input wire rx2;
input wire rx3;
input wire rx4;
input wire rx5;
input wire rx6;
input wire rx7;
input wire rx8;
input wire rx9;
input wire [1 : 0] rx_elink2bit;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME shift_clk, ASSOCIATED_RESET reset, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.000, CLK_DOMAIN mopshub_board_v1_shift_clk_0, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 shift_clk CLK" *)
input wire shift_clk;
input wire shift_data;
input wire shift_mode;
output wire clk_out_n;
output wire clk_out_p;
output wire cs_c0;
output wire cs_c1;
output wire cs_c10;
output wire cs_c11;
output wire cs_c12;
output wire cs_c13;
output wire cs_c14;
output wire cs_c15;
output wire cs_c2;
output wire cs_c3;
output wire cs_c4;
output wire cs_c5;
output wire cs_c6;
output wire cs_c7;
output wire cs_c8;
output wire cs_c9;
output wire cs_m0;
output wire cs_m1;
output wire cs_m10;
output wire cs_m11;
output wire cs_m12;
output wire cs_m13;
output wire cs_m14;
output wire cs_m15;
output wire cs_m2;
output wire cs_m3;
output wire cs_m4;
output wire cs_m5;
output wire cs_m6;
output wire cs_m7;
output wire cs_m8;
output wire cs_m9;
output wire irq_can_rec;
output wire irq_can_tra;
output wire irq_elink_rec;
output wire irq_elink_tra;
output wire mosi_c;
output wire mosi_m;
output wire out_tx_serial;
output wire rx_data_rdy;
output wire sck_c;
output wire sck_m;
output wire simple_out;
output wire tmr_out;
output wire tx0;
output wire tx1;
output wire tx10;
output wire tx11;
output wire tx12;
output wire tx13;
output wire tx14;
output wire tx15;
output wire tx2;
output wire tx3;
output wire tx4;
output wire tx5;
output wire tx6;
output wire tx7;
output wire tx8;
output wire tx9;
output wire tx_data_rdy;
output wire [1 : 0] tx_elink2bit;

  mopshub_top_board_16bus inst (
    .clk_40(clk_40),
    .clk_elink(clk_elink),
    .clk_m(clk_m),
    .clk_uart(clk_uart),
    .in_rx_serial(in_rx_serial),
    .locked(locked),
    .miso_c(miso_c),
    .miso_m(miso_m),
    .mopshub_id(mopshub_id),
    .reset(reset),
    .rx0(rx0),
    .rx1(rx1),
    .rx10(rx10),
    .rx11(rx11),
    .rx12(rx12),
    .rx13(rx13),
    .rx14(rx14),
    .rx15(rx15),
    .rx2(rx2),
    .rx3(rx3),
    .rx4(rx4),
    .rx5(rx5),
    .rx6(rx6),
    .rx7(rx7),
    .rx8(rx8),
    .rx9(rx9),
    .rx_elink2bit(rx_elink2bit),
    .shift_clk(shift_clk),
    .shift_data(shift_data),
    .shift_mode(shift_mode),
    .clk_out_n(clk_out_n),
    .clk_out_p(clk_out_p),
    .cs_c0(cs_c0),
    .cs_c1(cs_c1),
    .cs_c10(cs_c10),
    .cs_c11(cs_c11),
    .cs_c12(cs_c12),
    .cs_c13(cs_c13),
    .cs_c14(cs_c14),
    .cs_c15(cs_c15),
    .cs_c2(cs_c2),
    .cs_c3(cs_c3),
    .cs_c4(cs_c4),
    .cs_c5(cs_c5),
    .cs_c6(cs_c6),
    .cs_c7(cs_c7),
    .cs_c8(cs_c8),
    .cs_c9(cs_c9),
    .cs_m0(cs_m0),
    .cs_m1(cs_m1),
    .cs_m10(cs_m10),
    .cs_m11(cs_m11),
    .cs_m12(cs_m12),
    .cs_m13(cs_m13),
    .cs_m14(cs_m14),
    .cs_m15(cs_m15),
    .cs_m2(cs_m2),
    .cs_m3(cs_m3),
    .cs_m4(cs_m4),
    .cs_m5(cs_m5),
    .cs_m6(cs_m6),
    .cs_m7(cs_m7),
    .cs_m8(cs_m8),
    .cs_m9(cs_m9),
    .irq_can_rec(irq_can_rec),
    .irq_can_tra(irq_can_tra),
    .irq_elink_rec(irq_elink_rec),
    .irq_elink_tra(irq_elink_tra),
    .mosi_c(mosi_c),
    .mosi_m(mosi_m),
    .out_tx_serial(out_tx_serial),
    .rx_data_rdy(rx_data_rdy),
    .sck_c(sck_c),
    .sck_m(sck_m),
    .simple_out(simple_out),
    .tmr_out(tmr_out),
    .tx0(tx0),
    .tx1(tx1),
    .tx10(tx10),
    .tx11(tx11),
    .tx12(tx12),
    .tx13(tx13),
    .tx14(tx14),
    .tx15(tx15),
    .tx2(tx2),
    .tx3(tx3),
    .tx4(tx4),
    .tx5(tx5),
    .tx6(tx6),
    .tx7(tx7),
    .tx8(tx8),
    .tx9(tx9),
    .tx_data_rdy(tx_data_rdy),
    .tx_elink2bit(tx_elink2bit)
  );
endmodule
