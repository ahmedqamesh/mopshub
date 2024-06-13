//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Jun 13 17:40:15 2024
//Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
//Command     : generate_target mopshub_readout_bd_wrapper.bd
//Design      : mopshub_readout_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module mopshub_readout_bd_wrapper
   (clk_out_n_0,
    clk_out_p_0,
    clk_sys_clk_n,
    clk_sys_clk_p,
    dbg_elink_0,
    dip_sw_0,
    endwait_all_0,
    gtrefclk_in_0_clk_n,
    gtrefclk_in_0_clk_p,
    in_rx_serial_0,
    irq_can_rec_0,
    irq_can_tra_0,
    irq_elink_dbg_0,
    irq_elink_rec_0,
    irq_elink_tra_0,
    led_0,
    osc_auto_trim_mopshub_0,
    out_tx_serial_0,
    reset,
    rx0_0,
    rx_data_rdy_0,
    rx_elink_n_0,
    rx_elink_p_0,
    sfp_0_rxn,
    sfp_0_rxp,
    sfp_0_txn,
    sfp_0_txp,
    sfp_enable_0,
    sysclk_n_0,
    sysclk_p_0,
    tx0_0,
    tx_data_rdy_0,
    tx_elink_n_0,
    tx_elink_p_0);
  output clk_out_n_0;
  output clk_out_p_0;
  input clk_sys_clk_n;
  input clk_sys_clk_p;
  input dbg_elink_0;
  input [3:0]dip_sw_0;
  input endwait_all_0;
  input gtrefclk_in_0_clk_n;
  input gtrefclk_in_0_clk_p;
  input in_rx_serial_0;
  output irq_can_rec_0;
  output irq_can_tra_0;
  output irq_elink_dbg_0;
  output irq_elink_rec_0;
  output irq_elink_tra_0;
  output led_0;
  input osc_auto_trim_mopshub_0;
  output out_tx_serial_0;
  input reset;
  input rx0_0;
  output rx_data_rdy_0;
  input rx_elink_n_0;
  input rx_elink_p_0;
  input sfp_0_rxn;
  input sfp_0_rxp;
  output sfp_0_txn;
  output sfp_0_txp;
  output sfp_enable_0;
  input sysclk_n_0;
  input sysclk_p_0;
  output tx0_0;
  output tx_data_rdy_0;
  output tx_elink_n_0;
  output tx_elink_p_0;

  wire clk_out_n_0;
  wire clk_out_p_0;
  wire clk_sys_clk_n;
  wire clk_sys_clk_p;
  wire dbg_elink_0;
  wire [3:0]dip_sw_0;
  wire endwait_all_0;
  wire gtrefclk_in_0_clk_n;
  wire gtrefclk_in_0_clk_p;
  wire in_rx_serial_0;
  wire irq_can_rec_0;
  wire irq_can_tra_0;
  wire irq_elink_dbg_0;
  wire irq_elink_rec_0;
  wire irq_elink_tra_0;
  wire led_0;
  wire osc_auto_trim_mopshub_0;
  wire out_tx_serial_0;
  wire reset;
  wire rx0_0;
  wire rx_data_rdy_0;
  wire rx_elink_n_0;
  wire rx_elink_p_0;
  wire sfp_0_rxn;
  wire sfp_0_rxp;
  wire sfp_0_txn;
  wire sfp_0_txp;
  wire sfp_enable_0;
  wire sysclk_n_0;
  wire sysclk_p_0;
  wire tx0_0;
  wire tx_data_rdy_0;
  wire tx_elink_n_0;
  wire tx_elink_p_0;

  mopshub_readout_bd mopshub_readout_bd_i
       (.clk_out_n_0(clk_out_n_0),
        .clk_out_p_0(clk_out_p_0),
        .clk_sys_clk_n(clk_sys_clk_n),
        .clk_sys_clk_p(clk_sys_clk_p),
        .dbg_elink_0(dbg_elink_0),
        .dip_sw_0(dip_sw_0),
        .endwait_all_0(endwait_all_0),
        .gtrefclk_in_0_clk_n(gtrefclk_in_0_clk_n),
        .gtrefclk_in_0_clk_p(gtrefclk_in_0_clk_p),
        .in_rx_serial_0(in_rx_serial_0),
        .irq_can_rec_0(irq_can_rec_0),
        .irq_can_tra_0(irq_can_tra_0),
        .irq_elink_dbg_0(irq_elink_dbg_0),
        .irq_elink_rec_0(irq_elink_rec_0),
        .irq_elink_tra_0(irq_elink_tra_0),
        .led_0(led_0),
        .osc_auto_trim_mopshub_0(osc_auto_trim_mopshub_0),
        .out_tx_serial_0(out_tx_serial_0),
        .reset(reset),
        .rx0_0(rx0_0),
        .rx_data_rdy_0(rx_data_rdy_0),
        .rx_elink_n_0(rx_elink_n_0),
        .rx_elink_p_0(rx_elink_p_0),
        .sfp_0_rxn(sfp_0_rxn),
        .sfp_0_rxp(sfp_0_rxp),
        .sfp_0_txn(sfp_0_txn),
        .sfp_0_txp(sfp_0_txp),
        .sfp_enable_0(sfp_enable_0),
        .sysclk_n_0(sysclk_n_0),
        .sysclk_p_0(sysclk_p_0),
        .tx0_0(tx0_0),
        .tx_data_rdy_0(tx_data_rdy_0),
        .tx_elink_n_0(tx_elink_n_0),
        .tx_elink_p_0(tx_elink_p_0));
endmodule
