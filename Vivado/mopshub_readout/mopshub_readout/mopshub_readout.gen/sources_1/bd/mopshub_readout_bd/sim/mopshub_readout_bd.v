//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Tue Mar 26 12:51:26 2024
//Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
//Command     : generate_target mopshub_readout_bd.bd
//Design      : mopshub_readout_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mopshub_readout_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mopshub_readout_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=9,numReposBlks=9,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mopshub_readout_bd.hwdef" *) 
module mopshub_readout_bd
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_sys CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_sys, CAN_DEBUG false, FREQ_HZ 300000000" *) input clk_sys_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_sys CLK_P" *) input clk_sys_clk_p;
  input dbg_elink_0;
  input [3:0]dip_sw_0;
  input endwait_all_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gtrefclk_in_0 CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME gtrefclk_in_0, CAN_DEBUG false, FREQ_HZ 100000000" *) input gtrefclk_in_0_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 gtrefclk_in_0 CLK_P" *) input gtrefclk_in_0_clk_p;
  input in_rx_serial_0;
  output irq_can_rec_0;
  output irq_can_tra_0;
  output irq_elink_dbg_0;
  output irq_elink_rec_0;
  output irq_elink_tra_0;
  output led_0;
  input osc_auto_trim_mopshub_0;
  output out_tx_serial_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  input rx0_0;
  output rx_data_rdy_0;
  input rx_elink_n_0;
  input rx_elink_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp_0 RXN" *) input sfp_0_rxn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp_0 RXP" *) input sfp_0_rxp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp_0 TXN" *) output sfp_0_txn;
  (* X_INTERFACE_INFO = "xilinx.com:interface:sfp:1.0 sfp_0 TXP" *) output sfp_0_txp;
  output sfp_enable_0;
  input sysclk_n_0;
  input sysclk_p_0;
  output tx0_0;
  output tx_data_rdy_0;
  output tx_elink_n_0;
  output tx_elink_p_0;

  wire clk_wiz_0_clk_elink;
  wire clk_wiz_0_clk_m;
  wire clk_wiz_0_clk_rx;
  wire clk_wiz_0_clk_tx;
  wire clk_wiz_1_clk_40;
  wire clk_wiz_1_clk_uart;
  wire clk_wiz_1_locked;
  wire dbg_elink_0_1;
  wire [3:0]dip_sw_0_1;
  wire endwait_all_0_1;
  wire ext_reset_in_0_1;
  wire gig_ethernet_pcs_pma_0_gmii_rx_dv;
  wire gig_ethernet_pcs_pma_0_gmii_rx_er;
  wire [7:0]gig_ethernet_pcs_pma_0_gmii_rxd;
  wire gig_ethernet_pcs_pma_0_mmcm_locked_out;
  wire gig_ethernet_pcs_pma_0_resetdone;
  wire gig_ethernet_pcs_pma_0_sfp_RXN;
  wire gig_ethernet_pcs_pma_0_sfp_RXP;
  wire gig_ethernet_pcs_pma_0_sfp_TXN;
  wire gig_ethernet_pcs_pma_0_sfp_TXP;
  wire gig_ethernet_pcs_pma_0_userclk2_out;
  wire gtrefclk_in_0_1_CLK_N;
  wire gtrefclk_in_0_1_CLK_P;
  wire in_rx_serial_0_1;
  wire mopshub_readout_0_clk_ipb;
  wire mopshub_readout_0_clk_out_n;
  wire mopshub_readout_0_clk_out_p;
  wire [4:0]mopshub_readout_0_configuration_vector;
  wire [7:0]mopshub_readout_0_counter_code_err;
  wire [7:0]mopshub_readout_0_counter_dec10b_in_rdy;
  wire [7:0]mopshub_readout_0_counter_disp_err;
  wire [7:0]mopshub_readout_0_counter_enc10b_out_rdy;
  wire [7:0]mopshub_readout_0_counter_rst_mopshub;
  wire [7:0]mopshub_readout_0_dec10b_in_dbg_uart;
  wire mopshub_readout_0_gmii_tx_en;
  wire mopshub_readout_0_gmii_tx_er;
  wire [7:0]mopshub_readout_0_gmii_txd;
  wire mopshub_readout_0_irq_can_rec;
  wire mopshub_readout_0_irq_can_tra;
  wire mopshub_readout_0_irq_elink_dbg;
  wire mopshub_readout_0_irq_elink_rec;
  wire mopshub_readout_0_irq_elink_tra;
  wire mopshub_readout_0_led;
  wire mopshub_readout_0_out_tx_serial;
  wire mopshub_readout_0_rst_eth;
  wire mopshub_readout_0_rx_data_rdy;
  wire mopshub_readout_0_sfp_enable;
  wire mopshub_readout_0_tx0;
  wire mopshub_readout_0_tx_data_rdy;
  wire mopshub_readout_0_tx_elink_n;
  wire mopshub_readout_0_tx_elink_p;
  wire osc_auto_trim_mopshub_0_1;
  wire proc_sys_reset_0_mb_reset;
  wire rx0_0_1;
  wire rx_elink_n_0_1;
  wire rx_elink_p_0_1;
  wire sysclk_n_0_1;
  wire sysclk_p_0_1;
  wire user_si570_sysclk_1_CLK_N;
  wire user_si570_sysclk_1_CLK_P;
  wire [3:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;

  assign clk_out_n_0 = mopshub_readout_0_clk_out_n;
  assign clk_out_p_0 = mopshub_readout_0_clk_out_p;
  assign dbg_elink_0_1 = dbg_elink_0;
  assign dip_sw_0_1 = dip_sw_0[3:0];
  assign endwait_all_0_1 = endwait_all_0;
  assign ext_reset_in_0_1 = reset;
  assign gig_ethernet_pcs_pma_0_sfp_RXN = sfp_0_rxn;
  assign gig_ethernet_pcs_pma_0_sfp_RXP = sfp_0_rxp;
  assign gtrefclk_in_0_1_CLK_N = gtrefclk_in_0_clk_n;
  assign gtrefclk_in_0_1_CLK_P = gtrefclk_in_0_clk_p;
  assign in_rx_serial_0_1 = in_rx_serial_0;
  assign irq_can_rec_0 = mopshub_readout_0_irq_can_rec;
  assign irq_can_tra_0 = mopshub_readout_0_irq_can_tra;
  assign irq_elink_dbg_0 = mopshub_readout_0_irq_elink_dbg;
  assign irq_elink_rec_0 = mopshub_readout_0_irq_elink_rec;
  assign irq_elink_tra_0 = mopshub_readout_0_irq_elink_tra;
  assign led_0 = mopshub_readout_0_led;
  assign osc_auto_trim_mopshub_0_1 = osc_auto_trim_mopshub_0;
  assign out_tx_serial_0 = mopshub_readout_0_out_tx_serial;
  assign rx0_0_1 = rx0_0;
  assign rx_data_rdy_0 = mopshub_readout_0_rx_data_rdy;
  assign rx_elink_n_0_1 = rx_elink_n_0;
  assign rx_elink_p_0_1 = rx_elink_p_0;
  assign sfp_0_txn = gig_ethernet_pcs_pma_0_sfp_TXN;
  assign sfp_0_txp = gig_ethernet_pcs_pma_0_sfp_TXP;
  assign sfp_enable_0 = mopshub_readout_0_sfp_enable;
  assign sysclk_n_0_1 = sysclk_n_0;
  assign sysclk_p_0_1 = sysclk_p_0;
  assign tx0_0 = mopshub_readout_0_tx0;
  assign tx_data_rdy_0 = mopshub_readout_0_tx_data_rdy;
  assign tx_elink_n_0 = mopshub_readout_0_tx_elink_n;
  assign tx_elink_p_0 = mopshub_readout_0_tx_elink_p;
  assign user_si570_sysclk_1_CLK_N = clk_sys_clk_n;
  assign user_si570_sysclk_1_CLK_P = clk_sys_clk_p;
  mopshub_readout_bd_clk_wiz_0_0 clk_wiz_0
       (.clk_elink(clk_wiz_0_clk_elink),
        .clk_in1_n(user_si570_sysclk_1_CLK_N),
        .clk_in1_p(user_si570_sysclk_1_CLK_P),
        .clk_m(clk_wiz_0_clk_m),
        .clk_rx(clk_wiz_0_clk_rx),
        .clk_tx(clk_wiz_0_clk_tx));
  mopshub_readout_bd_clk_wiz_1_0 clk_wiz_1
       (.clk_40(clk_wiz_1_clk_40),
        .clk_in1(clk_wiz_0_clk_m),
        .clk_uart(clk_wiz_1_clk_uart),
        .locked(clk_wiz_1_locked));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0 gig_ethernet_pcs_pma_0
       (.configuration_vector(mopshub_readout_0_configuration_vector),
        .gmii_rx_dv(gig_ethernet_pcs_pma_0_gmii_rx_dv),
        .gmii_rx_er(gig_ethernet_pcs_pma_0_gmii_rx_er),
        .gmii_rxd(gig_ethernet_pcs_pma_0_gmii_rxd),
        .gmii_tx_en(mopshub_readout_0_gmii_tx_en),
        .gmii_tx_er(mopshub_readout_0_gmii_tx_er),
        .gmii_txd(mopshub_readout_0_gmii_txd),
        .gtrefclk_n(gtrefclk_in_0_1_CLK_N),
        .gtrefclk_p(gtrefclk_in_0_1_CLK_P),
        .independent_clock_bufg(mopshub_readout_0_clk_ipb),
        .mmcm_locked_out(gig_ethernet_pcs_pma_0_mmcm_locked_out),
        .reset(mopshub_readout_0_rst_eth),
        .resetdone(gig_ethernet_pcs_pma_0_resetdone),
        .rxn(gig_ethernet_pcs_pma_0_sfp_RXN),
        .rxp(gig_ethernet_pcs_pma_0_sfp_RXP),
        .signal_detect(xlconstant_1_dout),
        .txn(gig_ethernet_pcs_pma_0_sfp_TXN),
        .txp(gig_ethernet_pcs_pma_0_sfp_TXP),
        .userclk2_out(gig_ethernet_pcs_pma_0_userclk2_out));
  mopshub_readout_bd_ila_0_0 ila_0
       (.clk(clk_wiz_1_clk_40),
        .probe0(mopshub_readout_0_counter_rst_mopshub),
        .probe1(mopshub_readout_0_counter_disp_err),
        .probe2(mopshub_readout_0_counter_code_err),
        .probe3(mopshub_readout_0_dec10b_in_dbg_uart),
        .probe4(mopshub_readout_0_counter_dec10b_in_rdy),
        .probe5(mopshub_readout_0_counter_enc10b_out_rdy));
  mopshub_readout_bd_mopshub_readout_0_0 mopshub_readout_0
       (.clk125(gig_ethernet_pcs_pma_0_userclk2_out),
        .clk_40(clk_wiz_1_clk_40),
        .clk_elink(clk_wiz_0_clk_elink),
        .clk_ipb(mopshub_readout_0_clk_ipb),
        .clk_m(clk_wiz_0_clk_m),
        .clk_out_n(mopshub_readout_0_clk_out_n),
        .clk_out_p(mopshub_readout_0_clk_out_p),
        .clk_rx(clk_wiz_0_clk_rx),
        .clk_tx(clk_wiz_0_clk_tx),
        .clk_uart(clk_wiz_1_clk_uart),
        .configuration_vector(mopshub_readout_0_configuration_vector),
        .counter_code_err(mopshub_readout_0_counter_code_err),
        .counter_dec10b_in_rdy(mopshub_readout_0_counter_dec10b_in_rdy),
        .counter_disp_err(mopshub_readout_0_counter_disp_err),
        .counter_enc10b_out_rdy(mopshub_readout_0_counter_enc10b_out_rdy),
        .counter_rst_mopshub(mopshub_readout_0_counter_rst_mopshub),
        .dbg_elink(dbg_elink_0_1),
        .dec10b_in_dbg_uart(mopshub_readout_0_dec10b_in_dbg_uart),
        .dip_sw(dip_sw_0_1),
        .endwait_all(endwait_all_0_1),
        .gmii_rx_dv(gig_ethernet_pcs_pma_0_gmii_rx_dv),
        .gmii_rx_er(gig_ethernet_pcs_pma_0_gmii_rx_er),
        .gmii_rxd(gig_ethernet_pcs_pma_0_gmii_rxd),
        .gmii_tx_en(mopshub_readout_0_gmii_tx_en),
        .gmii_tx_er(mopshub_readout_0_gmii_tx_er),
        .gmii_txd(mopshub_readout_0_gmii_txd),
        .in_rx_serial(in_rx_serial_0_1),
        .irq_can_rec(mopshub_readout_0_irq_can_rec),
        .irq_can_tra(mopshub_readout_0_irq_can_tra),
        .irq_elink_dbg(mopshub_readout_0_irq_elink_dbg),
        .irq_elink_rec(mopshub_readout_0_irq_elink_rec),
        .irq_elink_tra(mopshub_readout_0_irq_elink_tra),
        .led(mopshub_readout_0_led),
        .locked(clk_wiz_1_locked),
        .mmcm_locked(gig_ethernet_pcs_pma_0_mmcm_locked_out),
        .mopshub_id(xlconstant_0_dout),
        .osc_auto_trim_mopshub(osc_auto_trim_mopshub_0_1),
        .out_tx_serial(mopshub_readout_0_out_tx_serial),
        .reset(proc_sys_reset_0_mb_reset),
        .resetdone(gig_ethernet_pcs_pma_0_resetdone),
        .rst_eth(mopshub_readout_0_rst_eth),
        .rx0(rx0_0_1),
        .rx_data_rdy(mopshub_readout_0_rx_data_rdy),
        .rx_elink_n(rx_elink_n_0_1),
        .rx_elink_p(rx_elink_p_0_1),
        .sfp_enable(mopshub_readout_0_sfp_enable),
        .sysclk_n(sysclk_n_0_1),
        .sysclk_p(sysclk_p_0_1),
        .tx0(mopshub_readout_0_tx0),
        .tx_data_rdy(mopshub_readout_0_tx_data_rdy),
        .tx_elink_n(mopshub_readout_0_tx_elink_n),
        .tx_elink_p(mopshub_readout_0_tx_elink_p));
  mopshub_readout_bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_1_locked),
        .ext_reset_in(ext_reset_in_0_1),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .slowest_sync_clk(clk_wiz_1_clk_40));
  mopshub_readout_bd_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  mopshub_readout_bd_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  mopshub_readout_bd_zynq_ultra_ps_e_0_0 zynq_ultra_ps_e_0
       ();
endmodule
