//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Jun 13 00:59:41 2024
//Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
//Command     : generate_target mopshub_board_v3TMR_wrapper.bd
//Design      : mopshub_board_v3TMR_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mopshub_board_v3TMR_wrapper
   (WDI_0,
    clk_ext_clk_n,
    clk_ext_clk_p,
    clk_out_n_0,
    clk_out_p_0,
    clk_sys,
    cs_c0_0,
    cs_c10_0,
    cs_c11_0,
    cs_c12_0,
    cs_c13_0,
    cs_c14_0,
    cs_c15_0,
    cs_c1_0,
    cs_c2_0,
    cs_c3_0,
    cs_c4_0,
    cs_c5_0,
    cs_c6_0,
    cs_c7_0,
    cs_c8_0,
    cs_c9_0,
    cs_m0_0,
    cs_m10_0,
    cs_m11_0,
    cs_m12_0,
    cs_m13_0,
    cs_m14_0,
    cs_m15_0,
    cs_m1_0,
    cs_m2_0,
    cs_m3_0,
    cs_m4_0,
    cs_m5_0,
    cs_m6_0,
    cs_m7_0,
    cs_m8_0,
    cs_m9_0,
    in_rx_serial_0,
    irq_can_rec_0,
    irq_can_tra_0,
    irq_elink_rec_0,
    irq_elink_tra_0,
    miso_c_0,
    miso_m_0,
    mosi_c_0,
    mosi_m_0,
    out_tx_serial_0,
    rx0_0,
    rx10_0,
    rx11_0,
    rx12_0,
    rx13_0,
    rx14_0,
    rx15_0,
    rx1_0,
    rx2_0,
    rx3_0,
    rx4_0,
    rx5_0,
    rx6_0,
    rx7_0,
    rx8_0,
    rx9_0,
    rx_data_rdy_0,
    rx_elink_n_0,
    rx_elink_p_0,
    sck_c_0,
    sck_m_0,
    shift_clk_0,
    shift_data_0,
    shift_mode_0,
    simple_out_0,
    tmr_out_0,
    tx0_0,
    tx10_0,
    tx11_0,
    tx12_0,
    tx13_0,
    tx14_0,
    tx15_0,
    tx1_0,
    tx2_0,
    tx3_0,
    tx4_0,
    tx5_0,
    tx6_0,
    tx7_0,
    tx8_0,
    tx9_0,
    tx_data_rdy_0,
    tx_elink_n_0,
    tx_elink_p_0);
  output WDI_0;
  input clk_ext_clk_n;
  input clk_ext_clk_p;
  output clk_out_n_0;
  output clk_out_p_0;
  input clk_sys;
  output cs_c0_0;
  output cs_c10_0;
  output cs_c11_0;
  output cs_c12_0;
  output cs_c13_0;
  output cs_c14_0;
  output cs_c15_0;
  output cs_c1_0;
  output cs_c2_0;
  output cs_c3_0;
  output cs_c4_0;
  output cs_c5_0;
  output cs_c6_0;
  output cs_c7_0;
  output cs_c8_0;
  output cs_c9_0;
  output cs_m0_0;
  output cs_m10_0;
  output cs_m11_0;
  output cs_m12_0;
  output cs_m13_0;
  output cs_m14_0;
  output cs_m15_0;
  output cs_m1_0;
  output cs_m2_0;
  output cs_m3_0;
  output cs_m4_0;
  output cs_m5_0;
  output cs_m6_0;
  output cs_m7_0;
  output cs_m8_0;
  output cs_m9_0;
  input in_rx_serial_0;
  output irq_can_rec_0;
  output irq_can_tra_0;
  output irq_elink_rec_0;
  output irq_elink_tra_0;
  input miso_c_0;
  input miso_m_0;
  output mosi_c_0;
  output mosi_m_0;
  output out_tx_serial_0;
  input rx0_0;
  input rx10_0;
  input rx11_0;
  input rx12_0;
  input rx13_0;
  input rx14_0;
  input rx15_0;
  input rx1_0;
  input rx2_0;
  input rx3_0;
  input rx4_0;
  input rx5_0;
  input rx6_0;
  input rx7_0;
  input rx8_0;
  input rx9_0;
  output rx_data_rdy_0;
  input [0:0]rx_elink_n_0;
  input [0:0]rx_elink_p_0;
  output sck_c_0;
  output sck_m_0;
  input shift_clk_0;
  input shift_data_0;
  input shift_mode_0;
  output simple_out_0;
  output tmr_out_0;
  output tx0_0;
  output tx10_0;
  output tx11_0;
  output tx12_0;
  output tx13_0;
  output tx14_0;
  output tx15_0;
  output tx1_0;
  output tx2_0;
  output tx3_0;
  output tx4_0;
  output tx5_0;
  output tx6_0;
  output tx7_0;
  output tx8_0;
  output tx9_0;
  output tx_data_rdy_0;
  output [0:0]tx_elink_n_0;
  output [0:0]tx_elink_p_0;

  wire WDI_0;
  wire clk_ext_clk_n;
  wire clk_ext_clk_p;
  wire clk_out_n_0;
  wire clk_out_p_0;
  wire clk_sys;
  wire cs_c0_0;
  wire cs_c10_0;
  wire cs_c11_0;
  wire cs_c12_0;
  wire cs_c13_0;
  wire cs_c14_0;
  wire cs_c15_0;
  wire cs_c1_0;
  wire cs_c2_0;
  wire cs_c3_0;
  wire cs_c4_0;
  wire cs_c5_0;
  wire cs_c6_0;
  wire cs_c7_0;
  wire cs_c8_0;
  wire cs_c9_0;
  wire cs_m0_0;
  wire cs_m10_0;
  wire cs_m11_0;
  wire cs_m12_0;
  wire cs_m13_0;
  wire cs_m14_0;
  wire cs_m15_0;
  wire cs_m1_0;
  wire cs_m2_0;
  wire cs_m3_0;
  wire cs_m4_0;
  wire cs_m5_0;
  wire cs_m6_0;
  wire cs_m7_0;
  wire cs_m8_0;
  wire cs_m9_0;
  wire in_rx_serial_0;
  wire irq_can_rec_0;
  wire irq_can_tra_0;
  wire irq_elink_rec_0;
  wire irq_elink_tra_0;
  wire miso_c_0;
  wire miso_m_0;
  wire mosi_c_0;
  wire mosi_m_0;
  wire out_tx_serial_0;
  wire rx0_0;
  wire rx10_0;
  wire rx11_0;
  wire rx12_0;
  wire rx13_0;
  wire rx14_0;
  wire rx15_0;
  wire rx1_0;
  wire rx2_0;
  wire rx3_0;
  wire rx4_0;
  wire rx5_0;
  wire rx6_0;
  wire rx7_0;
  wire rx8_0;
  wire rx9_0;
  wire rx_data_rdy_0;
  wire [0:0]rx_elink_n_0;
  wire [0:0]rx_elink_p_0;
  wire sck_c_0;
  wire sck_m_0;
  wire shift_clk_0;
  wire shift_data_0;
  wire shift_mode_0;
  wire simple_out_0;
  wire tmr_out_0;
  wire tx0_0;
  wire tx10_0;
  wire tx11_0;
  wire tx12_0;
  wire tx13_0;
  wire tx14_0;
  wire tx15_0;
  wire tx1_0;
  wire tx2_0;
  wire tx3_0;
  wire tx4_0;
  wire tx5_0;
  wire tx6_0;
  wire tx7_0;
  wire tx8_0;
  wire tx9_0;
  wire tx_data_rdy_0;
  wire [0:0]tx_elink_n_0;
  wire [0:0]tx_elink_p_0;

  mopshub_board_v3TMR mopshub_board_v3TMR_i
       (.WDI_0(WDI_0),
        .clk_ext_clk_n(clk_ext_clk_n),
        .clk_ext_clk_p(clk_ext_clk_p),
        .clk_out_n_0(clk_out_n_0),
        .clk_out_p_0(clk_out_p_0),
        .clk_sys(clk_sys),
        .cs_c0_0(cs_c0_0),
        .cs_c10_0(cs_c10_0),
        .cs_c11_0(cs_c11_0),
        .cs_c12_0(cs_c12_0),
        .cs_c13_0(cs_c13_0),
        .cs_c14_0(cs_c14_0),
        .cs_c15_0(cs_c15_0),
        .cs_c1_0(cs_c1_0),
        .cs_c2_0(cs_c2_0),
        .cs_c3_0(cs_c3_0),
        .cs_c4_0(cs_c4_0),
        .cs_c5_0(cs_c5_0),
        .cs_c6_0(cs_c6_0),
        .cs_c7_0(cs_c7_0),
        .cs_c8_0(cs_c8_0),
        .cs_c9_0(cs_c9_0),
        .cs_m0_0(cs_m0_0),
        .cs_m10_0(cs_m10_0),
        .cs_m11_0(cs_m11_0),
        .cs_m12_0(cs_m12_0),
        .cs_m13_0(cs_m13_0),
        .cs_m14_0(cs_m14_0),
        .cs_m15_0(cs_m15_0),
        .cs_m1_0(cs_m1_0),
        .cs_m2_0(cs_m2_0),
        .cs_m3_0(cs_m3_0),
        .cs_m4_0(cs_m4_0),
        .cs_m5_0(cs_m5_0),
        .cs_m6_0(cs_m6_0),
        .cs_m7_0(cs_m7_0),
        .cs_m8_0(cs_m8_0),
        .cs_m9_0(cs_m9_0),
        .in_rx_serial_0(in_rx_serial_0),
        .irq_can_rec_0(irq_can_rec_0),
        .irq_can_tra_0(irq_can_tra_0),
        .irq_elink_rec_0(irq_elink_rec_0),
        .irq_elink_tra_0(irq_elink_tra_0),
        .miso_c_0(miso_c_0),
        .miso_m_0(miso_m_0),
        .mosi_c_0(mosi_c_0),
        .mosi_m_0(mosi_m_0),
        .out_tx_serial_0(out_tx_serial_0),
        .rx0_0(rx0_0),
        .rx10_0(rx10_0),
        .rx11_0(rx11_0),
        .rx12_0(rx12_0),
        .rx13_0(rx13_0),
        .rx14_0(rx14_0),
        .rx15_0(rx15_0),
        .rx1_0(rx1_0),
        .rx2_0(rx2_0),
        .rx3_0(rx3_0),
        .rx4_0(rx4_0),
        .rx5_0(rx5_0),
        .rx6_0(rx6_0),
        .rx7_0(rx7_0),
        .rx8_0(rx8_0),
        .rx9_0(rx9_0),
        .rx_data_rdy_0(rx_data_rdy_0),
        .rx_elink_n_0(rx_elink_n_0),
        .rx_elink_p_0(rx_elink_p_0),
        .sck_c_0(sck_c_0),
        .sck_m_0(sck_m_0),
        .shift_clk_0(shift_clk_0),
        .shift_data_0(shift_data_0),
        .shift_mode_0(shift_mode_0),
        .simple_out_0(simple_out_0),
        .tmr_out_0(tmr_out_0),
        .tx0_0(tx0_0),
        .tx10_0(tx10_0),
        .tx11_0(tx11_0),
        .tx12_0(tx12_0),
        .tx13_0(tx13_0),
        .tx14_0(tx14_0),
        .tx15_0(tx15_0),
        .tx1_0(tx1_0),
        .tx2_0(tx2_0),
        .tx3_0(tx3_0),
        .tx4_0(tx4_0),
        .tx5_0(tx5_0),
        .tx6_0(tx6_0),
        .tx7_0(tx7_0),
        .tx8_0(tx8_0),
        .tx9_0(tx9_0),
        .tx_data_rdy_0(tx_data_rdy_0),
        .tx_elink_n_0(tx_elink_n_0),
        .tx_elink_p_0(tx_elink_p_0));
endmodule
