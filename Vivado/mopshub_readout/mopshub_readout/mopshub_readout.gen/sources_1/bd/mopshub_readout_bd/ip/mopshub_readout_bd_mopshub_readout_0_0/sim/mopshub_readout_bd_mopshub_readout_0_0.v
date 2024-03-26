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


// IP VLNV: xilinx.com:module_ref:mopshub_readout:1.0
// IP Revision: 1

`timescale 1ns/1ps

(* IP_DEFINITION_SOURCE = "module_ref" *)
(* DowngradeIPIdentifiedWarnings = "yes" *)
module mopshub_readout_bd_mopshub_readout_0_0 (
  clk125,
  clk_40,
  clk_rx,
  clk_tx,
  dbg_elink,
  dip_sw,
  gmii_rx_dv,
  gmii_rx_er,
  gmii_rxd,
  mmcm_locked,
  reset,
  resetdone,
  rx_elink_n,
  rx_elink_p,
  clk_ipb,
  configuration_vector,
  gmii_tx_en,
  gmii_tx_er,
  gmii_txd,
  irq_can_rec,
  irq_can_tra,
  irq_elink_dbg,
  irq_elink_rec,
  led,
  rst_eth,
  rx_data_rdy,
  sfp_enable,
  tx_data_rdy,
  tx_elink_n,
  tx_elink_p,
  locked,
  clk_out_p,
  clk_out_n,
  counter_rst_mopshub,
  counter_disp_err,
  counter_code_err,
  osc_auto_trim_mopshub,
  endwait_all,
  rx0,
  tx0,
  clk_elink,
  irq_elink_tra,
  sysclk_n,
  sysclk_p,
  dec10b_in_dbg_uart,
  clk_uart,
  out_tx_serial,
  in_rx_serial,
  clk_m,
  mopshub_id,
  counter_dec10b_in_rdy,
  counter_enc10b_out_rdy
);

input wire clk125;
input wire clk_40;
input wire clk_rx;
input wire clk_tx;
input wire dbg_elink;
input wire [3 : 0] dip_sw;
input wire gmii_rx_dv;
input wire gmii_rx_er;
input wire [7 : 0] gmii_rxd;
input wire mmcm_locked;
(* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME reset, POLARITY ACTIVE_HIGH, INSERT_VIP 0" *)
(* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 reset RST" *)
input wire reset;
input wire resetdone;
input wire rx_elink_n;
input wire rx_elink_p;
output wire clk_ipb;
output wire [4 : 0] configuration_vector;
output wire gmii_tx_en;
output wire gmii_tx_er;
output wire [7 : 0] gmii_txd;
output wire irq_can_rec;
output wire irq_can_tra;
output wire irq_elink_dbg;
output wire irq_elink_rec;
output wire led;
output wire rst_eth;
output wire rx_data_rdy;
output wire sfp_enable;
output wire tx_data_rdy;
output wire tx_elink_n;
output wire tx_elink_p;
input wire locked;
output wire clk_out_p;
output wire clk_out_n;
output wire [7 : 0] counter_rst_mopshub;
output wire [7 : 0] counter_disp_err;
output wire [7 : 0] counter_code_err;
input wire osc_auto_trim_mopshub;
input wire endwait_all;
input wire rx0;
output wire tx0;
input wire clk_elink;
output wire irq_elink_tra;
input wire sysclk_n;
input wire sysclk_p;
output wire [7 : 0] dec10b_in_dbg_uart;
input wire clk_uart;
output wire out_tx_serial;
input wire in_rx_serial;
input wire clk_m;
input wire [3 : 0] mopshub_id;
output wire [7 : 0] counter_dec10b_in_rdy;
output wire [7 : 0] counter_enc10b_out_rdy;

  mopshub_readout inst (
    .clk125(clk125),
    .clk_40(clk_40),
    .clk_rx(clk_rx),
    .clk_tx(clk_tx),
    .dbg_elink(dbg_elink),
    .dip_sw(dip_sw),
    .gmii_rx_dv(gmii_rx_dv),
    .gmii_rx_er(gmii_rx_er),
    .gmii_rxd(gmii_rxd),
    .mmcm_locked(mmcm_locked),
    .reset(reset),
    .resetdone(resetdone),
    .rx_elink_n(rx_elink_n),
    .rx_elink_p(rx_elink_p),
    .clk_ipb(clk_ipb),
    .configuration_vector(configuration_vector),
    .gmii_tx_en(gmii_tx_en),
    .gmii_tx_er(gmii_tx_er),
    .gmii_txd(gmii_txd),
    .irq_can_rec(irq_can_rec),
    .irq_can_tra(irq_can_tra),
    .irq_elink_dbg(irq_elink_dbg),
    .irq_elink_rec(irq_elink_rec),
    .led(led),
    .rst_eth(rst_eth),
    .rx_data_rdy(rx_data_rdy),
    .sfp_enable(sfp_enable),
    .tx_data_rdy(tx_data_rdy),
    .tx_elink_n(tx_elink_n),
    .tx_elink_p(tx_elink_p),
    .locked(locked),
    .clk_out_p(clk_out_p),
    .clk_out_n(clk_out_n),
    .counter_rst_mopshub(counter_rst_mopshub),
    .counter_disp_err(counter_disp_err),
    .counter_code_err(counter_code_err),
    .osc_auto_trim_mopshub(osc_auto_trim_mopshub),
    .endwait_all(endwait_all),
    .rx0(rx0),
    .tx0(tx0),
    .clk_elink(clk_elink),
    .irq_elink_tra(irq_elink_tra),
    .sysclk_n(sysclk_n),
    .sysclk_p(sysclk_p),
    .dec10b_in_dbg_uart(dec10b_in_dbg_uart),
    .clk_uart(clk_uart),
    .out_tx_serial(out_tx_serial),
    .in_rx_serial(in_rx_serial),
    .clk_m(clk_m),
    .mopshub_id(mopshub_id),
    .counter_dec10b_in_rdy(counter_dec10b_in_rdy),
    .counter_enc10b_out_rdy(counter_enc10b_out_rdy)
  );
endmodule
