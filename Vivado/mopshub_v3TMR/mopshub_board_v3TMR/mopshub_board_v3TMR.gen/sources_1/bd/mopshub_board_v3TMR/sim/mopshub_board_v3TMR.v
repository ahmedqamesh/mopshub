//Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
//Date        : Thu Jun 13 00:59:41 2024
//Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
//Command     : generate_target mopshub_board_v3TMR.bd
//Design      : mopshub_board_v3TMR
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "mopshub_board_v3TMR,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=mopshub_board_v3TMR,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=13,numReposBlks=13,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "mopshub_board_v3TMR.hwdef" *) 
module mopshub_board_v3TMR
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_ext CLK_N" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME clk_ext, CAN_DEBUG false, FREQ_HZ 80000000" *) input clk_ext_clk_n;
  (* X_INTERFACE_INFO = "xilinx.com:interface:diff_clock:1.0 clk_ext CLK_P" *) input clk_ext_clk_p;
  output clk_out_n_0;
  output clk_out_p_0;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK_SYS CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK_SYS, CLK_DOMAIN mopshub_board_v3TMR_clk_sys, FREQ_HZ 40000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input clk_sys;
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
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SHIFT_CLK_0 CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SHIFT_CLK_0, CLK_DOMAIN mopshub_board_v3TMR_shift_clk_0, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.000" *) input shift_clk_0;
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

  wire CLK_IN1_D_0_1_CLK_N;
  wire CLK_IN1_D_0_1_CLK_P;
  wire clk_in1_0_1;
  wire clk_wiz_0_clk_elink;
  wire clk_wiz_0_clk_rx_m;
  wire clk_wiz_0_clk_tx_m;
  wire clk_wiz_1_clk_100;
  wire clk_wiz_s_clk_40;
  wire clk_wiz_s_clk_m;
  wire clk_wiz_s_clk_uart;
  wire clk_wiz_s_locked;
  wire [0:0]data_in_from_pins_n_0_1;
  wire [0:0]data_in_from_pins_p_0_1;
  wire in_rx_serial_0_1;
  wire ip_buf_0_output_wire;
  wire miso_c_0_1;
  wire miso_m_0_1;
  wire mopshub_top_board_16_0_clk_out_n;
  wire mopshub_top_board_16_0_clk_out_p;
  wire mopshub_top_board_16_0_cs_c0;
  wire mopshub_top_board_16_0_cs_c1;
  wire mopshub_top_board_16_0_cs_c10;
  wire mopshub_top_board_16_0_cs_c11;
  wire mopshub_top_board_16_0_cs_c12;
  wire mopshub_top_board_16_0_cs_c13;
  wire mopshub_top_board_16_0_cs_c14;
  wire mopshub_top_board_16_0_cs_c15;
  wire mopshub_top_board_16_0_cs_c2;
  wire mopshub_top_board_16_0_cs_c3;
  wire mopshub_top_board_16_0_cs_c4;
  wire mopshub_top_board_16_0_cs_c5;
  wire mopshub_top_board_16_0_cs_c6;
  wire mopshub_top_board_16_0_cs_c7;
  wire mopshub_top_board_16_0_cs_c8;
  wire mopshub_top_board_16_0_cs_c9;
  wire mopshub_top_board_16_0_cs_m0;
  wire mopshub_top_board_16_0_cs_m1;
  wire mopshub_top_board_16_0_cs_m10;
  wire mopshub_top_board_16_0_cs_m11;
  wire mopshub_top_board_16_0_cs_m12;
  wire mopshub_top_board_16_0_cs_m13;
  wire mopshub_top_board_16_0_cs_m14;
  wire mopshub_top_board_16_0_cs_m15;
  wire mopshub_top_board_16_0_cs_m2;
  wire mopshub_top_board_16_0_cs_m3;
  wire mopshub_top_board_16_0_cs_m4;
  wire mopshub_top_board_16_0_cs_m5;
  wire mopshub_top_board_16_0_cs_m6;
  wire mopshub_top_board_16_0_cs_m7;
  wire mopshub_top_board_16_0_cs_m8;
  wire mopshub_top_board_16_0_cs_m9;
  wire mopshub_top_board_16_0_irq_can_rec;
  wire mopshub_top_board_16_0_irq_can_tra;
  wire mopshub_top_board_16_0_irq_elink_rec;
  wire mopshub_top_board_16_0_irq_elink_tra;
  wire mopshub_top_board_16_0_mosi_c;
  wire mopshub_top_board_16_0_mosi_m;
  wire mopshub_top_board_16_0_out_tx_serial;
  wire mopshub_top_board_16_0_rx_data_rdy;
  wire mopshub_top_board_16_0_sck_c;
  wire mopshub_top_board_16_0_sck_m;
  wire mopshub_top_board_16_0_simple_out;
  wire mopshub_top_board_16_0_tmr_out;
  wire mopshub_top_board_16_0_tx0;
  wire mopshub_top_board_16_0_tx1;
  wire mopshub_top_board_16_0_tx10;
  wire mopshub_top_board_16_0_tx11;
  wire mopshub_top_board_16_0_tx12;
  wire mopshub_top_board_16_0_tx13;
  wire mopshub_top_board_16_0_tx14;
  wire mopshub_top_board_16_0_tx15;
  wire mopshub_top_board_16_0_tx2;
  wire mopshub_top_board_16_0_tx3;
  wire mopshub_top_board_16_0_tx4;
  wire mopshub_top_board_16_0_tx5;
  wire mopshub_top_board_16_0_tx6;
  wire mopshub_top_board_16_0_tx7;
  wire mopshub_top_board_16_0_tx8;
  wire mopshub_top_board_16_0_tx9;
  wire mopshub_top_board_16_0_tx_data_rdy;
  wire [1:0]mopshub_top_board_16_0_tx_elink2bit;
  wire proc_sys_reset_0_mb_reset;
  wire rx0_0_1;
  wire rx10_0_1;
  wire rx11_0_1;
  wire rx12_0_1;
  wire rx13_0_1;
  wire rx14_0_1;
  wire rx15_0_1;
  wire rx1_0_1;
  wire rx2_0_1;
  wire rx3_0_1;
  wire rx4_0_1;
  wire rx5_0_1;
  wire rx6_0_1;
  wire rx7_0_1;
  wire rx8_0_1;
  wire rx9_0_1;
  wire [1:0]selectio_wiz_0_data_in_to_device;
  wire [0:0]selectio_wiz_1_data_out_to_pins_n;
  wire [0:0]selectio_wiz_1_data_out_to_pins_p;
  wire sem_controller_wrapp_0_status_classification;
  wire sem_controller_wrapp_0_status_correction;
  wire sem_controller_wrapp_0_status_essential;
  wire sem_controller_wrapp_0_status_heartbeat;
  wire sem_controller_wrapp_0_status_initialization;
  wire sem_controller_wrapp_0_status_injection;
  wire sem_controller_wrapp_0_status_observation;
  wire sem_controller_wrapp_0_status_uncorrectable;
  wire shift_clk_0_1;
  wire shift_data_0_1;
  wire shift_mode_0_1;
  wire [3:0]xlconstant_0_dout;
  wire [0:0]xlconstant_1_dout;
  wire [0:0]xlconstant_bit_dout;
  wire [0:0]NLW_proc_sys_reset_0_bus_struct_reset_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_interconnect_aresetn_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_peripheral_aresetn_UNCONNECTED;
  wire [0:0]NLW_proc_sys_reset_0_peripheral_reset_UNCONNECTED;

  assign CLK_IN1_D_0_1_CLK_N = clk_ext_clk_n;
  assign CLK_IN1_D_0_1_CLK_P = clk_ext_clk_p;
  assign WDI_0 = ip_buf_0_output_wire;
  assign clk_in1_0_1 = clk_sys;
  assign clk_out_n_0 = mopshub_top_board_16_0_clk_out_n;
  assign clk_out_p_0 = mopshub_top_board_16_0_clk_out_p;
  assign cs_c0_0 = mopshub_top_board_16_0_cs_c0;
  assign cs_c10_0 = mopshub_top_board_16_0_cs_c10;
  assign cs_c11_0 = mopshub_top_board_16_0_cs_c11;
  assign cs_c12_0 = mopshub_top_board_16_0_cs_c12;
  assign cs_c13_0 = mopshub_top_board_16_0_cs_c13;
  assign cs_c14_0 = mopshub_top_board_16_0_cs_c14;
  assign cs_c15_0 = mopshub_top_board_16_0_cs_c15;
  assign cs_c1_0 = mopshub_top_board_16_0_cs_c1;
  assign cs_c2_0 = mopshub_top_board_16_0_cs_c2;
  assign cs_c3_0 = mopshub_top_board_16_0_cs_c3;
  assign cs_c4_0 = mopshub_top_board_16_0_cs_c4;
  assign cs_c5_0 = mopshub_top_board_16_0_cs_c5;
  assign cs_c6_0 = mopshub_top_board_16_0_cs_c6;
  assign cs_c7_0 = mopshub_top_board_16_0_cs_c7;
  assign cs_c8_0 = mopshub_top_board_16_0_cs_c8;
  assign cs_c9_0 = mopshub_top_board_16_0_cs_c9;
  assign cs_m0_0 = mopshub_top_board_16_0_cs_m0;
  assign cs_m10_0 = mopshub_top_board_16_0_cs_m10;
  assign cs_m11_0 = mopshub_top_board_16_0_cs_m11;
  assign cs_m12_0 = mopshub_top_board_16_0_cs_m12;
  assign cs_m13_0 = mopshub_top_board_16_0_cs_m13;
  assign cs_m14_0 = mopshub_top_board_16_0_cs_m14;
  assign cs_m15_0 = mopshub_top_board_16_0_cs_m15;
  assign cs_m1_0 = mopshub_top_board_16_0_cs_m1;
  assign cs_m2_0 = mopshub_top_board_16_0_cs_m2;
  assign cs_m3_0 = mopshub_top_board_16_0_cs_m3;
  assign cs_m4_0 = mopshub_top_board_16_0_cs_m4;
  assign cs_m5_0 = mopshub_top_board_16_0_cs_m5;
  assign cs_m6_0 = mopshub_top_board_16_0_cs_m6;
  assign cs_m7_0 = mopshub_top_board_16_0_cs_m7;
  assign cs_m8_0 = mopshub_top_board_16_0_cs_m8;
  assign cs_m9_0 = mopshub_top_board_16_0_cs_m9;
  assign data_in_from_pins_n_0_1 = rx_elink_n_0[0];
  assign data_in_from_pins_p_0_1 = rx_elink_p_0[0];
  assign in_rx_serial_0_1 = in_rx_serial_0;
  assign irq_can_rec_0 = mopshub_top_board_16_0_irq_can_rec;
  assign irq_can_tra_0 = mopshub_top_board_16_0_irq_can_tra;
  assign irq_elink_rec_0 = mopshub_top_board_16_0_irq_elink_rec;
  assign irq_elink_tra_0 = mopshub_top_board_16_0_irq_elink_tra;
  assign miso_c_0_1 = miso_c_0;
  assign miso_m_0_1 = miso_m_0;
  assign mosi_c_0 = mopshub_top_board_16_0_mosi_c;
  assign mosi_m_0 = mopshub_top_board_16_0_mosi_m;
  assign out_tx_serial_0 = mopshub_top_board_16_0_out_tx_serial;
  assign rx0_0_1 = rx0_0;
  assign rx10_0_1 = rx10_0;
  assign rx11_0_1 = rx11_0;
  assign rx12_0_1 = rx12_0;
  assign rx13_0_1 = rx13_0;
  assign rx14_0_1 = rx14_0;
  assign rx15_0_1 = rx15_0;
  assign rx1_0_1 = rx1_0;
  assign rx2_0_1 = rx2_0;
  assign rx3_0_1 = rx3_0;
  assign rx4_0_1 = rx4_0;
  assign rx5_0_1 = rx5_0;
  assign rx6_0_1 = rx6_0;
  assign rx7_0_1 = rx7_0;
  assign rx8_0_1 = rx8_0;
  assign rx9_0_1 = rx9_0;
  assign rx_data_rdy_0 = mopshub_top_board_16_0_rx_data_rdy;
  assign sck_c_0 = mopshub_top_board_16_0_sck_c;
  assign sck_m_0 = mopshub_top_board_16_0_sck_m;
  assign shift_clk_0_1 = shift_clk_0;
  assign shift_data_0_1 = shift_data_0;
  assign shift_mode_0_1 = shift_mode_0;
  assign simple_out_0 = mopshub_top_board_16_0_simple_out;
  assign tmr_out_0 = mopshub_top_board_16_0_tmr_out;
  assign tx0_0 = mopshub_top_board_16_0_tx0;
  assign tx10_0 = mopshub_top_board_16_0_tx10;
  assign tx11_0 = mopshub_top_board_16_0_tx11;
  assign tx12_0 = mopshub_top_board_16_0_tx12;
  assign tx13_0 = mopshub_top_board_16_0_tx13;
  assign tx14_0 = mopshub_top_board_16_0_tx14;
  assign tx15_0 = mopshub_top_board_16_0_tx15;
  assign tx1_0 = mopshub_top_board_16_0_tx1;
  assign tx2_0 = mopshub_top_board_16_0_tx2;
  assign tx3_0 = mopshub_top_board_16_0_tx3;
  assign tx4_0 = mopshub_top_board_16_0_tx4;
  assign tx5_0 = mopshub_top_board_16_0_tx5;
  assign tx6_0 = mopshub_top_board_16_0_tx6;
  assign tx7_0 = mopshub_top_board_16_0_tx7;
  assign tx8_0 = mopshub_top_board_16_0_tx8;
  assign tx9_0 = mopshub_top_board_16_0_tx9;
  assign tx_data_rdy_0 = mopshub_top_board_16_0_tx_data_rdy;
  assign tx_elink_n_0[0] = selectio_wiz_1_data_out_to_pins_n;
  assign tx_elink_p_0[0] = selectio_wiz_1_data_out_to_pins_p;
  mopshub_board_v3TMR_clk_wiz_0_0 clk_wiz_0
       (.clk_elink(clk_wiz_0_clk_elink),
        .clk_in1_n(CLK_IN1_D_0_1_CLK_N),
        .clk_in1_p(CLK_IN1_D_0_1_CLK_P),
        .clk_rx_m(clk_wiz_0_clk_rx_m),
        .clk_tx_m(clk_wiz_0_clk_tx_m));
  mopshub_board_v3TMR_clk_wiz_1_0 clk_wiz_1
       (.clk_100(clk_wiz_1_clk_100),
        .clk_in1(clk_wiz_s_clk_40));
  mopshub_board_v3TMR_clk_wiz_s_0 clk_wiz_s
       (.clk_40(clk_wiz_s_clk_40),
        .clk_in1(clk_in1_0_1),
        .clk_m(clk_wiz_s_clk_m),
        .clk_uart(clk_wiz_s_clk_uart),
        .locked(clk_wiz_s_locked));
  mopshub_board_v3TMR_ila_0_0 ila_0
       (.clk(clk_wiz_s_clk_40),
        .probe0(sem_controller_wrapp_0_status_heartbeat),
        .probe1(sem_controller_wrapp_0_status_initialization),
        .probe2(sem_controller_wrapp_0_status_observation),
        .probe3(sem_controller_wrapp_0_status_correction),
        .probe4(sem_controller_wrapp_0_status_classification),
        .probe5(sem_controller_wrapp_0_status_injection),
        .probe6(sem_controller_wrapp_0_status_essential),
        .probe7(sem_controller_wrapp_0_status_uncorrectable));
  mopshub_board_v3TMR_ip_buf_0_0 ip_buf_0
       (.input_wire(clk_wiz_s_clk_40),
        .output_wire(ip_buf_0_output_wire));
  mopshub_board_v3TMR_mopshub_top_board_16_0_0 mopshub_top_board_16_0
       (.clk_40(clk_wiz_s_clk_40),
        .clk_elink(clk_wiz_0_clk_elink),
        .clk_m(clk_wiz_s_clk_m),
        .clk_out_n(mopshub_top_board_16_0_clk_out_n),
        .clk_out_p(mopshub_top_board_16_0_clk_out_p),
        .clk_uart(clk_wiz_s_clk_uart),
        .cs_c0(mopshub_top_board_16_0_cs_c0),
        .cs_c1(mopshub_top_board_16_0_cs_c1),
        .cs_c10(mopshub_top_board_16_0_cs_c10),
        .cs_c11(mopshub_top_board_16_0_cs_c11),
        .cs_c12(mopshub_top_board_16_0_cs_c12),
        .cs_c13(mopshub_top_board_16_0_cs_c13),
        .cs_c14(mopshub_top_board_16_0_cs_c14),
        .cs_c15(mopshub_top_board_16_0_cs_c15),
        .cs_c2(mopshub_top_board_16_0_cs_c2),
        .cs_c3(mopshub_top_board_16_0_cs_c3),
        .cs_c4(mopshub_top_board_16_0_cs_c4),
        .cs_c5(mopshub_top_board_16_0_cs_c5),
        .cs_c6(mopshub_top_board_16_0_cs_c6),
        .cs_c7(mopshub_top_board_16_0_cs_c7),
        .cs_c8(mopshub_top_board_16_0_cs_c8),
        .cs_c9(mopshub_top_board_16_0_cs_c9),
        .cs_m0(mopshub_top_board_16_0_cs_m0),
        .cs_m1(mopshub_top_board_16_0_cs_m1),
        .cs_m10(mopshub_top_board_16_0_cs_m10),
        .cs_m11(mopshub_top_board_16_0_cs_m11),
        .cs_m12(mopshub_top_board_16_0_cs_m12),
        .cs_m13(mopshub_top_board_16_0_cs_m13),
        .cs_m14(mopshub_top_board_16_0_cs_m14),
        .cs_m15(mopshub_top_board_16_0_cs_m15),
        .cs_m2(mopshub_top_board_16_0_cs_m2),
        .cs_m3(mopshub_top_board_16_0_cs_m3),
        .cs_m4(mopshub_top_board_16_0_cs_m4),
        .cs_m5(mopshub_top_board_16_0_cs_m5),
        .cs_m6(mopshub_top_board_16_0_cs_m6),
        .cs_m7(mopshub_top_board_16_0_cs_m7),
        .cs_m8(mopshub_top_board_16_0_cs_m8),
        .cs_m9(mopshub_top_board_16_0_cs_m9),
        .in_rx_serial(in_rx_serial_0_1),
        .irq_can_rec(mopshub_top_board_16_0_irq_can_rec),
        .irq_can_tra(mopshub_top_board_16_0_irq_can_tra),
        .irq_elink_rec(mopshub_top_board_16_0_irq_elink_rec),
        .irq_elink_tra(mopshub_top_board_16_0_irq_elink_tra),
        .locked(clk_wiz_s_locked),
        .miso_c(miso_c_0_1),
        .miso_m(miso_m_0_1),
        .mopshub_id(xlconstant_0_dout),
        .mosi_c(mopshub_top_board_16_0_mosi_c),
        .mosi_m(mopshub_top_board_16_0_mosi_m),
        .out_tx_serial(mopshub_top_board_16_0_out_tx_serial),
        .reset(proc_sys_reset_0_mb_reset),
        .rx0(rx0_0_1),
        .rx1(rx1_0_1),
        .rx10(rx10_0_1),
        .rx11(rx11_0_1),
        .rx12(rx12_0_1),
        .rx13(rx13_0_1),
        .rx14(rx14_0_1),
        .rx15(rx15_0_1),
        .rx2(rx2_0_1),
        .rx3(rx3_0_1),
        .rx4(rx4_0_1),
        .rx5(rx5_0_1),
        .rx6(rx6_0_1),
        .rx7(rx7_0_1),
        .rx8(rx8_0_1),
        .rx9(rx9_0_1),
        .rx_data_rdy(mopshub_top_board_16_0_rx_data_rdy),
        .rx_elink2bit(selectio_wiz_0_data_in_to_device),
        .sck_c(mopshub_top_board_16_0_sck_c),
        .sck_m(mopshub_top_board_16_0_sck_m),
        .shift_clk(shift_clk_0_1),
        .shift_data(shift_data_0_1),
        .shift_mode(shift_mode_0_1),
        .simple_out(mopshub_top_board_16_0_simple_out),
        .tmr_out(mopshub_top_board_16_0_tmr_out),
        .tx0(mopshub_top_board_16_0_tx0),
        .tx1(mopshub_top_board_16_0_tx1),
        .tx10(mopshub_top_board_16_0_tx10),
        .tx11(mopshub_top_board_16_0_tx11),
        .tx12(mopshub_top_board_16_0_tx12),
        .tx13(mopshub_top_board_16_0_tx13),
        .tx14(mopshub_top_board_16_0_tx14),
        .tx15(mopshub_top_board_16_0_tx15),
        .tx2(mopshub_top_board_16_0_tx2),
        .tx3(mopshub_top_board_16_0_tx3),
        .tx4(mopshub_top_board_16_0_tx4),
        .tx5(mopshub_top_board_16_0_tx5),
        .tx6(mopshub_top_board_16_0_tx6),
        .tx7(mopshub_top_board_16_0_tx7),
        .tx8(mopshub_top_board_16_0_tx8),
        .tx9(mopshub_top_board_16_0_tx9),
        .tx_data_rdy(mopshub_top_board_16_0_tx_data_rdy),
        .tx_elink2bit(mopshub_top_board_16_0_tx_elink2bit));
  mopshub_board_v3TMR_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_s_locked),
        .ext_reset_in(xlconstant_1_dout),
        .mb_debug_sys_rst(1'b0),
        .mb_reset(proc_sys_reset_0_mb_reset),
        .slowest_sync_clk(clk_wiz_s_clk_40));
  mopshub_board_v3TMR_selectio_wiz_0_0 selectio_wiz_0
       (.bitslip(xlconstant_bit_dout),
        .clk_div_in(clk_wiz_0_clk_elink),
        .clk_in(clk_wiz_0_clk_rx_m),
        .data_in_from_pins_n(data_in_from_pins_n_0_1),
        .data_in_from_pins_p(data_in_from_pins_p_0_1),
        .data_in_to_device(selectio_wiz_0_data_in_to_device),
        .io_reset(proc_sys_reset_0_mb_reset));
  mopshub_board_v3TMR_selectio_wiz_1_0 selectio_wiz_1
       (.clk_div_in(clk_wiz_0_clk_elink),
        .clk_in(clk_wiz_0_clk_tx_m),
        .data_out_from_device(mopshub_top_board_16_0_tx_elink2bit),
        .data_out_to_pins_n(selectio_wiz_1_data_out_to_pins_n),
        .data_out_to_pins_p(selectio_wiz_1_data_out_to_pins_p),
        .io_reset(proc_sys_reset_0_mb_reset));
  mopshub_board_v3TMR_sem_controller_wrapp_0_0 sem_controller_wrapp_0
       (.clk_icap(clk_wiz_1_clk_100),
        .reset(proc_sys_reset_0_mb_reset),
        .status_classification(sem_controller_wrapp_0_status_classification),
        .status_correction(sem_controller_wrapp_0_status_correction),
        .status_essential(sem_controller_wrapp_0_status_essential),
        .status_heartbeat(sem_controller_wrapp_0_status_heartbeat),
        .status_initialization(sem_controller_wrapp_0_status_initialization),
        .status_injection(sem_controller_wrapp_0_status_injection),
        .status_observation(sem_controller_wrapp_0_status_observation),
        .status_uncorrectable(sem_controller_wrapp_0_status_uncorrectable));
  mopshub_board_v3TMR_xlconstant_0_0 xlconstant_0
       (.dout(xlconstant_0_dout));
  mopshub_board_v3TMR_xlconstant_1_0 xlconstant_1
       (.dout(xlconstant_1_dout));
  mopshub_board_v3TMR_xlconstant_bit_0 xlconstant_bit
       (.dout(xlconstant_bit_dout));
endmodule
