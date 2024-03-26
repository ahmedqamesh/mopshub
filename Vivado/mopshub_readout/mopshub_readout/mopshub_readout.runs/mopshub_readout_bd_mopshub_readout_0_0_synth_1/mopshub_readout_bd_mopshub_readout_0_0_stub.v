// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 13:04:13 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mopshub_readout_bd_mopshub_readout_0_0_stub.v
// Design      : mopshub_readout_bd_mopshub_readout_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "mopshub_readout,Vivado 2020.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk125, clk_40, clk_rx, clk_tx, dbg_elink, dip_sw, 
  gmii_rx_dv, gmii_rx_er, gmii_rxd, mmcm_locked, reset, resetdone, rx_elink_n, rx_elink_p, clk_ipb, 
  configuration_vector, gmii_tx_en, gmii_tx_er, gmii_txd, irq_can_rec, irq_can_tra, 
  irq_elink_dbg, irq_elink_rec, led, rst_eth, rx_data_rdy, sfp_enable, tx_data_rdy, tx_elink_n, 
  tx_elink_p, locked, clk_out_p, clk_out_n, counter_rst_mopshub, counter_disp_err, 
  counter_code_err, osc_auto_trim_mopshub, endwait_all, rx0, tx0, clk_elink, irq_elink_tra, 
  sysclk_n, sysclk_p, dec10b_in_dbg_uart, clk_uart, out_tx_serial, in_rx_serial, clk_m, 
  mopshub_id, counter_dec10b_in_rdy, counter_enc10b_out_rdy)
/* synthesis syn_black_box black_box_pad_pin="clk125,clk_40,clk_rx,clk_tx,dbg_elink,dip_sw[3:0],gmii_rx_dv,gmii_rx_er,gmii_rxd[7:0],mmcm_locked,reset,resetdone,rx_elink_n,rx_elink_p,clk_ipb,configuration_vector[4:0],gmii_tx_en,gmii_tx_er,gmii_txd[7:0],irq_can_rec,irq_can_tra,irq_elink_dbg,irq_elink_rec,led,rst_eth,rx_data_rdy,sfp_enable,tx_data_rdy,tx_elink_n,tx_elink_p,locked,clk_out_p,clk_out_n,counter_rst_mopshub[7:0],counter_disp_err[7:0],counter_code_err[7:0],osc_auto_trim_mopshub,endwait_all,rx0,tx0,clk_elink,irq_elink_tra,sysclk_n,sysclk_p,dec10b_in_dbg_uart[7:0],clk_uart,out_tx_serial,in_rx_serial,clk_m,mopshub_id[3:0],counter_dec10b_in_rdy[7:0],counter_enc10b_out_rdy[7:0]" */;
  input clk125;
  input clk_40;
  input clk_rx;
  input clk_tx;
  input dbg_elink;
  input [3:0]dip_sw;
  input gmii_rx_dv;
  input gmii_rx_er;
  input [7:0]gmii_rxd;
  input mmcm_locked;
  input reset;
  input resetdone;
  input rx_elink_n;
  input rx_elink_p;
  output clk_ipb;
  output [4:0]configuration_vector;
  output gmii_tx_en;
  output gmii_tx_er;
  output [7:0]gmii_txd;
  output irq_can_rec;
  output irq_can_tra;
  output irq_elink_dbg;
  output irq_elink_rec;
  output led;
  output rst_eth;
  output rx_data_rdy;
  output sfp_enable;
  output tx_data_rdy;
  output tx_elink_n;
  output tx_elink_p;
  input locked;
  output clk_out_p;
  output clk_out_n;
  output [7:0]counter_rst_mopshub;
  output [7:0]counter_disp_err;
  output [7:0]counter_code_err;
  input osc_auto_trim_mopshub;
  input endwait_all;
  input rx0;
  output tx0;
  input clk_elink;
  output irq_elink_tra;
  input sysclk_n;
  input sysclk_p;
  output [7:0]dec10b_in_dbg_uart;
  input clk_uart;
  output out_tx_serial;
  input in_rx_serial;
  input clk_m;
  input [3:0]mopshub_id;
  output [7:0]counter_dec10b_in_rdy;
  output [7:0]counter_enc10b_out_rdy;
endmodule
