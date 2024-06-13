// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jun 13 16:19:19 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/dcs/git/mopshub/vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sim_netlist.v
// Design      : mopshub_readout_bd_gig_ethernet_pcs_pma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
(* NotValidForBitStream *)
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    resetdone,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gtpowergood,
    signal_detect);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output resetdone;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;

  wire \<const0> ;
  wire \<const1> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxp;
  wire rxuserclk2_out;
  wire rxuserclk_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txp;
  wire userclk2_out;
  wire userclk_out;
  wire NLW_inst_mmcm_locked_out_UNCONNECTED;
  wire [15:7]NLW_inst_status_vector_UNCONNECTED;

  assign mmcm_locked_out = \<const1> ;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  VCC VCC
       (.P(\<const1> ));
  (* EXAMPLE_SIMULATION = "0" *) 
  (* X_CORE_INFO = "gig_ethernet_pcs_pma_v16_2_1,Vivado 2020.2" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_support inst
       (.configuration_vector({1'b0,configuration_vector[3:1],1'b0}),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtpowergood(gtpowergood),
        .gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .independent_clock_bufg(independent_clock_bufg),
        .mmcm_locked_out(NLW_inst_mmcm_locked_out_UNCONNECTED),
        .pma_reset_out(pma_reset_out),
        .reset(reset),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxp(rxp),
        .rxuserclk2_out(rxuserclk2_out),
        .rxuserclk_out(rxuserclk_out),
        .signal_detect(signal_detect),
        .status_vector({NLW_inst_status_vector_UNCONNECTED[15:7],\^status_vector }),
        .txn(txn),
        .txp(txp),
        .userclk2_out(userclk2_out),
        .userclk_out(userclk_out));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer
   (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    rxresetdone_out,
    drpclk_in);
  output \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input [0:0]rxresetdone_out;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_10
   (sm_reset_tx_timer_clr0__0,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    \FSM_sequential_sm_reset_tx_reg[2] ,
    drpclk_in,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    Q,
    sm_reset_tx_timer_clr013_out__0,
    sm_reset_tx_timer_clr_reg,
    sm_reset_tx_timer_sat,
    sm_reset_tx_timer_clr_reg_0,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gthe4.txuserrdy_int );
  output sm_reset_tx_timer_clr0__0;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  output \FSM_sequential_sm_reset_tx_reg[2] ;
  input [0:0]drpclk_in;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [2:0]Q;
  input sm_reset_tx_timer_clr013_out__0;
  input sm_reset_tx_timer_clr_reg;
  input sm_reset_tx_timer_sat;
  input sm_reset_tx_timer_clr_reg_0;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gthe4.txuserrdy_int ;

  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire \FSM_sequential_sm_reset_tx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_userclk_tx_active_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire sm_reset_tx_timer_clr013_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_clr_i_2_n_0;
  wire sm_reset_tx_timer_clr_reg;
  wire sm_reset_tx_timer_clr_reg_0;
  wire sm_reset_tx_timer_sat;

  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_tx[2]_i_5 
       (.I0(sm_reset_tx_timer_clr_reg),
        .I1(sm_reset_tx_timer_sat),
        .I2(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr0__0));
  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_tx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFACFFACF0AC00ACF)) 
    sm_reset_tx_timer_clr_i_1
       (.I0(sm_reset_tx_timer_clr_i_2_n_0),
        .I1(sm_reset_tx_timer_clr_reg_0),
        .I2(Q[1]),
        .I3(Q[2]),
        .I4(Q[0]),
        .I5(sm_reset_tx_timer_clr_reg),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  LUT6 #(
    .INIT(64'hBABF00008A800000)) 
    sm_reset_tx_timer_clr_i_2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(Q[1]),
        .I4(sm_reset_tx_timer_clr013_out__0),
        .I5(gtwiz_reset_userclk_tx_active_sync),
        .O(sm_reset_tx_timer_clr_i_2_n_0));
  LUT6 #(
    .INIT(64'hFFFFFCCF00000008)) 
    txuserrdy_out_i_1
       (.I0(sm_reset_tx_timer_clr0__0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gthe4.txuserrdy_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[2] ));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_11
   (E,
    i_in_out_reg_0,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[2] ,
    \FSM_sequential_sm_reset_rx_reg[1]_0 ,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    sm_reset_rx_timer_sat,
    \FSM_sequential_sm_reset_rx_reg[0]_0 ,
    \FSM_sequential_sm_reset_rx_reg[0]_1 ,
    p_0_in11_out__0,
    gtwiz_reset_rx_done_int_reg,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.gtrxreset_int );
  output [0:0]E;
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[2] ;
  output \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input \FSM_sequential_sm_reset_rx_reg[0] ;
  input sm_reset_rx_timer_sat;
  input \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  input \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  input p_0_in11_out__0;
  input gtwiz_reset_rx_done_int_reg;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.gtrxreset_int ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_rx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[1]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gtrxreset_int ;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_rx_done_int_reg;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire p_0_in11_out__0;
  wire plllock_rx_sync;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \FSM_sequential_sm_reset_rx[2]_i_3 
       (.I0(plllock_rx_sync),
        .I1(Q[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_sm_reset_rx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ));
  MUXF7 \FSM_sequential_sm_reset_rx_reg[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_rx[2]_i_3_n_0 ),
        .I1(\FSM_sequential_sm_reset_rx_reg[0] ),
        .O(E),
        .S(Q[2]));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003E)) 
    gtrxreset_out_i_1
       (.I0(\FSM_sequential_sm_reset_rx_reg[1] ),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.gtrxreset_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[1]_0 ));
  LUT6 #(
    .INIT(64'hFFFF77FF00800080)) 
    gtwiz_reset_rx_done_int_i_1
       (.I0(Q[2]),
        .I1(Q[1]),
        .I2(p_0_in11_out__0),
        .I3(Q[0]),
        .I4(plllock_rx_sync),
        .I5(gtwiz_reset_rx_done_int_reg),
        .O(\FSM_sequential_sm_reset_rx_reg[2] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_rx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h0080)) 
    sm_reset_rx_cdr_to_clr_i_3
       (.I0(Q[1]),
        .I1(plllock_rx_sync),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair91" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    sm_reset_rx_timer_clr_i_3
       (.I0(plllock_rx_sync),
        .I1(Q[0]),
        .I2(sm_reset_rx_timer_sat),
        .I3(\FSM_sequential_sm_reset_rx_reg[0]_0 ),
        .O(i_in_out_reg_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_12
   (E,
    i_in_out_reg_0,
    \FSM_sequential_sm_reset_tx_reg[0] ,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    gtwiz_reset_tx_done_int0__0,
    sm_reset_tx_timer_clr0__0,
    sm_reset_tx_timer_sat,
    \FSM_sequential_sm_reset_tx_reg[0]_0 ,
    \FSM_sequential_sm_reset_tx_reg[0]_1 ,
    gtwiz_reset_tx_done_int_reg,
    gtwiz_reset_tx_any_sync,
    \gen_gtwizard_gthe4.gttxreset_int );
  output [0:0]E;
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_tx_reg[0] ;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input gtwiz_reset_tx_done_int0__0;
  input sm_reset_tx_timer_clr0__0;
  input sm_reset_tx_timer_sat;
  input \FSM_sequential_sm_reset_tx_reg[0]_0 ;
  input \FSM_sequential_sm_reset_tx_reg[0]_1 ;
  input gtwiz_reset_tx_done_int_reg;
  input gtwiz_reset_tx_any_sync;
  input \gen_gtwizard_gthe4.gttxreset_int ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_tx[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[0] ;
  wire \FSM_sequential_sm_reset_tx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_tx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_done_int0__0;
  wire gtwiz_reset_tx_done_int_reg;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire plllock_tx_sync;
  wire sm_reset_tx_timer_clr012_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_sat;

  LUT6 #(
    .INIT(64'h3A0A3A3A3A0A0A0A)) 
    \FSM_sequential_sm_reset_tx[2]_i_1 
       (.I0(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ),
        .I1(Q[1]),
        .I2(Q[2]),
        .I3(gtwiz_reset_tx_done_int0__0),
        .I4(Q[0]),
        .I5(sm_reset_tx_timer_clr0__0),
        .O(E));
  LUT6 #(
    .INIT(64'h00B0FFFF00B00000)) 
    \FSM_sequential_sm_reset_tx[2]_i_3 
       (.I0(plllock_tx_sync),
        .I1(Q[0]),
        .I2(sm_reset_tx_timer_sat),
        .I3(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .I4(Q[1]),
        .I5(\FSM_sequential_sm_reset_tx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_tx[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFF7F0000003C)) 
    gttxreset_out_i_1
       (.I0(sm_reset_tx_timer_clr012_out__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(Q[2]),
        .I4(gtwiz_reset_tx_any_sync),
        .I5(\gen_gtwizard_gthe4.gttxreset_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT3 #(
    .INIT(8'h40)) 
    gttxreset_out_i_2
       (.I0(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .I1(sm_reset_tx_timer_sat),
        .I2(plllock_tx_sync),
        .O(sm_reset_tx_timer_clr012_out__0));
  LUT6 #(
    .INIT(64'hFFCFFFFF00008080)) 
    gtwiz_reset_tx_done_int_i_1
       (.I0(gtwiz_reset_tx_done_int0__0),
        .I1(Q[0]),
        .I2(Q[2]),
        .I3(plllock_tx_sync),
        .I4(Q[1]),
        .I5(gtwiz_reset_tx_done_int_reg),
        .O(\FSM_sequential_sm_reset_tx_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(plllock_tx_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair92" *) 
  LUT4 #(
    .INIT(16'h00B0)) 
    sm_reset_tx_timer_clr_i_3
       (.I0(plllock_tx_sync),
        .I1(Q[0]),
        .I2(sm_reset_tx_timer_sat),
        .I3(\FSM_sequential_sm_reset_tx_reg[0]_0 ),
        .O(i_in_out_reg_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_13
   (i_in_out_reg_0,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[2] ,
    rxcdrlock_out,
    drpclk_in,
    sm_reset_rx_cdr_to_sat,
    Q,
    sm_reset_rx_cdr_to_clr_reg,
    sm_reset_rx_cdr_to_clr,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.rxprogdivreset_int );
  output i_in_out_reg_0;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[2] ;
  input [0:0]rxcdrlock_out;
  input [0:0]drpclk_in;
  input sm_reset_rx_cdr_to_sat;
  input [2:0]Q;
  input sm_reset_rx_cdr_to_clr_reg;
  input sm_reset_rx_cdr_to_clr;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;

  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire \FSM_sequential_sm_reset_rx_reg[2] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire gtwiz_reset_rx_any_sync;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]rxcdrlock_out;
  wire sm_reset_rx_cdr_to_clr;
  wire sm_reset_rx_cdr_to_clr0__0;
  wire sm_reset_rx_cdr_to_clr_reg;
  wire sm_reset_rx_cdr_to_sat;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rxcdrlock_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(i_in_out_reg_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFFFF700000330)) 
    rxprogdivreset_out_i_1
       (.I0(sm_reset_rx_cdr_to_clr0__0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[2] ));
  LUT6 #(
    .INIT(64'hFFFF3FFF02023303)) 
    sm_reset_rx_cdr_to_clr_i_1
       (.I0(sm_reset_rx_cdr_to_clr0__0),
        .I1(Q[1]),
        .I2(Q[0]),
        .I3(sm_reset_rx_cdr_to_clr_reg),
        .I4(Q[2]),
        .I5(sm_reset_rx_cdr_to_clr),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    sm_reset_rx_cdr_to_clr_i_2
       (.I0(sm_reset_rx_cdr_to_sat),
        .I1(i_in_out_reg_0),
        .O(sm_reset_rx_cdr_to_clr0__0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_22
   (drprst_in_sync,
    drpclk_in);
  output drprst_in_sync;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(drprst_in_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_25
   (i_in_out_reg_0,
    \cpll_cal_state_reg[0] ,
    in0,
    drpclk_in,
    Q,
    cal_on_tx_reset_in_sync,
    USER_CPLLLOCK_OUT_reg);
  output i_in_out_reg_0;
  output \cpll_cal_state_reg[0] ;
  input in0;
  input [0:0]drpclk_in;
  input [1:0]Q;
  input cal_on_tx_reset_in_sync;
  input USER_CPLLLOCK_OUT_reg;

  wire [1:0]Q;
  wire USER_CPLLLOCK_OUT_reg;
  wire cal_on_tx_reset_in_sync;
  wire \cpll_cal_state_reg[0] ;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_out_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  LUT5 #(
    .INIT(32'h00000004)) 
    USER_CPLLLOCK_OUT_i_1
       (.I0(Q[0]),
        .I1(i_in_out_reg_0),
        .I2(cal_on_tx_reset_in_sync),
        .I3(Q[1]),
        .I4(USER_CPLLLOCK_OUT_reg),
        .O(\cpll_cal_state_reg[0] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(i_in_out_reg_0),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_26
   (D,
    drpclk_in,
    txoutclksel_int,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input [0:0]txoutclksel_int;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ;
  wire [0:0]txoutclksel_int;
  wire [0:0]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[0]_i_1 
       (.I0(txoutclksel_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] ),
        .I2(user_txoutclksel_sync),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_27
   (D,
    drpclk_in,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ;
  wire [1:1]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b0),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h2)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[1]_i_1 
       (.I0(user_txoutclksel_sync),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] ),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_28
   (D,
    drpclk_in,
    txoutclksel_int,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] );
  output [0:0]D;
  input [0:0]drpclk_in;
  input [0:0]txoutclksel_int;
  input \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ;

  wire [0:0]D;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire n_0_0;
  wire \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ;
  wire [0:0]txoutclksel_int;
  wire [2:2]user_txoutclksel_sync;

  LUT1 #(
    .INIT(2'h2)) 
    i_0
       (.I0(1'b1),
        .O(n_0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(n_0_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txoutclksel_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT[2]_i_1 
       (.I0(txoutclksel_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] ),
        .I2(user_txoutclksel_sync),
        .O(D));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_29
   (\cpll_cal_state_reg[15] ,
    D,
    i_in_meta_reg_0,
    drpclk_in,
    Q,
    cal_on_tx_reset_in_sync,
    freq_counter_rst_reg,
    freq_counter_rst_reg_0,
    \cpll_cal_state_reg[29] ,
    freq_counter_rst_reg_1,
    \cpll_cal_state_reg[20] ,
    cal_fail_store__0);
  output \cpll_cal_state_reg[15] ;
  output [4:0]D;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input [8:0]Q;
  input cal_on_tx_reset_in_sync;
  input freq_counter_rst_reg;
  input freq_counter_rst_reg_0;
  input \cpll_cal_state_reg[29] ;
  input freq_counter_rst_reg_1;
  input \cpll_cal_state_reg[20] ;
  input cal_fail_store__0;

  wire [4:0]D;
  wire [8:0]Q;
  wire cal_fail_store__0;
  wire cal_on_tx_reset_in_sync;
  wire \cpll_cal_state_reg[15] ;
  wire \cpll_cal_state_reg[20] ;
  wire \cpll_cal_state_reg[29] ;
  wire [0:0]drpclk_in;
  wire freq_counter_rst_i_2_n_0;
  wire freq_counter_rst_reg;
  wire freq_counter_rst_reg_0;
  wire freq_counter_rst_reg_1;
  wire gthe4_txprgdivresetdone_sync;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;

  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[19]_i_1 
       (.I0(gthe4_txprgdivresetdone_sync),
        .I1(Q[3]),
        .I2(\cpll_cal_state_reg[29] ),
        .I3(Q[2]),
        .O(D[0]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[20]_i_1 
       (.I0(Q[3]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(\cpll_cal_state_reg[20] ),
        .I3(Q[4]),
        .O(D[1]));
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[29]_i_1 
       (.I0(gthe4_txprgdivresetdone_sync),
        .I1(Q[6]),
        .I2(\cpll_cal_state_reg[29] ),
        .I3(Q[5]),
        .O(D[2]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hEAAA)) 
    \cpll_cal_state[30]_i_1 
       (.I0(Q[7]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(Q[6]),
        .I3(cal_fail_store__0),
        .O(D[3]));
  (* SOFT_HLUTNM = "soft_lutpair63" *) 
  LUT4 #(
    .INIT(16'hAAEA)) 
    \cpll_cal_state[31]_i_1 
       (.I0(Q[8]),
        .I1(gthe4_txprgdivresetdone_sync),
        .I2(Q[6]),
        .I3(cal_fail_store__0),
        .O(D[4]));
  LUT6 #(
    .INIT(64'hFFFFFEFE30003232)) 
    freq_counter_rst_i_1
       (.I0(Q[1]),
        .I1(cal_on_tx_reset_in_sync),
        .I2(Q[0]),
        .I3(freq_counter_rst_reg),
        .I4(freq_counter_rst_i_2_n_0),
        .I5(freq_counter_rst_reg_0),
        .O(\cpll_cal_state_reg[15] ));
  LUT4 #(
    .INIT(16'h0777)) 
    freq_counter_rst_i_2
       (.I0(freq_counter_rst_reg_1),
        .I1(Q[1]),
        .I2(Q[3]),
        .I3(gthe4_txprgdivresetdone_sync),
        .O(freq_counter_rst_i_2_n_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gthe4_txprgdivresetdone_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_3
   (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    txresetdone_out,
    drpclk_in);
  output \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input [0:0]txresetdone_out;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire [0:0]txresetdone_out;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(txresetdone_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_30
   (txprogdivreset_int_reg,
    i_in_meta_reg_0,
    drpclk_in,
    txprogdivreset_int,
    \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg );
  output txprogdivreset_int_reg;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input txprogdivreset_int;
  input \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ;

  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire i_in_meta;
  wire i_in_meta_reg_0;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ;
  wire txprogdivreset_int;
  wire txprogdivreset_int_reg;
  wire user_txprogdivreset_sync;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta_reg_0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(user_txprogdivreset_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT3 #(
    .INIT(8'hB8)) 
    \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_i_1 
       (.I0(txprogdivreset_int),
        .I1(\non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg ),
        .I2(user_txprogdivreset_sync),
        .O(txprogdivreset_int_reg));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_4
   (E,
    gtpowergood_out,
    drpclk_in,
    \FSM_sequential_sm_reset_all_reg[0] ,
    Q,
    \FSM_sequential_sm_reset_all_reg[0]_0 );
  output [0:0]E;
  input [0:0]gtpowergood_out;
  input [0:0]drpclk_in;
  input \FSM_sequential_sm_reset_all_reg[0] ;
  input [2:0]Q;
  input \FSM_sequential_sm_reset_all_reg[0]_0 ;

  wire [0:0]E;
  wire \FSM_sequential_sm_reset_all_reg[0] ;
  wire \FSM_sequential_sm_reset_all_reg[0]_0 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire [0:0]gtpowergood_out;
  wire gtpowergood_sync;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;

  LUT6 #(
    .INIT(64'hAF0FAF00CFFFCFFF)) 
    \FSM_sequential_sm_reset_all[2]_i_1 
       (.I0(gtpowergood_sync),
        .I1(\FSM_sequential_sm_reset_all_reg[0] ),
        .I2(Q[2]),
        .I3(Q[0]),
        .I4(\FSM_sequential_sm_reset_all_reg[0]_0 ),
        .I5(Q[1]),
        .O(E));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtpowergood_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtpowergood_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_5
   (gtwiz_reset_rx_datapath_dly,
    in0,
    drpclk_in);
  output gtwiz_reset_rx_datapath_dly;
  input in0;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire gtwiz_reset_rx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_6
   (D,
    sm_reset_rx_pll_timer_sat_reg,
    in0,
    drpclk_in,
    Q,
    p_0_in11_out__0,
    sm_reset_rx_pll_timer_sat,
    \FSM_sequential_sm_reset_rx[2]_i_3 ,
    gtwiz_reset_rx_datapath_dly);
  output [1:0]D;
  output sm_reset_rx_pll_timer_sat_reg;
  input in0;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input p_0_in11_out__0;
  input sm_reset_rx_pll_timer_sat;
  input \FSM_sequential_sm_reset_rx[2]_i_3 ;
  input gtwiz_reset_rx_datapath_dly;

  wire [1:0]D;
  wire \FSM_sequential_sm_reset_rx[2]_i_3 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire gtwiz_reset_rx_datapath_dly;
  wire gtwiz_reset_rx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire p_0_in11_out__0;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'hDD769976)) 
    \FSM_sequential_sm_reset_rx[0]_i_1 
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(gtwiz_reset_rx_pll_and_datapath_dly),
        .I3(Q[1]),
        .I4(p_0_in11_out__0),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair88" *) 
  LUT5 #(
    .INIT(32'h00FFF511)) 
    \FSM_sequential_sm_reset_rx[1]_i_1 
       (.I0(Q[2]),
        .I1(gtwiz_reset_rx_pll_and_datapath_dly),
        .I2(p_0_in11_out__0),
        .I3(Q[1]),
        .I4(Q[0]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \FSM_sequential_sm_reset_rx[2]_i_5 
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(\FSM_sequential_sm_reset_rx[2]_i_3 ),
        .I2(Q[0]),
        .I3(gtwiz_reset_rx_pll_and_datapath_dly),
        .I4(gtwiz_reset_rx_datapath_dly),
        .O(sm_reset_rx_pll_timer_sat_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_rx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_7
   (gtwiz_reset_tx_datapath_dly,
    in0,
    drpclk_in);
  output gtwiz_reset_tx_datapath_dly;
  input in0;
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  wire gtwiz_reset_tx_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_8
   (sm_reset_tx_pll_timer_sat_reg,
    D,
    in0,
    drpclk_in,
    sm_reset_tx_pll_timer_sat,
    \FSM_sequential_sm_reset_tx[2]_i_3 ,
    Q,
    gtwiz_reset_tx_datapath_dly);
  output sm_reset_tx_pll_timer_sat_reg;
  output [1:0]D;
  input in0;
  input [0:0]drpclk_in;
  input sm_reset_tx_pll_timer_sat;
  input \FSM_sequential_sm_reset_tx[2]_i_3 ;
  input [2:0]Q;
  input gtwiz_reset_tx_datapath_dly;

  wire [1:0]D;
  wire \FSM_sequential_sm_reset_tx[2]_i_3 ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire gtwiz_reset_tx_datapath_dly;
  wire gtwiz_reset_tx_pll_and_datapath_dly;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire in0;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_reg;

  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h0F3E)) 
    \FSM_sequential_sm_reset_tx[0]_i_1 
       (.I0(gtwiz_reset_tx_pll_and_datapath_dly),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(Q[1]),
        .O(D[0]));
  (* SOFT_HLUTNM = "soft_lutpair89" *) 
  LUT4 #(
    .INIT(16'h55AB)) 
    \FSM_sequential_sm_reset_tx[1]_i_1 
       (.I0(Q[0]),
        .I1(gtwiz_reset_tx_pll_and_datapath_dly),
        .I2(Q[2]),
        .I3(Q[1]),
        .O(D[1]));
  LUT5 #(
    .INIT(32'h2F2F2F20)) 
    \FSM_sequential_sm_reset_tx[2]_i_6 
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(\FSM_sequential_sm_reset_tx[2]_i_3 ),
        .I2(Q[0]),
        .I3(gtwiz_reset_tx_pll_and_datapath_dly),
        .I4(gtwiz_reset_tx_datapath_dly),
        .O(sm_reset_tx_pll_timer_sat_reg));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(in0),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_tx_pll_and_datapath_dly),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_bit_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_9
   (\FSM_sequential_sm_reset_rx_reg[1] ,
    \FSM_sequential_sm_reset_rx_reg[0] ,
    \FSM_sequential_sm_reset_rx_reg[0]_0 ,
    gtwiz_userclk_rx_active_out,
    drpclk_in,
    p_0_in11_out__0,
    Q,
    sm_reset_rx_cdr_to_sat,
    \FSM_sequential_sm_reset_rx_reg[0]_1 ,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    sm_reset_rx_timer_clr_reg,
    sm_reset_rx_timer_sat,
    sm_reset_rx_timer_clr_reg_0,
    gtwiz_reset_rx_any_sync,
    \gen_gtwizard_gthe4.rxuserrdy_int );
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  output \FSM_sequential_sm_reset_rx_reg[0] ;
  output \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  input [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]drpclk_in;
  input p_0_in11_out__0;
  input [2:0]Q;
  input sm_reset_rx_cdr_to_sat;
  input \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input sm_reset_rx_timer_clr_reg;
  input sm_reset_rx_timer_sat;
  input sm_reset_rx_timer_clr_reg_0;
  input gtwiz_reset_rx_any_sync;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;

  wire \FSM_sequential_sm_reset_rx_reg[0] ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_0 ;
  wire \FSM_sequential_sm_reset_rx_reg[0]_1 ;
  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_userclk_rx_active_sync;
  wire [0:0]gtwiz_userclk_rx_active_out;
  (* async_reg = "true" *) wire i_in_meta;
  (* async_reg = "true" *) wire i_in_sync1;
  (* async_reg = "true" *) wire i_in_sync2;
  (* async_reg = "true" *) wire i_in_sync3;
  wire p_0_in11_out__0;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_timer_clr0__0;
  wire sm_reset_rx_timer_clr_i_2_n_0;
  wire sm_reset_rx_timer_clr_reg;
  wire sm_reset_rx_timer_clr_reg_0;
  wire sm_reset_rx_timer_sat;

  LUT6 #(
    .INIT(64'h30BB30BB30BB3088)) 
    \FSM_sequential_sm_reset_rx[2]_i_4 
       (.I0(p_0_in11_out__0),
        .I1(Q[1]),
        .I2(sm_reset_rx_timer_clr0__0),
        .I3(Q[0]),
        .I4(sm_reset_rx_cdr_to_sat),
        .I5(\FSM_sequential_sm_reset_rx_reg[0]_1 ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_userclk_rx_active_out),
        .Q(i_in_meta),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    i_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync3),
        .Q(gtwiz_reset_userclk_rx_active_sync),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_meta),
        .Q(i_in_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync1),
        .Q(i_in_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE #(
    .INIT(1'b0)) 
    i_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(i_in_sync2),
        .Q(i_in_sync3),
        .R(1'b0));
  LUT6 #(
    .INIT(64'hFFFFEDED00000800)) 
    rxuserrdy_out_i_1
       (.I0(Q[0]),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(sm_reset_rx_timer_clr0__0),
        .I4(gtwiz_reset_rx_any_sync),
        .I5(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[0]_0 ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT3 #(
    .INIT(8'h40)) 
    rxuserrdy_out_i_2
       (.I0(sm_reset_rx_timer_clr_reg),
        .I1(sm_reset_rx_timer_sat),
        .I2(gtwiz_reset_userclk_rx_active_sync),
        .O(sm_reset_rx_timer_clr0__0));
  LUT6 #(
    .INIT(64'hFAAFCCFF0AA0CC0F)) 
    sm_reset_rx_timer_clr_i_1
       (.I0(sm_reset_rx_timer_clr_i_2_n_0),
        .I1(sm_reset_rx_timer_clr_reg_0),
        .I2(Q[0]),
        .I3(Q[1]),
        .I4(Q[2]),
        .I5(sm_reset_rx_timer_clr_reg),
        .O(\FSM_sequential_sm_reset_rx_reg[0] ));
  (* SOFT_HLUTNM = "soft_lutpair90" *) 
  LUT5 #(
    .INIT(32'h0B000800)) 
    sm_reset_rx_timer_clr_i_2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(Q[1]),
        .I2(sm_reset_rx_timer_clr_reg),
        .I3(sm_reset_rx_timer_sat),
        .I4(gtwiz_reset_userclk_rx_active_sync),
        .O(sm_reset_rx_timer_clr_i_2_n_0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gte4_drp_arb" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gte4_drp_arb
   (Q,
    cal_on_tx_drdy,
    DEN_O,
    DWE_O,
    DADDR_O,
    DI_O,
    drprst_in_sync,
    drpclk_in,
    DO_I,
    cal_on_tx_drpen_out,
    \addr_i_reg[27]_0 ,
    \data_i_reg[47]_0 ,
    cal_on_tx_drpwe_out,
    \gen_gtwizard_gthe4.drprdy_int );
  output [15:0]Q;
  output cal_on_tx_drdy;
  output DEN_O;
  output DWE_O;
  output [6:0]DADDR_O;
  output [15:0]DI_O;
  input drprst_in_sync;
  input [0:0]drpclk_in;
  input [15:0]DO_I;
  input cal_on_tx_drpen_out;
  input [6:0]\addr_i_reg[27]_0 ;
  input [15:0]\data_i_reg[47]_0 ;
  input cal_on_tx_drpwe_out;
  input \gen_gtwizard_gthe4.drprdy_int ;

  wire [0:0]B;
  wire CEB2;
  wire [6:0]DADDR_O;
  wire \DADDR_O[7]_i_1_n_0 ;
  wire DEN_O;
  wire DEN_O_i_1_n_0;
  wire DEN_O_i_2_n_0;
  wire [15:0]DI_O;
  wire \DI_O[15]_i_1_n_0 ;
  wire [15:0]DO_I;
  wire [47:32]DO_USR_O0;
  wire \DRDY_USR_O[2]_i_1_n_0 ;
  wire \DRDY_USR_O[2]_i_2_n_0 ;
  wire DWE_O;
  wire [15:0]Q;
  wire [27:21]addr_i;
  wire [6:0]\addr_i_reg[27]_0 ;
  wire [3:0]arb_state;
  wire \arb_state_reg_n_0_[0] ;
  wire \arb_state_reg_n_0_[1] ;
  wire \arb_state_reg_n_0_[2] ;
  wire \arb_state_reg_n_0_[3] ;
  wire cal_on_tx_drdy;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire daddr;
  wire [7:1]daddr0;
  wire \daddr_reg_n_0_[1] ;
  wire \daddr_reg_n_0_[2] ;
  wire \daddr_reg_n_0_[3] ;
  wire \daddr_reg_n_0_[4] ;
  wire \daddr_reg_n_0_[5] ;
  wire \daddr_reg_n_0_[6] ;
  wire \daddr_reg_n_0_[7] ;
  wire [47:32]data_i;
  wire [15:0]\data_i_reg[47]_0 ;
  wire [15:0]di;
  wire \di[0]_i_1_n_0 ;
  wire \di[10]_i_1_n_0 ;
  wire \di[11]_i_1_n_0 ;
  wire \di[12]_i_1_n_0 ;
  wire \di[13]_i_1_n_0 ;
  wire \di[14]_i_1_n_0 ;
  wire \di[15]_i_1_n_0 ;
  wire \di[1]_i_1_n_0 ;
  wire \di[2]_i_1_n_0 ;
  wire \di[3]_i_1_n_0 ;
  wire \di[4]_i_1_n_0 ;
  wire \di[5]_i_1_n_0 ;
  wire \di[6]_i_1_n_0 ;
  wire \di[7]_i_1_n_0 ;
  wire \di[8]_i_1_n_0 ;
  wire \di[9]_i_1_n_0 ;
  wire done_i_1_n_0;
  wire done_i_2_n_0;
  wire done_i_3_n_0;
  wire done_reg_n_0;
  wire [6:0]drp_state;
  wire \drp_state[0]_i_2_n_0 ;
  wire \drp_state[1]_i_2_n_0 ;
  wire \drp_state[4]_i_2_n_0 ;
  wire \drp_state[5]_i_2_n_0 ;
  wire \drp_state[6]_i_2_n_0 ;
  wire \drp_state[6]_i_3_n_0 ;
  wire \drp_state[6]_i_4_n_0 ;
  wire \drp_state_reg_n_0_[0] ;
  wire \drp_state_reg_n_0_[1] ;
  wire \drp_state_reg_n_0_[2] ;
  wire \drp_state_reg_n_0_[4] ;
  wire \drp_state_reg_n_0_[5] ;
  wire \drp_state_reg_n_0_[6] ;
  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  wire [2:2]en;
  wire \en[2]_i_2_n_0 ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire [1:0]idx;
  wire \idx[0]_i_2_n_0 ;
  wire \idx[1]_i_1_n_0 ;
  wire \idx_reg[0]__0_n_0 ;
  wire [47:47]p_0_in;
  wire rd_i_1_n_0;
  wire rd_reg_n_0;
  wire [7:0]timeout_cntr;
  wire \timeout_cntr[5]_i_2_n_0 ;
  wire \timeout_cntr[7]_i_1_n_0 ;
  wire \timeout_cntr[7]_i_3_n_0 ;
  wire \timeout_cntr[7]_i_4_n_0 ;
  wire \timeout_cntr_reg_n_0_[0] ;
  wire \timeout_cntr_reg_n_0_[1] ;
  wire \timeout_cntr_reg_n_0_[2] ;
  wire \timeout_cntr_reg_n_0_[3] ;
  wire \timeout_cntr_reg_n_0_[4] ;
  wire \timeout_cntr_reg_n_0_[5] ;
  wire \timeout_cntr_reg_n_0_[6] ;
  wire \timeout_cntr_reg_n_0_[7] ;
  wire [2:2]we;
  wire \we[2]_i_1_n_0 ;
  wire \we_reg_n_0_[2] ;
  wire wr;
  wire wr_i_2_n_0;
  wire wr_reg_n_0;

  LUT6 #(
    .INIT(64'h0000000100010000)) 
    \DADDR_O[7]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(\drp_state_reg_n_0_[6] ),
        .I4(\drp_state_reg_n_0_[4] ),
        .I5(\drp_state_reg_n_0_[1] ),
        .O(\DADDR_O[7]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[1] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[1] ),
        .Q(DADDR_O[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[2] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[2] ),
        .Q(DADDR_O[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[3] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[3] ),
        .Q(DADDR_O[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[4] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[4] ),
        .Q(DADDR_O[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[5] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[5] ),
        .Q(DADDR_O[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[6] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[6] ),
        .Q(DADDR_O[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DADDR_O_reg[7] 
       (.C(drpclk_in),
        .CE(\DADDR_O[7]_i_1_n_0 ),
        .D(\daddr_reg_n_0_[7] ),
        .Q(DADDR_O[6]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000000000000116)) 
    DEN_O_i_1
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[6] ),
        .I5(\drp_state_reg_n_0_[0] ),
        .O(DEN_O_i_1_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    DEN_O_i_2
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[2] ),
        .O(DEN_O_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    DEN_O_reg
       (.C(drpclk_in),
        .CE(DEN_O_i_1_n_0),
        .D(DEN_O_i_2_n_0),
        .Q(DEN_O),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    \DI_O[15]_i_1 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[0] ),
        .I5(\drp_state_reg_n_0_[6] ),
        .O(\DI_O[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[0] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[0]),
        .Q(DI_O[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[10] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[10]),
        .Q(DI_O[10]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[11] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[11]),
        .Q(DI_O[11]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[12] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[12]),
        .Q(DI_O[12]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[13] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[13]),
        .Q(DI_O[13]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[14] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[14]),
        .Q(DI_O[14]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[15] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[15]),
        .Q(DI_O[15]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[1] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[1]),
        .Q(DI_O[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[2] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[2]),
        .Q(DI_O[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[3] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[3]),
        .Q(DI_O[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[4] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[4]),
        .Q(DI_O[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[5] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[5]),
        .Q(DI_O[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[6] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[6]),
        .Q(DI_O[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[7] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[7]),
        .Q(DI_O[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[8] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[8]),
        .Q(DI_O[8]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DI_O_reg[9] 
       (.C(drpclk_in),
        .CE(\DI_O[15]_i_1_n_0 ),
        .D(di[9]),
        .Q(DI_O[9]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'h0000001000000000)) 
    \DO_USR_O[47]_i_1 
       (.I0(\arb_state_reg_n_0_[0] ),
        .I1(\arb_state_reg_n_0_[3] ),
        .I2(\arb_state_reg_n_0_[2] ),
        .I3(\arb_state_reg_n_0_[1] ),
        .I4(\idx_reg[0]__0_n_0 ),
        .I5(idx[1]),
        .O(p_0_in));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[32] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[32]),
        .Q(Q[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[33] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[33]),
        .Q(Q[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[34] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[34]),
        .Q(Q[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[35] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[35]),
        .Q(Q[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[36] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[36]),
        .Q(Q[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[37] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[37]),
        .Q(Q[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[38] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[38]),
        .Q(Q[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[39] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[39]),
        .Q(Q[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[40] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[40]),
        .Q(Q[8]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[41] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[41]),
        .Q(Q[9]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[42] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[42]),
        .Q(Q[10]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[43] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[43]),
        .Q(Q[11]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[44] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[44]),
        .Q(Q[12]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[45] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[45]),
        .Q(Q[13]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[46] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[46]),
        .Q(Q[14]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \DO_USR_O_reg[47] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(DO_USR_O0[47]),
        .Q(Q[15]),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'hFFFFFEFF00000010)) 
    \DRDY_USR_O[2]_i_1 
       (.I0(\DRDY_USR_O[2]_i_2_n_0 ),
        .I1(\arb_state_reg_n_0_[1] ),
        .I2(\arb_state_reg_n_0_[2] ),
        .I3(\arb_state_reg_n_0_[3] ),
        .I4(\arb_state_reg_n_0_[0] ),
        .I5(cal_on_tx_drdy),
        .O(\DRDY_USR_O[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'hB)) 
    \DRDY_USR_O[2]_i_2 
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(\DRDY_USR_O[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \DRDY_USR_O_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\DRDY_USR_O[2]_i_1_n_0 ),
        .Q(cal_on_tx_drdy),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    DWE_O_reg
       (.C(drpclk_in),
        .CE(DEN_O_i_1_n_0),
        .D(\drp_state_reg_n_0_[4] ),
        .Q(DWE_O),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[21] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [0]),
        .Q(addr_i[21]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[22] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [1]),
        .Q(addr_i[22]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[23] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [2]),
        .Q(addr_i[23]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[24] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [3]),
        .Q(addr_i[24]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[25] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [4]),
        .Q(addr_i[25]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[26] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [5]),
        .Q(addr_i[26]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \addr_i_reg[27] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\addr_i_reg[27]_0 [6]),
        .Q(addr_i[27]),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'hFEEB)) 
    \arb_state[0]_i_1 
       (.I0(\arb_state_reg_n_0_[3] ),
        .I1(\arb_state_reg_n_0_[0] ),
        .I2(\arb_state_reg_n_0_[2] ),
        .I3(\arb_state_reg_n_0_[1] ),
        .O(arb_state[0]));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \arb_state[1]_i_1 
       (.I0(\arb_state_reg_n_0_[0] ),
        .I1(\arb_state_reg_n_0_[3] ),
        .I2(done_reg_n_0),
        .I3(\arb_state_reg_n_0_[2] ),
        .I4(\arb_state_reg_n_0_[1] ),
        .I5(daddr),
        .O(arb_state[1]));
  LUT5 #(
    .INIT(32'h00000008)) 
    \arb_state[2]_i_1 
       (.I0(\arb_state_reg_n_0_[1] ),
        .I1(done_reg_n_0),
        .I2(\arb_state_reg_n_0_[2] ),
        .I3(\arb_state_reg_n_0_[3] ),
        .I4(\arb_state_reg_n_0_[0] ),
        .O(arb_state[2]));
  LUT6 #(
    .INIT(64'h0000000F00000700)) 
    \arb_state[3]_i_1 
       (.I0(en),
        .I1(idx[1]),
        .I2(\arb_state_reg_n_0_[3] ),
        .I3(\arb_state_reg_n_0_[0] ),
        .I4(\arb_state_reg_n_0_[1] ),
        .I5(\arb_state_reg_n_0_[2] ),
        .O(arb_state[3]));
  FDSE #(
    .INIT(1'b1)) 
    \arb_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(arb_state[0]),
        .Q(\arb_state_reg_n_0_[0] ),
        .S(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(arb_state[1]),
        .Q(\arb_state_reg_n_0_[1] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(arb_state[2]),
        .Q(\arb_state_reg_n_0_[2] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \arb_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(arb_state[3]),
        .Q(\arb_state_reg_n_0_[3] ),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[1]_i_1 
       (.I0(addr_i[21]),
        .I1(idx[0]),
        .O(daddr0[1]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[2]_i_1 
       (.I0(addr_i[22]),
        .I1(idx[0]),
        .O(daddr0[2]));
  (* SOFT_HLUTNM = "soft_lutpair50" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[3]_i_1 
       (.I0(addr_i[23]),
        .I1(idx[0]),
        .O(daddr0[3]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[4]_i_1 
       (.I0(addr_i[24]),
        .I1(idx[0]),
        .O(daddr0[4]));
  (* SOFT_HLUTNM = "soft_lutpair49" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[5]_i_1 
       (.I0(addr_i[25]),
        .I1(idx[0]),
        .O(daddr0[5]));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[6]_i_1 
       (.I0(addr_i[26]),
        .I1(idx[0]),
        .O(daddr0[6]));
  LUT6 #(
    .INIT(64'h0010000000000000)) 
    \daddr[7]_i_1 
       (.I0(\arb_state_reg_n_0_[2] ),
        .I1(\arb_state_reg_n_0_[1] ),
        .I2(\arb_state_reg_n_0_[0] ),
        .I3(\arb_state_reg_n_0_[3] ),
        .I4(idx[1]),
        .I5(en),
        .O(daddr));
  (* SOFT_HLUTNM = "soft_lutpair48" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \daddr[7]_i_2 
       (.I0(addr_i[27]),
        .I1(idx[0]),
        .O(daddr0[7]));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[1] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[1]),
        .Q(\daddr_reg_n_0_[1] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[2] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[2]),
        .Q(\daddr_reg_n_0_[2] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[3] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[3]),
        .Q(\daddr_reg_n_0_[3] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[4] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[4]),
        .Q(\daddr_reg_n_0_[4] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[5] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[5]),
        .Q(\daddr_reg_n_0_[5] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[6] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[6]),
        .Q(\daddr_reg_n_0_[6] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[7] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(daddr0[7]),
        .Q(\daddr_reg_n_0_[7] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[32] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [0]),
        .Q(data_i[32]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[33] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [1]),
        .Q(data_i[33]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[34] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [2]),
        .Q(data_i[34]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[35] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [3]),
        .Q(data_i[35]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[36] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [4]),
        .Q(data_i[36]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[37] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [5]),
        .Q(data_i[37]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[38] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [6]),
        .Q(data_i[38]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[39] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [7]),
        .Q(data_i[39]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[40] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [8]),
        .Q(data_i[40]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[41] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [9]),
        .Q(data_i[41]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[42] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [10]),
        .Q(data_i[42]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[43] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [11]),
        .Q(data_i[43]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[44] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [12]),
        .Q(data_i[44]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[45] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [13]),
        .Q(data_i[45]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[46] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [14]),
        .Q(data_i[46]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \data_i_reg[47] 
       (.C(drpclk_in),
        .CE(cal_on_tx_drpen_out),
        .D(\data_i_reg[47]_0 [15]),
        .Q(data_i[47]),
        .R(drprst_in_sync));
  LUT2 #(
    .INIT(4'h2)) 
    \di[0]_i_1 
       (.I0(data_i[32]),
        .I1(idx[0]),
        .O(\di[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[10]_i_1 
       (.I0(data_i[42]),
        .I1(idx[0]),
        .O(\di[10]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[11]_i_1 
       (.I0(data_i[43]),
        .I1(idx[0]),
        .O(\di[11]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair53" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[12]_i_1 
       (.I0(data_i[44]),
        .I1(idx[0]),
        .O(\di[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[13]_i_1 
       (.I0(data_i[45]),
        .I1(idx[0]),
        .O(\di[13]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair52" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[14]_i_1 
       (.I0(data_i[46]),
        .I1(idx[0]),
        .O(\di[14]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair51" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[15]_i_1 
       (.I0(data_i[47]),
        .I1(idx[0]),
        .O(\di[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[1]_i_1 
       (.I0(data_i[33]),
        .I1(idx[0]),
        .O(\di[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair58" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[2]_i_1 
       (.I0(data_i[34]),
        .I1(idx[0]),
        .O(\di[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[3]_i_1 
       (.I0(data_i[35]),
        .I1(idx[0]),
        .O(\di[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair57" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[4]_i_1 
       (.I0(data_i[36]),
        .I1(idx[0]),
        .O(\di[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[5]_i_1 
       (.I0(data_i[37]),
        .I1(idx[0]),
        .O(\di[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair56" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[6]_i_1 
       (.I0(data_i[38]),
        .I1(idx[0]),
        .O(\di[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[7]_i_1 
       (.I0(data_i[39]),
        .I1(idx[0]),
        .O(\di[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair55" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[8]_i_1 
       (.I0(data_i[40]),
        .I1(idx[0]),
        .O(\di[8]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair54" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \di[9]_i_1 
       (.I0(data_i[41]),
        .I1(idx[0]),
        .O(\di[9]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[0] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[0]_i_1_n_0 ),
        .Q(di[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[10] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[10]_i_1_n_0 ),
        .Q(di[10]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[11] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[11]_i_1_n_0 ),
        .Q(di[11]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[12] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[12]_i_1_n_0 ),
        .Q(di[12]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[13] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[13]_i_1_n_0 ),
        .Q(di[13]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[14] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[14]_i_1_n_0 ),
        .Q(di[14]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[15] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[15]_i_1_n_0 ),
        .Q(di[15]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[1] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[1]_i_1_n_0 ),
        .Q(di[1]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[2] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[2]_i_1_n_0 ),
        .Q(di[2]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[3] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[3]_i_1_n_0 ),
        .Q(di[3]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[4] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[4]_i_1_n_0 ),
        .Q(di[4]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[5] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[5]_i_1_n_0 ),
        .Q(di[5]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[6] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[6]_i_1_n_0 ),
        .Q(di[6]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[7] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[7]_i_1_n_0 ),
        .Q(di[7]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[8] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[8]_i_1_n_0 ),
        .Q(di[8]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \di_reg[9] 
       (.C(drpclk_in),
        .CE(daddr),
        .D(\di[9]_i_1_n_0 ),
        .Q(di[9]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[0] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[0]),
        .Q(DO_USR_O0[32]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[10] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[10]),
        .Q(DO_USR_O0[42]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[11] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[11]),
        .Q(DO_USR_O0[43]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[12] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[12]),
        .Q(DO_USR_O0[44]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[13] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[13]),
        .Q(DO_USR_O0[45]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[14] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[14]),
        .Q(DO_USR_O0[46]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[15] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[15]),
        .Q(DO_USR_O0[47]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[1] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[1]),
        .Q(DO_USR_O0[33]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[2] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[2]),
        .Q(DO_USR_O0[34]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[3] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[3]),
        .Q(DO_USR_O0[35]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[4] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[4]),
        .Q(DO_USR_O0[36]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[5] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[5]),
        .Q(DO_USR_O0[37]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[6] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[6]),
        .Q(DO_USR_O0[38]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[7] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[7]),
        .Q(DO_USR_O0[39]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[8] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[8]),
        .Q(DO_USR_O0[40]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \do_r_reg[9] 
       (.C(drpclk_in),
        .CE(drp_state[6]),
        .D(DO_I[9]),
        .Q(DO_USR_O0[41]),
        .R(drprst_in_sync));
  LUT5 #(
    .INIT(32'hAAABAAA8)) 
    done_i_1
       (.I0(done_i_2_n_0),
        .I1(drp_state[6]),
        .I2(\DADDR_O[7]_i_1_n_0 ),
        .I3(done_i_3_n_0),
        .I4(done_reg_n_0),
        .O(done_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT4 #(
    .INIT(16'h0100)) 
    done_i_2
       (.I0(\drp_state_reg_n_0_[6] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[4] ),
        .I3(\drp_state[6]_i_3_n_0 ),
        .O(done_i_2_n_0));
  LUT6 #(
    .INIT(64'h0000000000000004)) 
    done_i_3
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(done_i_3_n_0));
  FDRE #(
    .INIT(1'b0)) 
    done_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(done_i_1_n_0),
        .Q(done_reg_n_0),
        .R(drprst_in_sync));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFEF8)) 
    \drp_state[0]_i_1 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[5] ),
        .I5(\drp_state[0]_i_2_n_0 ),
        .O(drp_state[0]));
  LUT6 #(
    .INIT(64'hF0F0F0F0F0F0F01F)) 
    \drp_state[0]_i_2 
       (.I0(wr_reg_n_0),
        .I1(rd_reg_n_0),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(\drp_state_reg_n_0_[4] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state[1]_i_2_n_0 ),
        .O(\drp_state[0]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000008)) 
    \drp_state[1]_i_1 
       (.I0(rd_reg_n_0),
        .I1(\drp_state_reg_n_0_[0] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state[1]_i_2_n_0 ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(drp_state[1]));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \drp_state[1]_i_2 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .O(\drp_state[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0400)) 
    \drp_state[2]_i_1 
       (.I0(\drp_state[6]_i_3_n_0 ),
        .I1(\drp_state[5]_i_2_n_0 ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[1] ),
        .I5(\drp_state_reg_n_0_[4] ),
        .O(drp_state[2]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT5 #(
    .INIT(32'h00000020)) 
    \drp_state[4]_i_1 
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .I2(wr_reg_n_0),
        .I3(rd_reg_n_0),
        .I4(\drp_state[4]_i_2_n_0 ),
        .O(drp_state[4]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \drp_state[4]_i_2 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[1] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[4]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h00000000000C0040)) 
    \drp_state[5]_i_1 
       (.I0(\drp_state[6]_i_3_n_0 ),
        .I1(\drp_state[5]_i_2_n_0 ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\drp_state_reg_n_0_[4] ),
        .I5(\drp_state_reg_n_0_[1] ),
        .O(drp_state[5]));
  (* SOFT_HLUTNM = "soft_lutpair39" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \drp_state[5]_i_2 
       (.I0(\drp_state_reg_n_0_[0] ),
        .I1(\drp_state_reg_n_0_[6] ),
        .O(\drp_state[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000600000000)) 
    \drp_state[6]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[0] ),
        .I4(\drp_state[6]_i_2_n_0 ),
        .I5(\drp_state[6]_i_3_n_0 ),
        .O(drp_state[6]));
  (* SOFT_HLUTNM = "soft_lutpair41" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \drp_state[6]_i_2 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .O(\drp_state[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF80000000)) 
    \drp_state[6]_i_3 
       (.I0(\drp_state[6]_i_4_n_0 ),
        .I1(\timeout_cntr_reg_n_0_[7] ),
        .I2(\timeout_cntr_reg_n_0_[6] ),
        .I3(\timeout_cntr_reg_n_0_[0] ),
        .I4(\timeout_cntr_reg_n_0_[1] ),
        .I5(\gen_gtwizard_gthe4.drprdy_int ),
        .O(\drp_state[6]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \drp_state[6]_i_4 
       (.I0(\timeout_cntr_reg_n_0_[3] ),
        .I1(\timeout_cntr_reg_n_0_[2] ),
        .I2(\timeout_cntr_reg_n_0_[5] ),
        .I3(\timeout_cntr_reg_n_0_[4] ),
        .O(\drp_state[6]_i_4_n_0 ));
  FDSE #(
    .INIT(1'b1)) 
    \drp_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[0]),
        .Q(\drp_state_reg_n_0_[0] ),
        .S(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[1]),
        .Q(\drp_state_reg_n_0_[1] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[2]),
        .Q(\drp_state_reg_n_0_[2] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[4]),
        .Q(\drp_state_reg_n_0_[4] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[5]),
        .Q(\drp_state_reg_n_0_[5] ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \drp_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(drp_state[6]),
        .Q(\drp_state_reg_n_0_[6] ),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'hAEAA)) 
    \en[2]_i_1 
       (.I0(cal_on_tx_drpen_out),
        .I1(done_reg_n_0),
        .I2(idx[0]),
        .I3(idx[1]),
        .O(we));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \en[2]_i_2 
       (.I0(done_reg_n_0),
        .I1(idx[0]),
        .I2(idx[1]),
        .I3(cal_on_tx_drpen_out),
        .O(\en[2]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \en_reg[2] 
       (.C(drpclk_in),
        .CE(we),
        .D(\en[2]_i_2_n_0 ),
        .Q(en),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \idx[0]__0_i_1 
       (.I0(idx[1]),
        .I1(idx[0]),
        .O(B));
  LUT4 #(
    .INIT(16'h0004)) 
    \idx[0]_i_1 
       (.I0(\arb_state_reg_n_0_[0] ),
        .I1(\arb_state_reg_n_0_[3] ),
        .I2(\arb_state_reg_n_0_[1] ),
        .I3(\arb_state_reg_n_0_[2] ),
        .O(CEB2));
  (* SOFT_HLUTNM = "soft_lutpair47" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \idx[0]_i_2 
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(\idx[0]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair46" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \idx[1]_i_1 
       (.I0(idx[0]),
        .I1(idx[1]),
        .O(\idx[1]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0] 
       (.C(drpclk_in),
        .CE(CEB2),
        .D(\idx[0]_i_2_n_0 ),
        .Q(idx[0]),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[0]__0 
       (.C(drpclk_in),
        .CE(CEB2),
        .D(B),
        .Q(\idx_reg[0]__0_n_0 ),
        .R(drprst_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \idx_reg[1] 
       (.C(drpclk_in),
        .CE(CEB2),
        .D(\idx[1]_i_1_n_0 ),
        .Q(idx[1]),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h1000)) 
    rd_i_1
       (.I0(\arb_state_reg_n_0_[1] ),
        .I1(\we_reg_n_0_[2] ),
        .I2(idx[1]),
        .I3(en),
        .O(rd_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(drpclk_in),
        .CE(wr),
        .D(rd_i_1_n_0),
        .Q(rd_reg_n_0),
        .R(drprst_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair45" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \timeout_cntr[0]_i_1 
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[2] ),
        .I2(\timeout_cntr_reg_n_0_[0] ),
        .O(timeout_cntr[0]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT4 #(
    .INIT(16'h0EE0)) 
    \timeout_cntr[1]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\timeout_cntr_reg_n_0_[0] ),
        .I3(\timeout_cntr_reg_n_0_[1] ),
        .O(timeout_cntr[1]));
  (* SOFT_HLUTNM = "soft_lutpair40" *) 
  LUT5 #(
    .INIT(32'h77708880)) 
    \timeout_cntr[2]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\timeout_cntr_reg_n_0_[2] ),
        .O(timeout_cntr[2]));
  LUT6 #(
    .INIT(64'h7F7F7F0080808000)) 
    \timeout_cntr[3]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[2] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[1] ),
        .I3(\drp_state_reg_n_0_[5] ),
        .I4(\drp_state_reg_n_0_[2] ),
        .I5(\timeout_cntr_reg_n_0_[3] ),
        .O(timeout_cntr[3]));
  LUT6 #(
    .INIT(64'h7FFF000080000000)) 
    \timeout_cntr[4]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[3] ),
        .I4(\drp_state[1]_i_2_n_0 ),
        .I5(\timeout_cntr_reg_n_0_[4] ),
        .O(timeout_cntr[4]));
  LUT6 #(
    .INIT(64'hFF7F000000800000)) 
    \timeout_cntr[5]_i_1 
       (.I0(\timeout_cntr_reg_n_0_[4] ),
        .I1(\timeout_cntr_reg_n_0_[3] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr[5]_i_2_n_0 ),
        .I4(\drp_state[1]_i_2_n_0 ),
        .I5(\timeout_cntr_reg_n_0_[5] ),
        .O(timeout_cntr[5]));
  LUT2 #(
    .INIT(4'h7)) 
    \timeout_cntr[5]_i_2 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .O(\timeout_cntr[5]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT4 #(
    .INIT(16'hA854)) 
    \timeout_cntr[6]_i_1 
       (.I0(\timeout_cntr[7]_i_4_n_0 ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[6] ),
        .O(timeout_cntr[6]));
  LUT5 #(
    .INIT(32'h0000055C)) 
    \timeout_cntr[7]_i_1 
       (.I0(\drp_state[4]_i_2_n_0 ),
        .I1(\timeout_cntr[7]_i_3_n_0 ),
        .I2(\drp_state_reg_n_0_[6] ),
        .I3(\drp_state_reg_n_0_[0] ),
        .I4(drprst_in_sync),
        .O(\timeout_cntr[7]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair38" *) 
  LUT5 #(
    .INIT(32'hBBB04440)) 
    \timeout_cntr[7]_i_2 
       (.I0(\timeout_cntr[7]_i_4_n_0 ),
        .I1(\timeout_cntr_reg_n_0_[6] ),
        .I2(\drp_state_reg_n_0_[5] ),
        .I3(\drp_state_reg_n_0_[2] ),
        .I4(\timeout_cntr_reg_n_0_[7] ),
        .O(timeout_cntr[7]));
  (* SOFT_HLUTNM = "soft_lutpair42" *) 
  LUT4 #(
    .INIT(16'h0116)) 
    \timeout_cntr[7]_i_3 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(\drp_state_reg_n_0_[1] ),
        .I3(\drp_state_reg_n_0_[4] ),
        .O(\timeout_cntr[7]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \timeout_cntr[7]_i_4 
       (.I0(\timeout_cntr_reg_n_0_[1] ),
        .I1(\timeout_cntr_reg_n_0_[0] ),
        .I2(\timeout_cntr_reg_n_0_[2] ),
        .I3(\timeout_cntr_reg_n_0_[3] ),
        .I4(\timeout_cntr_reg_n_0_[4] ),
        .I5(\timeout_cntr_reg_n_0_[5] ),
        .O(\timeout_cntr[7]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[0] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[0]),
        .Q(\timeout_cntr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[1] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[1]),
        .Q(\timeout_cntr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[2] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[2]),
        .Q(\timeout_cntr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[3] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[3]),
        .Q(\timeout_cntr_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[4] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[4]),
        .Q(\timeout_cntr_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[5] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[5]),
        .Q(\timeout_cntr_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[6] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[6]),
        .Q(\timeout_cntr_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \timeout_cntr_reg[7] 
       (.C(drpclk_in),
        .CE(\timeout_cntr[7]_i_1_n_0 ),
        .D(timeout_cntr[7]),
        .Q(\timeout_cntr_reg_n_0_[7] ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair43" *) 
  LUT4 #(
    .INIT(16'hDF00)) 
    \we[2]_i_1 
       (.I0(done_reg_n_0),
        .I1(idx[0]),
        .I2(idx[1]),
        .I3(cal_on_tx_drpwe_out),
        .O(\we[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \we_reg[2] 
       (.C(drpclk_in),
        .CE(we),
        .D(\we[2]_i_1_n_0 ),
        .Q(\we_reg_n_0_[2] ),
        .R(drprst_in_sync));
  LUT4 #(
    .INIT(16'h0014)) 
    wr_i_1
       (.I0(\arb_state_reg_n_0_[2] ),
        .I1(\arb_state_reg_n_0_[1] ),
        .I2(\arb_state_reg_n_0_[0] ),
        .I3(\arb_state_reg_n_0_[3] ),
        .O(wr));
  (* SOFT_HLUTNM = "soft_lutpair44" *) 
  LUT4 #(
    .INIT(16'h4000)) 
    wr_i_2
       (.I0(\arb_state_reg_n_0_[1] ),
        .I1(\we_reg_n_0_[2] ),
        .I2(idx[1]),
        .I3(en),
        .O(wr_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(drpclk_in),
        .CE(wr),
        .D(wr_i_2_n_0),
        .Q(wr_reg_n_0),
        .R(drprst_in_sync));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gthe4_channel" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_channel
   (in0,
    \gen_gtwizard_gthe4.drprdy_int ,
    gthtxn_out,
    gthtxp_out,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    rxcdrlock_out,
    rxoutclk_out,
    rxoutclkpcs_out,
    gtwiz_userclk_rx_active_out,
    rxresetdone_out,
    txoutclk_out,
    cpllpd_int_reg,
    txresetdone_out,
    gtwiz_userdata_rx_out,
    D,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    cpllpd_int_reg_0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    drpclk_in,
    DEN_O,
    DWE_O,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    \gen_gtwizard_gthe4.gttxreset_int ,
    rxmcommaalignen_in,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    RXRATE,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    rxusrclk_in,
    txelecidle_in,
    \gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    gtwiz_userdata_tx_in,
    Q,
    txctrl0_in,
    txctrl1_in,
    RXPD,
    i_in_meta_reg_1,
    txctrl2_in,
    i_in_meta_reg_2,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output in0;
  output \gen_gtwizard_gthe4.drprdy_int ;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output \gen_gtwizard_gthe4.gtpowergood_int ;
  output [0:0]rxcdrlock_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  output [0:0]rxresetdone_out;
  output [0:0]txoutclk_out;
  output cpllpd_int_reg;
  output [0:0]txresetdone_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [15:0]D;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output cpllpd_int_reg_0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input DEN_O;
  input DWE_O;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  input \gen_gtwizard_gthe4.gttxreset_int ;
  input [0:0]rxmcommaalignen_in;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;
  input [0:0]RXRATE;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  input \gen_gtwizard_gthe4.txuserrdy_int ;
  input [15:0]gtwiz_userdata_tx_in;
  input [15:0]Q;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [0:0]RXPD;
  input [2:0]i_in_meta_reg_1;
  input [1:0]txctrl2_in;
  input [6:0]i_in_meta_reg_2;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [15:0]D;
  wire DEN_O;
  wire DWE_O;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  wire cpllpd_int_reg;
  wire cpllpd_int_reg_0;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_0 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_1 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_100 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_101 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_102 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_103 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_104 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_105 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_106 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_107 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_108 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_109 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_11 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_110 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_111 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_112 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_113 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_114 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_115 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_116 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_117 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_118 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_119 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_12 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_120 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_121 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_122 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_123 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_124 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_125 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_126 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_127 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_128 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_129 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_13 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_130 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_131 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_132 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_133 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_134 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_135 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_136 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_137 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_138 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_139 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_14 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_140 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_141 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_142 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_143 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_144 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_145 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_146 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_147 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_148 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_149 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_15 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_150 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_151 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_152 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_153 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_154 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_155 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_156 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_157 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_158 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_159 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_16 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_160 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_161 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_162 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_163 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_164 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_165 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_166 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_167 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_168 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_169 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_17 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_170 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_171 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_172 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_173 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_174 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_175 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_176 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_177 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_178 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_179 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_18 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_180 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_181 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_182 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_183 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_184 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_185 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_186 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_187 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_188 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_189 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_19 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_190 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_2 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_20 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_207 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_208 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_209 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_21 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_210 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_211 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_212 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_213 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_214 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_215 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_216 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_217 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_218 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_219 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_22 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_220 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_221 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_222 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_239 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_24 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_240 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_241 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_242 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_243 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_244 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_245 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_246 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_247 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_248 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_249 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_25 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_250 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_251 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_252 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_253 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_254 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_255 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_256 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_257 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_258 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_259 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_26 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_260 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_261 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_262 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_263 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_264 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_265 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_266 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_267 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_268 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_269 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_27 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_270 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_271 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_272 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_273 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_274 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_275 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_276 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_277 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_278 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_279 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_28 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_280 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_281 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_282 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_283 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_284 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_287 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_288 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_289 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_29 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_290 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_291 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_292 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_293 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_294 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_295 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_296 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_297 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_298 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_299 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_30 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_300 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_303 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_304 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_305 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_306 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_309 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_31 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_310 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_311 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_312 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_313 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_314 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_316 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_317 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_318 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_319 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_32 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_320 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_321 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_322 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_324 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_325 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_326 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_327 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_328 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_329 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_33 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_330 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_331 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_332 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_333 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_334 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_335 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_336 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_337 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_338 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_339 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_34 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_340 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_341 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_342 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_343 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_344 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_345 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_348 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_349 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_35 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_350 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_351 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_352 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_353 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_356 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_357 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_358 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_359 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_36 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_360 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_361 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_362 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_363 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_364 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_365 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_366 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_367 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_368 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_369 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_37 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_370 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_371 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_372 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_373 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_374 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_375 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_376 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_377 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_378 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_379 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_38 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_380 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_39 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_4 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_40 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_41 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_43 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_45 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_46 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_48 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_49 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_5 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_50 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_51 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_52 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_53 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_54 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_56 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_57 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_58 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_59 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_60 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_61 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_62 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_63 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_64 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_65 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_67 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_68 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_69 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_7 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_70 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_71 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_73 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_74 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_75 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_77 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_78 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_79 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_80 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_81 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_82 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_83 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_84 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_85 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_86 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_87 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_88 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_89 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_90 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_91 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_92 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_93 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_94 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_95 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_96 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_97 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_98 ;
  wire \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_99 ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire [2:0]i_in_meta_reg_1;
  wire [6:0]i_in_meta_reg_2;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire [0:0]rxbufstatus_out;
  wire [0:0]rxcdrlock_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txresetdone_out;
  wire xlnx_opt_;
  wire xlnx_opt__1;
  wire xlnx_opt__2;
  wire xlnx_opt__3;

  assign lopt_2 = xlnx_opt_;
  assign lopt_3 = xlnx_opt__1;
  assign lopt_4 = xlnx_opt__2;
  assign lopt_5 = xlnx_opt__3;
  (* OPT_MODIFIED = "MLO" *) 
  BUFG_GT_SYNC BUFG_GT_SYNC
       (.CE(lopt),
        .CESYNC(xlnx_opt_),
        .CLK(rxoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__1));
  (* OPT_MODIFIED = "MLO" *) 
  BUFG_GT_SYNC BUFG_GT_SYNC_1
       (.CE(lopt),
        .CESYNC(xlnx_opt__2),
        .CLK(txoutclk_out),
        .CLR(lopt_1),
        .CLRSYNC(xlnx_opt__3));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_2 
       (.I0(\gen_gtwizard_gthe4.gtpowergood_int ),
        .O(cpllpd_int_reg_0));
  (* box_type = "PRIMITIVE" *) 
  GTHE4_CHANNEL #(
    .ACJTAG_DEBUG_MODE(1'b0),
    .ACJTAG_MODE(1'b0),
    .ACJTAG_RESET(1'b0),
    .ADAPT_CFG0(16'h1000),
    .ADAPT_CFG1(16'hC800),
    .ADAPT_CFG2(16'h0000),
    .ALIGN_COMMA_DOUBLE("FALSE"),
    .ALIGN_COMMA_ENABLE(10'b1111111111),
    .ALIGN_COMMA_WORD(2),
    .ALIGN_MCOMMA_DET("TRUE"),
    .ALIGN_MCOMMA_VALUE(10'b1010000011),
    .ALIGN_PCOMMA_DET("TRUE"),
    .ALIGN_PCOMMA_VALUE(10'b0101111100),
    .A_RXOSCALRESET(1'b0),
    .A_RXPROGDIVRESET(1'b0),
    .A_RXTERMINATION(1'b1),
    .A_TXDIFFCTRL(5'b01100),
    .A_TXPROGDIVRESET(1'b0),
    .CAPBYPASS_FORCE(1'b0),
    .CBCC_DATA_SOURCE_SEL("DECODED"),
    .CDR_SWAP_MODE_EN(1'b0),
    .CFOK_PWRSVE_EN(1'b1),
    .CHAN_BOND_KEEP_ALIGN("FALSE"),
    .CHAN_BOND_MAX_SKEW(1),
    .CHAN_BOND_SEQ_1_1(10'b0000000000),
    .CHAN_BOND_SEQ_1_2(10'b0000000000),
    .CHAN_BOND_SEQ_1_3(10'b0000000000),
    .CHAN_BOND_SEQ_1_4(10'b0000000000),
    .CHAN_BOND_SEQ_1_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_1(10'b0000000000),
    .CHAN_BOND_SEQ_2_2(10'b0000000000),
    .CHAN_BOND_SEQ_2_3(10'b0000000000),
    .CHAN_BOND_SEQ_2_4(10'b0000000000),
    .CHAN_BOND_SEQ_2_ENABLE(4'b1111),
    .CHAN_BOND_SEQ_2_USE("FALSE"),
    .CHAN_BOND_SEQ_LEN(1),
    .CH_HSPMUX(16'h3C3C),
    .CKCAL1_CFG_0(16'b1100000011000000),
    .CKCAL1_CFG_1(16'b0101000011000000),
    .CKCAL1_CFG_2(16'b0000000000001010),
    .CKCAL1_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_0(16'b1100000011000000),
    .CKCAL2_CFG_1(16'b1000000011000000),
    .CKCAL2_CFG_2(16'b0000000000000000),
    .CKCAL2_CFG_3(16'b0000000000000000),
    .CKCAL2_CFG_4(16'b0000000000000000),
    .CKCAL_RSVD0(16'h0080),
    .CKCAL_RSVD1(16'h0400),
    .CLK_CORRECT_USE("TRUE"),
    .CLK_COR_KEEP_IDLE("FALSE"),
    .CLK_COR_MAX_LAT(15),
    .CLK_COR_MIN_LAT(12),
    .CLK_COR_PRECEDENCE("TRUE"),
    .CLK_COR_REPEAT_WAIT(0),
    .CLK_COR_SEQ_1_1(10'b0110111100),
    .CLK_COR_SEQ_1_2(10'b0001010000),
    .CLK_COR_SEQ_1_3(10'b0000000000),
    .CLK_COR_SEQ_1_4(10'b0000000000),
    .CLK_COR_SEQ_1_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_1(10'b0110111100),
    .CLK_COR_SEQ_2_2(10'b0010110101),
    .CLK_COR_SEQ_2_3(10'b0000000000),
    .CLK_COR_SEQ_2_4(10'b0000000000),
    .CLK_COR_SEQ_2_ENABLE(4'b1111),
    .CLK_COR_SEQ_2_USE("TRUE"),
    .CLK_COR_SEQ_LEN(2),
    .CPLL_CFG0(16'h01FA),
    .CPLL_CFG1(16'h0023),
    .CPLL_CFG2(16'h0002),
    .CPLL_CFG3(16'h0000),
    .CPLL_FBDIV(4),
    .CPLL_FBDIV_45(4),
    .CPLL_INIT_CFG0(16'h02B2),
    .CPLL_LOCK_CFG(16'h01E8),
    .CPLL_REFCLK_DIV(1),
    .CTLE3_OCAP_EXT_CTRL(3'b000),
    .CTLE3_OCAP_EXT_EN(1'b0),
    .DDI_CTRL(2'b00),
    .DDI_REALIGN_WAIT(15),
    .DEC_MCOMMA_DETECT("TRUE"),
    .DEC_PCOMMA_DETECT("TRUE"),
    .DEC_VALID_COMMA_ONLY("FALSE"),
    .DELAY_ELEC(1'b0),
    .DMONITOR_CFG0(10'h000),
    .DMONITOR_CFG1(8'h00),
    .ES_CLK_PHASE_SEL(1'b0),
    .ES_CONTROL(6'b000000),
    .ES_ERRDET_EN("FALSE"),
    .ES_EYE_SCAN_EN("FALSE"),
    .ES_HORZ_OFFSET(12'h000),
    .ES_PRESCALE(5'b00000),
    .ES_QUALIFIER0(16'h0000),
    .ES_QUALIFIER1(16'h0000),
    .ES_QUALIFIER2(16'h0000),
    .ES_QUALIFIER3(16'h0000),
    .ES_QUALIFIER4(16'h0000),
    .ES_QUALIFIER5(16'h0000),
    .ES_QUALIFIER6(16'h0000),
    .ES_QUALIFIER7(16'h0000),
    .ES_QUALIFIER8(16'h0000),
    .ES_QUALIFIER9(16'h0000),
    .ES_QUAL_MASK0(16'h0000),
    .ES_QUAL_MASK1(16'h0000),
    .ES_QUAL_MASK2(16'h0000),
    .ES_QUAL_MASK3(16'h0000),
    .ES_QUAL_MASK4(16'h0000),
    .ES_QUAL_MASK5(16'h0000),
    .ES_QUAL_MASK6(16'h0000),
    .ES_QUAL_MASK7(16'h0000),
    .ES_QUAL_MASK8(16'h0000),
    .ES_QUAL_MASK9(16'h0000),
    .ES_SDATA_MASK0(16'h0000),
    .ES_SDATA_MASK1(16'h0000),
    .ES_SDATA_MASK2(16'h0000),
    .ES_SDATA_MASK3(16'h0000),
    .ES_SDATA_MASK4(16'h0000),
    .ES_SDATA_MASK5(16'h0000),
    .ES_SDATA_MASK6(16'h0000),
    .ES_SDATA_MASK7(16'h0000),
    .ES_SDATA_MASK8(16'h0000),
    .ES_SDATA_MASK9(16'h0000),
    .EYE_SCAN_SWAP_EN(1'b0),
    .FTS_DESKEW_SEQ_ENABLE(4'b1111),
    .FTS_LANE_DESKEW_CFG(4'b1111),
    .FTS_LANE_DESKEW_EN("FALSE"),
    .GEARBOX_MODE(5'b00000),
    .ISCAN_CK_PH_SEL2(1'b0),
    .LOCAL_MASTER(1'b1),
    .LPBK_BIAS_CTRL(3'b100),
    .LPBK_EN_RCAL_B(1'b0),
    .LPBK_EXT_RCAL(4'b1000),
    .LPBK_IND_CTRL0(3'b000),
    .LPBK_IND_CTRL1(3'b000),
    .LPBK_IND_CTRL2(3'b000),
    .LPBK_RG_CTRL(4'b1110),
    .OOBDIVCTL(2'b00),
    .OOB_PWRUP(1'b0),
    .PCI3_AUTO_REALIGN("OVR_1K_BLK"),
    .PCI3_PIPE_RX_ELECIDLE(1'b0),
    .PCI3_RX_ASYNC_EBUF_BYPASS(2'b00),
    .PCI3_RX_ELECIDLE_EI2_ENABLE(1'b0),
    .PCI3_RX_ELECIDLE_H2L_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_H2L_DISABLE(3'b000),
    .PCI3_RX_ELECIDLE_HI_COUNT(6'b000000),
    .PCI3_RX_ELECIDLE_LP4_DISABLE(1'b0),
    .PCI3_RX_FIFO_DISABLE(1'b0),
    .PCIE3_CLK_COR_EMPTY_THRSH(5'b00000),
    .PCIE3_CLK_COR_FULL_THRSH(6'b010000),
    .PCIE3_CLK_COR_MAX_LAT(5'b00100),
    .PCIE3_CLK_COR_MIN_LAT(5'b00000),
    .PCIE3_CLK_COR_THRSH_TIMER(6'b001000),
    .PCIE_BUFG_DIV_CTRL(16'h1000),
    .PCIE_PLL_SEL_MODE_GEN12(2'h0),
    .PCIE_PLL_SEL_MODE_GEN3(2'h3),
    .PCIE_PLL_SEL_MODE_GEN4(2'h2),
    .PCIE_RXPCS_CFG_GEN3(16'h0AA5),
    .PCIE_RXPMA_CFG(16'h280A),
    .PCIE_TXPCS_CFG_GEN3(16'h2CA4),
    .PCIE_TXPMA_CFG(16'h280A),
    .PCS_PCIE_EN("FALSE"),
    .PCS_RSVD0(16'b0000000000000000),
    .PD_TRANS_TIME_FROM_P2(12'h03C),
    .PD_TRANS_TIME_NONE_P2(8'h19),
    .PD_TRANS_TIME_TO_P2(8'h64),
    .PREIQ_FREQ_BST(0),
    .PROCESS_PAR(3'b010),
    .RATE_SW_USE_DRP(1'b1),
    .RCLK_SIPO_DLY_ENB(1'b0),
    .RCLK_SIPO_INV_EN(1'b0),
    .RESET_POWERSAVE_DISABLE(1'b0),
    .RTX_BUF_CML_CTRL(3'b010),
    .RTX_BUF_TERM_CTRL(2'b00),
    .RXBUFRESET_TIME(5'b00011),
    .RXBUF_ADDR_MODE("FULL"),
    .RXBUF_EIDLE_HI_CNT(4'b1000),
    .RXBUF_EIDLE_LO_CNT(4'b0000),
    .RXBUF_EN("TRUE"),
    .RXBUF_RESET_ON_CB_CHANGE("TRUE"),
    .RXBUF_RESET_ON_COMMAALIGN("FALSE"),
    .RXBUF_RESET_ON_EIDLE("FALSE"),
    .RXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .RXBUF_THRESH_OVFLW(0),
    .RXBUF_THRESH_OVRD("FALSE"),
    .RXBUF_THRESH_UNDFLW(4),
    .RXCDRFREQRESET_TIME(5'b00001),
    .RXCDRPHRESET_TIME(5'b00001),
    .RXCDR_CFG0(16'h0003),
    .RXCDR_CFG0_GEN3(16'h0003),
    .RXCDR_CFG1(16'h0000),
    .RXCDR_CFG1_GEN3(16'h0000),
    .RXCDR_CFG2(16'h0249),
    .RXCDR_CFG2_GEN2(10'h249),
    .RXCDR_CFG2_GEN3(16'h0249),
    .RXCDR_CFG2_GEN4(16'h0164),
    .RXCDR_CFG3(16'h0012),
    .RXCDR_CFG3_GEN2(6'h12),
    .RXCDR_CFG3_GEN3(16'h0012),
    .RXCDR_CFG3_GEN4(16'h0012),
    .RXCDR_CFG4(16'h5CF6),
    .RXCDR_CFG4_GEN3(16'h5CF6),
    .RXCDR_CFG5(16'hB46B),
    .RXCDR_CFG5_GEN3(16'h146B),
    .RXCDR_FR_RESET_ON_EIDLE(1'b0),
    .RXCDR_HOLD_DURING_EIDLE(1'b0),
    .RXCDR_LOCK_CFG0(16'h2201),
    .RXCDR_LOCK_CFG1(16'h9FFF),
    .RXCDR_LOCK_CFG2(16'h77C3),
    .RXCDR_LOCK_CFG3(16'h0001),
    .RXCDR_LOCK_CFG4(16'h0000),
    .RXCDR_PH_RESET_ON_EIDLE(1'b0),
    .RXCFOK_CFG0(16'h0000),
    .RXCFOK_CFG1(16'h8015),
    .RXCFOK_CFG2(16'h02AE),
    .RXCKCAL1_IQ_LOOP_RST_CFG(16'h0004),
    .RXCKCAL1_I_LOOP_RST_CFG(16'h0004),
    .RXCKCAL1_Q_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_DX_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_D_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_S_LOOP_RST_CFG(16'h0004),
    .RXCKCAL2_X_LOOP_RST_CFG(16'h0004),
    .RXDFELPMRESET_TIME(7'b0001111),
    .RXDFELPM_KL_CFG0(16'h0000),
    .RXDFELPM_KL_CFG1(16'hA0E2),
    .RXDFELPM_KL_CFG2(16'h0100),
    .RXDFE_CFG0(16'h0A00),
    .RXDFE_CFG1(16'h0000),
    .RXDFE_GC_CFG0(16'h0000),
    .RXDFE_GC_CFG1(16'h8000),
    .RXDFE_GC_CFG2(16'hFFE0),
    .RXDFE_H2_CFG0(16'h0000),
    .RXDFE_H2_CFG1(16'h0002),
    .RXDFE_H3_CFG0(16'h0000),
    .RXDFE_H3_CFG1(16'h8002),
    .RXDFE_H4_CFG0(16'h0000),
    .RXDFE_H4_CFG1(16'h8002),
    .RXDFE_H5_CFG0(16'h0000),
    .RXDFE_H5_CFG1(16'h8002),
    .RXDFE_H6_CFG0(16'h0000),
    .RXDFE_H6_CFG1(16'h8002),
    .RXDFE_H7_CFG0(16'h0000),
    .RXDFE_H7_CFG1(16'h8002),
    .RXDFE_H8_CFG0(16'h0000),
    .RXDFE_H8_CFG1(16'h8002),
    .RXDFE_H9_CFG0(16'h0000),
    .RXDFE_H9_CFG1(16'h8002),
    .RXDFE_HA_CFG0(16'h0000),
    .RXDFE_HA_CFG1(16'h8002),
    .RXDFE_HB_CFG0(16'h0000),
    .RXDFE_HB_CFG1(16'h8002),
    .RXDFE_HC_CFG0(16'h0000),
    .RXDFE_HC_CFG1(16'h8002),
    .RXDFE_HD_CFG0(16'h0000),
    .RXDFE_HD_CFG1(16'h8002),
    .RXDFE_HE_CFG0(16'h0000),
    .RXDFE_HE_CFG1(16'h8002),
    .RXDFE_HF_CFG0(16'h0000),
    .RXDFE_HF_CFG1(16'h8002),
    .RXDFE_KH_CFG0(16'h0000),
    .RXDFE_KH_CFG1(16'h8000),
    .RXDFE_KH_CFG2(16'h2613),
    .RXDFE_KH_CFG3(16'h411C),
    .RXDFE_OS_CFG0(16'h0000),
    .RXDFE_OS_CFG1(16'h8002),
    .RXDFE_PWR_SAVING(1'b1),
    .RXDFE_UT_CFG0(16'h0000),
    .RXDFE_UT_CFG1(16'h0003),
    .RXDFE_UT_CFG2(16'h0000),
    .RXDFE_VP_CFG0(16'h0000),
    .RXDFE_VP_CFG1(16'h8033),
    .RXDLY_CFG(16'h0010),
    .RXDLY_LCFG(16'h0030),
    .RXELECIDLE_CFG("SIGCFG_4"),
    .RXGBOX_FIFO_INIT_RD_ADDR(4),
    .RXGEARBOX_EN("FALSE"),
    .RXISCANRESET_TIME(5'b00001),
    .RXLPM_CFG(16'h0000),
    .RXLPM_GC_CFG(16'h8000),
    .RXLPM_KH_CFG0(16'h0000),
    .RXLPM_KH_CFG1(16'h0002),
    .RXLPM_OS_CFG0(16'h0000),
    .RXLPM_OS_CFG1(16'h8002),
    .RXOOB_CFG(9'b000000110),
    .RXOOB_CLK_CFG("PMA"),
    .RXOSCALRESET_TIME(5'b00011),
    .RXOUT_DIV(4),
    .RXPCSRESET_TIME(5'b00011),
    .RXPHBEACON_CFG(16'h0000),
    .RXPHDLY_CFG(16'h2070),
    .RXPHSAMP_CFG(16'h2100),
    .RXPHSLIP_CFG(16'h9933),
    .RXPH_MONITOR_SEL(5'b00000),
    .RXPI_AUTO_BW_SEL_BYPASS(1'b0),
    .RXPI_CFG0(16'h1300),
    .RXPI_CFG1(16'b0000000011111101),
    .RXPI_LPM(1'b0),
    .RXPI_SEL_LC(2'b00),
    .RXPI_STARTCODE(2'b00),
    .RXPI_VREFSEL(1'b0),
    .RXPMACLK_SEL("DATA"),
    .RXPMARESET_TIME(5'b00011),
    .RXPRBS_ERR_LOOPBACK(1'b0),
    .RXPRBS_LINKACQ_CNT(15),
    .RXREFCLKDIV2_SEL(1'b0),
    .RXSLIDE_AUTO_WAIT(7),
    .RXSLIDE_MODE("OFF"),
    .RXSYNC_MULTILANE(1'b0),
    .RXSYNC_OVRD(1'b0),
    .RXSYNC_SKIP_DA(1'b1),
    .RX_AFE_CM_EN(1'b0),
    .RX_BIAS_CFG0(16'h1554),
    .RX_BUFFER_CFG(6'b000000),
    .RX_CAPFF_SARC_ENB(1'b0),
    .RX_CLK25_DIV(7),
    .RX_CLKMUX_EN(1'b1),
    .RX_CLK_SLIP_OVRD(5'b00000),
    .RX_CM_BUF_CFG(4'b1010),
    .RX_CM_BUF_PD(1'b0),
    .RX_CM_SEL(3),
    .RX_CM_TRIM(10),
    .RX_CTLE3_LPF(8'b11111111),
    .RX_DATA_WIDTH(20),
    .RX_DDI_SEL(6'b000000),
    .RX_DEFER_RESET_BUF_EN("TRUE"),
    .RX_DEGEN_CTRL(3'b011),
    .RX_DFELPM_CFG0(6),
    .RX_DFELPM_CFG1(1'b1),
    .RX_DFELPM_KLKH_AGC_STUP_EN(1'b1),
    .RX_DFE_AGC_CFG0(2'b10),
    .RX_DFE_AGC_CFG1(4),
    .RX_DFE_KL_LPM_KH_CFG0(1),
    .RX_DFE_KL_LPM_KH_CFG1(4),
    .RX_DFE_KL_LPM_KL_CFG0(2'b01),
    .RX_DFE_KL_LPM_KL_CFG1(4),
    .RX_DFE_LPM_HOLD_DURING_EIDLE(1'b0),
    .RX_DISPERR_SEQ_MATCH("TRUE"),
    .RX_DIV2_MODE_B(1'b0),
    .RX_DIVRESET_TIME(5'b00001),
    .RX_EN_CTLE_RCAL_B(1'b0),
    .RX_EN_HI_LR(1'b1),
    .RX_EXT_RL_CTRL(9'b000000000),
    .RX_EYESCAN_VS_CODE(7'b0000000),
    .RX_EYESCAN_VS_NEG_DIR(1'b0),
    .RX_EYESCAN_VS_RANGE(2'b00),
    .RX_EYESCAN_VS_UT_SIGN(1'b0),
    .RX_FABINT_USRCLK_FLOP(1'b0),
    .RX_INT_DATAWIDTH(0),
    .RX_PMA_POWER_SAVE(1'b0),
    .RX_PMA_RSV0(16'h0000),
    .RX_PROGDIV_CFG(0.000000),
    .RX_PROGDIV_RATE(16'h0001),
    .RX_RESLOAD_CTRL(4'b0000),
    .RX_RESLOAD_OVRD(1'b0),
    .RX_SAMPLE_PERIOD(3'b111),
    .RX_SIG_VALID_DLY(11),
    .RX_SUM_DFETAPREP_EN(1'b0),
    .RX_SUM_IREF_TUNE(4'b0100),
    .RX_SUM_RESLOAD_CTRL(4'b0011),
    .RX_SUM_VCMTUNE(4'b0110),
    .RX_SUM_VCM_OVWR(1'b0),
    .RX_SUM_VREF_TUNE(3'b100),
    .RX_TUNE_AFE_OS(2'b00),
    .RX_VREG_CTRL(3'b101),
    .RX_VREG_PDB(1'b1),
    .RX_WIDEMODE_CDR(2'b00),
    .RX_WIDEMODE_CDR_GEN3(2'b00),
    .RX_WIDEMODE_CDR_GEN4(2'b01),
    .RX_XCLK_SEL("RXDES"),
    .RX_XMODE_SEL(1'b0),
    .SAMPLE_CLK_PHASE(1'b0),
    .SAS_12G_MODE(1'b0),
    .SATA_BURST_SEQ_LEN(4'b1111),
    .SATA_BURST_VAL(3'b100),
    .SATA_CPLL_CFG("VCO_3000MHZ"),
    .SATA_EIDLE_VAL(3'b100),
    .SHOW_REALIGN_COMMA("TRUE"),
    .SIM_DEVICE("ULTRASCALE_PLUS"),
    .SIM_MODE("FAST"),
    .SIM_RECEIVER_DETECT_PASS("TRUE"),
    .SIM_RESET_SPEEDUP("TRUE"),
    .SIM_TX_EIDLE_DRIVE_LEVEL("Z"),
    .SRSTMODE(1'b0),
    .TAPDLY_SET_TX(2'h0),
    .TEMPERATURE_PAR(4'b0010),
    .TERM_RCAL_CFG(15'b100001000010001),
    .TERM_RCAL_OVRD(3'b000),
    .TRANS_TIME_RATE(8'h0E),
    .TST_RSV0(8'h00),
    .TST_RSV1(8'h00),
    .TXBUF_EN("TRUE"),
    .TXBUF_RESET_ON_RATE_CHANGE("TRUE"),
    .TXDLY_CFG(16'h8010),
    .TXDLY_LCFG(16'h0030),
    .TXDRVBIAS_N(4'b1010),
    .TXFIFO_ADDR_CFG("LOW"),
    .TXGBOX_FIFO_INIT_RD_ADDR(4),
    .TXGEARBOX_EN("FALSE"),
    .TXOUT_DIV(4),
    .TXPCSRESET_TIME(5'b00011),
    .TXPHDLY_CFG0(16'h6070),
    .TXPHDLY_CFG1(16'h000F),
    .TXPH_CFG(16'h0723),
    .TXPH_CFG2(16'h0000),
    .TXPH_MONITOR_SEL(5'b00000),
    .TXPI_CFG(16'h03DF),
    .TXPI_CFG0(2'b00),
    .TXPI_CFG1(2'b00),
    .TXPI_CFG2(2'b00),
    .TXPI_CFG3(1'b1),
    .TXPI_CFG4(1'b1),
    .TXPI_CFG5(3'b000),
    .TXPI_GRAY_SEL(1'b0),
    .TXPI_INVSTROBE_SEL(1'b0),
    .TXPI_LPM(1'b0),
    .TXPI_PPM(1'b0),
    .TXPI_PPMCLK_SEL("TXUSRCLK2"),
    .TXPI_PPM_CFG(8'b00000000),
    .TXPI_SYNFREQ_PPM(3'b001),
    .TXPI_VREFSEL(1'b0),
    .TXPMARESET_TIME(5'b00011),
    .TXREFCLKDIV2_SEL(1'b0),
    .TXSYNC_MULTILANE(1'b0),
    .TXSYNC_OVRD(1'b0),
    .TXSYNC_SKIP_DA(1'b0),
    .TX_CLK25_DIV(7),
    .TX_CLKMUX_EN(1'b1),
    .TX_DATA_WIDTH(20),
    .TX_DCC_LOOP_RST_CFG(16'h0004),
    .TX_DEEMPH0(6'b000000),
    .TX_DEEMPH1(6'b000000),
    .TX_DEEMPH2(6'b000000),
    .TX_DEEMPH3(6'b000000),
    .TX_DIVRESET_TIME(5'b00001),
    .TX_DRIVE_MODE("DIRECT"),
    .TX_DRVMUX_CTRL(2),
    .TX_EIDLE_ASSERT_DELAY(3'b100),
    .TX_EIDLE_DEASSERT_DELAY(3'b011),
    .TX_FABINT_USRCLK_FLOP(1'b0),
    .TX_FIFO_BYP_EN(1'b0),
    .TX_IDLE_DATA_ZERO(1'b0),
    .TX_INT_DATAWIDTH(0),
    .TX_LOOPBACK_DRIVE_HIZ("FALSE"),
    .TX_MAINCURSOR_SEL(1'b0),
    .TX_MARGIN_FULL_0(7'b1011111),
    .TX_MARGIN_FULL_1(7'b1011110),
    .TX_MARGIN_FULL_2(7'b1011100),
    .TX_MARGIN_FULL_3(7'b1011010),
    .TX_MARGIN_FULL_4(7'b1011000),
    .TX_MARGIN_LOW_0(7'b1000110),
    .TX_MARGIN_LOW_1(7'b1000101),
    .TX_MARGIN_LOW_2(7'b1000011),
    .TX_MARGIN_LOW_3(7'b1000010),
    .TX_MARGIN_LOW_4(7'b1000000),
    .TX_PHICAL_CFG0(16'h0000),
    .TX_PHICAL_CFG1(16'h7E00),
    .TX_PHICAL_CFG2(16'h0201),
    .TX_PI_BIASSET(0),
    .TX_PI_IBIAS_MID(2'b00),
    .TX_PMADATA_OPT(1'b0),
    .TX_PMA_POWER_SAVE(1'b0),
    .TX_PMA_RSV0(16'h0008),
    .TX_PREDRV_CTRL(2),
    .TX_PROGCLK_SEL("CPLL"),
    .TX_PROGDIV_CFG(20.000000),
    .TX_PROGDIV_RATE(16'h0001),
    .TX_QPI_STATUS_EN(1'b0),
    .TX_RXDETECT_CFG(14'h0032),
    .TX_RXDETECT_REF(4),
    .TX_SAMPLE_PERIOD(3'b111),
    .TX_SARC_LPBK_ENB(1'b0),
    .TX_SW_MEAS(2'b00),
    .TX_VREG_CTRL(3'b000),
    .TX_VREG_PDB(1'b0),
    .TX_VREG_VREFSEL(2'b00),
    .TX_XCLK_SEL("TXOUT"),
    .USB_BOTH_BURST_IDLE(1'b0),
    .USB_BURSTMAX_U3WAKE(7'b1111111),
    .USB_BURSTMIN_U3WAKE(7'b1100011),
    .USB_CLK_COR_EQ_EN(1'b0),
    .USB_EXT_CNTL(1'b1),
    .USB_IDLEMAX_POLLING(10'b1010111011),
    .USB_IDLEMIN_POLLING(10'b0100101011),
    .USB_LFPSPING_BURST(9'b000000101),
    .USB_LFPSPOLLING_BURST(9'b000110001),
    .USB_LFPSPOLLING_IDLE_MS(9'b000000100),
    .USB_LFPSU1EXIT_BURST(9'b000011101),
    .USB_LFPSU2LPEXIT_BURST_MS(9'b001100011),
    .USB_LFPSU3WAKE_BURST_MS(9'b111110011),
    .USB_LFPS_TPERIOD(4'b0011),
    .USB_LFPS_TPERIOD_ACCURATE(1'b1),
    .USB_MODE(1'b0),
    .USB_PCIE_ERR_REP_DIS(1'b0),
    .USB_PING_SATA_MAX_INIT(21),
    .USB_PING_SATA_MIN_INIT(12),
    .USB_POLL_SATA_MAX_BURST(8),
    .USB_POLL_SATA_MIN_BURST(4),
    .USB_RAW_ELEC(1'b0),
    .USB_RXIDLE_P0_CTRL(1'b1),
    .USB_TXIDLE_TUNE_ENABLE(1'b1),
    .USB_U1_SATA_MAX_WAKE(7),
    .USB_U1_SATA_MIN_WAKE(4),
    .USB_U2_SAS_MAX_COM(64),
    .USB_U2_SAS_MIN_COM(36),
    .USE_PCS_CLK_PHASE_SEL(1'b0),
    .Y_ALL_MODE(1'b0)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST 
       (.BUFGTCE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_0 ),
        .BUFGTCEMASK({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_317 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_318 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_319 }),
        .BUFGTDIV({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_372 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_373 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_374 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_375 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_376 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_377 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_378 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_379 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_380 }),
        .BUFGTRESET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_1 ),
        .BUFGTRSTMASK({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_320 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_321 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_322 }),
        .CDRSTEPDIR(1'b0),
        .CDRSTEPSQ(1'b0),
        .CDRSTEPSX(1'b0),
        .CFGRESET(1'b0),
        .CLKRSVD0(1'b0),
        .CLKRSVD1(1'b0),
        .CPLLFBCLKLOST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_2 ),
        .CPLLFREQLOCK(1'b0),
        .CPLLLOCK(in0),
        .CPLLLOCKDETCLK(1'b0),
        .CPLLLOCKEN(1'b1),
        .CPLLPD(i_in_meta_reg),
        .CPLLREFCLKLOST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_4 ),
        .CPLLREFCLKSEL({1'b0,1'b0,1'b1}),
        .CPLLRESET(i_in_meta_reg_0),
        .DMONFIFORESET(1'b0),
        .DMONITORCLK(1'b0),
        .DMONITOROUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_207 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_208 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_209 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_210 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_211 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_212 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_213 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_214 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_215 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_216 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_217 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_218 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_219 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_220 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_221 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_222 }),
        .DMONITOROUTCLK(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_5 ),
        .DRPADDR({1'b0,1'b0,i_in_meta_reg_2,i_in_meta_reg_2[5]}),
        .DRPCLK(drpclk_in),
        .DRPDI(Q),
        .DRPDO(D),
        .DRPEN(DEN_O),
        .DRPRDY(\gen_gtwizard_gthe4.drprdy_int ),
        .DRPRST(1'b0),
        .DRPWE(DWE_O),
        .EYESCANDATAERROR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_7 ),
        .EYESCANRESET(1'b0),
        .EYESCANTRIGGER(1'b0),
        .FREQOS(1'b0),
        .GTGREFCLK(1'b0),
        .GTHRXN(gthrxn_in),
        .GTHRXP(gthrxp_in),
        .GTHTXN(gthtxn_out),
        .GTHTXP(gthtxp_out),
        .GTNORTHREFCLK0(1'b0),
        .GTNORTHREFCLK1(1'b0),
        .GTPOWERGOOD(\gen_gtwizard_gthe4.gtpowergood_int ),
        .GTREFCLK0(gtrefclk0_in),
        .GTREFCLK1(1'b0),
        .GTREFCLKMONITOR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_11 ),
        .GTRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .GTRXRESET(\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .GTRXRESETSEL(1'b0),
        .GTSOUTHREFCLK0(1'b0),
        .GTSOUTHREFCLK1(1'b0),
        .GTTXRESET(\gen_gtwizard_gthe4.gttxreset_int ),
        .GTTXRESETSEL(1'b0),
        .INCPCTRL(1'b0),
        .LOOPBACK({1'b0,1'b0,1'b0}),
        .PCIEEQRXEQADAPTDONE(1'b0),
        .PCIERATEGEN3(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_12 ),
        .PCIERATEIDLE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_13 ),
        .PCIERATEQPLLPD({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_303 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_304 }),
        .PCIERATEQPLLRESET({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_305 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_306 }),
        .PCIERSTIDLE(1'b0),
        .PCIERSTTXSYNCSTART(1'b0),
        .PCIESYNCTXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_14 ),
        .PCIEUSERGEN3RDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_15 ),
        .PCIEUSERPHYSTATUSRST(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_16 ),
        .PCIEUSERRATEDONE(1'b0),
        .PCIEUSERRATESTART(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_17 ),
        .PCSRSVDIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .PCSRSVDOUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_239 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_240 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_241 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_242 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_243 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_244 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_245 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_246 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_247 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_248 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_249 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_250 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_251 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_252 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_253 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_254 }),
        .PHYSTATUS(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_18 ),
        .PINRSRVDAS({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_255 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_256 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_257 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_258 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_259 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_260 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_261 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_262 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_263 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_264 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_265 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_266 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_267 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_268 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_269 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_270 }),
        .POWERPRESENT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_19 ),
        .QPLL0CLK(1'b0),
        .QPLL0FREQLOCK(1'b0),
        .QPLL0REFCLK(1'b0),
        .QPLL1CLK(1'b0),
        .QPLL1FREQLOCK(1'b0),
        .QPLL1REFCLK(1'b0),
        .RESETEXCEPTION(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_20 ),
        .RESETOVRD(1'b0),
        .RX8B10BEN(1'b1),
        .RXAFECFOKEN(1'b1),
        .RXBUFRESET(1'b0),
        .RXBUFSTATUS({rxbufstatus_out,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_324 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_325 }),
        .RXBYTEISALIGNED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_21 ),
        .RXBYTEREALIGN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_22 ),
        .RXCDRFREQRESET(1'b0),
        .RXCDRHOLD(1'b0),
        .RXCDRLOCK(rxcdrlock_out),
        .RXCDROVRDEN(1'b0),
        .RXCDRPHDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_24 ),
        .RXCDRRESET(1'b0),
        .RXCHANBONDSEQ(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_25 ),
        .RXCHANISALIGNED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_26 ),
        .RXCHANREALIGN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_27 ),
        .RXCHBONDEN(1'b0),
        .RXCHBONDI({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCHBONDLEVEL({1'b0,1'b0,1'b0}),
        .RXCHBONDMASTER(1'b0),
        .RXCHBONDO({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_329 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_330 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_331 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_332 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_333 }),
        .RXCHBONDSLAVE(1'b0),
        .RXCKCALDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_28 ),
        .RXCKCALRESET(1'b0),
        .RXCKCALSTART({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .RXCLKCORCNT(rxclkcorcnt_out),
        .RXCOMINITDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_29 ),
        .RXCOMMADET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_30 ),
        .RXCOMMADETEN(1'b1),
        .RXCOMSASDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_31 ),
        .RXCOMWAKEDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_32 ),
        .RXCTRL0({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_271 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_272 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_273 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_274 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_275 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_276 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_277 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_278 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_279 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_280 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_281 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_282 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_283 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_284 ,rxctrl0_out}),
        .RXCTRL1({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_287 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_288 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_289 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_290 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_291 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_292 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_293 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_294 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_295 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_296 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_297 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_298 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_299 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_300 ,rxctrl1_out}),
        .RXCTRL2({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_340 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_341 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_342 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_343 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_344 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_345 ,rxctrl2_out}),
        .RXCTRL3({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_348 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_349 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_350 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_351 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_352 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_353 ,rxctrl3_out}),
        .RXDATA({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_79 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_80 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_81 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_82 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_83 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_84 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_85 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_86 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_87 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_88 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_89 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_90 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_91 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_92 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_93 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_94 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_95 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_96 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_97 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_98 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_99 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_100 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_101 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_102 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_103 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_104 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_105 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_106 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_107 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_108 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_109 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_110 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_111 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_112 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_113 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_114 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_115 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_116 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_117 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_118 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_119 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_120 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_121 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_122 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_123 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_124 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_125 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_126 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_127 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_128 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_129 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_130 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_131 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_132 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_133 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_134 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_135 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_136 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_137 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_138 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_139 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_140 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_141 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_142 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_143 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_144 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_145 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_146 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_147 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_148 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_149 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_150 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_151 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_152 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_153 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_154 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_155 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_156 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_157 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_158 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_159 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_160 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_161 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_162 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_163 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_164 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_165 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_166 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_167 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_168 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_169 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_170 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_171 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_172 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_173 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_174 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_175 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_176 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_177 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_178 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_179 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_180 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_181 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_182 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_183 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_184 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_185 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_186 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_187 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_188 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_189 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_190 ,gtwiz_userdata_rx_out}),
        .RXDATAEXTENDRSVD({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_356 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_357 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_358 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_359 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_360 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_361 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_362 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_363 }),
        .RXDATAVALID({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_309 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_310 }),
        .RXDFEAGCCTRL({1'b0,1'b1}),
        .RXDFEAGCHOLD(1'b0),
        .RXDFEAGCOVRDEN(1'b0),
        .RXDFECFOKFCNUM({1'b1,1'b1,1'b0,1'b1}),
        .RXDFECFOKFEN(1'b0),
        .RXDFECFOKFPULSE(1'b0),
        .RXDFECFOKHOLD(1'b0),
        .RXDFECFOKOVREN(1'b0),
        .RXDFEKHHOLD(1'b0),
        .RXDFEKHOVRDEN(1'b0),
        .RXDFELFHOLD(1'b0),
        .RXDFELFOVRDEN(1'b0),
        .RXDFELPMRESET(1'b0),
        .RXDFETAP10HOLD(1'b0),
        .RXDFETAP10OVRDEN(1'b0),
        .RXDFETAP11HOLD(1'b0),
        .RXDFETAP11OVRDEN(1'b0),
        .RXDFETAP12HOLD(1'b0),
        .RXDFETAP12OVRDEN(1'b0),
        .RXDFETAP13HOLD(1'b0),
        .RXDFETAP13OVRDEN(1'b0),
        .RXDFETAP14HOLD(1'b0),
        .RXDFETAP14OVRDEN(1'b0),
        .RXDFETAP15HOLD(1'b0),
        .RXDFETAP15OVRDEN(1'b0),
        .RXDFETAP2HOLD(1'b0),
        .RXDFETAP2OVRDEN(1'b0),
        .RXDFETAP3HOLD(1'b0),
        .RXDFETAP3OVRDEN(1'b0),
        .RXDFETAP4HOLD(1'b0),
        .RXDFETAP4OVRDEN(1'b0),
        .RXDFETAP5HOLD(1'b0),
        .RXDFETAP5OVRDEN(1'b0),
        .RXDFETAP6HOLD(1'b0),
        .RXDFETAP6OVRDEN(1'b0),
        .RXDFETAP7HOLD(1'b0),
        .RXDFETAP7OVRDEN(1'b0),
        .RXDFETAP8HOLD(1'b0),
        .RXDFETAP8OVRDEN(1'b0),
        .RXDFETAP9HOLD(1'b0),
        .RXDFETAP9OVRDEN(1'b0),
        .RXDFEUTHOLD(1'b0),
        .RXDFEUTOVRDEN(1'b0),
        .RXDFEVPHOLD(1'b0),
        .RXDFEVPOVRDEN(1'b0),
        .RXDFEXYDEN(1'b1),
        .RXDLYBYPASS(1'b1),
        .RXDLYEN(1'b0),
        .RXDLYOVRDEN(1'b0),
        .RXDLYSRESET(1'b0),
        .RXDLYSRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_33 ),
        .RXELECIDLE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_34 ),
        .RXELECIDLEMODE({1'b1,1'b1}),
        .RXEQTRAINING(1'b0),
        .RXGEARBOXSLIP(1'b0),
        .RXHEADER({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_334 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_335 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_336 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_337 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_338 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_339 }),
        .RXHEADERVALID({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_311 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_312 }),
        .RXLATCLK(1'b0),
        .RXLFPSTRESETDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_35 ),
        .RXLFPSU2LPEXITDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_36 ),
        .RXLFPSU3WAKEDET(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_37 ),
        .RXLPMEN(1'b1),
        .RXLPMGCHOLD(1'b0),
        .RXLPMGCOVRDEN(1'b0),
        .RXLPMHFHOLD(1'b0),
        .RXLPMHFOVRDEN(1'b0),
        .RXLPMLFHOLD(1'b0),
        .RXLPMLFKLOVRDEN(1'b0),
        .RXLPMOSHOLD(1'b0),
        .RXLPMOSOVRDEN(1'b0),
        .RXMCOMMAALIGNEN(rxmcommaalignen_in),
        .RXMONITOROUT({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_364 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_365 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_366 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_367 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_368 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_369 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_370 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_371 }),
        .RXMONITORSEL({1'b0,1'b0}),
        .RXOOBRESET(1'b0),
        .RXOSCALRESET(1'b0),
        .RXOSHOLD(1'b0),
        .RXOSINTDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_38 ),
        .RXOSINTSTARTED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_39 ),
        .RXOSINTSTROBEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_40 ),
        .RXOSINTSTROBESTARTED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_41 ),
        .RXOSOVRDEN(1'b0),
        .RXOUTCLK(rxoutclk_out),
        .RXOUTCLKFABRIC(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_43 ),
        .RXOUTCLKPCS(rxoutclkpcs_out),
        .RXOUTCLKSEL({1'b0,1'b1,1'b0}),
        .RXPCOMMAALIGNEN(rxmcommaalignen_in),
        .RXPCSRESET(1'b0),
        .RXPD({RXPD,RXPD}),
        .RXPHALIGN(1'b0),
        .RXPHALIGNDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_45 ),
        .RXPHALIGNEN(1'b0),
        .RXPHALIGNERR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_46 ),
        .RXPHDLYPD(1'b1),
        .RXPHDLYRESET(1'b0),
        .RXPHOVRDEN(1'b0),
        .RXPLLCLKSEL({1'b0,1'b0}),
        .RXPMARESET(1'b0),
        .RXPMARESETDONE(gtwiz_userclk_rx_active_out),
        .RXPOLARITY(1'b0),
        .RXPRBSCNTRESET(1'b0),
        .RXPRBSERR(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_48 ),
        .RXPRBSLOCKED(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_49 ),
        .RXPRBSSEL({1'b0,1'b0,1'b0,1'b0}),
        .RXPRGDIVRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_50 ),
        .RXPROGDIVRESET(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .RXQPIEN(1'b0),
        .RXQPISENN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_51 ),
        .RXQPISENP(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_52 ),
        .RXRATE({1'b0,1'b0,RXRATE}),
        .RXRATEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_53 ),
        .RXRATEMODE(RXRATE),
        .RXRECCLKOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_54 ),
        .RXRESETDONE(rxresetdone_out),
        .RXSLIDE(1'b0),
        .RXSLIDERDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_56 ),
        .RXSLIPDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_57 ),
        .RXSLIPOUTCLK(1'b0),
        .RXSLIPOUTCLKRDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_58 ),
        .RXSLIPPMA(1'b0),
        .RXSLIPPMARDY(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_59 ),
        .RXSTARTOFSEQ({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_313 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_314 }),
        .RXSTATUS({\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_326 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_327 ,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_328 }),
        .RXSYNCALLIN(1'b0),
        .RXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_60 ),
        .RXSYNCIN(1'b0),
        .RXSYNCMODE(1'b0),
        .RXSYNCOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_61 ),
        .RXSYSCLKSEL({1'b0,1'b0}),
        .RXTERMINATION(1'b0),
        .RXUSERRDY(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .RXUSRCLK(rxusrclk_in),
        .RXUSRCLK2(rxusrclk_in),
        .RXVALID(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_62 ),
        .SIGVALIDCLK(1'b0),
        .TSTIN({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BBYPASS({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TX8B10BEN(1'b1),
        .TXBUFSTATUS({txbufstatus_out,\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_316 }),
        .TXCOMFINISH(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_63 ),
        .TXCOMINIT(1'b0),
        .TXCOMSAS(1'b0),
        .TXCOMWAKE(1'b0),
        .TXCTRL0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl0_in}),
        .TXCTRL1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl1_in}),
        .TXCTRL2({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl2_in}),
        .TXDATA({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,gtwiz_userdata_tx_in}),
        .TXDATAEXTENDRSVD({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXDCCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_64 ),
        .TXDCCFORCESTART(1'b0),
        .TXDCCRESET(1'b0),
        .TXDEEMPH({1'b0,1'b0}),
        .TXDETECTRX(1'b0),
        .TXDIFFCTRL({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .TXDLYBYPASS(1'b1),
        .TXDLYEN(1'b0),
        .TXDLYHOLD(1'b0),
        .TXDLYOVRDEN(1'b0),
        .TXDLYSRESET(1'b0),
        .TXDLYSRESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_65 ),
        .TXDLYUPDOWN(1'b0),
        .TXELECIDLE(txelecidle_in),
        .TXHEADER({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXINHIBIT(1'b0),
        .TXLATCLK(1'b0),
        .TXLFPSTRESET(1'b0),
        .TXLFPSU2LPEXIT(1'b0),
        .TXLFPSU3WAKE(1'b0),
        .TXMAINCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXMARGIN({1'b0,1'b0,1'b0}),
        .TXMUXDCDEXHOLD(1'b0),
        .TXMUXDCDORWREN(1'b0),
        .TXONESZEROS(1'b0),
        .TXOUTCLK(txoutclk_out),
        .TXOUTCLKFABRIC(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_67 ),
        .TXOUTCLKPCS(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_68 ),
        .TXOUTCLKSEL(i_in_meta_reg_1),
        .TXPCSRESET(1'b0),
        .TXPD({txelecidle_in,txelecidle_in}),
        .TXPDELECIDLEMODE(1'b0),
        .TXPHALIGN(1'b0),
        .TXPHALIGNDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_69 ),
        .TXPHALIGNEN(1'b0),
        .TXPHDLYPD(1'b1),
        .TXPHDLYRESET(1'b0),
        .TXPHDLYTSTCLK(1'b0),
        .TXPHINIT(1'b0),
        .TXPHINITDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_70 ),
        .TXPHOVRDEN(1'b0),
        .TXPIPPMEN(1'b0),
        .TXPIPPMOVRDEN(1'b0),
        .TXPIPPMPD(1'b0),
        .TXPIPPMSEL(1'b0),
        .TXPIPPMSTEPSIZE({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPISOPD(1'b0),
        .TXPLLCLKSEL({1'b0,1'b0}),
        .TXPMARESET(1'b0),
        .TXPMARESETDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_71 ),
        .TXPOLARITY(1'b0),
        .TXPOSTCURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRBSFORCEERR(1'b0),
        .TXPRBSSEL({1'b0,1'b0,1'b0,1'b0}),
        .TXPRECURSOR({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXPRGDIVRESETDONE(cpllpd_int_reg),
        .TXPROGDIVRESET(\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .TXQPIBIASEN(1'b0),
        .TXQPISENN(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_73 ),
        .TXQPISENP(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_74 ),
        .TXQPIWEAKPUP(1'b0),
        .TXRATE({1'b0,1'b0,1'b0}),
        .TXRATEDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_75 ),
        .TXRATEMODE(1'b0),
        .TXRESETDONE(txresetdone_out),
        .TXSEQUENCE({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .TXSWING(1'b0),
        .TXSYNCALLIN(1'b0),
        .TXSYNCDONE(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_77 ),
        .TXSYNCIN(1'b0),
        .TXSYNCMODE(1'b0),
        .TXSYNCOUT(\gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_n_78 ),
        .TXSYSCLKSEL({1'b0,1'b0}),
        .TXUSERRDY(\gen_gtwizard_gthe4.txuserrdy_int ),
        .TXUSRCLK(rxusrclk_in),
        .TXUSRCLK2(rxusrclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal
   (\gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    cpllpd_int_reg,
    cpllreset_int_reg,
    USER_CPLLLOCK_OUT_reg,
    rst_in0,
    Q,
    DEN_O,
    DWE_O,
    DADDR_O,
    DI_O,
    in0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    txoutclk_out,
    drpclk_in,
    RESET_IN,
    DO_I,
    \gen_gtwizard_gthe4.drprdy_int ,
    lopt,
    lopt_1);
  output \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  output cpllpd_int_reg;
  output cpllreset_int_reg;
  output USER_CPLLLOCK_OUT_reg;
  output rst_in0;
  output [2:0]Q;
  output DEN_O;
  output DWE_O;
  output [6:0]DADDR_O;
  output [15:0]DI_O;
  input in0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]txoutclk_out;
  input [0:0]drpclk_in;
  input RESET_IN;
  input [15:0]DO_I;
  input \gen_gtwizard_gthe4.drprdy_int ;
  input lopt;
  input lopt_1;

  wire [6:0]DADDR_O;
  wire DEN_O;
  wire [15:0]DI_O;
  wire [15:0]DO_I;
  wire DWE_O;
  wire [2:0]Q;
  wire RESET_IN;
  wire USER_CPLLLOCK_OUT_reg;
  wire [17:1]\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg ;
  wire [15:0]cal_on_tx_dout;
  wire cal_on_tx_drdy;
  wire [7:1]cal_on_tx_drpaddr_out;
  wire [15:0]cal_on_tx_drpdi_out;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire cal_on_tx_reset_in_sync;
  wire cpllpd_int_reg;
  wire cpllreset_int_reg;
  wire [0:0]drpclk_in;
  wire drprst_in_sync;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx_i_n_24;
  wire \i_/i_/i__carry__0_n_0 ;
  wire \i_/i_/i__carry__0_n_1 ;
  wire \i_/i_/i__carry__0_n_10 ;
  wire \i_/i_/i__carry__0_n_11 ;
  wire \i_/i_/i__carry__0_n_12 ;
  wire \i_/i_/i__carry__0_n_13 ;
  wire \i_/i_/i__carry__0_n_14 ;
  wire \i_/i_/i__carry__0_n_15 ;
  wire \i_/i_/i__carry__0_n_2 ;
  wire \i_/i_/i__carry__0_n_3 ;
  wire \i_/i_/i__carry__0_n_4 ;
  wire \i_/i_/i__carry__0_n_5 ;
  wire \i_/i_/i__carry__0_n_6 ;
  wire \i_/i_/i__carry__0_n_7 ;
  wire \i_/i_/i__carry__0_n_8 ;
  wire \i_/i_/i__carry__0_n_9 ;
  wire \i_/i_/i__carry__1_n_14 ;
  wire \i_/i_/i__carry__1_n_15 ;
  wire \i_/i_/i__carry__1_n_7 ;
  wire \i_/i_/i__carry_n_0 ;
  wire \i_/i_/i__carry_n_1 ;
  wire \i_/i_/i__carry_n_10 ;
  wire \i_/i_/i__carry_n_11 ;
  wire \i_/i_/i__carry_n_12 ;
  wire \i_/i_/i__carry_n_13 ;
  wire \i_/i_/i__carry_n_14 ;
  wire \i_/i_/i__carry_n_15 ;
  wire \i_/i_/i__carry_n_2 ;
  wire \i_/i_/i__carry_n_3 ;
  wire \i_/i_/i__carry_n_4 ;
  wire \i_/i_/i__carry_n_5 ;
  wire \i_/i_/i__carry_n_6 ;
  wire \i_/i_/i__carry_n_7 ;
  wire \i_/i_/i__carry_n_8 ;
  wire \i_/i_/i__carry_n_9 ;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire rst_in0;
  wire [0:0]txoutclk_out;
  wire [7:1]\NLW_i_/i_/i__carry__1_CO_UNCONNECTED ;
  wire [7:2]\NLW_i_/i_/i__carry__1_O_UNCONNECTED ;

  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_22 bit_synchronizer_drprst_inst
       (.drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gte4_drp_arb gtwizard_ultrascale_v1_7_9_gte4_drp_arb_i
       (.DADDR_O(DADDR_O),
        .DEN_O(DEN_O),
        .DI_O(DI_O),
        .DO_I(DO_I),
        .DWE_O(DWE_O),
        .Q(cal_on_tx_dout),
        .\addr_i_reg[27]_0 (cal_on_tx_drpaddr_out),
        .cal_on_tx_drdy(cal_on_tx_drdy),
        .cal_on_tx_drpen_out(cal_on_tx_drpen_out),
        .cal_on_tx_drpwe_out(cal_on_tx_drpwe_out),
        .\data_i_reg[47]_0 (cal_on_tx_drpdi_out),
        .drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx_i
       (.D(\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg ),
        .O({\i_/i_/i__carry_n_8 ,\i_/i_/i__carry_n_9 ,\i_/i_/i__carry_n_10 ,\i_/i_/i__carry_n_11 ,\i_/i_/i__carry_n_12 ,\i_/i_/i__carry_n_13 ,\i_/i_/i__carry_n_14 ,\i_/i_/i__carry_n_15 }),
        .Q(cal_on_tx_dout),
        .S(gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx_i_n_24),
        .USER_CPLLLOCK_OUT_reg_0(USER_CPLLLOCK_OUT_reg),
        .cal_on_tx_drdy(cal_on_tx_drdy),
        .cal_on_tx_drpen_out(cal_on_tx_drpen_out),
        .cal_on_tx_drpwe_out(cal_on_tx_drpwe_out),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .cpllpd_int_reg_0(cpllpd_int_reg),
        .cpllreset_int_reg_0(cpllreset_int_reg),
        .\daddr_reg[7]_0 (cal_on_tx_drpaddr_out),
        .\di_reg[15]_0 (cal_on_tx_drpdi_out),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .i_in_meta_reg(i_in_meta_reg),
        .i_in_meta_reg_0(i_in_meta_reg_0),
        .in0(in0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 (Q),
        .rst_in0(rst_in0),
        .\testclk_cnt_reg[15] ({\i_/i_/i__carry__0_n_8 ,\i_/i_/i__carry__0_n_9 ,\i_/i_/i__carry__0_n_10 ,\i_/i_/i__carry__0_n_11 ,\i_/i_/i__carry__0_n_12 ,\i_/i_/i__carry__0_n_13 ,\i_/i_/i__carry__0_n_14 ,\i_/i_/i__carry__0_n_15 }),
        .\testclk_cnt_reg[17] ({\i_/i_/i__carry__1_n_14 ,\i_/i_/i__carry__1_n_15 }),
        .txoutclk_out(txoutclk_out));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry_n_0 ,\i_/i_/i__carry_n_1 ,\i_/i_/i__carry_n_2 ,\i_/i_/i__carry_n_3 ,\i_/i_/i__carry_n_4 ,\i_/i_/i__carry_n_5 ,\i_/i_/i__carry_n_6 ,\i_/i_/i__carry_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\i_/i_/i__carry_n_8 ,\i_/i_/i__carry_n_9 ,\i_/i_/i__carry_n_10 ,\i_/i_/i__carry_n_11 ,\i_/i_/i__carry_n_12 ,\i_/i_/i__carry_n_13 ,\i_/i_/i__carry_n_14 ,\i_/i_/i__carry_n_15 }),
        .S({\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [7:1],gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx_i_n_24}));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry__0 
       (.CI(\i_/i_/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\i_/i_/i__carry__0_n_0 ,\i_/i_/i__carry__0_n_1 ,\i_/i_/i__carry__0_n_2 ,\i_/i_/i__carry__0_n_3 ,\i_/i_/i__carry__0_n_4 ,\i_/i_/i__carry__0_n_5 ,\i_/i_/i__carry__0_n_6 ,\i_/i_/i__carry__0_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\i_/i_/i__carry__0_n_8 ,\i_/i_/i__carry__0_n_9 ,\i_/i_/i__carry__0_n_10 ,\i_/i_/i__carry__0_n_11 ,\i_/i_/i__carry__0_n_12 ,\i_/i_/i__carry__0_n_13 ,\i_/i_/i__carry__0_n_14 ,\i_/i_/i__carry__0_n_15 }),
        .S(\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [15:8]));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \i_/i_/i__carry__1 
       (.CI(\i_/i_/i__carry__0_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_i_/i_/i__carry__1_CO_UNCONNECTED [7:1],\i_/i_/i__carry__1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_i_/i_/i__carry__1_O_UNCONNECTED [7:2],\i_/i_/i__carry__1_n_14 ,\i_/i_/i__carry__1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,\U_TXOUTCLK_FREQ_COUNTER/testclk_cnt_reg [17:16]}));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_23 reset_synchronizer_resetin_rx_inst
       (.drpclk_in(drpclk_in));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_24 reset_synchronizer_resetin_tx_inst
       (.RESET_IN(RESET_IN),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .drpclk_in(drpclk_in));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_freq_counter" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_freq_counter
   (done_o_reg_0,
    D,
    rst_in_out_reg,
    rst_in_out_reg_0,
    S,
    done_o_reg_1,
    DI,
    \freq_cnt_o_reg[14]_0 ,
    \freq_cnt_o_reg[9]_0 ,
    \freq_cnt_o_reg[14]_1 ,
    \freq_cnt_o_reg[15]_0 ,
    \freq_cnt_o_reg[17]_0 ,
    \freq_cnt_o_reg[16]_0 ,
    \freq_cnt_o_reg[16]_1 ,
    drpclk_in,
    \state_reg[1]_0 ,
    txoutclkmon,
    O,
    \testclk_cnt_reg[15]_0 ,
    \testclk_cnt_reg[17]_0 ,
    cal_on_tx_reset_in_sync,
    \repeat_ctr_reg[3] ,
    CO,
    \repeat_ctr_reg[3]_0 ,
    Q,
    cal_fail_store_reg,
    cal_fail_store__0,
    \cpll_cal_state_reg[21] ,
    cal_fail_store_reg_0,
    cal_fail_store_reg_1,
    \cpll_cal_state_reg[13] ,
    \cpll_cal_state_reg[13]_0 ,
    \cpll_cal_state_reg[13]_1 ,
    \cpll_cal_state_reg[13]_2 );
  output done_o_reg_0;
  output [16:0]D;
  output rst_in_out_reg;
  output rst_in_out_reg_0;
  output [0:0]S;
  output [1:0]done_o_reg_1;
  output [3:0]DI;
  output [7:0]\freq_cnt_o_reg[14]_0 ;
  output [0:0]\freq_cnt_o_reg[9]_0 ;
  output [7:0]\freq_cnt_o_reg[14]_1 ;
  output [3:0]\freq_cnt_o_reg[15]_0 ;
  output [0:0]\freq_cnt_o_reg[17]_0 ;
  output [0:0]\freq_cnt_o_reg[16]_0 ;
  output [0:0]\freq_cnt_o_reg[16]_1 ;
  input [0:0]drpclk_in;
  input \state_reg[1]_0 ;
  input txoutclkmon;
  input [7:0]O;
  input [7:0]\testclk_cnt_reg[15]_0 ;
  input [1:0]\testclk_cnt_reg[17]_0 ;
  input cal_on_tx_reset_in_sync;
  input \repeat_ctr_reg[3] ;
  input [0:0]CO;
  input [0:0]\repeat_ctr_reg[3]_0 ;
  input [5:0]Q;
  input cal_fail_store_reg;
  input cal_fail_store__0;
  input [0:0]\cpll_cal_state_reg[21] ;
  input cal_fail_store_reg_0;
  input cal_fail_store_reg_1;
  input \cpll_cal_state_reg[13] ;
  input \cpll_cal_state_reg[13]_0 ;
  input \cpll_cal_state_reg[13]_1 ;
  input \cpll_cal_state_reg[13]_2 ;

  wire [0:0]CO;
  wire [16:0]D;
  wire [3:0]DI;
  wire [7:0]O;
  wire [5:0]Q;
  wire [0:0]S;
  wire cal_fail_store__0;
  wire cal_fail_store_i_2_n_0;
  wire cal_fail_store_i_3_n_0;
  wire cal_fail_store_reg;
  wire cal_fail_store_reg_0;
  wire cal_fail_store_reg_1;
  wire cal_on_tx_reset_in_sync;
  wire clear;
  wire \cpll_cal_state[21]_i_2_n_0 ;
  wire \cpll_cal_state_reg[13] ;
  wire \cpll_cal_state_reg[13]_0 ;
  wire \cpll_cal_state_reg[13]_1 ;
  wire \cpll_cal_state_reg[13]_2 ;
  wire [0:0]\cpll_cal_state_reg[21] ;
  wire done_o_reg_0;
  wire [1:0]done_o_reg_1;
  wire [0:0]drpclk_in;
  wire \freq_cnt_o[17]_i_1_n_0 ;
  wire [7:0]\freq_cnt_o_reg[14]_0 ;
  wire [7:0]\freq_cnt_o_reg[14]_1 ;
  wire [3:0]\freq_cnt_o_reg[15]_0 ;
  wire [0:0]\freq_cnt_o_reg[16]_0 ;
  wire [0:0]\freq_cnt_o_reg[16]_1 ;
  wire [0:0]\freq_cnt_o_reg[17]_0 ;
  wire [0:0]\freq_cnt_o_reg[9]_0 ;
  wire \freq_cnt_o_reg_n_0_[0] ;
  wire \freq_cnt_o_reg_n_0_[10] ;
  wire \freq_cnt_o_reg_n_0_[11] ;
  wire \freq_cnt_o_reg_n_0_[12] ;
  wire \freq_cnt_o_reg_n_0_[13] ;
  wire \freq_cnt_o_reg_n_0_[14] ;
  wire \freq_cnt_o_reg_n_0_[15] ;
  wire \freq_cnt_o_reg_n_0_[16] ;
  wire \freq_cnt_o_reg_n_0_[17] ;
  wire \freq_cnt_o_reg_n_0_[1] ;
  wire \freq_cnt_o_reg_n_0_[2] ;
  wire \freq_cnt_o_reg_n_0_[3] ;
  wire \freq_cnt_o_reg_n_0_[4] ;
  wire \freq_cnt_o_reg_n_0_[5] ;
  wire \freq_cnt_o_reg_n_0_[6] ;
  wire \freq_cnt_o_reg_n_0_[7] ;
  wire \freq_cnt_o_reg_n_0_[8] ;
  wire \hold_clk[2]_i_1_n_0 ;
  wire \hold_clk[5]_i_1_n_0 ;
  wire [5:0]hold_clk_reg;
  wire [5:0]p_0_in__0;
  wire [15:1]p_0_in__1;
  wire p_1_in;
  wire refclk_cnt0_carry__0_n_2;
  wire refclk_cnt0_carry__0_n_3;
  wire refclk_cnt0_carry__0_n_4;
  wire refclk_cnt0_carry__0_n_5;
  wire refclk_cnt0_carry__0_n_6;
  wire refclk_cnt0_carry__0_n_7;
  wire refclk_cnt0_carry_n_0;
  wire refclk_cnt0_carry_n_1;
  wire refclk_cnt0_carry_n_2;
  wire refclk_cnt0_carry_n_3;
  wire refclk_cnt0_carry_n_4;
  wire refclk_cnt0_carry_n_5;
  wire refclk_cnt0_carry_n_6;
  wire refclk_cnt0_carry_n_7;
  wire \refclk_cnt[0]_i_1_n_0 ;
  wire [15:0]refclk_cnt_reg;
  wire \repeat_ctr[3]_i_4_n_0 ;
  wire \repeat_ctr_reg[3] ;
  wire [0:0]\repeat_ctr_reg[3]_0 ;
  wire rst_in_out;
  wire rst_in_out_reg;
  wire rst_in_out_reg_0;
  wire \state[0]_i_1_n_0 ;
  wire \state[1]_i_1_n_0 ;
  wire \state[1]_i_2_n_0 ;
  wire \state[2]_i_1_n_0 ;
  wire \state[2]_i_2_n_0 ;
  wire \state[2]_i_3_n_0 ;
  wire \state[2]_i_4_n_0 ;
  wire \state[2]_i_5_n_0 ;
  wire \state[3]_i_1_n_0 ;
  wire \state[3]_i_2_n_0 ;
  wire \state[4]_i_1_n_0 ;
  wire \state_reg[1]_0 ;
  wire \state_reg_n_0_[2] ;
  wire \state_reg_n_0_[4] ;
  wire testclk_cnt0_n_0;
  wire [0:0]testclk_cnt_reg;
  wire [7:0]\testclk_cnt_reg[15]_0 ;
  wire [1:0]\testclk_cnt_reg[17]_0 ;
  wire [3:0]testclk_div4;
  wire testclk_en;
  (* async_reg = "true" *) wire testclk_en_dly1;
  (* async_reg = "true" *) wire testclk_en_dly2;
  wire testclk_rst;
  (* async_reg = "true" *) wire tstclk_rst_dly1;
  (* async_reg = "true" *) wire tstclk_rst_dly2;
  wire txoutclkmon;
  wire [7:6]NLW_refclk_cnt0_carry__0_CO_UNCONNECTED;
  wire [7:7]NLW_refclk_cnt0_carry__0_O_UNCONNECTED;

  LUT6 #(
    .INIT(64'hFFFFDFDF30331010)) 
    cal_fail_store_i_1
       (.I0(cal_fail_store_i_2_n_0),
        .I1(cal_on_tx_reset_in_sync),
        .I2(cal_fail_store_i_3_n_0),
        .I3(cal_fail_store_reg),
        .I4(Q[5]),
        .I5(cal_fail_store__0),
        .O(rst_in_out_reg_0));
  LUT2 #(
    .INIT(4'h8)) 
    cal_fail_store_i_2
       (.I0(CO),
        .I1(\repeat_ctr_reg[3]_0 ),
        .O(cal_fail_store_i_2_n_0));
  LUT6 #(
    .INIT(64'hF222000000000000)) 
    cal_fail_store_i_3
       (.I0(cal_fail_store_reg_0),
        .I1(cal_fail_store_reg_1),
        .I2(CO),
        .I3(\repeat_ctr_reg[3]_0 ),
        .I4(Q[3]),
        .I5(done_o_reg_0),
        .O(cal_fail_store_i_3_n_0));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry__0_i_1
       (.I0(\freq_cnt_o_reg_n_0_[16] ),
        .I1(\freq_cnt_o_reg_n_0_[17] ),
        .O(\freq_cnt_o_reg[16]_1 ));
  LUT2 #(
    .INIT(4'h7)) 
    cpll_cal_state2_carry_i_1
       (.I0(\freq_cnt_o_reg_n_0_[13] ),
        .I1(\freq_cnt_o_reg_n_0_[12] ),
        .O(DI[3]));
  LUT2 #(
    .INIT(4'h2)) 
    cpll_cal_state2_carry_i_10
       (.I0(\freq_cnt_o_reg_n_0_[5] ),
        .I1(\freq_cnt_o_reg_n_0_[4] ),
        .O(\freq_cnt_o_reg[14]_0 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_11
       (.I0(\freq_cnt_o_reg_n_0_[2] ),
        .I1(\freq_cnt_o_reg_n_0_[3] ),
        .O(\freq_cnt_o_reg[14]_0 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_12
       (.I0(\freq_cnt_o_reg_n_0_[0] ),
        .I1(\freq_cnt_o_reg_n_0_[1] ),
        .O(\freq_cnt_o_reg[14]_0 [0]));
  LUT2 #(
    .INIT(4'h7)) 
    cpll_cal_state2_carry_i_2
       (.I0(\freq_cnt_o_reg_n_0_[11] ),
        .I1(\freq_cnt_o_reg_n_0_[10] ),
        .O(DI[2]));
  LUT2 #(
    .INIT(4'h7)) 
    cpll_cal_state2_carry_i_3
       (.I0(\freq_cnt_o_reg[9]_0 ),
        .I1(\freq_cnt_o_reg_n_0_[8] ),
        .O(DI[1]));
  LUT1 #(
    .INIT(2'h1)) 
    cpll_cal_state2_carry_i_4
       (.I0(\freq_cnt_o_reg_n_0_[5] ),
        .O(DI[0]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_5
       (.I0(\freq_cnt_o_reg_n_0_[14] ),
        .I1(\freq_cnt_o_reg_n_0_[15] ),
        .O(\freq_cnt_o_reg[14]_0 [7]));
  LUT2 #(
    .INIT(4'h8)) 
    cpll_cal_state2_carry_i_6
       (.I0(\freq_cnt_o_reg_n_0_[12] ),
        .I1(\freq_cnt_o_reg_n_0_[13] ),
        .O(\freq_cnt_o_reg[14]_0 [6]));
  LUT2 #(
    .INIT(4'h8)) 
    cpll_cal_state2_carry_i_7
       (.I0(\freq_cnt_o_reg_n_0_[10] ),
        .I1(\freq_cnt_o_reg_n_0_[11] ),
        .O(\freq_cnt_o_reg[14]_0 [5]));
  LUT2 #(
    .INIT(4'h8)) 
    cpll_cal_state2_carry_i_8
       (.I0(\freq_cnt_o_reg_n_0_[8] ),
        .I1(\freq_cnt_o_reg[9]_0 ),
        .O(\freq_cnt_o_reg[14]_0 [4]));
  LUT2 #(
    .INIT(4'h1)) 
    cpll_cal_state2_carry_i_9
       (.I0(\freq_cnt_o_reg_n_0_[7] ),
        .I1(\freq_cnt_o_reg_n_0_[6] ),
        .O(\freq_cnt_o_reg[14]_0 [3]));
  LUT6 #(
    .INIT(64'hFFFFFFFF8F888888)) 
    \cpll_cal_state[13]_i_1 
       (.I0(\cpll_cal_state_reg[13] ),
        .I1(Q[2]),
        .I2(\cpll_cal_state[21]_i_2_n_0 ),
        .I3(Q[3]),
        .I4(done_o_reg_0),
        .I5(Q[1]),
        .O(done_o_reg_1[0]));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT5 #(
    .INIT(32'h80FF8080)) 
    \cpll_cal_state[21]_i_1 
       (.I0(done_o_reg_0),
        .I1(Q[3]),
        .I2(\cpll_cal_state[21]_i_2_n_0 ),
        .I3(\cpll_cal_state_reg[21] ),
        .I4(Q[4]),
        .O(done_o_reg_1[1]));
  LUT6 #(
    .INIT(64'hF888888888888888)) 
    \cpll_cal_state[21]_i_2 
       (.I0(\repeat_ctr_reg[3]_0 ),
        .I1(CO),
        .I2(\cpll_cal_state_reg[13]_0 ),
        .I3(\cpll_cal_state_reg[13]_1 ),
        .I4(\cpll_cal_state_reg[13]_2 ),
        .I5(cal_fail_store_reg_0),
        .O(\cpll_cal_state[21]_i_2_n_0 ));
  FDCE done_o_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state_reg_n_0_[4] ),
        .Q(done_o_reg_0));
  LUT2 #(
    .INIT(4'h2)) 
    \freq_cnt_o[17]_i_1 
       (.I0(p_1_in),
        .I1(\state_reg[1]_0 ),
        .O(\freq_cnt_o[17]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[0] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(testclk_cnt_reg),
        .Q(\freq_cnt_o_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[10] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[9]),
        .Q(\freq_cnt_o_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[11] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[10]),
        .Q(\freq_cnt_o_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[12] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[11]),
        .Q(\freq_cnt_o_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[13] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[12]),
        .Q(\freq_cnt_o_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[14] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[13]),
        .Q(\freq_cnt_o_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[15] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[14]),
        .Q(\freq_cnt_o_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[16] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[15]),
        .Q(\freq_cnt_o_reg_n_0_[16] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[17] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[16]),
        .Q(\freq_cnt_o_reg_n_0_[17] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[1] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[0]),
        .Q(\freq_cnt_o_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[2] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[1]),
        .Q(\freq_cnt_o_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[3] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[2]),
        .Q(\freq_cnt_o_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[4] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[3]),
        .Q(\freq_cnt_o_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[5] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[4]),
        .Q(\freq_cnt_o_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[6] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[5]),
        .Q(\freq_cnt_o_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[7] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[6]),
        .Q(\freq_cnt_o_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[8] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[7]),
        .Q(\freq_cnt_o_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \freq_cnt_o_reg[9] 
       (.C(drpclk_in),
        .CE(\freq_cnt_o[17]_i_1_n_0 ),
        .D(D[8]),
        .Q(\freq_cnt_o_reg[9]_0 ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT1 #(
    .INIT(2'h1)) 
    \hold_clk[0]_i_1 
       (.I0(hold_clk_reg[0]),
        .O(p_0_in__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair62" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \hold_clk[1]_i_1 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .O(p_0_in__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \hold_clk[2]_i_1 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[2]),
        .O(\hold_clk[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \hold_clk[3]_i_1 
       (.I0(hold_clk_reg[1]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[2]),
        .I3(hold_clk_reg[3]),
        .O(p_0_in__0[3]));
  (* SOFT_HLUTNM = "soft_lutpair60" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \hold_clk[4]_i_1 
       (.I0(hold_clk_reg[2]),
        .I1(hold_clk_reg[0]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[3]),
        .I4(hold_clk_reg[4]),
        .O(p_0_in__0[4]));
  LUT2 #(
    .INIT(4'h1)) 
    \hold_clk[5]_i_1 
       (.I0(testclk_rst),
        .I1(\state_reg_n_0_[2] ),
        .O(\hold_clk[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \hold_clk[5]_i_2 
       (.I0(hold_clk_reg[3]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[0]),
        .I3(hold_clk_reg[2]),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(p_0_in__0[5]));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[0]),
        .Q(hold_clk_reg[0]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[1]),
        .Q(hold_clk_reg[1]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\hold_clk[2]_i_1_n_0 ),
        .Q(hold_clk_reg[2]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[3]),
        .Q(hold_clk_reg[3]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[4]),
        .Q(hold_clk_reg[4]),
        .R(\hold_clk[5]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \hold_clk_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__0[5]),
        .Q(hold_clk_reg[5]),
        .R(\hold_clk[5]_i_1_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry__0_i_1
       (.I0(\freq_cnt_o_reg_n_0_[17] ),
        .I1(\freq_cnt_o_reg_n_0_[16] ),
        .O(\freq_cnt_o_reg[17]_0 ));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry__0_i_2
       (.I0(\freq_cnt_o_reg_n_0_[16] ),
        .I1(\freq_cnt_o_reg_n_0_[17] ),
        .O(\freq_cnt_o_reg[16]_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    i__carry_i_1
       (.I0(testclk_cnt_reg),
        .O(S));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_10
       (.I0(\freq_cnt_o_reg_n_0_[5] ),
        .I1(\freq_cnt_o_reg_n_0_[4] ),
        .O(\freq_cnt_o_reg[14]_1 [2]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_11
       (.I0(\freq_cnt_o_reg_n_0_[2] ),
        .I1(\freq_cnt_o_reg_n_0_[3] ),
        .O(\freq_cnt_o_reg[14]_1 [1]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_12
       (.I0(\freq_cnt_o_reg_n_0_[0] ),
        .I1(\freq_cnt_o_reg_n_0_[1] ),
        .O(\freq_cnt_o_reg[14]_1 [0]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_1__0
       (.I0(\freq_cnt_o_reg_n_0_[15] ),
        .I1(\freq_cnt_o_reg_n_0_[14] ),
        .O(\freq_cnt_o_reg[15]_0 [3]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_2
       (.I0(\freq_cnt_o_reg_n_0_[5] ),
        .I1(\freq_cnt_o_reg_n_0_[4] ),
        .O(\freq_cnt_o_reg[15]_0 [2]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_3
       (.I0(\freq_cnt_o_reg_n_0_[3] ),
        .I1(\freq_cnt_o_reg_n_0_[2] ),
        .O(\freq_cnt_o_reg[15]_0 [1]));
  LUT2 #(
    .INIT(4'hE)) 
    i__carry_i_4
       (.I0(\freq_cnt_o_reg_n_0_[1] ),
        .I1(\freq_cnt_o_reg_n_0_[0] ),
        .O(\freq_cnt_o_reg[15]_0 [0]));
  LUT2 #(
    .INIT(4'h1)) 
    i__carry_i_5
       (.I0(\freq_cnt_o_reg_n_0_[14] ),
        .I1(\freq_cnt_o_reg_n_0_[15] ),
        .O(\freq_cnt_o_reg[14]_1 [7]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_6
       (.I0(\freq_cnt_o_reg_n_0_[12] ),
        .I1(\freq_cnt_o_reg_n_0_[13] ),
        .O(\freq_cnt_o_reg[14]_1 [6]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_7
       (.I0(\freq_cnt_o_reg_n_0_[10] ),
        .I1(\freq_cnt_o_reg_n_0_[11] ),
        .O(\freq_cnt_o_reg[14]_1 [5]));
  LUT2 #(
    .INIT(4'h2)) 
    i__carry_i_8
       (.I0(\freq_cnt_o_reg_n_0_[8] ),
        .I1(\freq_cnt_o_reg[9]_0 ),
        .O(\freq_cnt_o_reg[14]_1 [4]));
  LUT2 #(
    .INIT(4'h8)) 
    i__carry_i_9
       (.I0(\freq_cnt_o_reg_n_0_[7] ),
        .I1(\freq_cnt_o_reg_n_0_[6] ),
        .O(\freq_cnt_o_reg[14]_1 [3]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 refclk_cnt0_carry
       (.CI(refclk_cnt_reg[0]),
        .CI_TOP(1'b0),
        .CO({refclk_cnt0_carry_n_0,refclk_cnt0_carry_n_1,refclk_cnt0_carry_n_2,refclk_cnt0_carry_n_3,refclk_cnt0_carry_n_4,refclk_cnt0_carry_n_5,refclk_cnt0_carry_n_6,refclk_cnt0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(p_0_in__1[8:1]),
        .S(refclk_cnt_reg[8:1]));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 refclk_cnt0_carry__0
       (.CI(refclk_cnt0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_refclk_cnt0_carry__0_CO_UNCONNECTED[7:6],refclk_cnt0_carry__0_n_2,refclk_cnt0_carry__0_n_3,refclk_cnt0_carry__0_n_4,refclk_cnt0_carry__0_n_5,refclk_cnt0_carry__0_n_6,refclk_cnt0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({NLW_refclk_cnt0_carry__0_O_UNCONNECTED[7],p_0_in__1[15:9]}),
        .S({1'b0,refclk_cnt_reg[15:9]}));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[0]_i_1 
       (.I0(refclk_cnt_reg[0]),
        .O(\refclk_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \refclk_cnt[15]_i_1 
       (.I0(testclk_en),
        .O(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\refclk_cnt[0]_i_1_n_0 ),
        .Q(refclk_cnt_reg[0]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[10] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[10]),
        .Q(refclk_cnt_reg[10]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[11] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[11]),
        .Q(refclk_cnt_reg[11]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[12] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[12]),
        .Q(refclk_cnt_reg[12]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[13] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[13]),
        .Q(refclk_cnt_reg[13]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[14] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[14]),
        .Q(refclk_cnt_reg[14]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[15]),
        .Q(refclk_cnt_reg[15]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[1]),
        .Q(refclk_cnt_reg[1]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[2]),
        .Q(refclk_cnt_reg[2]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[3]),
        .Q(refclk_cnt_reg[3]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[4]),
        .Q(refclk_cnt_reg[4]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[5]),
        .Q(refclk_cnt_reg[5]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[6]),
        .Q(refclk_cnt_reg[6]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[7]),
        .Q(refclk_cnt_reg[7]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[8] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[8]),
        .Q(refclk_cnt_reg[8]),
        .R(clear));
  FDRE #(
    .INIT(1'b0)) 
    \refclk_cnt_reg[9] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(p_0_in__1[9]),
        .Q(refclk_cnt_reg[9]),
        .R(clear));
  LUT6 #(
    .INIT(64'h5555555500000111)) 
    \repeat_ctr[3]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(\repeat_ctr_reg[3] ),
        .I2(CO),
        .I3(\repeat_ctr_reg[3]_0 ),
        .I4(\repeat_ctr[3]_i_4_n_0 ),
        .I5(Q[0]),
        .O(rst_in_out_reg));
  (* SOFT_HLUTNM = "soft_lutpair59" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \repeat_ctr[3]_i_4 
       (.I0(done_o_reg_0),
        .I1(Q[3]),
        .O(\repeat_ctr[3]_i_4_n_0 ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_31 reset_synchronizer_testclk_rst_inst
       (.out(testclk_rst),
        .rst_in_out(rst_in_out),
        .txoutclkmon(txoutclkmon));
  LUT6 #(
    .INIT(64'hAA2AAAAAAAAAAAAA)) 
    \state[0]_i_1 
       (.I0(testclk_rst),
        .I1(hold_clk_reg[2]),
        .I2(hold_clk_reg[3]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(\state[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h4F44)) 
    \state[1]_i_1 
       (.I0(\state[1]_i_2_n_0 ),
        .I1(testclk_rst),
        .I2(\state[2]_i_2_n_0 ),
        .I3(testclk_en),
        .O(\state[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \state[1]_i_2 
       (.I0(hold_clk_reg[5]),
        .I1(hold_clk_reg[4]),
        .I2(hold_clk_reg[1]),
        .I3(hold_clk_reg[0]),
        .I4(hold_clk_reg[3]),
        .I5(hold_clk_reg[2]),
        .O(\state[1]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hF888)) 
    \state[2]_i_1 
       (.I0(\state[2]_i_2_n_0 ),
        .I1(testclk_en),
        .I2(\state[2]_i_3_n_0 ),
        .I3(\state_reg_n_0_[2] ),
        .O(\state[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000020)) 
    \state[2]_i_2 
       (.I0(refclk_cnt_reg[13]),
        .I1(refclk_cnt_reg[14]),
        .I2(refclk_cnt_reg[12]),
        .I3(refclk_cnt_reg[15]),
        .I4(\state[2]_i_4_n_0 ),
        .I5(\state[2]_i_5_n_0 ),
        .O(\state[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFF7FFFFFFFFFFFF)) 
    \state[2]_i_3 
       (.I0(hold_clk_reg[0]),
        .I1(hold_clk_reg[1]),
        .I2(hold_clk_reg[4]),
        .I3(hold_clk_reg[5]),
        .I4(hold_clk_reg[3]),
        .I5(hold_clk_reg[2]),
        .O(\state[2]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFFFFFE)) 
    \state[2]_i_4 
       (.I0(refclk_cnt_reg[0]),
        .I1(refclk_cnt_reg[1]),
        .I2(refclk_cnt_reg[2]),
        .I3(refclk_cnt_reg[3]),
        .I4(refclk_cnt_reg[4]),
        .I5(refclk_cnt_reg[5]),
        .O(\state[2]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFBFFFFFFFFFFFFFF)) 
    \state[2]_i_5 
       (.I0(refclk_cnt_reg[6]),
        .I1(refclk_cnt_reg[7]),
        .I2(refclk_cnt_reg[8]),
        .I3(refclk_cnt_reg[10]),
        .I4(refclk_cnt_reg[11]),
        .I5(refclk_cnt_reg[9]),
        .O(\state[2]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000080)) 
    \state[3]_i_1 
       (.I0(\state_reg_n_0_[2] ),
        .I1(hold_clk_reg[2]),
        .I2(hold_clk_reg[3]),
        .I3(\state[3]_i_2_n_0 ),
        .I4(hold_clk_reg[4]),
        .I5(hold_clk_reg[5]),
        .O(\state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair61" *) 
  LUT2 #(
    .INIT(4'h7)) 
    \state[3]_i_2 
       (.I0(hold_clk_reg[1]),
        .I1(hold_clk_reg[0]),
        .O(\state[3]_i_2_n_0 ));
  LUT2 #(
    .INIT(4'hE)) 
    \state[4]_i_1 
       (.I0(p_1_in),
        .I1(\state_reg_n_0_[4] ),
        .O(\state[4]_i_1_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\state[0]_i_1_n_0 ),
        .PRE(\state_reg[1]_0 ),
        .Q(testclk_rst));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[1]_i_1_n_0 ),
        .Q(testclk_en));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[2]_i_1_n_0 ),
        .Q(\state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[3]_i_1_n_0 ),
        .Q(p_1_in));
  FDCE #(
    .INIT(1'b0)) 
    \state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(\state_reg[1]_0 ),
        .D(\state[4]_i_1_n_0 ),
        .Q(\state_reg_n_0_[4] ));
  LUT5 #(
    .INIT(32'h00000020)) 
    testclk_cnt0
       (.I0(testclk_en_dly2),
        .I1(testclk_div4[1]),
        .I2(testclk_div4[3]),
        .I3(testclk_div4[2]),
        .I4(testclk_div4[0]),
        .O(testclk_cnt0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[0] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[0]),
        .Q(testclk_cnt_reg));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[10] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [2]),
        .Q(D[9]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[11] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [3]),
        .Q(D[10]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[12] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [4]),
        .Q(D[11]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[13] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [5]),
        .Q(D[12]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[14] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [6]),
        .Q(D[13]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[15] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [7]),
        .Q(D[14]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[16] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[17]_0 [0]),
        .Q(D[15]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[17] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[17]_0 [1]),
        .Q(D[16]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[1] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[1]),
        .Q(D[0]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[2] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[2]),
        .Q(D[1]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[3] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[3]),
        .Q(D[2]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[4] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[4]),
        .Q(D[3]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[5] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[5]),
        .Q(D[4]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[6] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[6]),
        .Q(D[5]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[7] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(O[7]),
        .Q(D[6]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[8] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [0]),
        .Q(D[7]));
  FDCE #(
    .INIT(1'b0)) 
    \testclk_cnt_reg[9] 
       (.C(txoutclkmon),
        .CE(testclk_cnt0_n_0),
        .CLR(rst_in_out),
        .D(\testclk_cnt_reg[15]_0 [1]),
        .Q(D[8]));
  FDSE #(
    .INIT(1'b1)) 
    \testclk_div4_reg[0] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[3]),
        .Q(testclk_div4[0]),
        .S(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[1] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[0]),
        .Q(testclk_div4[1]),
        .R(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[2] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[1]),
        .Q(testclk_div4[2]),
        .R(tstclk_rst_dly2));
  FDRE #(
    .INIT(1'b0)) 
    \testclk_div4_reg[3] 
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_div4[2]),
        .Q(testclk_div4[3]),
        .R(tstclk_rst_dly2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE testclk_en_dly1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_en),
        .Q(testclk_en_dly1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE testclk_en_dly2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_en_dly1),
        .Q(testclk_en_dly2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE tstclk_rst_dly1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(testclk_rst),
        .Q(tstclk_rst_dly1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDRE tstclk_rst_dly2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(tstclk_rst_dly1),
        .Q(tstclk_rst_dly2),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx
   (\gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    cpllpd_int_reg_0,
    cpllreset_int_reg_0,
    USER_CPLLLOCK_OUT_reg_0,
    cal_on_tx_drpen_out,
    cal_on_tx_drpwe_out,
    D,
    rst_in0,
    S,
    \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ,
    \daddr_reg[7]_0 ,
    \di_reg[15]_0 ,
    in0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    txoutclk_out,
    drpclk_in,
    cal_on_tx_reset_in_sync,
    O,
    \testclk_cnt_reg[15] ,
    \testclk_cnt_reg[17] ,
    Q,
    cal_on_tx_drdy,
    lopt,
    lopt_1);
  output \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  output cpllpd_int_reg_0;
  output cpllreset_int_reg_0;
  output USER_CPLLLOCK_OUT_reg_0;
  output cal_on_tx_drpen_out;
  output cal_on_tx_drpwe_out;
  output [16:0]D;
  output rst_in0;
  output [0:0]S;
  output [2:0]\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ;
  output [6:0]\daddr_reg[7]_0 ;
  output [15:0]\di_reg[15]_0 ;
  input in0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]txoutclk_out;
  input [0:0]drpclk_in;
  input cal_on_tx_reset_in_sync;
  input [7:0]O;
  input [7:0]\testclk_cnt_reg[15] ;
  input [1:0]\testclk_cnt_reg[17] ;
  input [15:0]Q;
  input cal_on_tx_drdy;
  input lopt;
  input lopt_1;

  wire [16:0]D;
  wire [7:0]O;
  wire [15:0]Q;
  wire [0:0]S;
  wire USER_CPLLLOCK_OUT_reg_0;
  wire U_TXOUTCLK_FREQ_COUNTER_n_0;
  wire U_TXOUTCLK_FREQ_COUNTER_n_18;
  wire U_TXOUTCLK_FREQ_COUNTER_n_19;
  wire U_TXOUTCLK_FREQ_COUNTER_n_23;
  wire U_TXOUTCLK_FREQ_COUNTER_n_24;
  wire U_TXOUTCLK_FREQ_COUNTER_n_25;
  wire U_TXOUTCLK_FREQ_COUNTER_n_26;
  wire U_TXOUTCLK_FREQ_COUNTER_n_27;
  wire U_TXOUTCLK_FREQ_COUNTER_n_28;
  wire U_TXOUTCLK_FREQ_COUNTER_n_29;
  wire U_TXOUTCLK_FREQ_COUNTER_n_30;
  wire U_TXOUTCLK_FREQ_COUNTER_n_31;
  wire U_TXOUTCLK_FREQ_COUNTER_n_32;
  wire U_TXOUTCLK_FREQ_COUNTER_n_33;
  wire U_TXOUTCLK_FREQ_COUNTER_n_34;
  wire U_TXOUTCLK_FREQ_COUNTER_n_35;
  wire U_TXOUTCLK_FREQ_COUNTER_n_36;
  wire U_TXOUTCLK_FREQ_COUNTER_n_37;
  wire U_TXOUTCLK_FREQ_COUNTER_n_38;
  wire U_TXOUTCLK_FREQ_COUNTER_n_39;
  wire U_TXOUTCLK_FREQ_COUNTER_n_40;
  wire U_TXOUTCLK_FREQ_COUNTER_n_41;
  wire U_TXOUTCLK_FREQ_COUNTER_n_42;
  wire U_TXOUTCLK_FREQ_COUNTER_n_43;
  wire U_TXOUTCLK_FREQ_COUNTER_n_44;
  wire U_TXOUTCLK_FREQ_COUNTER_n_45;
  wire U_TXOUTCLK_FREQ_COUNTER_n_46;
  wire U_TXOUTCLK_FREQ_COUNTER_n_47;
  wire U_TXOUTCLK_FREQ_COUNTER_n_48;
  wire U_TXOUTCLK_FREQ_COUNTER_n_49;
  wire U_TXOUTCLK_FREQ_COUNTER_n_50;
  wire bit_synchronizer_cplllock_inst_n_0;
  wire bit_synchronizer_cplllock_inst_n_1;
  wire bit_synchronizer_txoutclksel_inst0_n_0;
  wire bit_synchronizer_txoutclksel_inst1_n_0;
  wire bit_synchronizer_txoutclksel_inst2_n_0;
  wire bit_synchronizer_txprgdivresetdone_inst_n_0;
  wire bit_synchronizer_txprogdivreset_inst_n_0;
  wire cal_fail_store__0;
  wire cal_fail_store_i_4_n_0;
  wire cal_on_tx_drdy;
  wire cal_on_tx_drpen_out;
  wire cal_on_tx_drpwe_out;
  wire cal_on_tx_reset_in_sync;
  wire cpll_cal_state2;
  wire cpll_cal_state26_in;
  wire cpll_cal_state2_carry_n_0;
  wire cpll_cal_state2_carry_n_1;
  wire cpll_cal_state2_carry_n_2;
  wire cpll_cal_state2_carry_n_3;
  wire cpll_cal_state2_carry_n_4;
  wire cpll_cal_state2_carry_n_5;
  wire cpll_cal_state2_carry_n_6;
  wire cpll_cal_state2_carry_n_7;
  wire \cpll_cal_state2_inferred__0/i__carry_n_0 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_1 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_2 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_3 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_4 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_5 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_6 ;
  wire \cpll_cal_state2_inferred__0/i__carry_n_7 ;
  wire [31:1]cpll_cal_state7_out;
  wire \cpll_cal_state[18]_i_2_n_0 ;
  wire \cpll_cal_state[18]_i_3_n_0 ;
  wire \cpll_cal_state[18]_i_4_n_0 ;
  wire \cpll_cal_state[18]_i_5_n_0 ;
  wire \cpll_cal_state[18]_i_6_n_0 ;
  wire \cpll_cal_state[18]_i_7_n_0 ;
  wire \cpll_cal_state_reg_n_0_[0] ;
  wire \cpll_cal_state_reg_n_0_[12] ;
  wire \cpll_cal_state_reg_n_0_[27] ;
  wire \cpll_cal_state_reg_n_0_[28] ;
  wire \cpll_cal_state_reg_n_0_[29] ;
  wire \cpll_cal_state_reg_n_0_[30] ;
  wire \cpll_cal_state_reg_n_0_[31] ;
  wire cpllpd_int_i_1_n_0;
  wire cpllpd_int_reg_0;
  wire cpllreset_int_i_1_n_0;
  wire cpllreset_int_reg_0;
  wire [4:1]daddr0_in;
  wire \daddr[2]_i_1__0_n_0 ;
  wire \daddr[5]_i_1__0_n_0 ;
  wire \daddr[5]_i_2_n_0 ;
  wire \daddr[6]_i_1__0_n_0 ;
  wire \daddr[6]_i_2_n_0 ;
  wire \daddr[7]_i_1__0_n_0 ;
  wire \daddr[7]_i_2__0_n_0 ;
  wire [6:0]\daddr_reg[7]_0 ;
  wire den_i_1_n_0;
  wire \di_msk[0]_i_1_n_0 ;
  wire \di_msk[10]_i_1_n_0 ;
  wire \di_msk[11]_i_1_n_0 ;
  wire \di_msk[12]_i_1_n_0 ;
  wire \di_msk[12]_i_2_n_0 ;
  wire \di_msk[12]_i_3_n_0 ;
  wire \di_msk[13]_i_1_n_0 ;
  wire \di_msk[13]_i_2_n_0 ;
  wire \di_msk[14]_i_1_n_0 ;
  wire \di_msk[14]_i_2_n_0 ;
  wire \di_msk[15]_i_1_n_0 ;
  wire \di_msk[15]_i_2_n_0 ;
  wire \di_msk[15]_i_3_n_0 ;
  wire \di_msk[15]_i_4_n_0 ;
  wire \di_msk[1]_i_1_n_0 ;
  wire \di_msk[1]_i_2_n_0 ;
  wire \di_msk[2]_i_1_n_0 ;
  wire \di_msk[3]_i_1_n_0 ;
  wire \di_msk[4]_i_1_n_0 ;
  wire \di_msk[5]_i_1_n_0 ;
  wire \di_msk[5]_i_2_n_0 ;
  wire \di_msk[6]_i_1_n_0 ;
  wire \di_msk[6]_i_2_n_0 ;
  wire \di_msk[7]_i_1_n_0 ;
  wire \di_msk[8]_i_1_n_0 ;
  wire \di_msk[9]_i_1_n_0 ;
  wire \di_msk_reg_n_0_[0] ;
  wire \di_msk_reg_n_0_[10] ;
  wire \di_msk_reg_n_0_[11] ;
  wire \di_msk_reg_n_0_[12] ;
  wire \di_msk_reg_n_0_[13] ;
  wire \di_msk_reg_n_0_[14] ;
  wire \di_msk_reg_n_0_[15] ;
  wire \di_msk_reg_n_0_[1] ;
  wire \di_msk_reg_n_0_[2] ;
  wire \di_msk_reg_n_0_[3] ;
  wire \di_msk_reg_n_0_[4] ;
  wire \di_msk_reg_n_0_[5] ;
  wire \di_msk_reg_n_0_[6] ;
  wire \di_msk_reg_n_0_[7] ;
  wire \di_msk_reg_n_0_[8] ;
  wire \di_msk_reg_n_0_[9] ;
  wire [15:0]\di_reg[15]_0 ;
  wire drp_done;
  wire \drp_state[0]_i_1__0_n_0 ;
  wire \drp_state[1]_i_1__0_n_0 ;
  wire \drp_state[2]_i_1__0_n_0 ;
  wire \drp_state[3]_i_1_n_0 ;
  wire \drp_state[4]_i_1__0_n_0 ;
  wire \drp_state[5]_i_1__0_n_0 ;
  wire \drp_state[6]_i_1__0_n_0 ;
  wire \drp_state_reg_n_0_[0] ;
  wire \drp_state_reg_n_0_[1] ;
  wire \drp_state_reg_n_0_[2] ;
  wire \drp_state_reg_n_0_[3] ;
  wire \drp_state_reg_n_0_[4] ;
  wire \drp_state_reg_n_0_[5] ;
  wire [0:0]drpclk_in;
  wire dwe_i_1_n_0;
  wire freq_counter_rst_reg_n_0;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire mask_user_in_i_1_n_0;
  wire mask_user_in_reg_n_0;
  wire [2:0]\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 ;
  wire p_0_in;
  wire p_0_in0_in;
  wire p_0_in3_in;
  wire p_0_in7_in;
  wire p_11_in;
  wire p_12_in;
  wire p_13_in;
  wire p_14_in;
  wire p_15_in;
  wire p_16_in;
  wire p_17_in;
  wire p_18_in;
  wire p_1_in;
  wire p_1_in10_in;
  wire p_1_in2_in;
  wire p_1_in5_in;
  wire p_25_in;
  wire p_29_in;
  wire p_2_in;
  wire p_2_in1_in;
  wire p_2_in4_in;
  wire p_2_in8_in;
  wire p_3_in;
  wire p_3_in9_in;
  wire p_4_in;
  wire progclk_sel_store;
  wire \progclk_sel_store_reg_n_0_[0] ;
  wire \progclk_sel_store_reg_n_0_[10] ;
  wire \progclk_sel_store_reg_n_0_[11] ;
  wire \progclk_sel_store_reg_n_0_[12] ;
  wire \progclk_sel_store_reg_n_0_[13] ;
  wire \progclk_sel_store_reg_n_0_[14] ;
  wire \progclk_sel_store_reg_n_0_[1] ;
  wire \progclk_sel_store_reg_n_0_[2] ;
  wire \progclk_sel_store_reg_n_0_[3] ;
  wire \progclk_sel_store_reg_n_0_[4] ;
  wire \progclk_sel_store_reg_n_0_[5] ;
  wire \progclk_sel_store_reg_n_0_[6] ;
  wire \progclk_sel_store_reg_n_0_[7] ;
  wire \progclk_sel_store_reg_n_0_[8] ;
  wire \progclk_sel_store_reg_n_0_[9] ;
  wire progdiv_cfg_store;
  wire \progdiv_cfg_store[15]_i_1_n_0 ;
  wire \progdiv_cfg_store_reg_n_0_[0] ;
  wire \progdiv_cfg_store_reg_n_0_[10] ;
  wire \progdiv_cfg_store_reg_n_0_[11] ;
  wire \progdiv_cfg_store_reg_n_0_[12] ;
  wire \progdiv_cfg_store_reg_n_0_[13] ;
  wire \progdiv_cfg_store_reg_n_0_[14] ;
  wire \progdiv_cfg_store_reg_n_0_[15] ;
  wire \progdiv_cfg_store_reg_n_0_[1] ;
  wire \progdiv_cfg_store_reg_n_0_[2] ;
  wire \progdiv_cfg_store_reg_n_0_[3] ;
  wire \progdiv_cfg_store_reg_n_0_[4] ;
  wire \progdiv_cfg_store_reg_n_0_[5] ;
  wire \progdiv_cfg_store_reg_n_0_[6] ;
  wire \progdiv_cfg_store_reg_n_0_[7] ;
  wire \progdiv_cfg_store_reg_n_0_[8] ;
  wire \progdiv_cfg_store_reg_n_0_[9] ;
  wire rd;
  wire rd_i_1__0_n_0;
  wire rd_i_2_n_0;
  wire \repeat_ctr[0]_i_1_n_0 ;
  wire \repeat_ctr[1]_i_1_n_0 ;
  wire \repeat_ctr[2]_i_1_n_0 ;
  wire \repeat_ctr[3]_i_2_n_0 ;
  wire \repeat_ctr[3]_i_3_n_0 ;
  wire \repeat_ctr_reg_n_0_[0] ;
  wire \repeat_ctr_reg_n_0_[1] ;
  wire \repeat_ctr_reg_n_0_[2] ;
  wire \repeat_ctr_reg_n_0_[3] ;
  wire rst_in0;
  wire status_store__0;
  wire status_store_i_1_n_0;
  wire [7:0]\testclk_cnt_reg[15] ;
  wire [1:0]\testclk_cnt_reg[17] ;
  wire [0:0]txoutclk_out;
  wire txoutclkmon;
  wire [2:2]txoutclksel_int;
  wire \txoutclksel_int[2]_i_1_n_0 ;
  wire txprogdivreset_int;
  wire txprogdivreset_int_i_1_n_0;
  wire wait_ctr0_carry__0_n_0;
  wire wait_ctr0_carry__0_n_1;
  wire wait_ctr0_carry__0_n_10;
  wire wait_ctr0_carry__0_n_11;
  wire wait_ctr0_carry__0_n_12;
  wire wait_ctr0_carry__0_n_13;
  wire wait_ctr0_carry__0_n_14;
  wire wait_ctr0_carry__0_n_15;
  wire wait_ctr0_carry__0_n_2;
  wire wait_ctr0_carry__0_n_3;
  wire wait_ctr0_carry__0_n_4;
  wire wait_ctr0_carry__0_n_5;
  wire wait_ctr0_carry__0_n_6;
  wire wait_ctr0_carry__0_n_7;
  wire wait_ctr0_carry__0_n_8;
  wire wait_ctr0_carry__0_n_9;
  wire wait_ctr0_carry__1_n_1;
  wire wait_ctr0_carry__1_n_10;
  wire wait_ctr0_carry__1_n_11;
  wire wait_ctr0_carry__1_n_12;
  wire wait_ctr0_carry__1_n_13;
  wire wait_ctr0_carry__1_n_14;
  wire wait_ctr0_carry__1_n_15;
  wire wait_ctr0_carry__1_n_2;
  wire wait_ctr0_carry__1_n_3;
  wire wait_ctr0_carry__1_n_4;
  wire wait_ctr0_carry__1_n_5;
  wire wait_ctr0_carry__1_n_6;
  wire wait_ctr0_carry__1_n_7;
  wire wait_ctr0_carry__1_n_8;
  wire wait_ctr0_carry__1_n_9;
  wire wait_ctr0_carry_n_0;
  wire wait_ctr0_carry_n_1;
  wire wait_ctr0_carry_n_10;
  wire wait_ctr0_carry_n_11;
  wire wait_ctr0_carry_n_12;
  wire wait_ctr0_carry_n_13;
  wire wait_ctr0_carry_n_14;
  wire wait_ctr0_carry_n_15;
  wire wait_ctr0_carry_n_2;
  wire wait_ctr0_carry_n_3;
  wire wait_ctr0_carry_n_4;
  wire wait_ctr0_carry_n_5;
  wire wait_ctr0_carry_n_6;
  wire wait_ctr0_carry_n_7;
  wire wait_ctr0_carry_n_8;
  wire wait_ctr0_carry_n_9;
  wire \wait_ctr[0]_i_1_n_0 ;
  wire \wait_ctr[11]_i_10_n_0 ;
  wire \wait_ctr[11]_i_11_n_0 ;
  wire \wait_ctr[11]_i_12_n_0 ;
  wire \wait_ctr[11]_i_1_n_0 ;
  wire \wait_ctr[11]_i_2_n_0 ;
  wire \wait_ctr[11]_i_3_n_0 ;
  wire \wait_ctr[11]_i_4_n_0 ;
  wire \wait_ctr[11]_i_5_n_0 ;
  wire \wait_ctr[11]_i_6_n_0 ;
  wire \wait_ctr[11]_i_7_n_0 ;
  wire \wait_ctr[11]_i_8_n_0 ;
  wire \wait_ctr[11]_i_9_n_0 ;
  wire \wait_ctr[12]_i_1_n_0 ;
  wire \wait_ctr[13]_i_1_n_0 ;
  wire \wait_ctr[14]_i_1_n_0 ;
  wire \wait_ctr[15]_i_1_n_0 ;
  wire \wait_ctr[16]_i_1_n_0 ;
  wire \wait_ctr[17]_i_1_n_0 ;
  wire \wait_ctr[18]_i_1_n_0 ;
  wire \wait_ctr[19]_i_1_n_0 ;
  wire \wait_ctr[1]_i_1_n_0 ;
  wire \wait_ctr[20]_i_1_n_0 ;
  wire \wait_ctr[21]_i_1_n_0 ;
  wire \wait_ctr[22]_i_1_n_0 ;
  wire \wait_ctr[23]_i_1_n_0 ;
  wire \wait_ctr[24]_i_1_n_0 ;
  wire \wait_ctr[24]_i_2_n_0 ;
  wire \wait_ctr[24]_i_3_n_0 ;
  wire \wait_ctr[24]_i_4_n_0 ;
  wire \wait_ctr[24]_i_5_n_0 ;
  wire \wait_ctr[24]_i_6_n_0 ;
  wire \wait_ctr[3]_i_1_n_0 ;
  wire \wait_ctr[4]_i_1_n_0 ;
  wire \wait_ctr[5]_i_1_n_0 ;
  wire \wait_ctr[6]_i_1_n_0 ;
  wire \wait_ctr[9]_i_1_n_0 ;
  wire \wait_ctr_reg_n_0_[0] ;
  wire \wait_ctr_reg_n_0_[10] ;
  wire \wait_ctr_reg_n_0_[11] ;
  wire \wait_ctr_reg_n_0_[12] ;
  wire \wait_ctr_reg_n_0_[13] ;
  wire \wait_ctr_reg_n_0_[14] ;
  wire \wait_ctr_reg_n_0_[15] ;
  wire \wait_ctr_reg_n_0_[16] ;
  wire \wait_ctr_reg_n_0_[17] ;
  wire \wait_ctr_reg_n_0_[18] ;
  wire \wait_ctr_reg_n_0_[19] ;
  wire \wait_ctr_reg_n_0_[1] ;
  wire \wait_ctr_reg_n_0_[20] ;
  wire \wait_ctr_reg_n_0_[21] ;
  wire \wait_ctr_reg_n_0_[22] ;
  wire \wait_ctr_reg_n_0_[23] ;
  wire \wait_ctr_reg_n_0_[24] ;
  wire \wait_ctr_reg_n_0_[2] ;
  wire \wait_ctr_reg_n_0_[3] ;
  wire \wait_ctr_reg_n_0_[4] ;
  wire \wait_ctr_reg_n_0_[5] ;
  wire \wait_ctr_reg_n_0_[6] ;
  wire \wait_ctr_reg_n_0_[7] ;
  wire \wait_ctr_reg_n_0_[8] ;
  wire \wait_ctr_reg_n_0_[9] ;
  wire wr;
  wire wr_i_1__0_n_0;
  wire \x0e1_store[14]_i_1_n_0 ;
  wire \x0e1_store_reg_n_0_[0] ;
  wire \x0e1_store_reg_n_0_[12] ;
  wire \x0e1_store_reg_n_0_[13] ;
  wire \x0e1_store_reg_n_0_[14] ;
  wire \x0e1_store_reg_n_0_[1] ;
  wire \x0e1_store_reg_n_0_[2] ;
  wire \x0e1_store_reg_n_0_[3] ;
  wire \x0e1_store_reg_n_0_[4] ;
  wire \x0e1_store_reg_n_0_[5] ;
  wire \x0e1_store_reg_n_0_[6] ;
  wire \x0e1_store_reg_n_0_[7] ;
  wire \x0e1_store_reg_n_0_[8] ;
  wire \x0e1_store_reg_n_0_[9] ;
  wire [7:0]NLW_cpll_cal_state2_carry_O_UNCONNECTED;
  wire [7:1]NLW_cpll_cal_state2_carry__0_CO_UNCONNECTED;
  wire [7:0]NLW_cpll_cal_state2_carry__0_O_UNCONNECTED;
  wire [7:0]\NLW_cpll_cal_state2_inferred__0/i__carry_O_UNCONNECTED ;
  wire [7:1]\NLW_cpll_cal_state2_inferred__0/i__carry__0_CO_UNCONNECTED ;
  wire [7:0]\NLW_cpll_cal_state2_inferred__0/i__carry__0_O_UNCONNECTED ;
  wire [7:7]NLW_wait_ctr0_carry__1_CO_UNCONNECTED;

  FDRE USER_CPLLLOCK_OUT_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_cplllock_inst_n_1),
        .Q(USER_CPLLLOCK_OUT_reg_0),
        .R(1'b0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_freq_counter U_TXOUTCLK_FREQ_COUNTER
       (.CO(cpll_cal_state2),
        .D(D),
        .DI({U_TXOUTCLK_FREQ_COUNTER_n_23,U_TXOUTCLK_FREQ_COUNTER_n_24,U_TXOUTCLK_FREQ_COUNTER_n_25,U_TXOUTCLK_FREQ_COUNTER_n_26}),
        .O(O),
        .Q({\cpll_cal_state_reg_n_0_[27] ,p_2_in8_in,p_11_in,p_18_in,\cpll_cal_state_reg_n_0_[12] ,\cpll_cal_state_reg_n_0_[0] }),
        .S(S),
        .cal_fail_store__0(cal_fail_store__0),
        .cal_fail_store_reg(bit_synchronizer_cplllock_inst_n_0),
        .cal_fail_store_reg_0(\repeat_ctr_reg_n_0_[3] ),
        .cal_fail_store_reg_1(cal_fail_store_i_4_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[13] (\wait_ctr[11]_i_3_n_0 ),
        .\cpll_cal_state_reg[13]_0 (\repeat_ctr_reg_n_0_[1] ),
        .\cpll_cal_state_reg[13]_1 (\repeat_ctr_reg_n_0_[0] ),
        .\cpll_cal_state_reg[13]_2 (\repeat_ctr_reg_n_0_[2] ),
        .\cpll_cal_state_reg[21] (drp_done),
        .done_o_reg_0(U_TXOUTCLK_FREQ_COUNTER_n_0),
        .done_o_reg_1({cpll_cal_state7_out[21],cpll_cal_state7_out[13]}),
        .drpclk_in(drpclk_in),
        .\freq_cnt_o_reg[14]_0 ({U_TXOUTCLK_FREQ_COUNTER_n_27,U_TXOUTCLK_FREQ_COUNTER_n_28,U_TXOUTCLK_FREQ_COUNTER_n_29,U_TXOUTCLK_FREQ_COUNTER_n_30,U_TXOUTCLK_FREQ_COUNTER_n_31,U_TXOUTCLK_FREQ_COUNTER_n_32,U_TXOUTCLK_FREQ_COUNTER_n_33,U_TXOUTCLK_FREQ_COUNTER_n_34}),
        .\freq_cnt_o_reg[14]_1 ({U_TXOUTCLK_FREQ_COUNTER_n_36,U_TXOUTCLK_FREQ_COUNTER_n_37,U_TXOUTCLK_FREQ_COUNTER_n_38,U_TXOUTCLK_FREQ_COUNTER_n_39,U_TXOUTCLK_FREQ_COUNTER_n_40,U_TXOUTCLK_FREQ_COUNTER_n_41,U_TXOUTCLK_FREQ_COUNTER_n_42,U_TXOUTCLK_FREQ_COUNTER_n_43}),
        .\freq_cnt_o_reg[15]_0 ({U_TXOUTCLK_FREQ_COUNTER_n_44,U_TXOUTCLK_FREQ_COUNTER_n_45,U_TXOUTCLK_FREQ_COUNTER_n_46,U_TXOUTCLK_FREQ_COUNTER_n_47}),
        .\freq_cnt_o_reg[16]_0 (U_TXOUTCLK_FREQ_COUNTER_n_49),
        .\freq_cnt_o_reg[16]_1 (U_TXOUTCLK_FREQ_COUNTER_n_50),
        .\freq_cnt_o_reg[17]_0 (U_TXOUTCLK_FREQ_COUNTER_n_48),
        .\freq_cnt_o_reg[9]_0 (U_TXOUTCLK_FREQ_COUNTER_n_35),
        .\repeat_ctr_reg[3] (\repeat_ctr[3]_i_3_n_0 ),
        .\repeat_ctr_reg[3]_0 (cpll_cal_state26_in),
        .rst_in_out_reg(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .rst_in_out_reg_0(U_TXOUTCLK_FREQ_COUNTER_n_19),
        .\state_reg[1]_0 (freq_counter_rst_reg_n_0),
        .\testclk_cnt_reg[15]_0 (\testclk_cnt_reg[15] ),
        .\testclk_cnt_reg[17]_0 (\testclk_cnt_reg[17] ),
        .txoutclkmon(txoutclkmon));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_25 bit_synchronizer_cplllock_inst
       (.Q({\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[0] }),
        .USER_CPLLLOCK_OUT_reg(mask_user_in_reg_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[0] (bit_synchronizer_cplllock_inst_n_1),
        .drpclk_in(drpclk_in),
        .i_in_out_reg_0(bit_synchronizer_cplllock_inst_n_0),
        .in0(in0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_26 bit_synchronizer_txoutclksel_inst0
       (.D(bit_synchronizer_txoutclksel_inst0_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_27 bit_synchronizer_txoutclksel_inst1
       (.D(bit_synchronizer_txoutclksel_inst1_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] (mask_user_in_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_28 bit_synchronizer_txoutclksel_inst2
       (.D(bit_synchronizer_txoutclksel_inst2_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_29 bit_synchronizer_txprgdivresetdone_inst
       (.D({cpll_cal_state7_out[31:29],cpll_cal_state7_out[20:19]}),
        .Q({\cpll_cal_state_reg_n_0_[31] ,\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[29] ,\cpll_cal_state_reg_n_0_[28] ,p_11_in,p_12_in,p_13_in,p_16_in,p_17_in}),
        .cal_fail_store__0(cal_fail_store__0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[15] (bit_synchronizer_txprgdivresetdone_inst_n_0),
        .\cpll_cal_state_reg[20] (U_TXOUTCLK_FREQ_COUNTER_n_0),
        .\cpll_cal_state_reg[29] (\wait_ctr[11]_i_3_n_0 ),
        .drpclk_in(drpclk_in),
        .freq_counter_rst_reg(\wait_ctr[24]_i_3_n_0 ),
        .freq_counter_rst_reg_0(freq_counter_rst_reg_n_0),
        .freq_counter_rst_reg_1(\cpll_cal_state[18]_i_2_n_0 ),
        .i_in_meta_reg_0(i_in_meta_reg_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_30 bit_synchronizer_txprogdivreset_inst
       (.drpclk_in(drpclk_in),
        .i_in_meta_reg_0(i_in_meta_reg),
        .\non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg (mask_user_in_reg_n_0),
        .txprogdivreset_int(txprogdivreset_int),
        .txprogdivreset_int_reg(bit_synchronizer_txprogdivreset_inst_n_0));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    bufg_gt_txoutclkmon_inst
       (.CE(lopt),
        .CEMASK(1'b1),
        .CLR(lopt_1),
        .CLRMASK(1'b1),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk_out),
        .O(txoutclkmon));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT3 #(
    .INIT(8'h7F)) 
    cal_fail_store_i_4
       (.I0(\repeat_ctr_reg_n_0_[1] ),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .I2(\repeat_ctr_reg_n_0_[2] ),
        .O(cal_fail_store_i_4_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cal_fail_store_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(U_TXOUTCLK_FREQ_COUNTER_n_19),
        .Q(cal_fail_store__0),
        .R(1'b0));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 cpll_cal_state2_carry
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({cpll_cal_state2_carry_n_0,cpll_cal_state2_carry_n_1,cpll_cal_state2_carry_n_2,cpll_cal_state2_carry_n_3,cpll_cal_state2_carry_n_4,cpll_cal_state2_carry_n_5,cpll_cal_state2_carry_n_6,cpll_cal_state2_carry_n_7}),
        .DI({1'b0,U_TXOUTCLK_FREQ_COUNTER_n_23,U_TXOUTCLK_FREQ_COUNTER_n_24,U_TXOUTCLK_FREQ_COUNTER_n_25,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_26,1'b0,1'b0}),
        .O(NLW_cpll_cal_state2_carry_O_UNCONNECTED[7:0]),
        .S({U_TXOUTCLK_FREQ_COUNTER_n_27,U_TXOUTCLK_FREQ_COUNTER_n_28,U_TXOUTCLK_FREQ_COUNTER_n_29,U_TXOUTCLK_FREQ_COUNTER_n_30,U_TXOUTCLK_FREQ_COUNTER_n_31,U_TXOUTCLK_FREQ_COUNTER_n_32,U_TXOUTCLK_FREQ_COUNTER_n_33,U_TXOUTCLK_FREQ_COUNTER_n_34}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 cpll_cal_state2_carry__0
       (.CI(cpll_cal_state2_carry_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_cpll_cal_state2_carry__0_CO_UNCONNECTED[7:1],cpll_cal_state2}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O(NLW_cpll_cal_state2_carry__0_O_UNCONNECTED[7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_50}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \cpll_cal_state2_inferred__0/i__carry 
       (.CI(1'b1),
        .CI_TOP(1'b0),
        .CO({\cpll_cal_state2_inferred__0/i__carry_n_0 ,\cpll_cal_state2_inferred__0/i__carry_n_1 ,\cpll_cal_state2_inferred__0/i__carry_n_2 ,\cpll_cal_state2_inferred__0/i__carry_n_3 ,\cpll_cal_state2_inferred__0/i__carry_n_4 ,\cpll_cal_state2_inferred__0/i__carry_n_5 ,\cpll_cal_state2_inferred__0/i__carry_n_6 ,\cpll_cal_state2_inferred__0/i__carry_n_7 }),
        .DI({U_TXOUTCLK_FREQ_COUNTER_n_44,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_35,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_45,U_TXOUTCLK_FREQ_COUNTER_n_46,U_TXOUTCLK_FREQ_COUNTER_n_47}),
        .O(\NLW_cpll_cal_state2_inferred__0/i__carry_O_UNCONNECTED [7:0]),
        .S({U_TXOUTCLK_FREQ_COUNTER_n_36,U_TXOUTCLK_FREQ_COUNTER_n_37,U_TXOUTCLK_FREQ_COUNTER_n_38,U_TXOUTCLK_FREQ_COUNTER_n_39,U_TXOUTCLK_FREQ_COUNTER_n_40,U_TXOUTCLK_FREQ_COUNTER_n_41,U_TXOUTCLK_FREQ_COUNTER_n_42,U_TXOUTCLK_FREQ_COUNTER_n_43}));
  (* COMPARATOR_THRESHOLD = "11" *) 
  CARRY8 \cpll_cal_state2_inferred__0/i__carry__0 
       (.CI(\cpll_cal_state2_inferred__0/i__carry_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_cpll_cal_state2_inferred__0/i__carry__0_CO_UNCONNECTED [7:1],cpll_cal_state26_in}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_48}),
        .O(\NLW_cpll_cal_state2_inferred__0/i__carry__0_O_UNCONNECTED [7:0]),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,U_TXOUTCLK_FREQ_COUNTER_n_49}));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[12]_i_1 
       (.I0(drp_done),
        .I1(p_0_in),
        .O(cpll_cal_state7_out[12]));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[14]_i_1 
       (.I0(\wait_ctr[11]_i_3_n_0 ),
        .I1(p_18_in),
        .I2(\wait_ctr[24]_i_3_n_0 ),
        .I3(p_17_in),
        .O(cpll_cal_state7_out[14]));
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[15]_i_1 
       (.I0(\wait_ctr[24]_i_3_n_0 ),
        .I1(p_17_in),
        .I2(\cpll_cal_state[18]_i_2_n_0 ),
        .I3(p_16_in),
        .O(cpll_cal_state7_out[15]));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[16]_i_1 
       (.I0(p_16_in),
        .I1(\cpll_cal_state[18]_i_2_n_0 ),
        .I2(\wait_ctr[24]_i_3_n_0 ),
        .I3(p_15_in),
        .O(cpll_cal_state7_out[16]));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT4 #(
    .INIT(16'h8F88)) 
    \cpll_cal_state[17]_i_1 
       (.I0(\wait_ctr[24]_i_3_n_0 ),
        .I1(p_15_in),
        .I2(\cpll_cal_state[18]_i_2_n_0 ),
        .I3(p_14_in),
        .O(cpll_cal_state7_out[17]));
  LUT4 #(
    .INIT(16'hF888)) 
    \cpll_cal_state[18]_i_1 
       (.I0(\wait_ctr[11]_i_3_n_0 ),
        .I1(p_13_in),
        .I2(\cpll_cal_state[18]_i_2_n_0 ),
        .I3(p_14_in),
        .O(cpll_cal_state7_out[18]));
  LUT6 #(
    .INIT(64'hFEFFFEFFFEFFFEFE)) 
    \cpll_cal_state[18]_i_2 
       (.I0(\cpll_cal_state[18]_i_3_n_0 ),
        .I1(\cpll_cal_state[18]_i_4_n_0 ),
        .I2(\cpll_cal_state[18]_i_5_n_0 ),
        .I3(\cpll_cal_state[18]_i_6_n_0 ),
        .I4(\wait_ctr[11]_i_9_n_0 ),
        .I5(\cpll_cal_state[18]_i_7_n_0 ),
        .O(\cpll_cal_state[18]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[18]_i_3 
       (.I0(\wait_ctr_reg_n_0_[23] ),
        .I1(\wait_ctr_reg_n_0_[24] ),
        .I2(\wait_ctr_reg_n_0_[21] ),
        .I3(\wait_ctr_reg_n_0_[22] ),
        .O(\cpll_cal_state[18]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \cpll_cal_state[18]_i_4 
       (.I0(\wait_ctr_reg_n_0_[19] ),
        .I1(\wait_ctr_reg_n_0_[20] ),
        .I2(\wait_ctr_reg_n_0_[17] ),
        .I3(\wait_ctr_reg_n_0_[18] ),
        .O(\cpll_cal_state[18]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \cpll_cal_state[18]_i_5 
       (.I0(\wait_ctr_reg_n_0_[16] ),
        .I1(\wait_ctr_reg_n_0_[15] ),
        .O(\cpll_cal_state[18]_i_5_n_0 ));
  LUT6 #(
    .INIT(64'h7FFF7FFF7FFFFFFF)) 
    \cpll_cal_state[18]_i_6 
       (.I0(\wait_ctr_reg_n_0_[14] ),
        .I1(\wait_ctr_reg_n_0_[13] ),
        .I2(\wait_ctr_reg_n_0_[12] ),
        .I3(\wait_ctr_reg_n_0_[11] ),
        .I4(\wait_ctr_reg_n_0_[10] ),
        .I5(\wait_ctr_reg_n_0_[9] ),
        .O(\cpll_cal_state[18]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'hFFFFFE00)) 
    \cpll_cal_state[18]_i_7 
       (.I0(\wait_ctr_reg_n_0_[2] ),
        .I1(\wait_ctr_reg_n_0_[1] ),
        .I2(\wait_ctr_reg_n_0_[3] ),
        .I3(\wait_ctr_reg_n_0_[4] ),
        .I4(\wait_ctr_reg_n_0_[10] ),
        .O(\cpll_cal_state[18]_i_7_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \cpll_cal_state[1]_i_1 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(drp_done),
        .I2(p_1_in10_in),
        .O(cpll_cal_state7_out[1]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[27]_i_1 
       (.I0(drp_done),
        .I1(p_3_in),
        .O(cpll_cal_state7_out[27]));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT3 #(
    .INIT(8'hEA)) 
    \cpll_cal_state[28]_i_1 
       (.I0(\cpll_cal_state_reg_n_0_[27] ),
        .I1(\wait_ctr[11]_i_3_n_0 ),
        .I2(\cpll_cal_state_reg_n_0_[28] ),
        .O(cpll_cal_state7_out[28]));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[2]_i_1 
       (.I0(p_1_in10_in),
        .I1(drp_done),
        .O(cpll_cal_state7_out[2]));
  (* SOFT_HLUTNM = "soft_lutpair81" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[3]_i_1 
       (.I0(drp_done),
        .I1(p_1_in2_in),
        .I2(status_store__0),
        .I3(p_29_in),
        .O(cpll_cal_state7_out[3]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \cpll_cal_state[5]_i_1 
       (.I0(p_29_in),
        .I1(status_store__0),
        .I2(p_1_in5_in),
        .I3(drp_done),
        .I4(p_0_in7_in),
        .O(cpll_cal_state7_out[5]));
  (* SOFT_HLUTNM = "soft_lutpair73" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \cpll_cal_state[6]_i_1 
       (.I0(drp_done),
        .I1(p_1_in5_in),
        .O(cpll_cal_state7_out[6]));
  (* SOFT_HLUTNM = "soft_lutpair80" *) 
  LUT4 #(
    .INIT(16'h4F44)) 
    \cpll_cal_state[7]_i_1 
       (.I0(drp_done),
        .I1(p_1_in),
        .I2(status_store__0),
        .I3(p_25_in),
        .O(cpll_cal_state7_out[7]));
  LUT5 #(
    .INIT(32'hFFF888F8)) 
    \cpll_cal_state[9]_i_1 
       (.I0(p_25_in),
        .I1(status_store__0),
        .I2(p_4_in),
        .I3(drp_done),
        .I4(p_0_in3_in),
        .O(cpll_cal_state7_out[9]));
  FDSE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .Q(\cpll_cal_state_reg_n_0_[0] ),
        .S(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[10] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_4_in),
        .Q(p_0_in0_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[11] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_0_in0_in),
        .Q(p_0_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[12] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[12]),
        .Q(\cpll_cal_state_reg_n_0_[12] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[13] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[13]),
        .Q(p_18_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[14] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[14]),
        .Q(p_17_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[15]),
        .Q(p_16_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[16] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[16]),
        .Q(p_15_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[17] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[17]),
        .Q(p_14_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[18] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[18]),
        .Q(p_13_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[19] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[19]),
        .Q(p_12_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[1]),
        .Q(p_1_in10_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[20] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[20]),
        .Q(p_11_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[21] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[21]),
        .Q(p_2_in8_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[22] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in8_in),
        .Q(p_2_in4_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[23] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in4_in),
        .Q(p_2_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[24] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in),
        .Q(p_2_in1_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[25] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_2_in1_in),
        .Q(p_3_in9_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[26] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_3_in9_in),
        .Q(p_3_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[27] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[27]),
        .Q(\cpll_cal_state_reg_n_0_[27] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[28] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[28]),
        .Q(\cpll_cal_state_reg_n_0_[28] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[29] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[29]),
        .Q(\cpll_cal_state_reg_n_0_[29] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[2]),
        .Q(p_29_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[30] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[30]),
        .Q(\cpll_cal_state_reg_n_0_[30] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[31] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[31]),
        .Q(\cpll_cal_state_reg_n_0_[31] ),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[3]),
        .Q(p_1_in2_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[4] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_1_in2_in),
        .Q(p_0_in7_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[5]),
        .Q(p_1_in5_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[6]),
        .Q(p_25_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[7] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[7]),
        .Q(p_1_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[8] 
       (.C(drpclk_in),
        .CE(drp_done),
        .D(p_1_in),
        .Q(p_0_in3_in),
        .R(cal_on_tx_reset_in_sync));
  FDRE #(
    .INIT(1'b0)) 
    \cpll_cal_state_reg[9] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpll_cal_state7_out[9]),
        .Q(p_4_in),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair65" *) 
  LUT5 #(
    .INIT(32'hFF778F00)) 
    cpllpd_int_i_1
       (.I0(\wait_ctr[24]_i_3_n_0 ),
        .I1(p_17_in),
        .I2(\wait_ctr[11]_i_3_n_0 ),
        .I3(p_18_in),
        .I4(cpllpd_int_reg_0),
        .O(cpllpd_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpllpd_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpllpd_int_i_1_n_0),
        .Q(cpllpd_int_reg_0),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair67" *) 
  LUT5 #(
    .INIT(32'hAFFFA888)) 
    cpllreset_int_i_1
       (.I0(p_16_in),
        .I1(\cpll_cal_state[18]_i_2_n_0 ),
        .I2(\wait_ctr[24]_i_3_n_0 ),
        .I3(p_15_in),
        .I4(cpllreset_int_reg_0),
        .O(cpllreset_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    cpllreset_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(cpllreset_int_i_1_n_0),
        .Q(cpllreset_int_reg_0),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h00000008)) 
    \daddr[1]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(\daddr[5]_i_2_n_0 ),
        .I2(p_1_in2_in),
        .I3(p_2_in1_in),
        .I4(p_0_in0_in),
        .O(daddr0_in[1]));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT5 #(
    .INIT(32'h00000002)) 
    \daddr[2]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(p_1_in5_in),
        .I2(p_2_in4_in),
        .I3(p_0_in3_in),
        .I4(p_3_in),
        .O(\daddr[2]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \daddr[3]_i_1__0 
       (.I0(p_4_in),
        .I1(p_2_in8_in),
        .I2(p_3_in9_in),
        .I3(p_1_in10_in),
        .I4(p_0_in7_in),
        .I5(\cpll_cal_state_reg_n_0_[0] ),
        .O(daddr0_in[3]));
  (* SOFT_HLUTNM = "soft_lutpair69" *) 
  LUT5 #(
    .INIT(32'h0002AAAA)) 
    \daddr[4]_i_1__0 
       (.I0(daddr0_in[3]),
        .I1(p_1_in2_in),
        .I2(p_2_in1_in),
        .I3(p_0_in0_in),
        .I4(\daddr[5]_i_2_n_0 ),
        .O(daddr0_in[4]));
  LUT6 #(
    .INIT(64'h1111111555555555)) 
    \daddr[5]_i_1__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(\daddr[5]_i_2_n_0 ),
        .I2(p_0_in0_in),
        .I3(p_2_in1_in),
        .I4(p_1_in2_in),
        .I5(\daddr[6]_i_2_n_0 ),
        .O(\daddr[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair70" *) 
  LUT4 #(
    .INIT(16'h0001)) 
    \daddr[5]_i_2 
       (.I0(p_3_in),
        .I1(p_0_in3_in),
        .I2(p_2_in4_in),
        .I3(p_1_in5_in),
        .O(\daddr[5]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h5555555455555555)) 
    \daddr[6]_i_1__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_3_in),
        .I2(p_0_in3_in),
        .I3(p_2_in4_in),
        .I4(p_1_in5_in),
        .I5(\daddr[6]_i_2_n_0 ),
        .O(\daddr[6]_i_1__0_n_0 ));
  LUT5 #(
    .INIT(32'h00000001)) 
    \daddr[6]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_1_in10_in),
        .I2(p_3_in9_in),
        .I3(p_2_in8_in),
        .I4(p_4_in),
        .O(\daddr[6]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFEFF)) 
    \daddr[7]_i_1__0 
       (.I0(p_0_in),
        .I1(p_2_in),
        .I2(p_1_in),
        .I3(daddr0_in[1]),
        .O(\daddr[7]_i_1__0_n_0 ));
  LUT6 #(
    .INIT(64'h5555555555555554)) 
    \daddr[7]_i_2__0 
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_4_in),
        .I2(p_2_in8_in),
        .I3(p_3_in9_in),
        .I4(p_1_in10_in),
        .I5(p_0_in7_in),
        .O(\daddr[7]_i_2__0_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[1] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[1]),
        .Q(\daddr_reg[7]_0 [0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[2] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[2]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[3] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[3]),
        .Q(\daddr_reg[7]_0 [2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[4] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(daddr0_in[4]),
        .Q(\daddr_reg[7]_0 [3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[5] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[5]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[6] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[6]_i_1__0_n_0 ),
        .Q(\daddr_reg[7]_0 [5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \daddr_reg[7] 
       (.C(drpclk_in),
        .CE(\daddr[7]_i_1__0_n_0 ),
        .D(\daddr[7]_i_2__0_n_0 ),
        .Q(\daddr_reg[7]_0 [6]),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFCDFFCC)) 
    den_i_1
       (.I0(\drp_state_reg_n_0_[5] ),
        .I1(\drp_state_reg_n_0_[4] ),
        .I2(\drp_state_reg_n_0_[2] ),
        .I3(\drp_state_reg_n_0_[1] ),
        .I4(cal_on_tx_drpen_out),
        .O(den_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    den_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(den_i_1_n_0),
        .Q(cal_on_tx_drpen_out));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[0]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[0] ),
        .I2(\progdiv_cfg_store_reg_n_0_[0] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[0] ),
        .O(\di_msk[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFE0E0E0E0E0)) 
    \di_msk[10]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[10] ),
        .I3(p_0_in7_in),
        .I4(p_2_in1_in),
        .I5(\progclk_sel_store_reg_n_0_[10] ),
        .O(\di_msk[10]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFE0E0FFE0)) 
    \di_msk[11]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[11] ),
        .I3(\progclk_sel_store_reg_n_0_[11] ),
        .I4(\di_msk[12]_i_2_n_0 ),
        .I5(p_0_in0_in),
        .O(\di_msk[11]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[12]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[12] ),
        .I2(\progdiv_cfg_store_reg_n_0_[12] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[12] ),
        .O(\di_msk[12]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \di_msk[12]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .O(\di_msk[12]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \di_msk[12]_i_3 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .O(\di_msk[12]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[13]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[13] ),
        .I3(\di_msk[13]_i_2_n_0 ),
        .O(\di_msk[13]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[13]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[13] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[13] ),
        .I5(p_0_in),
        .O(\di_msk[13]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[14]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[14] ),
        .I3(\di_msk[14]_i_2_n_0 ),
        .O(\di_msk[14]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[14]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[14] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[14] ),
        .I5(p_0_in),
        .O(\di_msk[14]_i_2_n_0 ));
  LUT3 #(
    .INIT(8'h54)) 
    \di_msk[15]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(\di_msk[15]_i_3_n_0 ),
        .I2(\cpll_cal_state_reg_n_0_[0] ),
        .O(\di_msk[15]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair71" *) 
  LUT5 #(
    .INIT(32'hFFFFFFE0)) 
    \di_msk[15]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[15] ),
        .I3(p_0_in7_in),
        .I4(p_0_in),
        .O(\di_msk[15]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFFEFFFF)) 
    \di_msk[15]_i_3 
       (.I0(p_0_in0_in),
        .I1(p_3_in9_in),
        .I2(p_0_in3_in),
        .I3(p_3_in),
        .I4(\di_msk[12]_i_2_n_0 ),
        .I5(\di_msk[15]_i_4_n_0 ),
        .O(\di_msk[15]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \di_msk[15]_i_4 
       (.I0(p_0_in),
        .I1(p_2_in),
        .O(\di_msk[15]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair78" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[1]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[1] ),
        .I3(\di_msk[1]_i_2_n_0 ),
        .O(\di_msk[1]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[1]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[1] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[1] ),
        .I5(p_0_in),
        .O(\di_msk[1]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[2]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[2] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[2] ),
        .I4(\progclk_sel_store_reg_n_0_[2] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[3]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[3] ),
        .I2(\progdiv_cfg_store_reg_n_0_[3] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[3] ),
        .O(\di_msk[3]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[4]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[4] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[4] ),
        .I4(\progclk_sel_store_reg_n_0_[4] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair77" *) 
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[5]_i_1 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[5] ),
        .I3(\di_msk[5]_i_2_n_0 ),
        .O(\di_msk[5]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[5]_i_2 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[5] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[5] ),
        .I5(p_0_in),
        .O(\di_msk[5]_i_2_n_0 ));
  LUT4 #(
    .INIT(16'hFFE0)) 
    \di_msk[6]_i_1 
       (.I0(p_0_in7_in),
        .I1(p_2_in1_in),
        .I2(\progclk_sel_store_reg_n_0_[6] ),
        .I3(\di_msk[6]_i_2_n_0 ),
        .O(\di_msk[6]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFFFFE0E0E0)) 
    \di_msk[6]_i_2 
       (.I0(p_2_in),
        .I1(p_0_in3_in),
        .I2(\progdiv_cfg_store_reg_n_0_[6] ),
        .I3(p_0_in0_in),
        .I4(\x0e1_store_reg_n_0_[6] ),
        .I5(p_0_in),
        .O(\di_msk[6]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hF444F444FFFFF444)) 
    \di_msk[7]_i_1 
       (.I0(\di_msk[12]_i_3_n_0 ),
        .I1(\progdiv_cfg_store_reg_n_0_[7] ),
        .I2(p_0_in0_in),
        .I3(\x0e1_store_reg_n_0_[7] ),
        .I4(\progclk_sel_store_reg_n_0_[7] ),
        .I5(\di_msk[12]_i_2_n_0 ),
        .O(\di_msk[7]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[8]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[8] ),
        .I2(\progdiv_cfg_store_reg_n_0_[8] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[8] ),
        .O(\di_msk[8]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'hFFFF44F444F444F4)) 
    \di_msk[9]_i_1 
       (.I0(\di_msk[12]_i_2_n_0 ),
        .I1(\progclk_sel_store_reg_n_0_[9] ),
        .I2(\progdiv_cfg_store_reg_n_0_[9] ),
        .I3(\di_msk[12]_i_3_n_0 ),
        .I4(p_0_in0_in),
        .I5(\x0e1_store_reg_n_0_[9] ),
        .O(\di_msk[9]_i_1_n_0 ));
  FDRE \di_msk_reg[0] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[0]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \di_msk_reg[10] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[10]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[10] ),
        .R(1'b0));
  FDRE \di_msk_reg[11] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[11]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[11] ),
        .R(1'b0));
  FDRE \di_msk_reg[12] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[12]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[12] ),
        .R(1'b0));
  FDRE \di_msk_reg[13] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[13]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[13] ),
        .R(1'b0));
  FDRE \di_msk_reg[14] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[14]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[14] ),
        .R(1'b0));
  FDRE \di_msk_reg[15] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[15]_i_2_n_0 ),
        .Q(\di_msk_reg_n_0_[15] ),
        .R(1'b0));
  FDRE \di_msk_reg[1] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[1]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \di_msk_reg[2] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[2]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \di_msk_reg[3] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[3]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[3] ),
        .R(1'b0));
  FDRE \di_msk_reg[4] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[4]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[4] ),
        .R(1'b0));
  FDRE \di_msk_reg[5] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[5]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[5] ),
        .R(1'b0));
  FDRE \di_msk_reg[6] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[6]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[6] ),
        .R(1'b0));
  FDRE \di_msk_reg[7] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[7]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[7] ),
        .R(1'b0));
  FDRE \di_msk_reg[8] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[8]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[8] ),
        .R(1'b0));
  FDRE \di_msk_reg[9] 
       (.C(drpclk_in),
        .CE(\di_msk[15]_i_1_n_0 ),
        .D(\di_msk[9]_i_1_n_0 ),
        .Q(\di_msk_reg_n_0_[9] ),
        .R(1'b0));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[0] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[0] ),
        .Q(\di_reg[15]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[10] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[10] ),
        .Q(\di_reg[15]_0 [10]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[11] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[11] ),
        .Q(\di_reg[15]_0 [11]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[12] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[12] ),
        .Q(\di_reg[15]_0 [12]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[13] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[13] ),
        .Q(\di_reg[15]_0 [13]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[14] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[14] ),
        .Q(\di_reg[15]_0 [14]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[15] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[15] ),
        .Q(\di_reg[15]_0 [15]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[1] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[1] ),
        .Q(\di_reg[15]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[2] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[2] ),
        .Q(\di_reg[15]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[3] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[3] ),
        .Q(\di_reg[15]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[4] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[4] ),
        .Q(\di_reg[15]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[5] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[5] ),
        .Q(\di_reg[15]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[6] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[6] ),
        .Q(\di_reg[15]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[7] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[7] ),
        .Q(\di_reg[15]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[8] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[8] ),
        .Q(\di_reg[15]_0 [8]));
  FDCE #(
    .INIT(1'b0)) 
    \di_reg[9] 
       (.C(drpclk_in),
        .CE(\drp_state_reg_n_0_[4] ),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\di_msk_reg_n_0_[9] ),
        .Q(\di_reg[15]_0 [9]));
  LUT4 #(
    .INIT(16'hAABA)) 
    \drp_state[0]_i_1__0 
       (.I0(drp_done),
        .I1(rd),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(wr),
        .O(\drp_state[0]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT2 #(
    .INIT(4'h8)) 
    \drp_state[1]_i_1__0 
       (.I0(rd),
        .I1(\drp_state_reg_n_0_[0] ),
        .O(\drp_state[1]_i_1__0_n_0 ));
  LUT3 #(
    .INIT(8'hBA)) 
    \drp_state[2]_i_1__0 
       (.I0(\drp_state_reg_n_0_[1] ),
        .I1(cal_on_tx_drdy),
        .I2(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[2]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \drp_state[3]_i_1 
       (.I0(\drp_state_reg_n_0_[2] ),
        .I1(cal_on_tx_drdy),
        .I2(rd),
        .O(\drp_state[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair84" *) 
  LUT4 #(
    .INIT(16'hBAAA)) 
    \drp_state[4]_i_1__0 
       (.I0(\drp_state_reg_n_0_[3] ),
        .I1(rd),
        .I2(\drp_state_reg_n_0_[0] ),
        .I3(wr),
        .O(\drp_state[4]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    \drp_state[5]_i_1__0 
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(cal_on_tx_drdy),
        .I2(\drp_state_reg_n_0_[5] ),
        .O(\drp_state[5]_i_1__0_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair83" *) 
  LUT4 #(
    .INIT(16'hA888)) 
    \drp_state[6]_i_1__0 
       (.I0(cal_on_tx_drdy),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(rd),
        .I3(\drp_state_reg_n_0_[2] ),
        .O(\drp_state[6]_i_1__0_n_0 ));
  FDPE #(
    .INIT(1'b1)) 
    \drp_state_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\drp_state[0]_i_1__0_n_0 ),
        .PRE(cal_on_tx_reset_in_sync),
        .Q(\drp_state_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[1]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[1] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[2]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[2] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[3] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[3]_i_1_n_0 ),
        .Q(\drp_state_reg_n_0_[3] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[4] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[4]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[4] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[5] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[5]_i_1__0_n_0 ),
        .Q(\drp_state_reg_n_0_[5] ));
  FDCE #(
    .INIT(1'b0)) 
    \drp_state_reg[6] 
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(\drp_state[6]_i_1__0_n_0 ),
        .Q(drp_done));
  (* SOFT_HLUTNM = "soft_lutpair87" *) 
  LUT3 #(
    .INIT(8'hBA)) 
    dwe_i_1
       (.I0(\drp_state_reg_n_0_[4] ),
        .I1(\drp_state_reg_n_0_[5] ),
        .I2(cal_on_tx_drpwe_out),
        .O(dwe_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    dwe_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .CLR(cal_on_tx_reset_in_sync),
        .D(dwe_i_1_n_0),
        .Q(cal_on_tx_drpwe_out));
  FDRE #(
    .INIT(1'b1)) 
    freq_counter_rst_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txprgdivresetdone_inst_n_0),
        .Q(freq_counter_rst_reg_n_0),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEEEFEEEE)) 
    mask_user_in_i_1
       (.I0(\cpll_cal_state_reg_n_0_[0] ),
        .I1(p_1_in10_in),
        .I2(\cpll_cal_state_reg_n_0_[30] ),
        .I3(\cpll_cal_state_reg_n_0_[31] ),
        .I4(mask_user_in_reg_n_0),
        .O(mask_user_in_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    mask_user_in_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(mask_user_in_i_1_n_0),
        .Q(mask_user_in_reg_n_0),
        .R(cal_on_tx_reset_in_sync));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst0_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [0]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst1_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [1]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txoutclksel_inst2_n_0),
        .Q(\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2]_0 [2]),
        .R(1'b0));
  FDRE \non_pcie_txoutclksel.GTHE4_TXPROGDIVRESET_OUT_reg 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_txprogdivreset_inst_n_0),
        .Q(\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \progclk_sel_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(drp_done),
        .I2(p_2_in8_in),
        .I3(p_1_in2_in),
        .O(progclk_sel_store));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[0] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[0]),
        .Q(\progclk_sel_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[10] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[10]),
        .Q(\progclk_sel_store_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[11] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[11]),
        .Q(\progclk_sel_store_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[12] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[12]),
        .Q(\progclk_sel_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[13] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[13]),
        .Q(\progclk_sel_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[14] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[14]),
        .Q(\progclk_sel_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[1] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[1]),
        .Q(\progclk_sel_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[2] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[2]),
        .Q(\progclk_sel_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[3] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[3]),
        .Q(\progclk_sel_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[4] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[4]),
        .Q(\progclk_sel_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[5] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[5]),
        .Q(\progclk_sel_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[6] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[6]),
        .Q(\progclk_sel_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[7] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[7]),
        .Q(\progclk_sel_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[8] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[8]),
        .Q(\progclk_sel_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progclk_sel_store_reg[9] 
       (.C(drpclk_in),
        .CE(progclk_sel_store),
        .D(Q[9]),
        .Q(\progclk_sel_store_reg_n_0_[9] ),
        .R(1'b0));
  LUT4 #(
    .INIT(16'h4440)) 
    \progdiv_cfg_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(drp_done),
        .I2(p_2_in4_in),
        .I3(p_1_in),
        .O(progdiv_cfg_store));
  LUT6 #(
    .INIT(64'hFFFFEFFF30302000)) 
    \progdiv_cfg_store[15]_i_1 
       (.I0(Q[15]),
        .I1(cal_on_tx_reset_in_sync),
        .I2(drp_done),
        .I3(p_2_in4_in),
        .I4(p_1_in),
        .I5(\progdiv_cfg_store_reg_n_0_[15] ),
        .O(\progdiv_cfg_store[15]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[0] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[0]),
        .Q(\progdiv_cfg_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[10] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[10]),
        .Q(\progdiv_cfg_store_reg_n_0_[10] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[11] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[11]),
        .Q(\progdiv_cfg_store_reg_n_0_[11] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[12] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[12]),
        .Q(\progdiv_cfg_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[13] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[13]),
        .Q(\progdiv_cfg_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[14] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[14]),
        .Q(\progdiv_cfg_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[15] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\progdiv_cfg_store[15]_i_1_n_0 ),
        .Q(\progdiv_cfg_store_reg_n_0_[15] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[1] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[1]),
        .Q(\progdiv_cfg_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[2] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[2]),
        .Q(\progdiv_cfg_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[3] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[3]),
        .Q(\progdiv_cfg_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[4] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[4]),
        .Q(\progdiv_cfg_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[5] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[5]),
        .Q(\progdiv_cfg_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[6] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[6]),
        .Q(\progdiv_cfg_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[7] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[7]),
        .Q(\progdiv_cfg_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[8] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[8]),
        .Q(\progdiv_cfg_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \progdiv_cfg_store_reg[9] 
       (.C(drpclk_in),
        .CE(progdiv_cfg_store),
        .D(Q[9]),
        .Q(\progdiv_cfg_store_reg_n_0_[9] ),
        .R(1'b0));
  LUT6 #(
    .INIT(64'h5555555755555554)) 
    rd_i_1__0
       (.I0(drp_done),
        .I1(p_1_in),
        .I2(p_2_in4_in),
        .I3(p_4_in),
        .I4(rd_i_2_n_0),
        .I5(rd),
        .O(rd_i_1__0_n_0));
  (* SOFT_HLUTNM = "soft_lutpair79" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    rd_i_2
       (.I0(p_1_in5_in),
        .I1(p_1_in10_in),
        .I2(p_2_in8_in),
        .I3(p_1_in2_in),
        .O(rd_i_2_n_0));
  FDRE #(
    .INIT(1'b0)) 
    rd_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rd_i_1__0_n_0),
        .Q(rd),
        .R(cal_on_tx_reset_in_sync));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT2 #(
    .INIT(4'h2)) 
    \repeat_ctr[0]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .O(\repeat_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair86" *) 
  LUT3 #(
    .INIT(8'h28)) 
    \repeat_ctr[1]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[0] ),
        .I2(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair82" *) 
  LUT4 #(
    .INIT(16'h2888)) 
    \repeat_ctr[2]_i_1 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[2] ),
        .I2(\repeat_ctr_reg_n_0_[1] ),
        .I3(\repeat_ctr_reg_n_0_[0] ),
        .O(\repeat_ctr[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT5 #(
    .INIT(32'h28888888)) 
    \repeat_ctr[3]_i_2 
       (.I0(p_11_in),
        .I1(\repeat_ctr_reg_n_0_[3] ),
        .I2(\repeat_ctr_reg_n_0_[2] ),
        .I3(\repeat_ctr_reg_n_0_[0] ),
        .I4(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair72" *) 
  LUT4 #(
    .INIT(16'h8000)) 
    \repeat_ctr[3]_i_3 
       (.I0(\repeat_ctr_reg_n_0_[3] ),
        .I1(\repeat_ctr_reg_n_0_[2] ),
        .I2(\repeat_ctr_reg_n_0_[0] ),
        .I3(\repeat_ctr_reg_n_0_[1] ),
        .O(\repeat_ctr[3]_i_3_n_0 ));
  FDRE \repeat_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[0]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[0] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[1]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[1] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[2]_i_1_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[2] ),
        .R(1'b0));
  FDRE \repeat_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(U_TXOUTCLK_FREQ_COUNTER_n_18),
        .D(\repeat_ctr[3]_i_2_n_0 ),
        .Q(\repeat_ctr_reg_n_0_[3] ),
        .R(1'b0));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_meta_i_1__3
       (.I0(USER_CPLLLOCK_OUT_reg_0),
        .O(rst_in0));
  LUT6 #(
    .INIT(64'hFFABFFFF00A80000)) 
    status_store_i_1
       (.I0(Q[15]),
        .I1(p_1_in5_in),
        .I2(p_1_in10_in),
        .I3(cal_on_tx_reset_in_sync),
        .I4(drp_done),
        .I5(status_store__0),
        .O(status_store_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    status_store_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(status_store_i_1_n_0),
        .Q(status_store__0),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h0E)) 
    \txoutclksel_int[2]_i_1 
       (.I0(txoutclksel_int),
        .I1(\cpll_cal_state_reg_n_0_[12] ),
        .I2(\cpll_cal_state_reg_n_0_[0] ),
        .O(\txoutclksel_int[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \txoutclksel_int_reg[2] 
       (.C(drpclk_in),
        .CE(1'b1),
        .D(\txoutclksel_int[2]_i_1_n_0 ),
        .Q(txoutclksel_int),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair76" *) 
  LUT4 #(
    .INIT(16'hABA8)) 
    txprogdivreset_int_i_1
       (.I0(\wait_ctr[11]_i_3_n_0 ),
        .I1(\cpll_cal_state_reg_n_0_[28] ),
        .I2(p_13_in),
        .I3(txprogdivreset_int),
        .O(txprogdivreset_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    txprogdivreset_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(txprogdivreset_int_i_1_n_0),
        .Q(txprogdivreset_int),
        .R(cal_on_tx_reset_in_sync));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry
       (.CI(\wait_ctr_reg_n_0_[0] ),
        .CI_TOP(1'b0),
        .CO({wait_ctr0_carry_n_0,wait_ctr0_carry_n_1,wait_ctr0_carry_n_2,wait_ctr0_carry_n_3,wait_ctr0_carry_n_4,wait_ctr0_carry_n_5,wait_ctr0_carry_n_6,wait_ctr0_carry_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry_n_8,wait_ctr0_carry_n_9,wait_ctr0_carry_n_10,wait_ctr0_carry_n_11,wait_ctr0_carry_n_12,wait_ctr0_carry_n_13,wait_ctr0_carry_n_14,wait_ctr0_carry_n_15}),
        .S({\wait_ctr_reg_n_0_[8] ,\wait_ctr_reg_n_0_[7] ,\wait_ctr_reg_n_0_[6] ,\wait_ctr_reg_n_0_[5] ,\wait_ctr_reg_n_0_[4] ,\wait_ctr_reg_n_0_[3] ,\wait_ctr_reg_n_0_[2] ,\wait_ctr_reg_n_0_[1] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry__0
       (.CI(wait_ctr0_carry_n_0),
        .CI_TOP(1'b0),
        .CO({wait_ctr0_carry__0_n_0,wait_ctr0_carry__0_n_1,wait_ctr0_carry__0_n_2,wait_ctr0_carry__0_n_3,wait_ctr0_carry__0_n_4,wait_ctr0_carry__0_n_5,wait_ctr0_carry__0_n_6,wait_ctr0_carry__0_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry__0_n_8,wait_ctr0_carry__0_n_9,wait_ctr0_carry__0_n_10,wait_ctr0_carry__0_n_11,wait_ctr0_carry__0_n_12,wait_ctr0_carry__0_n_13,wait_ctr0_carry__0_n_14,wait_ctr0_carry__0_n_15}),
        .S({\wait_ctr_reg_n_0_[16] ,\wait_ctr_reg_n_0_[15] ,\wait_ctr_reg_n_0_[14] ,\wait_ctr_reg_n_0_[13] ,\wait_ctr_reg_n_0_[12] ,\wait_ctr_reg_n_0_[11] ,\wait_ctr_reg_n_0_[10] ,\wait_ctr_reg_n_0_[9] }));
  (* ADDER_THRESHOLD = "35" *) 
  CARRY8 wait_ctr0_carry__1
       (.CI(wait_ctr0_carry__0_n_0),
        .CI_TOP(1'b0),
        .CO({NLW_wait_ctr0_carry__1_CO_UNCONNECTED[7],wait_ctr0_carry__1_n_1,wait_ctr0_carry__1_n_2,wait_ctr0_carry__1_n_3,wait_ctr0_carry__1_n_4,wait_ctr0_carry__1_n_5,wait_ctr0_carry__1_n_6,wait_ctr0_carry__1_n_7}),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({wait_ctr0_carry__1_n_8,wait_ctr0_carry__1_n_9,wait_ctr0_carry__1_n_10,wait_ctr0_carry__1_n_11,wait_ctr0_carry__1_n_12,wait_ctr0_carry__1_n_13,wait_ctr0_carry__1_n_14,wait_ctr0_carry__1_n_15}),
        .S({\wait_ctr_reg_n_0_[24] ,\wait_ctr_reg_n_0_[23] ,\wait_ctr_reg_n_0_[22] ,\wait_ctr_reg_n_0_[21] ,\wait_ctr_reg_n_0_[20] ,\wait_ctr_reg_n_0_[19] ,\wait_ctr_reg_n_0_[18] ,\wait_ctr_reg_n_0_[17] }));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT5 #(
    .INIT(32'h00545555)) 
    \wait_ctr[0]_i_1 
       (.I0(\wait_ctr_reg_n_0_[0] ),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[0]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h01FF000000000000)) 
    \wait_ctr[11]_i_1 
       (.I0(\cpll_cal_state_reg_n_0_[28] ),
        .I1(p_13_in),
        .I2(p_18_in),
        .I3(\wait_ctr[11]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_4_n_0 ),
        .I5(\wait_ctr[11]_i_2_n_0 ),
        .O(\wait_ctr[11]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFE000000)) 
    \wait_ctr[11]_i_10 
       (.I0(\wait_ctr_reg_n_0_[9] ),
        .I1(\wait_ctr[24]_i_6_n_0 ),
        .I2(\wait_ctr[24]_i_5_n_0 ),
        .I3(\wait_ctr_reg_n_0_[10] ),
        .I4(\wait_ctr_reg_n_0_[11] ),
        .O(\wait_ctr[11]_i_10_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT2 #(
    .INIT(4'h1)) 
    \wait_ctr[11]_i_11 
       (.I0(p_16_in),
        .I1(p_14_in),
        .O(\wait_ctr[11]_i_11_n_0 ));
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_ctr[11]_i_12 
       (.I0(\wait_ctr_reg_n_0_[12] ),
        .I1(\wait_ctr_reg_n_0_[13] ),
        .I2(\wait_ctr_reg_n_0_[14] ),
        .O(\wait_ctr[11]_i_12_n_0 ));
  LUT6 #(
    .INIT(64'h5555550455555555)) 
    \wait_ctr[11]_i_2 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(p_0_in),
        .I2(drp_done),
        .I3(\cpll_cal_state_reg_n_0_[0] ),
        .I4(\wait_ctr[11]_i_5_n_0 ),
        .I5(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[11]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \wait_ctr[11]_i_3 
       (.I0(\wait_ctr[11]_i_7_n_0 ),
        .I1(\wait_ctr[11]_i_8_n_0 ),
        .I2(\wait_ctr_reg_n_0_[9] ),
        .I3(\wait_ctr_reg_n_0_[10] ),
        .I4(\wait_ctr_reg_n_0_[11] ),
        .I5(\wait_ctr[11]_i_9_n_0 ),
        .O(\wait_ctr[11]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'hEEEFEEEFEEEF0000)) 
    \wait_ctr[11]_i_4 
       (.I0(\wait_ctr[11]_i_7_n_0 ),
        .I1(\wait_ctr[11]_i_10_n_0 ),
        .I2(p_17_in),
        .I3(p_15_in),
        .I4(\cpll_cal_state[18]_i_2_n_0 ),
        .I5(\wait_ctr[11]_i_11_n_0 ),
        .O(\wait_ctr[11]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair68" *) 
  LUT2 #(
    .INIT(4'hE)) 
    \wait_ctr[11]_i_5 
       (.I0(p_17_in),
        .I1(p_15_in),
        .O(\wait_ctr[11]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair66" *) 
  LUT5 #(
    .INIT(32'h00000001)) 
    \wait_ctr[11]_i_6 
       (.I0(p_14_in),
        .I1(p_16_in),
        .I2(\cpll_cal_state_reg_n_0_[28] ),
        .I3(p_13_in),
        .I4(p_18_in),
        .O(\wait_ctr[11]_i_6_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair64" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    \wait_ctr[11]_i_7 
       (.I0(\cpll_cal_state[18]_i_3_n_0 ),
        .I1(\cpll_cal_state[18]_i_4_n_0 ),
        .I2(\wait_ctr_reg_n_0_[16] ),
        .I3(\wait_ctr_reg_n_0_[15] ),
        .I4(\wait_ctr[11]_i_12_n_0 ),
        .O(\wait_ctr[11]_i_7_n_0 ));
  LUT5 #(
    .INIT(32'h88888880)) 
    \wait_ctr[11]_i_8 
       (.I0(\wait_ctr_reg_n_0_[4] ),
        .I1(\wait_ctr_reg_n_0_[3] ),
        .I2(\wait_ctr_reg_n_0_[2] ),
        .I3(\wait_ctr_reg_n_0_[1] ),
        .I4(\wait_ctr_reg_n_0_[0] ),
        .O(\wait_ctr[11]_i_8_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \wait_ctr[11]_i_9 
       (.I0(\wait_ctr_reg_n_0_[5] ),
        .I1(\wait_ctr_reg_n_0_[8] ),
        .I2(\wait_ctr_reg_n_0_[6] ),
        .I3(\wait_ctr_reg_n_0_[7] ),
        .O(\wait_ctr[11]_i_9_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[12]_i_1 
       (.I0(wait_ctr0_carry__0_n_12),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[12]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[13]_i_1 
       (.I0(wait_ctr0_carry__0_n_11),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[13]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[14]_i_1 
       (.I0(wait_ctr0_carry__0_n_10),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[14]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[15]_i_1 
       (.I0(wait_ctr0_carry__0_n_9),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[15]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[16]_i_1 
       (.I0(wait_ctr0_carry__0_n_8),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[16]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[17]_i_1 
       (.I0(wait_ctr0_carry__1_n_15),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[17]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[18]_i_1 
       (.I0(wait_ctr0_carry__1_n_14),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[18]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[19]_i_1 
       (.I0(wait_ctr0_carry__1_n_13),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[19]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[1]_i_1 
       (.I0(wait_ctr0_carry_n_15),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[1]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[20]_i_1 
       (.I0(wait_ctr0_carry__1_n_12),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[20]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[21]_i_1 
       (.I0(wait_ctr0_carry__1_n_11),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[21]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[22]_i_1 
       (.I0(wait_ctr0_carry__1_n_10),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[22]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[23]_i_1 
       (.I0(wait_ctr0_carry__1_n_9),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[23]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h000000000000888A)) 
    \wait_ctr[24]_i_1 
       (.I0(\wait_ctr[11]_i_2_n_0 ),
        .I1(\wait_ctr[24]_i_3_n_0 ),
        .I2(p_17_in),
        .I3(p_15_in),
        .I4(\wait_ctr[24]_i_4_n_0 ),
        .I5(\wait_ctr[11]_i_3_n_0 ),
        .O(\wait_ctr[24]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[24]_i_2 
       (.I0(wait_ctr0_carry__1_n_8),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[24]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAA)) 
    \wait_ctr[24]_i_3 
       (.I0(\wait_ctr[11]_i_7_n_0 ),
        .I1(\wait_ctr_reg_n_0_[11] ),
        .I2(\wait_ctr_reg_n_0_[10] ),
        .I3(\wait_ctr[24]_i_5_n_0 ),
        .I4(\wait_ctr[24]_i_6_n_0 ),
        .I5(\wait_ctr_reg_n_0_[9] ),
        .O(\wait_ctr[24]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair75" *) 
  LUT3 #(
    .INIT(8'h0E)) 
    \wait_ctr[24]_i_4 
       (.I0(p_14_in),
        .I1(p_16_in),
        .I2(\cpll_cal_state[18]_i_2_n_0 ),
        .O(\wait_ctr[24]_i_4_n_0 ));
  LUT6 #(
    .INIT(64'hFFA8000000000000)) 
    \wait_ctr[24]_i_5 
       (.I0(\wait_ctr_reg_n_0_[2] ),
        .I1(\wait_ctr_reg_n_0_[1] ),
        .I2(\wait_ctr_reg_n_0_[0] ),
        .I3(\wait_ctr_reg_n_0_[3] ),
        .I4(\wait_ctr_reg_n_0_[4] ),
        .I5(\wait_ctr_reg_n_0_[5] ),
        .O(\wait_ctr[24]_i_5_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair74" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \wait_ctr[24]_i_6 
       (.I0(\wait_ctr_reg_n_0_[7] ),
        .I1(\wait_ctr_reg_n_0_[6] ),
        .I2(\wait_ctr_reg_n_0_[8] ),
        .O(\wait_ctr[24]_i_6_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[3]_i_1 
       (.I0(wait_ctr0_carry_n_13),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[3]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[4]_i_1 
       (.I0(wait_ctr0_carry_n_12),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[4]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[5]_i_1 
       (.I0(wait_ctr0_carry_n_11),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[5]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[6]_i_1 
       (.I0(wait_ctr0_carry_n_10),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[6]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h00A8AAAA)) 
    \wait_ctr[9]_i_1 
       (.I0(wait_ctr0_carry__0_n_15),
        .I1(p_15_in),
        .I2(p_17_in),
        .I3(\wait_ctr[24]_i_3_n_0 ),
        .I4(\wait_ctr[11]_i_6_n_0 ),
        .O(\wait_ctr[9]_i_1_n_0 ));
  FDRE \wait_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[0]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[0] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[10] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(wait_ctr0_carry__0_n_14),
        .Q(\wait_ctr_reg_n_0_[10] ),
        .R(\wait_ctr[11]_i_1_n_0 ));
  FDRE \wait_ctr_reg[11] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(wait_ctr0_carry__0_n_13),
        .Q(\wait_ctr_reg_n_0_[11] ),
        .R(\wait_ctr[11]_i_1_n_0 ));
  FDRE \wait_ctr_reg[12] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[12]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[12] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[13] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[13]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[13] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[14] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[14]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[14] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[15] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[15]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[15] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[16] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[16]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[16] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[17] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[17]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[17] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[18] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[18]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[18] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[19] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[19]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[19] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[1]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[1] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[20] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[20]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[20] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[21] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[21]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[21] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[22] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[22]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[22] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[23] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[23]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[23] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[24] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[24]_i_2_n_0 ),
        .Q(\wait_ctr_reg_n_0_[24] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_14),
        .Q(\wait_ctr_reg_n_0_[2] ),
        .R(\wait_ctr[11]_i_1_n_0 ));
  FDRE \wait_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[3]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[3] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[4]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[4] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[5]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[5] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[6]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[6] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  FDRE \wait_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_9),
        .Q(\wait_ctr_reg_n_0_[7] ),
        .R(\wait_ctr[11]_i_1_n_0 ));
  FDRE \wait_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(wait_ctr0_carry_n_8),
        .Q(\wait_ctr_reg_n_0_[8] ),
        .R(\wait_ctr[11]_i_1_n_0 ));
  FDRE \wait_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\wait_ctr[11]_i_2_n_0 ),
        .D(\wait_ctr[9]_i_1_n_0 ),
        .Q(\wait_ctr_reg_n_0_[9] ),
        .R(\wait_ctr[24]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair85" *) 
  LUT3 #(
    .INIT(8'h74)) 
    wr_i_1__0
       (.I0(drp_done),
        .I1(\di_msk[15]_i_3_n_0 ),
        .I2(wr),
        .O(wr_i_1__0_n_0));
  FDRE #(
    .INIT(1'b0)) 
    wr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(wr_i_1__0_n_0),
        .Q(wr),
        .R(cal_on_tx_reset_in_sync));
  LUT3 #(
    .INIT(8'h40)) 
    \x0e1_store[14]_i_1 
       (.I0(cal_on_tx_reset_in_sync),
        .I1(p_4_in),
        .I2(drp_done),
        .O(\x0e1_store[14]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[0] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[0]),
        .Q(\x0e1_store_reg_n_0_[0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[12] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[12]),
        .Q(\x0e1_store_reg_n_0_[12] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[13] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[13]),
        .Q(\x0e1_store_reg_n_0_[13] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[14] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[14]),
        .Q(\x0e1_store_reg_n_0_[14] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[1] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[1]),
        .Q(\x0e1_store_reg_n_0_[1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[2] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[2]),
        .Q(\x0e1_store_reg_n_0_[2] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[3] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[3]),
        .Q(\x0e1_store_reg_n_0_[3] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[4] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[4]),
        .Q(\x0e1_store_reg_n_0_[4] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[5] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[5]),
        .Q(\x0e1_store_reg_n_0_[5] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[6] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[6]),
        .Q(\x0e1_store_reg_n_0_[6] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[7] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[7]),
        .Q(\x0e1_store_reg_n_0_[7] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[8] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[8]),
        .Q(\x0e1_store_reg_n_0_[8] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \x0e1_store_reg[9] 
       (.C(drpclk_in),
        .CE(\x0e1_store[14]_i_1_n_0 ),
        .D(Q[9]),
        .Q(\x0e1_store_reg_n_0_[9] ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gthe4_delay_powergood" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_delay_powergood
   (out,
    RXPD,
    RXRATE,
    rxoutclkpcs_out,
    \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ,
    rxpd_in);
  output out;
  output [0:0]RXPD;
  output [0:0]RXRATE;
  input [0:0]rxoutclkpcs_out;
  input \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ;
  input [0:0]rxpd_in;

  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* shreg_extract = "no" *) wire \gen_powergood_delay.int_pwr_on_fsm ;
  wire \gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ;
  (* async_reg = "true" *) (* shreg_extract = "no" *) wire [4:0]\gen_powergood_delay.intclk_rrst_n_r ;
  wire \gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ;
  wire \gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ;
  (* RTL_KEEP = "true" *) (* async_reg = "true" *) (* shreg_extract = "no" *) wire \gen_powergood_delay.pwr_on_fsm ;
  (* async_reg = "true" *) (* shreg_extract = "no" *) wire [8:0]\gen_powergood_delay.wait_cnt ;
  wire \gen_powergood_delay.wait_cnt[0]_i_1_n_0 ;
  wire \gen_powergood_delay.wait_cnt[8]_i_1_n_0 ;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxpd_in;

  assign out = \gen_powergood_delay.pwr_on_fsm ;
  LUT2 #(
    .INIT(4'hE)) 
    \gen_powergood_delay.int_pwr_on_fsm_i_1 
       (.I0(\gen_powergood_delay.int_pwr_on_fsm ),
        .I1(\gen_powergood_delay.wait_cnt [7]),
        .O(\gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.int_pwr_on_fsm_reg 
       (.C(rxoutclkpcs_out),
        .CE(1'b1),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.int_pwr_on_fsm_i_1_n_0 ),
        .Q(\gen_powergood_delay.int_pwr_on_fsm ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.intclk_rrst_n_r[4]_i_1 
       (.I0(\gen_powergood_delay.int_pwr_on_fsm ),
        .O(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[0] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(1'b1),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[1] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [0]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[2] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [1]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[3] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [2]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [3]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDCE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.intclk_rrst_n_r_reg[4] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .CLR(\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [3]),
        .Q(\gen_powergood_delay.intclk_rrst_n_r [4]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE #(
    .INIT(1'b0)) 
    \gen_powergood_delay.pwr_on_fsm_reg 
       (.C(rxoutclkpcs_out),
        .CE(1'b1),
        .D(\gen_powergood_delay.int_pwr_on_fsm ),
        .Q(\gen_powergood_delay.pwr_on_fsm ),
        .R(1'b0));
  LUT2 #(
    .INIT(4'h7)) 
    \gen_powergood_delay.wait_cnt[0]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .I1(\gen_powergood_delay.int_pwr_on_fsm ),
        .O(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gen_powergood_delay.wait_cnt[8]_i_1 
       (.I0(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .O(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[0] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.wait_cnt[0]_i_1_n_0 ),
        .D(\gen_powergood_delay.intclk_rrst_n_r [4]),
        .Q(\gen_powergood_delay.wait_cnt [0]),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[1] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [0]),
        .Q(\gen_powergood_delay.wait_cnt [1]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[2] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [1]),
        .Q(\gen_powergood_delay.wait_cnt [2]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[3] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [2]),
        .Q(\gen_powergood_delay.wait_cnt [3]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[4] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [3]),
        .Q(\gen_powergood_delay.wait_cnt [4]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[5] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [4]),
        .Q(\gen_powergood_delay.wait_cnt [5]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[6] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [5]),
        .Q(\gen_powergood_delay.wait_cnt [6]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[7] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [6]),
        .Q(\gen_powergood_delay.wait_cnt [7]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  (* SHREG_EXTRACT = "no" *) 
  FDRE \gen_powergood_delay.wait_cnt_reg[8] 
       (.C(rxoutclkpcs_out),
        .CE(\gen_powergood_delay.intclk_rrst_n_r[4]_i_1_n_0 ),
        .D(\gen_powergood_delay.wait_cnt [7]),
        .Q(\gen_powergood_delay.wait_cnt [8]),
        .R(\gen_powergood_delay.wait_cnt[8]_i_1_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_2 
       (.I0(\gen_powergood_delay.pwr_on_fsm ),
        .O(RXRATE));
  LUT2 #(
    .INIT(4'hB)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_3 
       (.I0(rxpd_in),
        .I1(\gen_powergood_delay.pwr_on_fsm ),
        .O(RXPD));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_gtwiz_reset" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gtwiz_reset
   (rst_in_out_reg,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    \gen_gtwizard_gthe4.gttxreset_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    RESET_IN,
    gtpowergood_out,
    i_in_meta_reg,
    gtwiz_userclk_rx_active_out,
    rxcdrlock_out,
    drpclk_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    rst_in0,
    rxusrclk_in,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    gtwiz_reset_rx_datapath_in);
  output rst_in_out_reg;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output \gen_gtwizard_gthe4.gttxreset_int ;
  output \gen_gtwizard_gthe4.txuserrdy_int ;
  output \gen_gtwizard_gthe4.rxprogdivreset_int ;
  output \gen_gtwizard_gthe4.rxuserrdy_int ;
  output \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  output RESET_IN;
  input [0:0]gtpowergood_out;
  input i_in_meta_reg;
  input [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]rxcdrlock_out;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in0;
  input [0:0]rxusrclk_in;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  input \gen_gtwizard_gthe4.gtpowergood_int ;
  input [0:0]gtwiz_reset_rx_datapath_in;

  wire \FSM_sequential_sm_reset_all[2]_i_3_n_0 ;
  wire \FSM_sequential_sm_reset_all[2]_i_4_n_0 ;
  wire \FSM_sequential_sm_reset_rx[2]_i_2_n_0 ;
  wire RESET_IN;
  wire bit_synchronizer_gtpowergood_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1;
  wire bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_0;
  wire bit_synchronizer_plllock_rx_inst_n_1;
  wire bit_synchronizer_plllock_rx_inst_n_2;
  wire bit_synchronizer_plllock_rx_inst_n_3;
  wire bit_synchronizer_plllock_rx_inst_n_4;
  wire bit_synchronizer_plllock_tx_inst_n_0;
  wire bit_synchronizer_plllock_tx_inst_n_1;
  wire bit_synchronizer_plllock_tx_inst_n_2;
  wire bit_synchronizer_plllock_tx_inst_n_3;
  wire bit_synchronizer_rxcdrlock_inst_n_0;
  wire bit_synchronizer_rxcdrlock_inst_n_1;
  wire bit_synchronizer_rxcdrlock_inst_n_2;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gtrxreset_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  wire gtwiz_reset_rx_any_sync;
  wire gtwiz_reset_rx_datapath_dly;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire gtwiz_reset_rx_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_datapath_sync;
  wire gtwiz_reset_rx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_rx_pll_and_datapath_sync;
  wire gtwiz_reset_tx_any_sync;
  wire gtwiz_reset_tx_datapath_dly;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire gtwiz_reset_tx_datapath_sync;
  wire gtwiz_reset_tx_done_int0__0;
  wire gtwiz_reset_tx_done_int_reg_n_0;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_int_reg_n_0;
  wire gtwiz_reset_tx_pll_and_datapath_sync;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire i_in_meta_reg;
  wire p_0_in;
  wire p_0_in11_out__0;
  wire [9:0]p_0_in__2;
  wire [9:0]p_0_in__3;
  wire reset_synchronizer_gtwiz_reset_rx_any_inst_n_1;
  wire reset_synchronizer_gtwiz_reset_tx_any_inst_n_1;
  wire rst_in0;
  wire rst_in_out_reg;
  wire [0:0]rxcdrlock_out;
  wire [0:0]rxusrclk_in;
  wire sel;
  wire [2:0]sm_reset_all;
  wire [2:0]sm_reset_all__0;
  wire sm_reset_all_timer_clr_i_1_n_0;
  wire sm_reset_all_timer_clr_i_2_n_0;
  wire sm_reset_all_timer_clr_reg_n_0;
  wire [2:0]sm_reset_all_timer_ctr;
  wire \sm_reset_all_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_all_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_all_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_all_timer_sat;
  wire sm_reset_all_timer_sat_i_1_n_0;
  wire [2:0]sm_reset_rx;
  wire [1:0]sm_reset_rx__0;
  wire sm_reset_rx_cdr_to_clr;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ;
  wire [25:0]sm_reset_rx_cdr_to_ctr_reg;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ;
  wire \sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ;
  wire sm_reset_rx_cdr_to_sat;
  wire sm_reset_rx_cdr_to_sat_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_i_1_n_0;
  wire sm_reset_rx_pll_timer_clr_reg_n_0;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_rx_pll_timer_ctr_reg;
  wire sm_reset_rx_pll_timer_sat;
  wire sm_reset_rx_pll_timer_sat_i_1_n_0;
  wire sm_reset_rx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_rx_timer_ctr;
  wire \sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ;
  wire \sm_reset_rx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_rx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_rx_timer_sat;
  wire sm_reset_rx_timer_sat_i_1_n_0;
  wire [2:0]sm_reset_tx;
  wire [2:0]sm_reset_tx__0;
  wire sm_reset_tx_pll_timer_clr_i_1_n_0;
  wire sm_reset_tx_pll_timer_clr_reg_n_0;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ;
  wire \sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ;
  wire [9:0]sm_reset_tx_pll_timer_ctr_reg;
  wire sm_reset_tx_pll_timer_sat;
  wire sm_reset_tx_pll_timer_sat_i_1_n_0;
  wire sm_reset_tx_timer_clr013_out__0;
  wire sm_reset_tx_timer_clr0__0;
  wire sm_reset_tx_timer_clr_reg_n_0;
  wire [2:0]sm_reset_tx_timer_ctr;
  wire \sm_reset_tx_timer_ctr[0]_i_1_n_0 ;
  wire \sm_reset_tx_timer_ctr[1]_i_1_n_0 ;
  wire \sm_reset_tx_timer_ctr[2]_i_1_n_0 ;
  wire sm_reset_tx_timer_sat;
  wire sm_reset_tx_timer_sat_i_1_n_0;
  wire [7:1]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED ;
  wire [7:2]\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED ;

  LUT6 #(
    .INIT(64'h00FFF70000FFFFFF)) 
    \FSM_sequential_sm_reset_all[0]_i_1 
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .I3(sm_reset_all[2]),
        .I4(sm_reset_all[1]),
        .I5(sm_reset_all[0]),
        .O(sm_reset_all__0[0]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h34)) 
    \FSM_sequential_sm_reset_all[1]_i_1 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[0]),
        .O(sm_reset_all__0[1]));
  (* SOFT_HLUTNM = "soft_lutpair102" *) 
  LUT3 #(
    .INIT(8'h4A)) 
    \FSM_sequential_sm_reset_all[2]_i_2 
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .O(sm_reset_all__0[2]));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h08)) 
    \FSM_sequential_sm_reset_all[2]_i_3 
       (.I0(sm_reset_all_timer_sat),
        .I1(gtwiz_reset_rx_done_int_reg_n_0),
        .I2(sm_reset_all_timer_clr_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_3_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair99" *) 
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_all[2]_i_4 
       (.I0(sm_reset_all_timer_clr_reg_n_0),
        .I1(sm_reset_all_timer_sat),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .O(\FSM_sequential_sm_reset_all[2]_i_4_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[0]),
        .Q(sm_reset_all[0]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[1]),
        .Q(sm_reset_all[1]),
        .R(gtwiz_reset_all_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_ALL_BRANCH:000,ST_RESET_ALL_TX_PLL_WAIT:010,ST_RESET_ALL_RX_WAIT:101,ST_RESET_ALL_TX_PLL:001,ST_RESET_ALL_RX_PLL:100,ST_RESET_ALL_RX_DP:011,ST_RESET_ALL_INIT:111,iSTATE:110" *) 
  FDRE #(
    .INIT(1'b1)) 
    \FSM_sequential_sm_reset_all_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_gtpowergood_inst_n_0),
        .D(sm_reset_all__0[2]),
        .Q(sm_reset_all[2]),
        .R(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_rx[1]_i_2 
       (.I0(sm_reset_rx_timer_clr_reg_n_0),
        .I1(sm_reset_rx_timer_sat),
        .I2(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .O(p_0_in11_out__0));
  LUT6 #(
    .INIT(64'hFFFFFF000800FF00)) 
    \FSM_sequential_sm_reset_rx[2]_i_2 
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .I1(sm_reset_rx_timer_sat),
        .I2(sm_reset_rx_timer_clr_reg_n_0),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx[1]),
        .I5(sm_reset_rx[0]),
        .O(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(sm_reset_rx__0[0]),
        .Q(sm_reset_rx[0]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(sm_reset_rx__0[1]),
        .Q(sm_reset_rx[1]),
        .R(gtwiz_reset_rx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_RX_WAIT_LOCK:011,ST_RESET_RX_WAIT_CDR:100,ST_RESET_RX_WAIT_USERRDY:101,ST_RESET_RX_WAIT_RESETDONE:110,ST_RESET_RX_DATAPATH:010,ST_RESET_RX_PLL:001,ST_RESET_RX_BRANCH:000,ST_RESET_RX_IDLE:111" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_rx_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_rx_inst_n_0),
        .D(\FSM_sequential_sm_reset_rx[2]_i_2_n_0 ),
        .Q(sm_reset_rx[2]),
        .R(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h38)) 
    \FSM_sequential_sm_reset_tx[2]_i_2 
       (.I0(sm_reset_tx[0]),
        .I1(sm_reset_tx[1]),
        .I2(sm_reset_tx[2]),
        .O(sm_reset_tx__0[2]));
  LUT3 #(
    .INIT(8'h40)) 
    \FSM_sequential_sm_reset_tx[2]_i_4 
       (.I0(sm_reset_tx_timer_clr_reg_n_0),
        .I1(sm_reset_tx_timer_sat),
        .I2(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .O(gtwiz_reset_tx_done_int0__0));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[0] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[0]),
        .Q(sm_reset_tx[0]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[1] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[1]),
        .Q(sm_reset_tx[1]),
        .R(gtwiz_reset_tx_any_sync));
  (* FSM_ENCODED_STATES = "ST_RESET_TX_BRANCH:000,ST_RESET_TX_WAIT_LOCK:011,ST_RESET_TX_WAIT_USERRDY:100,ST_RESET_TX_WAIT_RESETDONE:101,ST_RESET_TX_IDLE:110,ST_RESET_TX_DATAPATH:010,ST_RESET_TX_PLL:001" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_sm_reset_tx_reg[2] 
       (.C(drpclk_in),
        .CE(bit_synchronizer_plllock_tx_inst_n_0),
        .D(sm_reset_tx__0[2]),
        .Q(sm_reset_tx[2]),
        .R(gtwiz_reset_tx_any_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_4 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .\FSM_sequential_sm_reset_all_reg[0] (\FSM_sequential_sm_reset_all[2]_i_3_n_0 ),
        .\FSM_sequential_sm_reset_all_reg[0]_0 (\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .Q(sm_reset_all),
        .drpclk_in(drpclk_in),
        .gtpowergood_out(gtpowergood_out));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D(sm_reset_rx__0),
        .\FSM_sequential_sm_reset_rx[2]_i_3 (sm_reset_rx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_8 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D(sm_reset_tx__0[1:0]),
        .\FSM_sequential_sm_reset_tx[2]_i_3 (sm_reset_tx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_9 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
       (.\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .\FSM_sequential_sm_reset_rx_reg[0]_0 (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[0]_1 (bit_synchronizer_rxcdrlock_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_userclk_rx_active_out(gtwiz_userclk_rx_active_out),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat),
        .sm_reset_rx_timer_clr_reg(sm_reset_rx_timer_clr_reg_n_0),
        .sm_reset_rx_timer_clr_reg_0(bit_synchronizer_plllock_rx_inst_n_1),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_10 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .\FSM_sequential_sm_reset_tx_reg[2] (bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .sm_reset_tx_timer_clr013_out__0(sm_reset_tx_timer_clr013_out__0),
        .sm_reset_tx_timer_clr0__0(sm_reset_tx_timer_clr0__0),
        .sm_reset_tx_timer_clr_reg(sm_reset_tx_timer_clr_reg_n_0),
        .sm_reset_tx_timer_clr_reg_0(bit_synchronizer_plllock_tx_inst_n_1),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_11 bit_synchronizer_plllock_rx_inst
       (.E(bit_synchronizer_plllock_rx_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0] (bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0]_0 (sm_reset_rx_timer_clr_reg_n_0),
        .\FSM_sequential_sm_reset_rx_reg[0]_1 (bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_plllock_rx_inst_n_2),
        .\FSM_sequential_sm_reset_rx_reg[1]_0 (bit_synchronizer_plllock_rx_inst_n_4),
        .\FSM_sequential_sm_reset_rx_reg[2] (bit_synchronizer_plllock_rx_inst_n_3),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gtrxreset_int (\gen_gtwizard_gthe4.gtrxreset_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_done_int_reg(gtwiz_reset_rx_done_int_reg_n_0),
        .i_in_meta_reg_0(i_in_meta_reg),
        .i_in_out_reg_0(bit_synchronizer_plllock_rx_inst_n_1),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_timer_sat(sm_reset_rx_timer_sat));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_12 bit_synchronizer_plllock_tx_inst
       (.E(bit_synchronizer_plllock_tx_inst_n_0),
        .\FSM_sequential_sm_reset_tx_reg[0] (bit_synchronizer_plllock_tx_inst_n_2),
        .\FSM_sequential_sm_reset_tx_reg[0]_0 (sm_reset_tx_timer_clr_reg_n_0),
        .\FSM_sequential_sm_reset_tx_reg[0]_1 (bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0),
        .\FSM_sequential_sm_reset_tx_reg[1] (bit_synchronizer_plllock_tx_inst_n_3),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_done_int0__0(gtwiz_reset_tx_done_int0__0),
        .gtwiz_reset_tx_done_int_reg(gtwiz_reset_tx_done_int_reg_n_0),
        .i_in_meta_reg_0(i_in_meta_reg),
        .i_in_out_reg_0(bit_synchronizer_plllock_tx_inst_n_1),
        .sm_reset_tx_timer_clr0__0(sm_reset_tx_timer_clr0__0),
        .sm_reset_tx_timer_sat(sm_reset_tx_timer_sat));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_13 bit_synchronizer_rxcdrlock_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (bit_synchronizer_rxcdrlock_inst_n_1),
        .\FSM_sequential_sm_reset_rx_reg[2] (bit_synchronizer_rxcdrlock_inst_n_2),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .i_in_out_reg_0(bit_synchronizer_rxcdrlock_inst_n_0),
        .rxcdrlock_out(rxcdrlock_out),
        .sm_reset_rx_cdr_to_clr(sm_reset_rx_cdr_to_clr),
        .sm_reset_rx_cdr_to_clr_reg(bit_synchronizer_plllock_rx_inst_n_2),
        .sm_reset_rx_cdr_to_sat(sm_reset_rx_cdr_to_sat));
  LUT3 #(
    .INIT(8'h8B)) 
    \gthe4_channel_gen.gen_gthe4_channel_inst[0].GTHE4_CHANNEL_PRIM_INST_i_1 
       (.I0(\gen_gtwizard_gthe4.gtrxreset_int ),
        .I1(gtpowergood_out),
        .I2(\gen_gtwizard_gthe4.gtpowergood_int ),
        .O(\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ));
  FDRE #(
    .INIT(1'b1)) 
    gtrxreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_4),
        .Q(\gen_gtwizard_gthe4.gtrxreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    gttxreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_3),
        .Q(\gen_gtwizard_gthe4.gttxreset_int ),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hF740)) 
    gtwiz_reset_rx_datapath_int_i_1
       (.I0(sm_reset_all[2]),
        .I1(sm_reset_all[0]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_rx_inst_n_3),
        .Q(gtwiz_reset_rx_done_int_reg_n_0),
        .R(gtwiz_reset_rx_any_sync));
  LUT4 #(
    .INIT(16'hF704)) 
    gtwiz_reset_rx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[2]),
        .I2(sm_reset_all[1]),
        .I3(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_pll_and_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_rx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_plllock_tx_inst_n_2),
        .Q(gtwiz_reset_tx_done_int_reg_n_0),
        .R(gtwiz_reset_tx_any_sync));
  (* SOFT_HLUTNM = "soft_lutpair98" *) 
  LUT4 #(
    .INIT(16'hFB02)) 
    gtwiz_reset_tx_pll_and_datapath_int_i_1
       (.I0(sm_reset_all[0]),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .O(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_pll_and_datapath_int_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(gtwiz_reset_tx_pll_and_datapath_int_i_1_n_0),
        .Q(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0),
        .R(gtwiz_reset_all_sync));
  FDRE #(
    .INIT(1'b0)) 
    pllreset_rx_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b1)) 
    pllreset_tx_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .R(1'b0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0),
        .rst_in_out_reg_1(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .in0(gtwiz_reset_rx_datapath_sync),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_17 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_18 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_19 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer_20 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_21 reset_synchronizer_txprogdivreset_inst
       (.drpclk_in(drpclk_in),
        .rst_in0(rst_in0),
        .rst_in_out_reg_0(rst_in_out_reg));
  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__2
       (.I0(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .I1(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(RESET_IN));
  FDRE #(
    .INIT(1'b1)) 
    rxprogdivreset_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_2),
        .Q(\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxuserrdy_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_2),
        .Q(\gen_gtwizard_gthe4.rxuserrdy_int ),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hEFFA200A)) 
    sm_reset_all_timer_clr_i_1
       (.I0(sm_reset_all_timer_clr_i_2_n_0),
        .I1(sm_reset_all[1]),
        .I2(sm_reset_all[2]),
        .I3(sm_reset_all[0]),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_clr_i_1_n_0));
  LUT6 #(
    .INIT(64'h0000B0003333BB33)) 
    sm_reset_all_timer_clr_i_2
       (.I0(gtwiz_reset_rx_done_int_reg_n_0),
        .I1(sm_reset_all[2]),
        .I2(gtwiz_reset_tx_done_int_reg_n_0),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .I5(sm_reset_all[1]),
        .O(sm_reset_all_timer_clr_i_2_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_all_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_clr_i_1_n_0),
        .Q(sm_reset_all_timer_clr_reg_n_0),
        .S(gtwiz_reset_all_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_all_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_all_timer_ctr[0]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .O(\sm_reset_all_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_all_timer_ctr[1]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .O(\sm_reset_all_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair107" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_all_timer_ctr[2]_i_1 
       (.I0(sm_reset_all_timer_ctr[0]),
        .I1(sm_reset_all_timer_ctr[1]),
        .I2(sm_reset_all_timer_ctr[2]),
        .O(\sm_reset_all_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[0]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[1]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_all_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_all_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_all_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_all_timer_ctr[2]),
        .R(sm_reset_all_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_all_timer_sat_i_1
       (.I0(sm_reset_all_timer_ctr[2]),
        .I1(sm_reset_all_timer_ctr[0]),
        .I2(sm_reset_all_timer_ctr[1]),
        .I3(sm_reset_all_timer_sat),
        .I4(sm_reset_all_timer_clr_reg_n_0),
        .O(sm_reset_all_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_all_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_all_timer_sat_i_1_n_0),
        .Q(sm_reset_all_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_cdr_to_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_rxcdrlock_inst_n_1),
        .Q(sm_reset_rx_cdr_to_clr),
        .S(gtwiz_reset_rx_any_sync));
  LUT6 #(
    .INIT(64'h7FFFFFFFFFFFFFFF)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_1 
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ),
        .I1(sm_reset_rx_cdr_to_ctr_reg[11]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[12]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[17]),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ),
        .I5(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ));
  LUT4 #(
    .INIT(16'h8000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_3 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[6]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[3]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[10]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[8]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h0001000000000000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_4 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[4]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[1]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[2]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[0]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[18]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[19]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_4_n_0 ));
  LUT5 #(
    .INIT(32'h00020000)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_5 
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ),
        .I1(sm_reset_rx_cdr_to_ctr_reg[15]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[14]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[16]),
        .I4(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_5_n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_6 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[0]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 ));
  LUT6 #(
    .INIT(64'h0000000000000001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_7 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[24]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[23]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[25]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[20]),
        .I4(sm_reset_rx_cdr_to_ctr_reg[21]),
        .I5(sm_reset_rx_cdr_to_ctr_reg[22]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_7_n_0 ));
  LUT4 #(
    .INIT(16'h0001)) 
    \sm_reset_rx_cdr_to_ctr[0]_i_8 
       (.I0(sm_reset_rx_cdr_to_ctr_reg[13]),
        .I1(sm_reset_rx_cdr_to_ctr_reg[9]),
        .I2(sm_reset_rx_cdr_to_ctr_reg[7]),
        .I3(sm_reset_rx_cdr_to_ctr_reg[5]),
        .O(\sm_reset_rx_cdr_to_ctr[0]_i_8_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[0]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[0]_i_2 
       (.CI(1'b0),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_15 }),
        .S({sm_reset_rx_cdr_to_ctr_reg[7:1],\sm_reset_rx_cdr_to_ctr[0]_i_6_n_0 }));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[10] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[10]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[11] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[11]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[12] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[12]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[13] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[13]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[14] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[14]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[15] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[15]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[16] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[16]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[16]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[23:16]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[17] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[17]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[18] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[18]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[19] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[19]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[1]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[20] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[20]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[21] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[21]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[22] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[22]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[23] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[23]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[24] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[24]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[24]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[16]_i_1_n_0 ),
        .CI_TOP(1'b0),
        .CO({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_CO_UNCONNECTED [7:1],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\NLW_sm_reset_rx_cdr_to_ctr_reg[24]_i_1_O_UNCONNECTED [7:2],\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_15 }),
        .S({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,sm_reset_rx_cdr_to_ctr_reg[25:24]}));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[25] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[24]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[25]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_13 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[2]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_12 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[3]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_11 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[4]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_10 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[5]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_9 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[6]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_8 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[7]),
        .R(sm_reset_rx_cdr_to_clr));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[8]),
        .R(sm_reset_rx_cdr_to_clr));
  (* ADDER_THRESHOLD = "16" *) 
  CARRY8 \sm_reset_rx_cdr_to_ctr_reg[8]_i_1 
       (.CI(\sm_reset_rx_cdr_to_ctr_reg[0]_i_2_n_0 ),
        .CI_TOP(1'b0),
        .CO({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_0 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_1 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_2 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_3 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_4 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_5 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_6 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_7 }),
        .DI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .O({\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_8 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_9 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_10 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_11 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_12 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_13 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ,\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_15 }),
        .S(sm_reset_rx_cdr_to_ctr_reg[15:8]));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_cdr_to_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .D(\sm_reset_rx_cdr_to_ctr_reg[8]_i_1_n_14 ),
        .Q(sm_reset_rx_cdr_to_ctr_reg[9]),
        .R(sm_reset_rx_cdr_to_clr));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_cdr_to_sat_i_1
       (.I0(\sm_reset_rx_cdr_to_ctr[0]_i_1_n_0 ),
        .I1(sm_reset_rx_cdr_to_sat),
        .I2(sm_reset_rx_cdr_to_clr),
        .O(sm_reset_rx_cdr_to_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_cdr_to_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_cdr_to_sat_i_1_n_0),
        .Q(sm_reset_rx_cdr_to_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_rx_pll_timer_clr_i_1
       (.I0(sm_reset_rx_pll_timer_sat),
        .I1(sm_reset_rx[0]),
        .I2(sm_reset_rx[1]),
        .I3(sm_reset_rx[2]),
        .I4(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_pll_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .O(p_0_in__3[0]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .O(p_0_in__3[1]));
  (* SOFT_HLUTNM = "soft_lutpair104" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[2]),
        .O(p_0_in__3[2]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[3]),
        .O(p_0_in__3[3]));
  (* SOFT_HLUTNM = "soft_lutpair96" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[4]),
        .O(p_0_in__3[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_rx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I5(sm_reset_rx_pll_timer_ctr_reg[5]),
        .O(p_0_in__3[5]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg[6]),
        .O(p_0_in__3[6]));
  (* SOFT_HLUTNM = "soft_lutpair101" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_pll_timer_ctr[7]_i_1 
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[7]),
        .O(p_0_in__3[7]));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_rx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[8]),
        .O(p_0_in__3[8]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I5(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair94" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[7]),
        .I1(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_rx_pll_timer_ctr_reg[6]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[8]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[9]),
        .O(p_0_in__3[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[8]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[9]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[4]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[7]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_rx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_rx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_rx_pll_timer_ctr_reg[3]),
        .I2(sm_reset_rx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_rx_pll_timer_ctr_reg[0]),
        .I4(sm_reset_rx_pll_timer_ctr_reg[2]),
        .I5(sm_reset_rx_pll_timer_ctr_reg[4]),
        .O(\sm_reset_rx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[0]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[0]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[1]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[1]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[2]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[2]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[3]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[3]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[4]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[4]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[5]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[5]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[6]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[6]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[7]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[7]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[8]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[8]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_pll_timer_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .D(p_0_in__3[9]),
        .Q(sm_reset_rx_pll_timer_ctr_reg[9]),
        .R(sm_reset_rx_pll_timer_clr_reg_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_rx_pll_timer_sat_i_1
       (.I0(\sm_reset_rx_pll_timer_ctr[9]_i_1_n_0 ),
        .I1(sm_reset_rx_pll_timer_sat),
        .I2(sm_reset_rx_pll_timer_clr_reg_n_0),
        .O(sm_reset_rx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_pll_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_pll_timer_sat),
        .R(1'b0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_rx_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_rx_active_inst_n_1),
        .Q(sm_reset_rx_timer_clr_reg_n_0),
        .S(gtwiz_reset_rx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_rx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_rx_timer_ctr[0]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .O(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_rx_timer_ctr[1]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .O(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair106" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_rx_timer_ctr[2]_i_1 
       (.I0(sm_reset_rx_timer_ctr[0]),
        .I1(sm_reset_rx_timer_ctr[1]),
        .I2(sm_reset_rx_timer_ctr[2]),
        .O(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[0]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[1]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_rx_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(\sm_reset_rx_timer_ctr0_inferred__0/i__n_0 ),
        .D(\sm_reset_rx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_rx_timer_ctr[2]),
        .R(sm_reset_rx_timer_clr_reg_n_0));
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_rx_timer_sat_i_1
       (.I0(sm_reset_rx_timer_ctr[2]),
        .I1(sm_reset_rx_timer_ctr[0]),
        .I2(sm_reset_rx_timer_ctr[1]),
        .I3(sm_reset_rx_timer_sat),
        .I4(sm_reset_rx_timer_clr_reg_n_0),
        .O(sm_reset_rx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_rx_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_rx_timer_sat_i_1_n_0),
        .Q(sm_reset_rx_timer_sat),
        .R(1'b0));
  LUT5 #(
    .INIT(32'hFFF3000B)) 
    sm_reset_tx_pll_timer_clr_i_1
       (.I0(sm_reset_tx_pll_timer_sat),
        .I1(sm_reset_tx[0]),
        .I2(sm_reset_tx[1]),
        .I3(sm_reset_tx[2]),
        .I4(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_clr_i_1_n_0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_pll_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_clr_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_pll_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .O(p_0_in__2[0]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .O(p_0_in__2[1]));
  (* SOFT_HLUTNM = "soft_lutpair103" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[2]),
        .O(p_0_in__2[2]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[3]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[3]),
        .O(p_0_in__2[3]));
  (* SOFT_HLUTNM = "soft_lutpair95" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[4]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[4]),
        .O(p_0_in__2[4]));
  LUT6 #(
    .INIT(64'h7FFFFFFF80000000)) 
    \sm_reset_tx_pll_timer_ctr[5]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I5(sm_reset_tx_pll_timer_ctr_reg[5]),
        .O(p_0_in__2[5]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_pll_timer_ctr[6]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg[6]),
        .O(p_0_in__2[6]));
  (* SOFT_HLUTNM = "soft_lutpair100" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_pll_timer_ctr[7]_i_1 
       (.I0(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I1(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[7]),
        .O(p_0_in__2[7]));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT4 #(
    .INIT(16'h7F80)) 
    \sm_reset_tx_pll_timer_ctr[8]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg[7]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[8]),
        .O(p_0_in__2[8]));
  LUT6 #(
    .INIT(64'hFFFFFFF7FFFFFFFF)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_1 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I5(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ),
        .O(sel));
  (* SOFT_HLUTNM = "soft_lutpair93" *) 
  LUT5 #(
    .INIT(32'h7FFF8000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_2 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[7]),
        .I1(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ),
        .I2(sm_reset_tx_pll_timer_ctr_reg[6]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[8]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[9]),
        .O(p_0_in__2[9]));
  LUT5 #(
    .INIT(32'h00000001)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_3 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[8]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[9]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[4]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[7]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_3_n_0 ));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    \sm_reset_tx_pll_timer_ctr[9]_i_4 
       (.I0(sm_reset_tx_pll_timer_ctr_reg[5]),
        .I1(sm_reset_tx_pll_timer_ctr_reg[3]),
        .I2(sm_reset_tx_pll_timer_ctr_reg[1]),
        .I3(sm_reset_tx_pll_timer_ctr_reg[0]),
        .I4(sm_reset_tx_pll_timer_ctr_reg[2]),
        .I5(sm_reset_tx_pll_timer_ctr_reg[4]),
        .O(\sm_reset_tx_pll_timer_ctr[9]_i_4_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[0]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[0]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[1]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[1]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[2]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[2]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[3] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[3]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[3]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[4] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[4]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[4]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[5] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[5]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[5]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[6] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[6]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[6]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[7] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[7]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[7]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[8] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[8]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[8]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_pll_timer_ctr_reg[9] 
       (.C(drpclk_in),
        .CE(sel),
        .D(p_0_in__2[9]),
        .Q(sm_reset_tx_pll_timer_ctr_reg[9]),
        .R(sm_reset_tx_pll_timer_clr_reg_n_0));
  LUT3 #(
    .INIT(8'h0D)) 
    sm_reset_tx_pll_timer_sat_i_1
       (.I0(sel),
        .I1(sm_reset_tx_pll_timer_sat),
        .I2(sm_reset_tx_pll_timer_clr_reg_n_0),
        .O(sm_reset_tx_pll_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_pll_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_pll_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_pll_timer_sat),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT2 #(
    .INIT(4'h2)) 
    sm_reset_tx_timer_clr_i_4
       (.I0(sm_reset_tx_timer_sat),
        .I1(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_clr013_out__0));
  FDSE #(
    .INIT(1'b1)) 
    sm_reset_tx_timer_clr_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_1),
        .Q(sm_reset_tx_timer_clr_reg_n_0),
        .S(gtwiz_reset_tx_any_sync));
  LUT3 #(
    .INIT(8'h7F)) 
    \sm_reset_tx_timer_ctr0_inferred__0/i_ 
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .O(p_0_in));
  LUT1 #(
    .INIT(2'h1)) 
    \sm_reset_tx_timer_ctr[0]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .O(\sm_reset_tx_timer_ctr[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT2 #(
    .INIT(4'h6)) 
    \sm_reset_tx_timer_ctr[1]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .O(\sm_reset_tx_timer_ctr[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair105" *) 
  LUT3 #(
    .INIT(8'h78)) 
    \sm_reset_tx_timer_ctr[2]_i_1 
       (.I0(sm_reset_tx_timer_ctr[0]),
        .I1(sm_reset_tx_timer_ctr[1]),
        .I2(sm_reset_tx_timer_ctr[2]),
        .O(\sm_reset_tx_timer_ctr[2]_i_1_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[0] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[0]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[0]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[1] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[1]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[1]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  FDRE #(
    .INIT(1'b0)) 
    \sm_reset_tx_timer_ctr_reg[2] 
       (.C(drpclk_in),
        .CE(p_0_in),
        .D(\sm_reset_tx_timer_ctr[2]_i_1_n_0 ),
        .Q(sm_reset_tx_timer_ctr[2]),
        .R(sm_reset_tx_timer_clr_reg_n_0));
  (* SOFT_HLUTNM = "soft_lutpair97" *) 
  LUT5 #(
    .INIT(32'h0000FF80)) 
    sm_reset_tx_timer_sat_i_1
       (.I0(sm_reset_tx_timer_ctr[2]),
        .I1(sm_reset_tx_timer_ctr[0]),
        .I2(sm_reset_tx_timer_ctr[1]),
        .I3(sm_reset_tx_timer_sat),
        .I4(sm_reset_tx_timer_clr_reg_n_0),
        .O(sm_reset_tx_timer_sat_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    sm_reset_tx_timer_sat_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(sm_reset_tx_timer_sat_i_1_n_0),
        .Q(sm_reset_tx_timer_sat),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txuserrdy_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(bit_synchronizer_gtwiz_reset_userclk_tx_active_inst_n_2),
        .Q(\gen_gtwizard_gthe4.txuserrdy_int ),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer
   (gtwiz_reset_rx_done_out,
    rxusrclk_in,
    rst_in_sync2_reg_0);
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxusrclk_in;
  input rst_in_sync2_reg_0;

  wire [0:0]gtwiz_reset_rx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1__0_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  wire rst_in_sync2_reg_0;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1__0
       (.I0(rst_in_sync2_reg_0),
        .O(rst_in_out_i_1__0_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_rx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1__0_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer_20
   (gtwiz_reset_tx_done_out,
    rxusrclk_in,
    rst_in_sync2_reg_0);
  output [0:0]gtwiz_reset_tx_done_out;
  input [0:0]rxusrclk_in;
  input rst_in_sync2_reg_0;

  wire [0:0]gtwiz_reset_tx_done_out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_i_1_n_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  wire rst_in_sync2_reg_0;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire [0:0]rxusrclk_in;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(1'b1),
        .Q(rst_in_meta));
  LUT1 #(
    .INIT(2'h1)) 
    rst_in_out_i_1
       (.I0(rst_in_sync2_reg_0),
        .O(rst_in_out_i_1_n_0));
  FDCE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync3),
        .Q(gtwiz_reset_tx_done_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_meta),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDCE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(rxusrclk_in),
        .CE(1'b1),
        .CLR(rst_in_out_i_1_n_0),
        .D(rst_in_sync2),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer
   (gtwiz_reset_all_sync,
    drpclk_in,
    gtwiz_reset_all_in);
  output gtwiz_reset_all_sync;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_all_in;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_all_in;
  wire gtwiz_reset_all_sync;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_all_in),
        .Q(gtwiz_reset_all_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_all_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_14
   (gtwiz_reset_rx_any_sync,
    \FSM_sequential_sm_reset_rx_reg[1] ,
    drpclk_in,
    Q,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ,
    rst_in_out_reg_0,
    gtwiz_reset_rx_datapath_in,
    rst_in_out_reg_1);
  output gtwiz_reset_rx_any_sync;
  output \FSM_sequential_sm_reset_rx_reg[1] ;
  input [0:0]drpclk_in;
  input [2:0]Q;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  input rst_in_out_reg_0;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input rst_in_out_reg_1;

  wire \FSM_sequential_sm_reset_rx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ;
  wire gtwiz_reset_rx_any;
  wire gtwiz_reset_rx_any_sync;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  wire rst_in_out_reg_1;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_rx_out_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(gtwiz_reset_rx_any_sync),
        .I4(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .O(\FSM_sequential_sm_reset_rx_reg[1] ));
  LUT3 #(
    .INIT(8'hFE)) 
    rst_in_meta_i_1
       (.I0(rst_in_out_reg_0),
        .I1(gtwiz_reset_rx_datapath_in),
        .I2(rst_in_out_reg_1),
        .O(gtwiz_reset_rx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_rx_any),
        .Q(gtwiz_reset_rx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_rx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_15
   (in0,
    drpclk_in,
    gtwiz_reset_rx_datapath_in,
    rst_in_out_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input rst_in_out_reg_0;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire in0;
  wire rst_in0_0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__0
       (.I0(gtwiz_reset_rx_datapath_in),
        .I1(rst_in_out_reg_0),
        .O(rst_in0_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_16
   (in0,
    drpclk_in,
    rst_in_meta_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input rst_in_meta_reg_0;

  wire [0:0]drpclk_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_meta_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in_meta_reg_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_17
   (gtwiz_reset_tx_any_sync,
    \FSM_sequential_sm_reset_tx_reg[1] ,
    drpclk_in,
    gtwiz_reset_tx_datapath_in,
    rst_in_out_reg_0,
    Q,
    \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int );
  output gtwiz_reset_tx_any_sync;
  output \FSM_sequential_sm_reset_tx_reg[1] ;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input rst_in_out_reg_0;
  input [2:0]Q;
  input \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;

  wire \FSM_sequential_sm_reset_tx_reg[1] ;
  wire [2:0]Q;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ;
  wire gtwiz_reset_tx_any;
  wire gtwiz_reset_tx_any_sync;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  LUT5 #(
    .INIT(32'hFFDF0010)) 
    pllreset_tx_out_i_1
       (.I0(Q[1]),
        .I1(Q[2]),
        .I2(Q[0]),
        .I3(gtwiz_reset_tx_any_sync),
        .I4(\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .O(\FSM_sequential_sm_reset_tx_reg[1] ));
  LUT2 #(
    .INIT(4'hE)) 
    rst_in_meta_i_1__1
       (.I0(gtwiz_reset_tx_datapath_in),
        .I1(rst_in_out_reg_0),
        .O(gtwiz_reset_tx_any));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_any),
        .Q(gtwiz_reset_tx_any_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_any),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_18
   (in0,
    drpclk_in,
    gtwiz_reset_tx_datapath_in);
  output in0;
  input [0:0]drpclk_in;
  input [0:0]gtwiz_reset_tx_datapath_in;

  wire [0:0]drpclk_in;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(gtwiz_reset_tx_datapath_in),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_19
   (in0,
    drpclk_in,
    rst_in_meta_reg_0);
  output in0;
  input [0:0]drpclk_in;
  input rst_in_meta_reg_0;

  wire [0:0]drpclk_in;
  wire in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_meta_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in_meta_reg_0),
        .Q(in0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in_meta_reg_0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_21
   (rst_in_out_reg_0,
    drpclk_in,
    rst_in0);
  output rst_in_out_reg_0;
  input [0:0]drpclk_in;
  input rst_in0;

  wire [0:0]drpclk_in;
  wire rst_in0;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out_reg_0;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(rst_in0),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(rst_in0),
        .Q(rst_in_out_reg_0));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(rst_in0),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(rst_in0),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(rst_in0),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_23
   (drpclk_in);
  input [0:0]drpclk_in;

  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(1'b1),
        .Q(rst_in_meta));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(1'b1),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(1'b1),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(1'b1),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_24
   (cal_on_tx_reset_in_sync,
    drpclk_in,
    RESET_IN);
  output cal_on_tx_reset_in_sync;
  input [0:0]drpclk_in;
  input RESET_IN;

  wire RESET_IN;
  wire cal_on_tx_reset_in_sync;
  wire [0:0]drpclk_in;
  (* async_reg = "true" *) wire rst_in_meta;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(1'b0),
        .PRE(RESET_IN),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(RESET_IN),
        .Q(cal_on_tx_reset_in_sync));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(RESET_IN),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(RESET_IN),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(drpclk_in),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(RESET_IN),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "gtwizard_ultrascale_v1_7_9_reset_synchronizer" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_reset_synchronizer_31
   (rst_in_out,
    txoutclkmon,
    out);
  output rst_in_out;
  input txoutclkmon;
  input out;

  wire out;
  (* async_reg = "true" *) wire rst_in_meta;
  wire rst_in_out;
  (* async_reg = "true" *) wire rst_in_sync1;
  (* async_reg = "true" *) wire rst_in_sync2;
  (* async_reg = "true" *) wire rst_in_sync3;
  wire txoutclkmon;

  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_meta_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(1'b0),
        .PRE(out),
        .Q(rst_in_meta));
  FDPE #(
    .INIT(1'b0)) 
    rst_in_out_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync3),
        .PRE(out),
        .Q(rst_in_out));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync1_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_meta),
        .PRE(out),
        .Q(rst_in_sync1));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync2_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync1),
        .PRE(out),
        .Q(rst_in_sync2));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE #(
    .INIT(1'b0)) 
    rst_in_sync3_reg
       (.C(txoutclkmon),
        .CE(1'b1),
        .D(rst_in_sync2),
        .PRE(out),
        .Q(rst_in_sync3));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_block" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_block
   (gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    status_vector,
    resetdone,
    txn,
    txp,
    gtpowergood,
    rxoutclk_out,
    txoutclk_out,
    pma_reset_out,
    signal_detect,
    userclk2,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    configuration_vector,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_out,
    CLK,
    rxuserclk2,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  output [6:0]status_vector;
  output resetdone;
  output txn;
  output txp;
  output gtpowergood;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  input pma_reset_out;
  input signal_detect;
  input userclk2;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  input [2:0]configuration_vector;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input CLK;
  input rxuserclk2;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire CLK;
  wire [2:0]configuration_vector;
  wire enablealign;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_out;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire mgt_rx_reset;
  wire mgt_tx_reset;
  wire pma_reset_out;
  wire powerdown;
  wire resetdone;
  wire resetdone_i;
  wire [1:1]rxbufstatus;
  wire rxchariscomma;
  wire rxcharisk;
  wire [1:0]rxclkcorcnt;
  wire [7:0]rxdata;
  wire rxdisperr;
  wire rxn;
  wire rxnotintable;
  wire [0:0]rxoutclk_out;
  wire rxp;
  wire rxuserclk2;
  wire signal_detect;
  wire [6:0]status_vector;
  wire txbuferr;
  wire txchardispmode;
  wire txchardispval;
  wire txcharisk;
  wire [7:0]txdata;
  wire txn;
  wire [0:0]txoutclk_out;
  wire txp;
  wire userclk2;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_an_enable_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_an_interrupt_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_den_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_dwe_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_req_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_en_cdet_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_ewrap_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_loc_ref_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_mdio_out_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_mdio_tri_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_arready_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_awready_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_bvalid_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rvalid_UNCONNECTED;
  wire NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_wready_UNCONNECTED;
  wire [9:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_daddr_UNCONNECTED;
  wire [15:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_di_UNCONNECTED;
  wire [63:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_correction_timer_UNCONNECTED;
  wire [31:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_ns_field_UNCONNECTED;
  wire [47:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_s_field_UNCONNECTED;
  wire [1:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_bresp_UNCONNECTED;
  wire [31:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rdata_UNCONNECTED;
  wire [1:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rresp_UNCONNECTED;
  wire [1:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_speed_selection_UNCONNECTED;
  wire [15:7]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_status_vector_UNCONNECTED;
  wire [9:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_tx_code_group_UNCONNECTED;

  (* B_SHIFTER_ADDR = "10'b1001010000" *) 
  (* C_1588 = "0" *) 
  (* C_2_5G = "FALSE" *) 
  (* C_COMPONENT_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0" *) 
  (* C_DYNAMIC_SWITCHING = "FALSE" *) 
  (* C_ELABORATION_TRANSIENT_DIR = "BlankString" *) 
  (* C_FAMILY = "zynquplus" *) 
  (* C_HAS_AN = "FALSE" *) 
  (* C_HAS_AXIL = "FALSE" *) 
  (* C_HAS_MDIO = "FALSE" *) 
  (* C_HAS_TEMAC = "TRUE" *) 
  (* C_IS_SGMII = "FALSE" *) 
  (* C_RX_GMII_CLK = "TXOUTCLK" *) 
  (* C_SGMII_FABRIC_BUFFER = "TRUE" *) 
  (* C_SGMII_PHY_MODE = "FALSE" *) 
  (* C_USE_LVDS = "FALSE" *) 
  (* C_USE_TBI = "FALSE" *) 
  (* C_USE_TRANSCEIVER = "TRUE" *) 
  (* GT_RX_BYTE_WIDTH = "1" *) 
  (* KEEP_HIERARCHY = "soft" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gig_ethernet_pcs_pma_v16_2_1 mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core
       (.an_adv_config_val(1'b0),
        .an_adv_config_vector({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .an_enable(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_an_enable_UNCONNECTED),
        .an_interrupt(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_an_interrupt_UNCONNECTED),
        .an_restart_config(1'b0),
        .basex_or_sgmii(1'b0),
        .configuration_valid(1'b0),
        .configuration_vector({1'b0,configuration_vector,1'b0}),
        .correction_timer({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .dcm_locked(1'b1),
        .drp_daddr(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_daddr_UNCONNECTED[9:0]),
        .drp_dclk(1'b0),
        .drp_den(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_den_UNCONNECTED),
        .drp_di(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_di_UNCONNECTED[15:0]),
        .drp_do({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drp_drdy(1'b0),
        .drp_dwe(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_dwe_UNCONNECTED),
        .drp_gnt(1'b0),
        .drp_req(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_drp_req_UNCONNECTED),
        .en_cdet(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_en_cdet_UNCONNECTED),
        .enablealign(enablealign),
        .ewrap(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_ewrap_UNCONNECTED),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtx_clk(1'b0),
        .link_timer_basex({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_sgmii({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .link_timer_value({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .loc_ref(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_loc_ref_UNCONNECTED),
        .mdc(1'b0),
        .mdio_in(1'b0),
        .mdio_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_mdio_out_UNCONNECTED),
        .mdio_tri(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_mdio_tri_UNCONNECTED),
        .mgt_rx_reset(mgt_rx_reset),
        .mgt_tx_reset(mgt_tx_reset),
        .phyad({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pma_rx_clk0(1'b0),
        .pma_rx_clk1(1'b0),
        .powerdown(powerdown),
        .reset(pma_reset_out),
        .reset_done(resetdone),
        .rx_code_group0({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_code_group1({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx_gt_nominal_latency({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0}),
        .rxbufstatus({rxbufstatus,1'b0}),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .rxclkcorcnt({1'b0,rxclkcorcnt}),
        .rxdata(rxdata),
        .rxdisperr(rxdisperr),
        .rxnotintable(rxnotintable),
        .rxphy_correction_timer(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_correction_timer_UNCONNECTED[63:0]),
        .rxphy_ns_field(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_ns_field_UNCONNECTED[31:0]),
        .rxphy_s_field(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_rxphy_s_field_UNCONNECTED[47:0]),
        .rxrecclk(1'b0),
        .rxrundisp(1'b0),
        .s_axi_aclk(1'b0),
        .s_axi_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_arready(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_arready_UNCONNECTED),
        .s_axi_arvalid(1'b0),
        .s_axi_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_awready(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_awready_UNCONNECTED),
        .s_axi_awvalid(1'b0),
        .s_axi_bready(1'b0),
        .s_axi_bresp(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_bresp_UNCONNECTED[1:0]),
        .s_axi_bvalid(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_bvalid_UNCONNECTED),
        .s_axi_rdata(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rdata_UNCONNECTED[31:0]),
        .s_axi_resetn(1'b0),
        .s_axi_rready(1'b0),
        .s_axi_rresp(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rresp_UNCONNECTED[1:0]),
        .s_axi_rvalid(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_rvalid_UNCONNECTED),
        .s_axi_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axi_wready(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_s_axi_wready_UNCONNECTED),
        .s_axi_wvalid(1'b0),
        .signal_detect(signal_detect),
        .speed_is_100(1'b0),
        .speed_is_10_100(1'b0),
        .speed_selection(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_speed_selection_UNCONNECTED[1:0]),
        .status_vector({NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_status_vector_UNCONNECTED[15:7],status_vector}),
        .systemtimer_ns_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .systemtimer_s_field({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx_code_group(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core_tx_code_group_UNCONNECTED[9:0]),
        .txbuferr(txbuferr),
        .txchardispmode(txchardispmode),
        .txchardispval(txchardispval),
        .txcharisk(txcharisk),
        .txdata(txdata),
        .userclk(1'b0),
        .userclk2(userclk2));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sync_block sync_block_reset_done
       (.data_in(resetdone_i),
        .resetdone(resetdone),
        .userclk2(userclk2));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_transceiver transceiver_inst
       (.CLK(CLK),
        .D(txchardispval),
        .Q(rxclkcorcnt),
        .SR(mgt_rx_reset),
        .data_in(resetdone_i),
        .enablealign(enablealign),
        .gtpowergood(gtpowergood),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .pma_reset_out(pma_reset_out),
        .powerdown(powerdown),
        .reset_sync5(mgt_tx_reset),
        .rxbufstatus(rxbufstatus),
        .rxchariscomma(rxchariscomma),
        .rxcharisk(rxcharisk),
        .\rxdata_reg[7]_0 (rxdata),
        .rxdisperr(rxdisperr),
        .rxn(rxn),
        .rxnotintable(rxnotintable),
        .rxoutclk_out(rxoutclk_out),
        .rxp(rxp),
        .rxuserclk2(rxuserclk2),
        .txbuferr(txbuferr),
        .txchardispmode_reg_reg_0(txchardispmode),
        .txcharisk_reg_reg_0(txcharisk),
        .\txdata_reg_reg[7]_0 (txdata),
        .txn(txn),
        .txoutclk_out(txoutclk_out),
        .txp(txp),
        .userclk2(userclk2));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_clocking" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_clocking
   (gtrefclk_out,
    userclk2,
    userclk,
    rxuserclk2,
    gtrefclk_p,
    gtrefclk_n,
    txoutclk,
    rxoutclk,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output gtrefclk_out;
  output userclk2;
  output userclk;
  output rxuserclk2;
  input gtrefclk_p;
  input gtrefclk_n;
  input txoutclk;
  input rxoutclk;
  output lopt;
  output lopt_1;
  input lopt_2;
  input lopt_3;
  input lopt_4;
  input lopt_5;

  wire \<const1> ;
  wire GND_2;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire \^lopt ;
  wire \^lopt_1 ;
  wire \^lopt_2 ;
  wire \^lopt_3 ;
  wire rxoutclk;
  wire rxuserclk2;
  wire txoutclk;
  wire userclk;
  wire userclk2;
  wire NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED;

  assign \^lopt  = lopt_2;
  assign \^lopt_1  = lopt_3;
  assign \^lopt_2  = lopt_4;
  assign \^lopt_3  = lopt_5;
  assign lopt = \<const1> ;
  assign lopt_1 = GND_2;
  GND GND_1
       (.G(GND_2));
  VCC VCC
       (.P(\<const1> ));
  (* box_type = "PRIMITIVE" *) 
  IBUFDS_GTE4 #(
    .REFCLK_EN_TX_PATH(1'b0),
    .REFCLK_HROW_CK_SEL(2'b00),
    .REFCLK_ICNTL_RX(2'b00)) 
    ibufds_gtrefclk
       (.CEB(1'b0),
        .I(gtrefclk_p),
        .IB(gtrefclk_n),
        .O(gtrefclk_out),
        .ODIV2(NLW_ibufds_gtrefclk_ODIV2_UNCONNECTED));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    rxrecclk_bufg_inst
       (.CE(\^lopt ),
        .CEMASK(1'b0),
        .CLR(\^lopt_1 ),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(rxoutclk),
        .O(rxuserclk2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    usrclk2_bufg_inst
       (.CE(\^lopt_2 ),
        .CEMASK(1'b0),
        .CLR(\^lopt_3 ),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b0}),
        .I(txoutclk),
        .O(userclk2));
  (* OPT_MODIFIED = "MLO" *) 
  (* box_type = "PRIMITIVE" *) 
  BUFG_GT #(
    .SIM_DEVICE("ULTRASCALE"),
    .STARTUP_SYNC("FALSE")) 
    usrclk_bufg_inst
       (.CE(\^lopt_2 ),
        .CEMASK(1'b0),
        .CLR(\^lopt_3 ),
        .CLRMASK(1'b0),
        .DIV({1'b0,1'b0,1'b1}),
        .I(txoutclk),
        .O(userclk));
endmodule

(* CHECK_LICENSE_TYPE = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt,mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt" *) 
(* X_CORE_INFO = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,Vivado 2020.2" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    cpllrefclksel_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drpwe_in,
    eyescanreset_in,
    eyescantrigger_in,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    gtrefclk1_in,
    loopback_in,
    pcsrsvdin_in,
    rx8b10ben_in,
    rxbufreset_in,
    rxcdrhold_in,
    rxcommadeten_in,
    rxdfelpmreset_in,
    rxlpmen_in,
    rxmcommaalignen_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxrate_in,
    rxusrclk_in,
    rxusrclk2_in,
    tx8b10ben_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdiffctrl_in,
    txelecidle_in,
    txinhibit_in,
    txpcsreset_in,
    txpd_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txusrclk_in,
    txusrclk2_in,
    cplllock_out,
    dmonitorout_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxclkcorcnt_out,
    rxcommadet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxoutclk_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxresetdone_out,
    txbufstatus_out,
    txoutclk_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txresetdone_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [15:0]gtwiz_userdata_tx_in;
  output [15:0]gtwiz_userdata_rx_out;
  input [2:0]cpllrefclksel_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drpwe_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [2:0]loopback_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcommadeten_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [2:0]rxrate_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]tx8b10ben_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txelecidle_in;
  input [0:0]txinhibit_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]cplllock_out;
  output [15:0]dmonitorout_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcommadet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxresetdone_out;
  output [1:0]txbufstatus_out;
  output [0:0]txoutclk_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txresetdone_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire \<const0> ;
  wire [0:0]drpclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [2:2]\^rxbufstatus_out ;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]\^rxctrl0_out ;
  wire [1:0]\^rxctrl1_out ;
  wire [1:0]\^rxctrl2_out ;
  wire [1:0]\^rxctrl3_out ;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [1:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [1:1]\^txbufstatus_out ;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]NLW_inst_bufgtce_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtcemask_out_UNCONNECTED;
  wire [8:0]NLW_inst_bufgtdiv_out_UNCONNECTED;
  wire [0:0]NLW_inst_bufgtreset_out_UNCONNECTED;
  wire [2:0]NLW_inst_bufgtrstmask_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllfbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_cplllock_out_UNCONNECTED;
  wire [0:0]NLW_inst_cpllrefclklost_out_UNCONNECTED;
  wire [15:0]NLW_inst_dmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_dmonitoroutclk_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_common_out_UNCONNECTED;
  wire [15:0]NLW_inst_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_common_out_UNCONNECTED;
  wire [0:0]NLW_inst_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtrefclkmonitor_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxn_out_UNCONNECTED;
  wire [0:0]NLW_inst_gtytxp_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierategen3_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcierateidle_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllpd_out_UNCONNECTED;
  wire [1:0]NLW_inst_pcierateqpllreset_out_UNCONNECTED;
  wire [0:0]NLW_inst_pciesynctxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieusergen3rdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserphystatusrst_out_UNCONNECTED;
  wire [0:0]NLW_inst_pcieuserratestart_out_UNCONNECTED;
  wire [15:0]NLW_inst_pcsrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_phystatus_out_UNCONNECTED;
  wire [15:0]NLW_inst_pinrsrvdas_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout0_out_UNCONNECTED;
  wire [7:0]NLW_inst_pmarsvdout1_out_UNCONNECTED;
  wire [0:0]NLW_inst_powerpresent_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll0refclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1fbclklost_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1lock_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1outrefclk_out_UNCONNECTED;
  wire [0:0]NLW_inst_qpll1refclklost_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor0_out_UNCONNECTED;
  wire [7:0]NLW_inst_qplldmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor0_out_UNCONNECTED;
  wire [0:0]NLW_inst_refclkoutmonitor1_out_UNCONNECTED;
  wire [0:0]NLW_inst_resetexception_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrlock_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcdrphdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanbondseq_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanisaligned_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxchanrealign_out_UNCONNECTED;
  wire [4:0]NLW_inst_rxchbondo_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxckcaldone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcominitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcommadet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomsasdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxcomwakedet_out_UNCONNECTED;
  wire [15:2]NLW_inst_rxctrl0_out_UNCONNECTED;
  wire [15:2]NLW_inst_rxctrl1_out_UNCONNECTED;
  wire [7:2]NLW_inst_rxctrl2_out_UNCONNECTED;
  wire [7:2]NLW_inst_rxctrl3_out_UNCONNECTED;
  wire [127:0]NLW_inst_rxdata_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxdataextendrsvd_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxdatavalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxelecidle_out_UNCONNECTED;
  wire [5:0]NLW_inst_rxheader_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxheadervalid_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpstresetdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED;
  wire [7:0]NLW_inst_rxmonitorout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxosintstrobestarted_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxphalignerr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprbslocked_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk0_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk0sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclk1_sel_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxrecclk1sel_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxrecclkout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsliderdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslipoutclkrdy_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxslippmardy_out_UNCONNECTED;
  wire [1:0]NLW_inst_rxstartofseq_out_UNCONNECTED;
  wire [2:0]NLW_inst_rxstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_rxvalid_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm0finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm0testdata_out_UNCONNECTED;
  wire [3:0]NLW_inst_sdm1finalout_out_UNCONNECTED;
  wire [14:0]NLW_inst_sdm1testdata_out_UNCONNECTED;
  wire [9:0]NLW_inst_tcongpo_out_UNCONNECTED;
  wire [0:0]NLW_inst_tconrsvdout0_out_UNCONNECTED;
  wire [0:0]NLW_inst_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_inst_txcomfinish_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdccdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txdlysresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkfabric_out_UNCONNECTED;
  wire [0:0]NLW_inst_txoutclkpcs_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphaligndone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txphinitdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenn_out_UNCONNECTED;
  wire [0:0]NLW_inst_txqpisenp_out_UNCONNECTED;
  wire [0:0]NLW_inst_txratedone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txresetdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncdone_out_UNCONNECTED;
  wire [0:0]NLW_inst_txsyncout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdaddr_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubden_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdi_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubdwe_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubmdmtdo_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubrsvdout_out_UNCONNECTED;
  wire [0:0]NLW_inst_ubtxuart_out_UNCONNECTED;

  assign cplllock_out[0] = \<const0> ;
  assign dmonitorout_out[15] = \<const0> ;
  assign dmonitorout_out[14] = \<const0> ;
  assign dmonitorout_out[13] = \<const0> ;
  assign dmonitorout_out[12] = \<const0> ;
  assign dmonitorout_out[11] = \<const0> ;
  assign dmonitorout_out[10] = \<const0> ;
  assign dmonitorout_out[9] = \<const0> ;
  assign dmonitorout_out[8] = \<const0> ;
  assign dmonitorout_out[7] = \<const0> ;
  assign dmonitorout_out[6] = \<const0> ;
  assign dmonitorout_out[5] = \<const0> ;
  assign dmonitorout_out[4] = \<const0> ;
  assign dmonitorout_out[3] = \<const0> ;
  assign dmonitorout_out[2] = \<const0> ;
  assign dmonitorout_out[1] = \<const0> ;
  assign dmonitorout_out[0] = \<const0> ;
  assign drpdo_out[15] = \<const0> ;
  assign drpdo_out[14] = \<const0> ;
  assign drpdo_out[13] = \<const0> ;
  assign drpdo_out[12] = \<const0> ;
  assign drpdo_out[11] = \<const0> ;
  assign drpdo_out[10] = \<const0> ;
  assign drpdo_out[9] = \<const0> ;
  assign drpdo_out[8] = \<const0> ;
  assign drpdo_out[7] = \<const0> ;
  assign drpdo_out[6] = \<const0> ;
  assign drpdo_out[5] = \<const0> ;
  assign drpdo_out[4] = \<const0> ;
  assign drpdo_out[3] = \<const0> ;
  assign drpdo_out[2] = \<const0> ;
  assign drpdo_out[1] = \<const0> ;
  assign drpdo_out[0] = \<const0> ;
  assign drprdy_out[0] = \<const0> ;
  assign eyescandataerror_out[0] = \<const0> ;
  assign gtwiz_reset_rx_cdr_stable_out[0] = \<const0> ;
  assign rxbufstatus_out[2] = \^rxbufstatus_out [2];
  assign rxbufstatus_out[1] = \<const0> ;
  assign rxbufstatus_out[0] = \<const0> ;
  assign rxbyteisaligned_out[0] = \<const0> ;
  assign rxbyterealign_out[0] = \<const0> ;
  assign rxcommadet_out[0] = \<const0> ;
  assign rxctrl0_out[15] = \<const0> ;
  assign rxctrl0_out[14] = \<const0> ;
  assign rxctrl0_out[13] = \<const0> ;
  assign rxctrl0_out[12] = \<const0> ;
  assign rxctrl0_out[11] = \<const0> ;
  assign rxctrl0_out[10] = \<const0> ;
  assign rxctrl0_out[9] = \<const0> ;
  assign rxctrl0_out[8] = \<const0> ;
  assign rxctrl0_out[7] = \<const0> ;
  assign rxctrl0_out[6] = \<const0> ;
  assign rxctrl0_out[5] = \<const0> ;
  assign rxctrl0_out[4] = \<const0> ;
  assign rxctrl0_out[3] = \<const0> ;
  assign rxctrl0_out[2] = \<const0> ;
  assign rxctrl0_out[1:0] = \^rxctrl0_out [1:0];
  assign rxctrl1_out[15] = \<const0> ;
  assign rxctrl1_out[14] = \<const0> ;
  assign rxctrl1_out[13] = \<const0> ;
  assign rxctrl1_out[12] = \<const0> ;
  assign rxctrl1_out[11] = \<const0> ;
  assign rxctrl1_out[10] = \<const0> ;
  assign rxctrl1_out[9] = \<const0> ;
  assign rxctrl1_out[8] = \<const0> ;
  assign rxctrl1_out[7] = \<const0> ;
  assign rxctrl1_out[6] = \<const0> ;
  assign rxctrl1_out[5] = \<const0> ;
  assign rxctrl1_out[4] = \<const0> ;
  assign rxctrl1_out[3] = \<const0> ;
  assign rxctrl1_out[2] = \<const0> ;
  assign rxctrl1_out[1:0] = \^rxctrl1_out [1:0];
  assign rxctrl2_out[7] = \<const0> ;
  assign rxctrl2_out[6] = \<const0> ;
  assign rxctrl2_out[5] = \<const0> ;
  assign rxctrl2_out[4] = \<const0> ;
  assign rxctrl2_out[3] = \<const0> ;
  assign rxctrl2_out[2] = \<const0> ;
  assign rxctrl2_out[1:0] = \^rxctrl2_out [1:0];
  assign rxctrl3_out[7] = \<const0> ;
  assign rxctrl3_out[6] = \<const0> ;
  assign rxctrl3_out[5] = \<const0> ;
  assign rxctrl3_out[4] = \<const0> ;
  assign rxctrl3_out[3] = \<const0> ;
  assign rxctrl3_out[2] = \<const0> ;
  assign rxctrl3_out[1:0] = \^rxctrl3_out [1:0];
  assign rxpmaresetdone_out[0] = \<const0> ;
  assign rxprbserr_out[0] = \<const0> ;
  assign rxresetdone_out[0] = \<const0> ;
  assign txbufstatus_out[1] = \^txbufstatus_out [1];
  assign txbufstatus_out[0] = \<const0> ;
  assign txpmaresetdone_out[0] = \<const0> ;
  assign txprgdivresetdone_out[0] = \<const0> ;
  assign txresetdone_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  (* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_COMMON_SCALING_FACTOR = "1" *) 
  (* C_CPLL_VCO_FREQUENCY = "2500.000000" *) 
  (* C_ENABLE_COMMON_USRCLK = "0" *) 
  (* C_FORCE_COMMONS = "0" *) 
  (* C_FREERUN_FREQUENCY = "31.250000" *) 
  (* C_GT_REV = "57" *) 
  (* C_GT_TYPE = "2" *) 
  (* C_INCLUDE_CPLL_CAL = "2" *) 
  (* C_LOCATE_COMMON = "0" *) 
  (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) 
  (* C_LOCATE_RESET_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_RX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
  (* C_LOCATE_TX_USER_CLOCKING = "1" *) 
  (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) 
  (* C_PCIE_CORECLK_FREQ = "250" *) 
  (* C_PCIE_ENABLE = "0" *) 
  (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) 
  (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
  (* C_RX_BUFFBYPASS_MODE = "0" *) 
  (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_RX_BUFFER_MODE = "1" *) 
  (* C_RX_CB_DISP = "8'b00000000" *) 
  (* C_RX_CB_K = "8'b00000000" *) 
  (* C_RX_CB_LEN_SEQ = "1" *) 
  (* C_RX_CB_MAX_LEVEL = "1" *) 
  (* C_RX_CB_NUM_SEQ = "0" *) 
  (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_CC_DISP = "8'b00000000" *) 
  (* C_RX_CC_ENABLE = "1" *) 
  (* C_RX_CC_K = "8'b00010001" *) 
  (* C_RX_CC_LEN_SEQ = "2" *) 
  (* C_RX_CC_NUM_SEQ = "2" *) 
  (* C_RX_CC_PERIODICITY = "5000" *) 
  (* C_RX_CC_VAL = "80'b00000000000000000000001011010100101111000000000000000000000000010100000010111100" *) 
  (* C_RX_COMMA_M_ENABLE = "1" *) 
  (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
  (* C_RX_COMMA_P_ENABLE = "1" *) 
  (* C_RX_COMMA_P_VAL = "10'b0101111100" *) 
  (* C_RX_DATA_DECODING = "1" *) 
  (* C_RX_ENABLE = "1" *) 
  (* C_RX_INT_DATA_WIDTH = "20" *) 
  (* C_RX_LINE_RATE = "1.250000" *) 
  (* C_RX_MASTER_CHANNEL_IDX = "110" *) 
  (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) 
  (* C_RX_OUTCLK_FREQUENCY = "62.500000" *) 
  (* C_RX_OUTCLK_SOURCE = "1" *) 
  (* C_RX_PLL_TYPE = "2" *) 
  (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
  (* C_RX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_RX_SLIDE_MODE = "0" *) 
  (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_RX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_RX_USER_DATA_WIDTH = "16" *) 
  (* C_RX_USRCLK2_FREQUENCY = "62.500000" *) 
  (* C_RX_USRCLK_FREQUENCY = "62.500000" *) 
  (* C_SECONDARY_QPLL_ENABLE = "0" *) 
  (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
  (* C_SIM_CPLL_CAL_BYPASS = "1" *) 
  (* C_TOTAL_NUM_CHANNELS = "1" *) 
  (* C_TOTAL_NUM_COMMONS = "0" *) 
  (* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) 
  (* C_TXPROGDIV_FREQ_ENABLE = "1" *) 
  (* C_TXPROGDIV_FREQ_SOURCE = "2" *) 
  (* C_TXPROGDIV_FREQ_VAL = "125.000000" *) 
  (* C_TX_BUFFBYPASS_MODE = "0" *) 
  (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
  (* C_TX_BUFFER_MODE = "1" *) 
  (* C_TX_DATA_ENCODING = "1" *) 
  (* C_TX_ENABLE = "1" *) 
  (* C_TX_INT_DATA_WIDTH = "20" *) 
  (* C_TX_LINE_RATE = "1.250000" *) 
  (* C_TX_MASTER_CHANNEL_IDX = "110" *) 
  (* C_TX_OUTCLK_BUFG_GT_DIV = "2" *) 
  (* C_TX_OUTCLK_FREQUENCY = "62.500000" *) 
  (* C_TX_OUTCLK_SOURCE = "4" *) 
  (* C_TX_PLL_TYPE = "2" *) 
  (* C_TX_REFCLK_FREQUENCY = "156.250000" *) 
  (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
  (* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) 
  (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) 
  (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
  (* C_TX_USER_CLOCKING_SOURCE = "0" *) 
  (* C_TX_USER_DATA_WIDTH = "16" *) 
  (* C_TX_USRCLK2_FREQUENCY = "62.500000" *) 
  (* C_TX_USRCLK_FREQUENCY = "62.500000" *) 
  (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top inst
       (.bgbypassb_in(1'b1),
        .bgmonitorenb_in(1'b1),
        .bgpdb_in(1'b1),
        .bgrcalovrd_in({1'b1,1'b1,1'b1,1'b1,1'b1}),
        .bgrcalovrdenb_in(1'b1),
        .bufgtce_out(NLW_inst_bufgtce_out_UNCONNECTED[0]),
        .bufgtcemask_out(NLW_inst_bufgtcemask_out_UNCONNECTED[2:0]),
        .bufgtdiv_out(NLW_inst_bufgtdiv_out_UNCONNECTED[8:0]),
        .bufgtreset_out(NLW_inst_bufgtreset_out_UNCONNECTED[0]),
        .bufgtrstmask_out(NLW_inst_bufgtrstmask_out_UNCONNECTED[2:0]),
        .cdrstepdir_in(1'b0),
        .cdrstepsq_in(1'b0),
        .cdrstepsx_in(1'b0),
        .cfgreset_in(1'b0),
        .clkrsvd0_in(1'b0),
        .clkrsvd1_in(1'b0),
        .cpllfbclklost_out(NLW_inst_cpllfbclklost_out_UNCONNECTED[0]),
        .cpllfreqlock_in(1'b0),
        .cplllock_out(NLW_inst_cplllock_out_UNCONNECTED[0]),
        .cplllockdetclk_in(1'b0),
        .cplllocken_in(1'b1),
        .cpllpd_in(1'b0),
        .cpllrefclklost_out(NLW_inst_cpllrefclklost_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .cpllreset_in(1'b0),
        .dmonfiforeset_in(1'b0),
        .dmonitorclk_in(1'b0),
        .dmonitorout_out(NLW_inst_dmonitorout_out_UNCONNECTED[15:0]),
        .dmonitoroutclk_out(NLW_inst_dmonitoroutclk_out_UNCONNECTED[0]),
        .drpaddr_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_common_in(1'b0),
        .drpclk_in(drpclk_in),
        .drpdi_common_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_common_out(NLW_inst_drpdo_common_out_UNCONNECTED[15:0]),
        .drpdo_out(NLW_inst_drpdo_out_UNCONNECTED[15:0]),
        .drpen_common_in(1'b0),
        .drpen_in(1'b0),
        .drprdy_common_out(NLW_inst_drprdy_common_out_UNCONNECTED[0]),
        .drprdy_out(NLW_inst_drprdy_out_UNCONNECTED[0]),
        .drprst_in(1'b0),
        .drpwe_common_in(1'b0),
        .drpwe_in(1'b0),
        .elpcaldvorwren_in(1'b0),
        .elpcalpaorwren_in(1'b0),
        .evoddphicaldone_in(1'b0),
        .evoddphicalstart_in(1'b0),
        .evoddphidrden_in(1'b0),
        .evoddphidwren_in(1'b0),
        .evoddphixrden_in(1'b0),
        .evoddphixwren_in(1'b0),
        .eyescandataerror_out(NLW_inst_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanmode_in(1'b0),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .freqos_in(1'b0),
        .gtgrefclk0_in(1'b0),
        .gtgrefclk1_in(1'b0),
        .gtgrefclk_in(1'b0),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtnorthrefclk00_in(1'b0),
        .gtnorthrefclk01_in(1'b0),
        .gtnorthrefclk0_in(1'b0),
        .gtnorthrefclk10_in(1'b0),
        .gtnorthrefclk11_in(1'b0),
        .gtnorthrefclk1_in(1'b0),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk00_in(1'b0),
        .gtrefclk01_in(1'b0),
        .gtrefclk0_in(gtrefclk0_in),
        .gtrefclk10_in(1'b0),
        .gtrefclk11_in(1'b0),
        .gtrefclk1_in(1'b0),
        .gtrefclkmonitor_out(NLW_inst_gtrefclkmonitor_out_UNCONNECTED[0]),
        .gtresetsel_in(1'b0),
        .gtrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtrxreset_in(1'b0),
        .gtrxresetsel_in(1'b0),
        .gtsouthrefclk00_in(1'b0),
        .gtsouthrefclk01_in(1'b0),
        .gtsouthrefclk0_in(1'b0),
        .gtsouthrefclk10_in(1'b0),
        .gtsouthrefclk11_in(1'b0),
        .gtsouthrefclk1_in(1'b0),
        .gttxreset_in(1'b0),
        .gttxresetsel_in(1'b0),
        .gtwiz_buffbypass_rx_done_out(NLW_inst_gtwiz_buffbypass_rx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_error_out(NLW_inst_gtwiz_buffbypass_rx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_rx_reset_in(1'b0),
        .gtwiz_buffbypass_rx_start_user_in(1'b0),
        .gtwiz_buffbypass_tx_done_out(NLW_inst_gtwiz_buffbypass_tx_done_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_error_out(NLW_inst_gtwiz_buffbypass_tx_error_out_UNCONNECTED[0]),
        .gtwiz_buffbypass_tx_reset_in(1'b0),
        .gtwiz_buffbypass_tx_start_user_in(1'b0),
        .gtwiz_gthe3_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe3_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe3_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gthe4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gthe4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_bufg_ce_in(1'b0),
        .gtwiz_gtye4_cpll_cal_cnt_tol_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_gtye4_cpll_cal_txoutclk_period_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_clk_freerun_in(1'b0),
        .gtwiz_reset_qpll0lock_in(1'b0),
        .gtwiz_reset_qpll0reset_out(NLW_inst_gtwiz_reset_qpll0reset_out_UNCONNECTED[0]),
        .gtwiz_reset_qpll1lock_in(1'b0),
        .gtwiz_reset_qpll1reset_out(NLW_inst_gtwiz_reset_qpll1reset_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_cdr_stable_out(NLW_inst_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_in(1'b0),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_in(1'b0),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(1'b0),
        .gtwiz_userclk_rx_active_out(NLW_inst_gtwiz_userclk_rx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_reset_in(1'b0),
        .gtwiz_userclk_rx_srcclk_out(NLW_inst_gtwiz_userclk_rx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk2_out(NLW_inst_gtwiz_userclk_rx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_rx_usrclk_out(NLW_inst_gtwiz_userclk_rx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_active_in(1'b1),
        .gtwiz_userclk_tx_active_out(NLW_inst_gtwiz_userclk_tx_active_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userclk_tx_srcclk_out(NLW_inst_gtwiz_userclk_tx_srcclk_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk2_out(NLW_inst_gtwiz_userclk_tx_usrclk2_out_UNCONNECTED[0]),
        .gtwiz_userclk_tx_usrclk_out(NLW_inst_gtwiz_userclk_tx_usrclk_out_UNCONNECTED[0]),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .gtyrxn_in(1'b0),
        .gtyrxp_in(1'b0),
        .gtytxn_out(NLW_inst_gtytxn_out_UNCONNECTED[0]),
        .gtytxp_out(NLW_inst_gtytxp_out_UNCONNECTED[0]),
        .incpctrl_in(1'b0),
        .loopback_in({1'b0,1'b0,1'b0}),
        .looprsvd_in(1'b0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .lpbkrxtxseren_in(1'b0),
        .lpbktxrxseren_in(1'b0),
        .pcieeqrxeqadaptdone_in(1'b0),
        .pcierategen3_out(NLW_inst_pcierategen3_out_UNCONNECTED[0]),
        .pcierateidle_out(NLW_inst_pcierateidle_out_UNCONNECTED[0]),
        .pcierateqpll0_in({1'b0,1'b0,1'b0}),
        .pcierateqpll1_in({1'b0,1'b0,1'b0}),
        .pcierateqpllpd_out(NLW_inst_pcierateqpllpd_out_UNCONNECTED[1:0]),
        .pcierateqpllreset_out(NLW_inst_pcierateqpllreset_out_UNCONNECTED[1:0]),
        .pcierstidle_in(1'b0),
        .pciersttxsyncstart_in(1'b0),
        .pciesynctxsyncdone_out(NLW_inst_pciesynctxsyncdone_out_UNCONNECTED[0]),
        .pcieusergen3rdy_out(NLW_inst_pcieusergen3rdy_out_UNCONNECTED[0]),
        .pcieuserphystatusrst_out(NLW_inst_pcieuserphystatusrst_out_UNCONNECTED[0]),
        .pcieuserratedone_in(1'b0),
        .pcieuserratestart_out(NLW_inst_pcieuserratestart_out_UNCONNECTED[0]),
        .pcsrsvdin2_in(1'b0),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pcsrsvdout_out(NLW_inst_pcsrsvdout_out_UNCONNECTED[15:0]),
        .phystatus_out(NLW_inst_phystatus_out_UNCONNECTED[0]),
        .pinrsrvdas_out(NLW_inst_pinrsrvdas_out_UNCONNECTED[15:0]),
        .pmarsvd0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .pmarsvdin_in(1'b0),
        .pmarsvdout0_out(NLW_inst_pmarsvdout0_out_UNCONNECTED[7:0]),
        .pmarsvdout1_out(NLW_inst_pmarsvdout1_out_UNCONNECTED[7:0]),
        .powerpresent_out(NLW_inst_powerpresent_out_UNCONNECTED[0]),
        .qpll0clk_in(1'b0),
        .qpll0clkrsvd0_in(1'b0),
        .qpll0clkrsvd1_in(1'b0),
        .qpll0fbclklost_out(NLW_inst_qpll0fbclklost_out_UNCONNECTED[0]),
        .qpll0fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll0freqlock_in(1'b0),
        .qpll0lock_out(NLW_inst_qpll0lock_out_UNCONNECTED[0]),
        .qpll0lockdetclk_in(1'b0),
        .qpll0locken_in(1'b0),
        .qpll0outclk_out(NLW_inst_qpll0outclk_out_UNCONNECTED[0]),
        .qpll0outrefclk_out(NLW_inst_qpll0outrefclk_out_UNCONNECTED[0]),
        .qpll0pd_in(1'b1),
        .qpll0refclk_in(1'b0),
        .qpll0refclklost_out(NLW_inst_qpll0refclklost_out_UNCONNECTED[0]),
        .qpll0refclksel_in({1'b0,1'b0,1'b1}),
        .qpll0reset_in(1'b1),
        .qpll1clk_in(1'b0),
        .qpll1clkrsvd0_in(1'b0),
        .qpll1clkrsvd1_in(1'b0),
        .qpll1fbclklost_out(NLW_inst_qpll1fbclklost_out_UNCONNECTED[0]),
        .qpll1fbdiv_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpll1freqlock_in(1'b0),
        .qpll1lock_out(NLW_inst_qpll1lock_out_UNCONNECTED[0]),
        .qpll1lockdetclk_in(1'b0),
        .qpll1locken_in(1'b0),
        .qpll1outclk_out(NLW_inst_qpll1outclk_out_UNCONNECTED[0]),
        .qpll1outrefclk_out(NLW_inst_qpll1outrefclk_out_UNCONNECTED[0]),
        .qpll1pd_in(1'b1),
        .qpll1refclk_in(1'b0),
        .qpll1refclklost_out(NLW_inst_qpll1refclklost_out_UNCONNECTED[0]),
        .qpll1refclksel_in({1'b0,1'b0,1'b1}),
        .qpll1reset_in(1'b1),
        .qplldmonitor0_out(NLW_inst_qplldmonitor0_out_UNCONNECTED[7:0]),
        .qplldmonitor1_out(NLW_inst_qplldmonitor1_out_UNCONNECTED[7:0]),
        .qpllrsvd1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd2_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd3_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .qpllrsvd4_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rcalenb_in(1'b1),
        .refclkoutmonitor0_out(NLW_inst_refclkoutmonitor0_out_UNCONNECTED[0]),
        .refclkoutmonitor1_out(NLW_inst_refclkoutmonitor1_out_UNCONNECTED[0]),
        .resetexception_out(NLW_inst_resetexception_out_UNCONNECTED[0]),
        .resetovrd_in(1'b0),
        .rstclkentx_in(1'b0),
        .rx8b10ben_in(1'b1),
        .rxafecfoken_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out({\^rxbufstatus_out ,NLW_inst_rxbufstatus_out_UNCONNECTED[1:0]}),
        .rxbyteisaligned_out(NLW_inst_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_inst_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrfreqreset_in(1'b0),
        .rxcdrhold_in(1'b0),
        .rxcdrlock_out(NLW_inst_rxcdrlock_out_UNCONNECTED[0]),
        .rxcdrovrden_in(1'b0),
        .rxcdrphdone_out(NLW_inst_rxcdrphdone_out_UNCONNECTED[0]),
        .rxcdrreset_in(1'b0),
        .rxcdrresetrsv_in(1'b0),
        .rxchanbondseq_out(NLW_inst_rxchanbondseq_out_UNCONNECTED[0]),
        .rxchanisaligned_out(NLW_inst_rxchanisaligned_out_UNCONNECTED[0]),
        .rxchanrealign_out(NLW_inst_rxchanrealign_out_UNCONNECTED[0]),
        .rxchbonden_in(1'b0),
        .rxchbondi_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxchbondlevel_in({1'b0,1'b0,1'b0}),
        .rxchbondmaster_in(1'b0),
        .rxchbondo_out(NLW_inst_rxchbondo_out_UNCONNECTED[4:0]),
        .rxchbondslave_in(1'b0),
        .rxckcaldone_out(NLW_inst_rxckcaldone_out_UNCONNECTED[0]),
        .rxckcalreset_in(1'b0),
        .rxckcalstart_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxcominitdet_out(NLW_inst_rxcominitdet_out_UNCONNECTED[0]),
        .rxcommadet_out(NLW_inst_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b1),
        .rxcomsasdet_out(NLW_inst_rxcomsasdet_out_UNCONNECTED[0]),
        .rxcomwakedet_out(NLW_inst_rxcomwakedet_out_UNCONNECTED[0]),
        .rxctrl0_out({NLW_inst_rxctrl0_out_UNCONNECTED[15:2],\^rxctrl0_out }),
        .rxctrl1_out({NLW_inst_rxctrl1_out_UNCONNECTED[15:2],\^rxctrl1_out }),
        .rxctrl2_out({NLW_inst_rxctrl2_out_UNCONNECTED[7:2],\^rxctrl2_out }),
        .rxctrl3_out({NLW_inst_rxctrl3_out_UNCONNECTED[7:2],\^rxctrl3_out }),
        .rxdata_out(NLW_inst_rxdata_out_UNCONNECTED[127:0]),
        .rxdataextendrsvd_out(NLW_inst_rxdataextendrsvd_out_UNCONNECTED[7:0]),
        .rxdatavalid_out(NLW_inst_rxdatavalid_out_UNCONNECTED[1:0]),
        .rxdccforcestart_in(1'b0),
        .rxdfeagcctrl_in({1'b0,1'b1}),
        .rxdfeagchold_in(1'b0),
        .rxdfeagcovrden_in(1'b0),
        .rxdfecfokfcnum_in({1'b1,1'b1,1'b0,1'b1}),
        .rxdfecfokfen_in(1'b0),
        .rxdfecfokfpulse_in(1'b0),
        .rxdfecfokhold_in(1'b0),
        .rxdfecfokovren_in(1'b0),
        .rxdfekhhold_in(1'b0),
        .rxdfekhovrden_in(1'b0),
        .rxdfelfhold_in(1'b0),
        .rxdfelfovrden_in(1'b0),
        .rxdfelpmreset_in(1'b0),
        .rxdfetap10hold_in(1'b0),
        .rxdfetap10ovrden_in(1'b0),
        .rxdfetap11hold_in(1'b0),
        .rxdfetap11ovrden_in(1'b0),
        .rxdfetap12hold_in(1'b0),
        .rxdfetap12ovrden_in(1'b0),
        .rxdfetap13hold_in(1'b0),
        .rxdfetap13ovrden_in(1'b0),
        .rxdfetap14hold_in(1'b0),
        .rxdfetap14ovrden_in(1'b0),
        .rxdfetap15hold_in(1'b0),
        .rxdfetap15ovrden_in(1'b0),
        .rxdfetap2hold_in(1'b0),
        .rxdfetap2ovrden_in(1'b0),
        .rxdfetap3hold_in(1'b0),
        .rxdfetap3ovrden_in(1'b0),
        .rxdfetap4hold_in(1'b0),
        .rxdfetap4ovrden_in(1'b0),
        .rxdfetap5hold_in(1'b0),
        .rxdfetap5ovrden_in(1'b0),
        .rxdfetap6hold_in(1'b0),
        .rxdfetap6ovrden_in(1'b0),
        .rxdfetap7hold_in(1'b0),
        .rxdfetap7ovrden_in(1'b0),
        .rxdfetap8hold_in(1'b0),
        .rxdfetap8ovrden_in(1'b0),
        .rxdfetap9hold_in(1'b0),
        .rxdfetap9ovrden_in(1'b0),
        .rxdfeuthold_in(1'b0),
        .rxdfeutovrden_in(1'b0),
        .rxdfevphold_in(1'b0),
        .rxdfevpovrden_in(1'b0),
        .rxdfevsen_in(1'b0),
        .rxdfexyden_in(1'b1),
        .rxdlybypass_in(1'b1),
        .rxdlyen_in(1'b0),
        .rxdlyovrden_in(1'b0),
        .rxdlysreset_in(1'b0),
        .rxdlysresetdone_out(NLW_inst_rxdlysresetdone_out_UNCONNECTED[0]),
        .rxelecidle_out(NLW_inst_rxelecidle_out_UNCONNECTED[0]),
        .rxelecidlemode_in({1'b1,1'b1}),
        .rxeqtraining_in(1'b0),
        .rxgearboxslip_in(1'b0),
        .rxheader_out(NLW_inst_rxheader_out_UNCONNECTED[5:0]),
        .rxheadervalid_out(NLW_inst_rxheadervalid_out_UNCONNECTED[1:0]),
        .rxlatclk_in(1'b0),
        .rxlfpstresetdet_out(NLW_inst_rxlfpstresetdet_out_UNCONNECTED[0]),
        .rxlfpsu2lpexitdet_out(NLW_inst_rxlfpsu2lpexitdet_out_UNCONNECTED[0]),
        .rxlfpsu3wakedet_out(NLW_inst_rxlfpsu3wakedet_out_UNCONNECTED[0]),
        .rxlpmen_in(1'b1),
        .rxlpmgchold_in(1'b0),
        .rxlpmgcovrden_in(1'b0),
        .rxlpmhfhold_in(1'b0),
        .rxlpmhfovrden_in(1'b0),
        .rxlpmlfhold_in(1'b0),
        .rxlpmlfklovrden_in(1'b0),
        .rxlpmoshold_in(1'b0),
        .rxlpmosovrden_in(1'b0),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxmonitorout_out(NLW_inst_rxmonitorout_out_UNCONNECTED[7:0]),
        .rxmonitorsel_in({1'b0,1'b0}),
        .rxoobreset_in(1'b0),
        .rxoscalreset_in(1'b0),
        .rxoshold_in(1'b0),
        .rxosintcfg_in(1'b0),
        .rxosintdone_out(NLW_inst_rxosintdone_out_UNCONNECTED[0]),
        .rxosinten_in(1'b0),
        .rxosinthold_in(1'b0),
        .rxosintovrden_in(1'b0),
        .rxosintstarted_out(NLW_inst_rxosintstarted_out_UNCONNECTED[0]),
        .rxosintstrobe_in(1'b0),
        .rxosintstrobedone_out(NLW_inst_rxosintstrobedone_out_UNCONNECTED[0]),
        .rxosintstrobestarted_out(NLW_inst_rxosintstrobestarted_out_UNCONNECTED[0]),
        .rxosinttestovrden_in(1'b0),
        .rxosovrden_in(1'b0),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkfabric_out(NLW_inst_rxoutclkfabric_out_UNCONNECTED[0]),
        .rxoutclkpcs_out(NLW_inst_rxoutclkpcs_out_UNCONNECTED[0]),
        .rxoutclksel_in({1'b0,1'b1,1'b0}),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({rxpd_in[1],1'b0}),
        .rxphalign_in(1'b0),
        .rxphaligndone_out(NLW_inst_rxphaligndone_out_UNCONNECTED[0]),
        .rxphalignen_in(1'b0),
        .rxphalignerr_out(NLW_inst_rxphalignerr_out_UNCONNECTED[0]),
        .rxphdlypd_in(1'b1),
        .rxphdlyreset_in(1'b0),
        .rxphovrden_in(1'b0),
        .rxpllclksel_in({1'b0,1'b0}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(NLW_inst_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_inst_rxprbserr_out_UNCONNECTED[0]),
        .rxprbslocked_out(NLW_inst_rxprbslocked_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxprgdivresetdone_out(NLW_inst_rxprgdivresetdone_out_UNCONNECTED[0]),
        .rxprogdivreset_in(1'b0),
        .rxqpien_in(1'b0),
        .rxqpisenn_out(NLW_inst_rxqpisenn_out_UNCONNECTED[0]),
        .rxqpisenp_out(NLW_inst_rxqpisenp_out_UNCONNECTED[0]),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxratedone_out(NLW_inst_rxratedone_out_UNCONNECTED[0]),
        .rxratemode_in(1'b0),
        .rxrecclk0_sel_out(NLW_inst_rxrecclk0_sel_out_UNCONNECTED[0]),
        .rxrecclk0sel_out(NLW_inst_rxrecclk0sel_out_UNCONNECTED[1:0]),
        .rxrecclk1_sel_out(NLW_inst_rxrecclk1_sel_out_UNCONNECTED[0]),
        .rxrecclk1sel_out(NLW_inst_rxrecclk1sel_out_UNCONNECTED[1:0]),
        .rxrecclkout_out(NLW_inst_rxrecclkout_out_UNCONNECTED[0]),
        .rxresetdone_out(NLW_inst_rxresetdone_out_UNCONNECTED[0]),
        .rxslide_in(1'b0),
        .rxsliderdy_out(NLW_inst_rxsliderdy_out_UNCONNECTED[0]),
        .rxslipdone_out(NLW_inst_rxslipdone_out_UNCONNECTED[0]),
        .rxslipoutclk_in(1'b0),
        .rxslipoutclkrdy_out(NLW_inst_rxslipoutclkrdy_out_UNCONNECTED[0]),
        .rxslippma_in(1'b0),
        .rxslippmardy_out(NLW_inst_rxslippmardy_out_UNCONNECTED[0]),
        .rxstartofseq_out(NLW_inst_rxstartofseq_out_UNCONNECTED[1:0]),
        .rxstatus_out(NLW_inst_rxstatus_out_UNCONNECTED[2:0]),
        .rxsyncallin_in(1'b0),
        .rxsyncdone_out(NLW_inst_rxsyncdone_out_UNCONNECTED[0]),
        .rxsyncin_in(1'b0),
        .rxsyncmode_in(1'b0),
        .rxsyncout_out(NLW_inst_rxsyncout_out_UNCONNECTED[0]),
        .rxsysclksel_in({1'b0,1'b0}),
        .rxtermination_in(1'b0),
        .rxuserrdy_in(1'b1),
        .rxusrclk2_in(1'b0),
        .rxusrclk_in(rxusrclk_in),
        .rxvalid_out(NLW_inst_rxvalid_out_UNCONNECTED[0]),
        .sdm0data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm0finalout_out(NLW_inst_sdm0finalout_out_UNCONNECTED[3:0]),
        .sdm0reset_in(1'b0),
        .sdm0testdata_out(NLW_inst_sdm0testdata_out_UNCONNECTED[14:0]),
        .sdm0toggle_in(1'b0),
        .sdm0width_in({1'b0,1'b0}),
        .sdm1data_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .sdm1finalout_out(NLW_inst_sdm1finalout_out_UNCONNECTED[3:0]),
        .sdm1reset_in(1'b0),
        .sdm1testdata_out(NLW_inst_sdm1testdata_out_UNCONNECTED[14:0]),
        .sdm1toggle_in(1'b0),
        .sdm1width_in({1'b0,1'b0}),
        .sigvalidclk_in(1'b0),
        .tcongpi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tcongpo_out(NLW_inst_tcongpo_out_UNCONNECTED[9:0]),
        .tconpowerup_in(1'b0),
        .tconreset_in({1'b0,1'b0}),
        .tconrsvdin1_in({1'b0,1'b0}),
        .tconrsvdout0_out(NLW_inst_tconrsvdout0_out_UNCONNECTED[0]),
        .tstin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10bbypass_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .tx8b10ben_in(1'b1),
        .txbufdiffctrl_in(1'b0),
        .txbufstatus_out({\^txbufstatus_out ,NLW_inst_txbufstatus_out_UNCONNECTED[0]}),
        .txcomfinish_out(NLW_inst_txcomfinish_out_UNCONNECTED[0]),
        .txcominit_in(1'b0),
        .txcomsas_in(1'b0),
        .txcomwake_in(1'b0),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl0_in[1:0]}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl1_in[1:0]}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txctrl2_in[1:0]}),
        .txdata_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdataextendrsvd_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txdccdone_out(NLW_inst_txdccdone_out_UNCONNECTED[0]),
        .txdccforcestart_in(1'b0),
        .txdccreset_in(1'b0),
        .txdeemph_in({1'b0,1'b0}),
        .txdetectrx_in(1'b0),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txdiffpd_in(1'b0),
        .txdlybypass_in(1'b1),
        .txdlyen_in(1'b0),
        .txdlyhold_in(1'b0),
        .txdlyovrden_in(1'b0),
        .txdlysreset_in(1'b0),
        .txdlysresetdone_out(NLW_inst_txdlysresetdone_out_UNCONNECTED[0]),
        .txdlyupdown_in(1'b0),
        .txelecidle_in(txelecidle_in),
        .txelforcestart_in(1'b0),
        .txheader_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txinhibit_in(1'b0),
        .txlatclk_in(1'b0),
        .txlfpstreset_in(1'b0),
        .txlfpsu2lpexit_in(1'b0),
        .txlfpsu3wake_in(1'b0),
        .txmaincursor_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txmargin_in({1'b0,1'b0,1'b0}),
        .txmuxdcdexhold_in(1'b0),
        .txmuxdcdorwren_in(1'b0),
        .txoneszeros_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txoutclkfabric_out(NLW_inst_txoutclkfabric_out_UNCONNECTED[0]),
        .txoutclkpcs_out(NLW_inst_txoutclkpcs_out_UNCONNECTED[0]),
        .txoutclksel_in({1'b1,1'b0,1'b1}),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpdelecidlemode_in(1'b0),
        .txphalign_in(1'b0),
        .txphaligndone_out(NLW_inst_txphaligndone_out_UNCONNECTED[0]),
        .txphalignen_in(1'b0),
        .txphdlypd_in(1'b1),
        .txphdlyreset_in(1'b0),
        .txphdlytstclk_in(1'b0),
        .txphinit_in(1'b0),
        .txphinitdone_out(NLW_inst_txphinitdone_out_UNCONNECTED[0]),
        .txphovrden_in(1'b0),
        .txpippmen_in(1'b0),
        .txpippmovrden_in(1'b0),
        .txpippmpd_in(1'b0),
        .txpippmsel_in(1'b0),
        .txpippmstepsize_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpisopd_in(1'b0),
        .txpllclksel_in({1'b0,1'b0}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(NLW_inst_txpmaresetdone_out_UNCONNECTED[0]),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txpostcursorinv_in(1'b0),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprecursorinv_in(1'b0),
        .txprgdivresetdone_out(NLW_inst_txprgdivresetdone_out_UNCONNECTED[0]),
        .txprogdivreset_in(1'b0),
        .txqpibiasen_in(1'b0),
        .txqpisenn_out(NLW_inst_txqpisenn_out_UNCONNECTED[0]),
        .txqpisenp_out(NLW_inst_txqpisenp_out_UNCONNECTED[0]),
        .txqpistrongpdown_in(1'b0),
        .txqpiweakpup_in(1'b0),
        .txrate_in({1'b0,1'b0,1'b0}),
        .txratedone_out(NLW_inst_txratedone_out_UNCONNECTED[0]),
        .txratemode_in(1'b0),
        .txresetdone_out(NLW_inst_txresetdone_out_UNCONNECTED[0]),
        .txsequence_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txswing_in(1'b0),
        .txsyncallin_in(1'b0),
        .txsyncdone_out(NLW_inst_txsyncdone_out_UNCONNECTED[0]),
        .txsyncin_in(1'b0),
        .txsyncmode_in(1'b0),
        .txsyncout_out(NLW_inst_txsyncout_out_UNCONNECTED[0]),
        .txsysclksel_in({1'b0,1'b0}),
        .txuserrdy_in(1'b1),
        .txusrclk2_in(1'b0),
        .txusrclk_in(1'b0),
        .ubcfgstreamen_in(1'b0),
        .ubdaddr_out(NLW_inst_ubdaddr_out_UNCONNECTED[0]),
        .ubden_out(NLW_inst_ubden_out_UNCONNECTED[0]),
        .ubdi_out(NLW_inst_ubdi_out_UNCONNECTED[0]),
        .ubdo_in(1'b0),
        .ubdrdy_in(1'b0),
        .ubdwe_out(NLW_inst_ubdwe_out_UNCONNECTED[0]),
        .ubenable_in(1'b0),
        .ubgpi_in(1'b0),
        .ubintr_in(1'b0),
        .ubiolmbrst_in(1'b0),
        .ubmbrst_in(1'b0),
        .ubmdmcapture_in(1'b0),
        .ubmdmdbgrst_in(1'b0),
        .ubmdmdbgupdate_in(1'b0),
        .ubmdmregen_in(1'b0),
        .ubmdmshift_in(1'b0),
        .ubmdmsysrst_in(1'b0),
        .ubmdmtck_in(1'b0),
        .ubmdmtdi_in(1'b0),
        .ubmdmtdo_out(NLW_inst_ubmdmtdo_out_UNCONNECTED[0]),
        .ubrsvdout_out(NLW_inst_ubrsvdout_out_UNCONNECTED[0]),
        .ubtxuart_out(NLW_inst_ubtxuart_out_UNCONNECTED[0]));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gthe4_channel_wrapper" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gthe4_channel_wrapper
   (in0,
    \gen_gtwizard_gthe4.drprdy_int ,
    gthtxn_out,
    gthtxp_out,
    \gen_gtwizard_gthe4.gtpowergood_int ,
    rxcdrlock_out,
    rxoutclk_out,
    rxoutclkpcs_out,
    gtwiz_userclk_rx_active_out,
    rxresetdone_out,
    txoutclk_out,
    cpllpd_int_reg,
    txresetdone_out,
    gtwiz_userdata_rx_out,
    D,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    cpllpd_int_reg_0,
    i_in_meta_reg,
    i_in_meta_reg_0,
    drpclk_in,
    DEN_O,
    DWE_O,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ,
    \gen_gtwizard_gthe4.gttxreset_int ,
    rxmcommaalignen_in,
    \gen_gtwizard_gthe4.rxprogdivreset_int ,
    RXRATE,
    \gen_gtwizard_gthe4.rxuserrdy_int ,
    rxusrclk_in,
    txelecidle_in,
    \gen_gtwizard_gthe4.txprogdivreset_ch_int ,
    \gen_gtwizard_gthe4.txuserrdy_int ,
    gtwiz_userdata_tx_in,
    Q,
    txctrl0_in,
    txctrl1_in,
    RXPD,
    i_in_meta_reg_1,
    txctrl2_in,
    i_in_meta_reg_2,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output in0;
  output \gen_gtwizard_gthe4.drprdy_int ;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output \gen_gtwizard_gthe4.gtpowergood_int ;
  output [0:0]rxcdrlock_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  output [0:0]rxresetdone_out;
  output [0:0]txoutclk_out;
  output cpllpd_int_reg;
  output [0:0]txresetdone_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [15:0]D;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output cpllpd_int_reg_0;
  input i_in_meta_reg;
  input i_in_meta_reg_0;
  input [0:0]drpclk_in;
  input DEN_O;
  input DWE_O;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  input \gen_gtwizard_gthe4.gttxreset_int ;
  input [0:0]rxmcommaalignen_in;
  input \gen_gtwizard_gthe4.rxprogdivreset_int ;
  input [0:0]RXRATE;
  input \gen_gtwizard_gthe4.rxuserrdy_int ;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  input \gen_gtwizard_gthe4.txuserrdy_int ;
  input [15:0]gtwiz_userdata_tx_in;
  input [15:0]Q;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [0:0]RXPD;
  input [2:0]i_in_meta_reg_1;
  input [1:0]txctrl2_in;
  input [6:0]i_in_meta_reg_2;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [15:0]D;
  wire DEN_O;
  wire DWE_O;
  wire [15:0]Q;
  wire [0:0]RXPD;
  wire [0:0]RXRATE;
  wire cpllpd_int_reg;
  wire cpllpd_int_reg_0;
  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_userclk_rx_active_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire i_in_meta_reg;
  wire i_in_meta_reg_0;
  wire [2:0]i_in_meta_reg_1;
  wire [6:0]i_in_meta_reg_2;
  wire in0;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [0:0]rxbufstatus_out;
  wire [0:0]rxcdrlock_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxoutclkpcs_out;
  wire [0:0]rxresetdone_out;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;
  wire [0:0]txresetdone_out;

  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_channel channel_inst
       (.D(D),
        .DEN_O(DEN_O),
        .DWE_O(DWE_O),
        .Q(Q),
        .RXPD(RXPD),
        .RXRATE(RXRATE),
        .cpllpd_int_reg(cpllpd_int_reg),
        .cpllpd_int_reg_0(cpllpd_int_reg_0),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_userclk_rx_active_out(gtwiz_userclk_rx_active_out),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .i_in_meta_reg(i_in_meta_reg),
        .i_in_meta_reg_0(i_in_meta_reg_0),
        .i_in_meta_reg_1(i_in_meta_reg_1),
        .i_in_meta_reg_2(i_in_meta_reg_2),
        .in0(in0),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(rxbufstatus_out),
        .rxcdrlock_out(rxcdrlock_out),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkpcs_out(rxoutclkpcs_out),
        .rxresetdone_out(rxresetdone_out),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(txbufstatus_out),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out),
        .txresetdone_out(txresetdone_out));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4
   (gtpowergood_out,
    gthtxn_out,
    gthtxp_out,
    rxoutclk_out,
    txoutclk_out,
    gtwiz_userdata_rx_out,
    rxctrl0_out,
    rxctrl1_out,
    rxclkcorcnt_out,
    txbufstatus_out,
    rxbufstatus_out,
    rxctrl2_out,
    rxctrl3_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    rxpd_in,
    drpclk_in,
    gthrxn_in,
    gthrxp_in,
    gtrefclk0_in,
    rxmcommaalignen_in,
    rxusrclk_in,
    txelecidle_in,
    gtwiz_userdata_tx_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_datapath_in,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output [0:0]gtpowergood_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  output [15:0]gtwiz_userdata_rx_out;
  output [1:0]rxctrl0_out;
  output [1:0]rxctrl1_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]txbufstatus_out;
  output [0:0]rxbufstatus_out;
  output [1:0]rxctrl2_out;
  output [1:0]rxctrl3_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  input [0:0]rxpd_in;
  input [0:0]drpclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtrefclk0_in;
  input [0:0]rxmcommaalignen_in;
  input [0:0]rxusrclk_in;
  input [0:0]txelecidle_in;
  input [15:0]gtwiz_userdata_tx_in;
  input [1:0]txctrl0_in;
  input [1:0]txctrl1_in;
  input [1:0]txctrl2_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire [0:0]drpclk_in;
  wire \gen_gtwizard_gthe4.cplllock_ch_int ;
  wire \gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ;
  wire [15:0]\gen_gtwizard_gthe4.drpdo_int ;
  wire \gen_gtwizard_gthe4.drpen_ch_int ;
  wire \gen_gtwizard_gthe4.drprdy_int ;
  wire \gen_gtwizard_gthe4.drpwe_ch_int ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ;
  wire \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ;
  wire [7:1]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ;
  wire [15:0]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_1 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_2 ;
  wire \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_3 ;
  wire [2:0]\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ;
  wire \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ;
  wire \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ;
  wire \gen_gtwizard_gthe4.gtpowergood_int ;
  wire \gen_gtwizard_gthe4.gttxreset_int ;
  wire \gen_gtwizard_gthe4.rxprogdivreset_int ;
  wire \gen_gtwizard_gthe4.rxratemode_ch_int ;
  wire \gen_gtwizard_gthe4.rxuserrdy_int ;
  wire \gen_gtwizard_gthe4.txprgdivresetdone_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_ch_int ;
  wire \gen_gtwizard_gthe4.txprogdivreset_int ;
  wire \gen_gtwizard_gthe4.txuserrdy_int ;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire rst_in0;
  wire [0:0]rxbufstatus_out;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [0:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [0:0]txbufstatus_out;
  wire [1:0]txctrl0_in;
  wire [1:0]txctrl1_in;
  wire [1:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;

  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gthe4_channel_wrapper \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst 
       (.D(\gen_gtwizard_gthe4.drpdo_int ),
        .DEN_O(\gen_gtwizard_gthe4.drpen_ch_int ),
        .DWE_O(\gen_gtwizard_gthe4.drpwe_ch_int ),
        .Q(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ),
        .RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .cpllpd_int_reg(\gen_gtwizard_gthe4.txprgdivresetdone_int ),
        .cpllpd_int_reg_0(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_userclk_rx_active_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .i_in_meta_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_1 ),
        .i_in_meta_reg_0(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_2 ),
        .i_in_meta_reg_1(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ),
        .i_in_meta_reg_2(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ),
        .in0(\gen_gtwizard_gthe4.cplllock_ch_int ),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(rxbufstatus_out),
        .rxcdrlock_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(rxctrl0_out),
        .rxctrl1_out(rxctrl1_out),
        .rxctrl2_out(rxctrl2_out),
        .rxctrl3_out(rxctrl3_out),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(txbufstatus_out),
        .txctrl0_in(txctrl0_in),
        .txctrl1_in(txctrl1_in),
        .txctrl2_in(txctrl2_in),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst 
       (.DADDR_O(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpaddr_cpll_cal_int ),
        .DEN_O(\gen_gtwizard_gthe4.drpen_ch_int ),
        .DI_O(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.drpdi_cpll_cal_int ),
        .DO_I(\gen_gtwizard_gthe4.drpdo_int ),
        .DWE_O(\gen_gtwizard_gthe4.drpwe_ch_int ),
        .Q(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.txoutclksel_cpll_cal_int ),
        .RESET_IN(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ),
        .USER_CPLLLOCK_OUT_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_3 ),
        .cpllpd_int_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_1 ),
        .cpllreset_int_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_2 ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.drprdy_int (\gen_gtwizard_gthe4.drprdy_int ),
        .\gen_gtwizard_gthe4.txprogdivreset_ch_int (\gen_gtwizard_gthe4.txprogdivreset_ch_int ),
        .i_in_meta_reg(\gen_gtwizard_gthe4.txprogdivreset_int ),
        .i_in_meta_reg_0(\gen_gtwizard_gthe4.txprgdivresetdone_int ),
        .in0(\gen_gtwizard_gthe4.cplllock_ch_int ),
        .lopt(lopt_4),
        .lopt_1(lopt_5),
        .rst_in0(rst_in0),
        .txoutclk_out(txoutclk_out));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gthe4_delay_powergood \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 (\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .out(gtpowergood_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxpd_in(rxpd_in));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_bit_synchronizer_3 \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gtwizard_ultrascale_v1_7_9_gtwiz_reset \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
       (.RESET_IN(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.cpll_cal_reset_int ),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int (\gen_gtwizard_gthe4.delay_pwrgood_gtrxreset_int ),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .\gen_gtwizard_gthe4.gtpowergood_int (\gen_gtwizard_gthe4.gtpowergood_int ),
        .\gen_gtwizard_gthe4.gttxreset_int (\gen_gtwizard_gthe4.gttxreset_int ),
        .\gen_gtwizard_gthe4.rxprogdivreset_int (\gen_gtwizard_gthe4.rxprogdivreset_int ),
        .\gen_gtwizard_gthe4.rxuserrdy_int (\gen_gtwizard_gthe4.rxuserrdy_int ),
        .\gen_gtwizard_gthe4.txuserrdy_int (\gen_gtwizard_gthe4.txuserrdy_int ),
        .gtpowergood_out(gtpowergood_out),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_userclk_rx_active_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_8 ),
        .i_in_meta_reg(\gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst_n_3 ),
        .rst_in0(rst_in0),
        .rst_in_out_reg(\gen_gtwizard_gthe4.txprogdivreset_int ),
        .rxcdrlock_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_5 ),
        .rxusrclk_in(rxusrclk_in));
endmodule

(* C_CHANNEL_ENABLE = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000100000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) (* C_COMMON_SCALING_FACTOR = "1" *) (* C_CPLL_VCO_FREQUENCY = "2500.000000" *) 
(* C_ENABLE_COMMON_USRCLK = "0" *) (* C_FORCE_COMMONS = "0" *) (* C_FREERUN_FREQUENCY = "31.250000" *) 
(* C_GT_REV = "57" *) (* C_GT_TYPE = "2" *) (* C_INCLUDE_CPLL_CAL = "2" *) 
(* C_LOCATE_COMMON = "0" *) (* C_LOCATE_IN_SYSTEM_IBERT_CORE = "2" *) (* C_LOCATE_RESET_CONTROLLER = "0" *) 
(* C_LOCATE_RX_BUFFER_BYPASS_CONTROLLER = "0" *) (* C_LOCATE_RX_USER_CLOCKING = "1" *) (* C_LOCATE_TX_BUFFER_BYPASS_CONTROLLER = "0" *) 
(* C_LOCATE_TX_USER_CLOCKING = "1" *) (* C_LOCATE_USER_DATA_WIDTH_SIZING = "0" *) (* C_PCIE_CORECLK_FREQ = "250" *) 
(* C_PCIE_ENABLE = "0" *) (* C_RESET_CONTROLLER_INSTANCE_CTRL = "0" *) (* C_RESET_SEQUENCE_INTERVAL = "0" *) 
(* C_RX_BUFFBYPASS_MODE = "0" *) (* C_RX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) (* C_RX_BUFFER_MODE = "1" *) 
(* C_RX_CB_DISP = "8'b00000000" *) (* C_RX_CB_K = "8'b00000000" *) (* C_RX_CB_LEN_SEQ = "1" *) 
(* C_RX_CB_MAX_LEVEL = "1" *) (* C_RX_CB_NUM_SEQ = "0" *) (* C_RX_CB_VAL = "80'b00000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_CC_DISP = "8'b00000000" *) (* C_RX_CC_ENABLE = "1" *) (* C_RX_CC_K = "8'b00010001" *) 
(* C_RX_CC_LEN_SEQ = "2" *) (* C_RX_CC_NUM_SEQ = "2" *) (* C_RX_CC_PERIODICITY = "5000" *) 
(* C_RX_CC_VAL = "80'b00000000000000000000001011010100101111000000000000000000000000010100000010111100" *) (* C_RX_COMMA_M_ENABLE = "1" *) (* C_RX_COMMA_M_VAL = "10'b1010000011" *) 
(* C_RX_COMMA_P_ENABLE = "1" *) (* C_RX_COMMA_P_VAL = "10'b0101111100" *) (* C_RX_DATA_DECODING = "1" *) 
(* C_RX_ENABLE = "1" *) (* C_RX_INT_DATA_WIDTH = "20" *) (* C_RX_LINE_RATE = "1.250000" *) 
(* C_RX_MASTER_CHANNEL_IDX = "110" *) (* C_RX_OUTCLK_BUFG_GT_DIV = "1" *) (* C_RX_OUTCLK_FREQUENCY = "62.500000" *) 
(* C_RX_OUTCLK_SOURCE = "1" *) (* C_RX_PLL_TYPE = "2" *) (* C_RX_RECCLK_OUTPUT = "192'b000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000" *) 
(* C_RX_REFCLK_FREQUENCY = "156.250000" *) (* C_RX_SLIDE_MODE = "0" *) (* C_RX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_RX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_RX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_RX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_RX_USER_CLOCKING_SOURCE = "0" *) (* C_RX_USER_DATA_WIDTH = "16" *) (* C_RX_USRCLK2_FREQUENCY = "62.500000" *) 
(* C_RX_USRCLK_FREQUENCY = "62.500000" *) (* C_SECONDARY_QPLL_ENABLE = "0" *) (* C_SECONDARY_QPLL_REFCLK_FREQUENCY = "257.812500" *) 
(* C_SIM_CPLL_CAL_BYPASS = "1" *) (* C_TOTAL_NUM_CHANNELS = "1" *) (* C_TOTAL_NUM_COMMONS = "0" *) 
(* C_TOTAL_NUM_COMMONS_EXAMPLE = "0" *) (* C_TXPROGDIV_FREQ_ENABLE = "1" *) (* C_TXPROGDIV_FREQ_SOURCE = "2" *) 
(* C_TXPROGDIV_FREQ_VAL = "125.000000" *) (* C_TX_BUFFBYPASS_MODE = "0" *) (* C_TX_BUFFER_BYPASS_INSTANCE_CTRL = "0" *) 
(* C_TX_BUFFER_MODE = "1" *) (* C_TX_DATA_ENCODING = "1" *) (* C_TX_ENABLE = "1" *) 
(* C_TX_INT_DATA_WIDTH = "20" *) (* C_TX_LINE_RATE = "1.250000" *) (* C_TX_MASTER_CHANNEL_IDX = "110" *) 
(* C_TX_OUTCLK_BUFG_GT_DIV = "2" *) (* C_TX_OUTCLK_FREQUENCY = "62.500000" *) (* C_TX_OUTCLK_SOURCE = "4" *) 
(* C_TX_PLL_TYPE = "2" *) (* C_TX_REFCLK_FREQUENCY = "156.250000" *) (* C_TX_USER_CLOCKING_CONTENTS = "0" *) 
(* C_TX_USER_CLOCKING_INSTANCE_CTRL = "0" *) (* C_TX_USER_CLOCKING_RATIO_FSRC_FUSRCLK = "1" *) (* C_TX_USER_CLOCKING_RATIO_FUSRCLK_FUSRCLK2 = "1" *) 
(* C_TX_USER_CLOCKING_SOURCE = "0" *) (* C_TX_USER_DATA_WIDTH = "16" *) (* C_TX_USRCLK2_FREQUENCY = "62.500000" *) 
(* C_TX_USRCLK_FREQUENCY = "62.500000" *) (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) (* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top
   (gtwiz_userclk_tx_reset_in,
    gtwiz_userclk_tx_active_in,
    gtwiz_userclk_tx_srcclk_out,
    gtwiz_userclk_tx_usrclk_out,
    gtwiz_userclk_tx_usrclk2_out,
    gtwiz_userclk_tx_active_out,
    gtwiz_userclk_rx_reset_in,
    gtwiz_userclk_rx_active_in,
    gtwiz_userclk_rx_srcclk_out,
    gtwiz_userclk_rx_usrclk_out,
    gtwiz_userclk_rx_usrclk2_out,
    gtwiz_userclk_rx_active_out,
    gtwiz_buffbypass_tx_reset_in,
    gtwiz_buffbypass_tx_start_user_in,
    gtwiz_buffbypass_tx_done_out,
    gtwiz_buffbypass_tx_error_out,
    gtwiz_buffbypass_rx_reset_in,
    gtwiz_buffbypass_rx_start_user_in,
    gtwiz_buffbypass_rx_done_out,
    gtwiz_buffbypass_rx_error_out,
    gtwiz_reset_clk_freerun_in,
    gtwiz_reset_all_in,
    gtwiz_reset_tx_pll_and_datapath_in,
    gtwiz_reset_tx_datapath_in,
    gtwiz_reset_rx_pll_and_datapath_in,
    gtwiz_reset_rx_datapath_in,
    gtwiz_reset_tx_done_in,
    gtwiz_reset_rx_done_in,
    gtwiz_reset_qpll0lock_in,
    gtwiz_reset_qpll1lock_in,
    gtwiz_reset_rx_cdr_stable_out,
    gtwiz_reset_tx_done_out,
    gtwiz_reset_rx_done_out,
    gtwiz_reset_qpll0reset_out,
    gtwiz_reset_qpll1reset_out,
    gtwiz_gthe3_cpll_cal_txoutclk_period_in,
    gtwiz_gthe3_cpll_cal_cnt_tol_in,
    gtwiz_gthe3_cpll_cal_bufg_ce_in,
    gtwiz_gthe4_cpll_cal_txoutclk_period_in,
    gtwiz_gthe4_cpll_cal_cnt_tol_in,
    gtwiz_gthe4_cpll_cal_bufg_ce_in,
    gtwiz_gtye4_cpll_cal_txoutclk_period_in,
    gtwiz_gtye4_cpll_cal_cnt_tol_in,
    gtwiz_gtye4_cpll_cal_bufg_ce_in,
    gtwiz_userdata_tx_in,
    gtwiz_userdata_rx_out,
    bgbypassb_in,
    bgmonitorenb_in,
    bgpdb_in,
    bgrcalovrd_in,
    bgrcalovrdenb_in,
    drpaddr_common_in,
    drpclk_common_in,
    drpdi_common_in,
    drpen_common_in,
    drpwe_common_in,
    gtgrefclk0_in,
    gtgrefclk1_in,
    gtnorthrefclk00_in,
    gtnorthrefclk01_in,
    gtnorthrefclk10_in,
    gtnorthrefclk11_in,
    gtrefclk00_in,
    gtrefclk01_in,
    gtrefclk10_in,
    gtrefclk11_in,
    gtsouthrefclk00_in,
    gtsouthrefclk01_in,
    gtsouthrefclk10_in,
    gtsouthrefclk11_in,
    pcierateqpll0_in,
    pcierateqpll1_in,
    pmarsvd0_in,
    pmarsvd1_in,
    qpll0clkrsvd0_in,
    qpll0clkrsvd1_in,
    qpll0fbdiv_in,
    qpll0lockdetclk_in,
    qpll0locken_in,
    qpll0pd_in,
    qpll0refclksel_in,
    qpll0reset_in,
    qpll1clkrsvd0_in,
    qpll1clkrsvd1_in,
    qpll1fbdiv_in,
    qpll1lockdetclk_in,
    qpll1locken_in,
    qpll1pd_in,
    qpll1refclksel_in,
    qpll1reset_in,
    qpllrsvd1_in,
    qpllrsvd2_in,
    qpllrsvd3_in,
    qpllrsvd4_in,
    rcalenb_in,
    sdm0data_in,
    sdm0reset_in,
    sdm0toggle_in,
    sdm0width_in,
    sdm1data_in,
    sdm1reset_in,
    sdm1toggle_in,
    sdm1width_in,
    tcongpi_in,
    tconpowerup_in,
    tconreset_in,
    tconrsvdin1_in,
    ubcfgstreamen_in,
    ubdo_in,
    ubdrdy_in,
    ubenable_in,
    ubgpi_in,
    ubintr_in,
    ubiolmbrst_in,
    ubmbrst_in,
    ubmdmcapture_in,
    ubmdmdbgrst_in,
    ubmdmdbgupdate_in,
    ubmdmregen_in,
    ubmdmshift_in,
    ubmdmsysrst_in,
    ubmdmtck_in,
    ubmdmtdi_in,
    drpdo_common_out,
    drprdy_common_out,
    pmarsvdout0_out,
    pmarsvdout1_out,
    qpll0fbclklost_out,
    qpll0lock_out,
    qpll0outclk_out,
    qpll0outrefclk_out,
    qpll0refclklost_out,
    qpll1fbclklost_out,
    qpll1lock_out,
    qpll1outclk_out,
    qpll1outrefclk_out,
    qpll1refclklost_out,
    qplldmonitor0_out,
    qplldmonitor1_out,
    refclkoutmonitor0_out,
    refclkoutmonitor1_out,
    rxrecclk0_sel_out,
    rxrecclk1_sel_out,
    rxrecclk0sel_out,
    rxrecclk1sel_out,
    sdm0finalout_out,
    sdm0testdata_out,
    sdm1finalout_out,
    sdm1testdata_out,
    tcongpo_out,
    tconrsvdout0_out,
    ubdaddr_out,
    ubden_out,
    ubdi_out,
    ubdwe_out,
    ubmdmtdo_out,
    ubrsvdout_out,
    ubtxuart_out,
    cdrstepdir_in,
    cdrstepsq_in,
    cdrstepsx_in,
    cfgreset_in,
    clkrsvd0_in,
    clkrsvd1_in,
    cpllfreqlock_in,
    cplllockdetclk_in,
    cplllocken_in,
    cpllpd_in,
    cpllrefclksel_in,
    cpllreset_in,
    dmonfiforeset_in,
    dmonitorclk_in,
    drpaddr_in,
    drpclk_in,
    drpdi_in,
    drpen_in,
    drprst_in,
    drpwe_in,
    elpcaldvorwren_in,
    elpcalpaorwren_in,
    evoddphicaldone_in,
    evoddphicalstart_in,
    evoddphidrden_in,
    evoddphidwren_in,
    evoddphixrden_in,
    evoddphixwren_in,
    eyescanmode_in,
    eyescanreset_in,
    eyescantrigger_in,
    freqos_in,
    gtgrefclk_in,
    gthrxn_in,
    gthrxp_in,
    gtnorthrefclk0_in,
    gtnorthrefclk1_in,
    gtrefclk0_in,
    gtrefclk1_in,
    gtresetsel_in,
    gtrsvd_in,
    gtrxreset_in,
    gtrxresetsel_in,
    gtsouthrefclk0_in,
    gtsouthrefclk1_in,
    gttxreset_in,
    gttxresetsel_in,
    incpctrl_in,
    gtyrxn_in,
    gtyrxp_in,
    loopback_in,
    looprsvd_in,
    lpbkrxtxseren_in,
    lpbktxrxseren_in,
    pcieeqrxeqadaptdone_in,
    pcierstidle_in,
    pciersttxsyncstart_in,
    pcieuserratedone_in,
    pcsrsvdin_in,
    pcsrsvdin2_in,
    pmarsvdin_in,
    qpll0clk_in,
    qpll0freqlock_in,
    qpll0refclk_in,
    qpll1clk_in,
    qpll1freqlock_in,
    qpll1refclk_in,
    resetovrd_in,
    rstclkentx_in,
    rx8b10ben_in,
    rxafecfoken_in,
    rxbufreset_in,
    rxcdrfreqreset_in,
    rxcdrhold_in,
    rxcdrovrden_in,
    rxcdrreset_in,
    rxcdrresetrsv_in,
    rxchbonden_in,
    rxchbondi_in,
    rxchbondlevel_in,
    rxchbondmaster_in,
    rxchbondslave_in,
    rxckcalreset_in,
    rxckcalstart_in,
    rxcommadeten_in,
    rxdfeagcctrl_in,
    rxdccforcestart_in,
    rxdfeagchold_in,
    rxdfeagcovrden_in,
    rxdfecfokfcnum_in,
    rxdfecfokfen_in,
    rxdfecfokfpulse_in,
    rxdfecfokhold_in,
    rxdfecfokovren_in,
    rxdfekhhold_in,
    rxdfekhovrden_in,
    rxdfelfhold_in,
    rxdfelfovrden_in,
    rxdfelpmreset_in,
    rxdfetap10hold_in,
    rxdfetap10ovrden_in,
    rxdfetap11hold_in,
    rxdfetap11ovrden_in,
    rxdfetap12hold_in,
    rxdfetap12ovrden_in,
    rxdfetap13hold_in,
    rxdfetap13ovrden_in,
    rxdfetap14hold_in,
    rxdfetap14ovrden_in,
    rxdfetap15hold_in,
    rxdfetap15ovrden_in,
    rxdfetap2hold_in,
    rxdfetap2ovrden_in,
    rxdfetap3hold_in,
    rxdfetap3ovrden_in,
    rxdfetap4hold_in,
    rxdfetap4ovrden_in,
    rxdfetap5hold_in,
    rxdfetap5ovrden_in,
    rxdfetap6hold_in,
    rxdfetap6ovrden_in,
    rxdfetap7hold_in,
    rxdfetap7ovrden_in,
    rxdfetap8hold_in,
    rxdfetap8ovrden_in,
    rxdfetap9hold_in,
    rxdfetap9ovrden_in,
    rxdfeuthold_in,
    rxdfeutovrden_in,
    rxdfevphold_in,
    rxdfevpovrden_in,
    rxdfevsen_in,
    rxdfexyden_in,
    rxdlybypass_in,
    rxdlyen_in,
    rxdlyovrden_in,
    rxdlysreset_in,
    rxelecidlemode_in,
    rxeqtraining_in,
    rxgearboxslip_in,
    rxlatclk_in,
    rxlpmen_in,
    rxlpmgchold_in,
    rxlpmgcovrden_in,
    rxlpmhfhold_in,
    rxlpmhfovrden_in,
    rxlpmlfhold_in,
    rxlpmlfklovrden_in,
    rxlpmoshold_in,
    rxlpmosovrden_in,
    rxmcommaalignen_in,
    rxmonitorsel_in,
    rxoobreset_in,
    rxoscalreset_in,
    rxoshold_in,
    rxosintcfg_in,
    rxosinten_in,
    rxosinthold_in,
    rxosintovrden_in,
    rxosintstrobe_in,
    rxosinttestovrden_in,
    rxosovrden_in,
    rxoutclksel_in,
    rxpcommaalignen_in,
    rxpcsreset_in,
    rxpd_in,
    rxphalign_in,
    rxphalignen_in,
    rxphdlypd_in,
    rxphdlyreset_in,
    rxphovrden_in,
    rxpllclksel_in,
    rxpmareset_in,
    rxpolarity_in,
    rxprbscntreset_in,
    rxprbssel_in,
    rxprogdivreset_in,
    rxqpien_in,
    rxrate_in,
    rxratemode_in,
    rxslide_in,
    rxslipoutclk_in,
    rxslippma_in,
    rxsyncallin_in,
    rxsyncin_in,
    rxsyncmode_in,
    rxsysclksel_in,
    rxtermination_in,
    rxuserrdy_in,
    rxusrclk_in,
    rxusrclk2_in,
    sigvalidclk_in,
    tstin_in,
    tx8b10bbypass_in,
    tx8b10ben_in,
    txbufdiffctrl_in,
    txcominit_in,
    txcomsas_in,
    txcomwake_in,
    txctrl0_in,
    txctrl1_in,
    txctrl2_in,
    txdata_in,
    txdataextendrsvd_in,
    txdccforcestart_in,
    txdccreset_in,
    txdeemph_in,
    txdetectrx_in,
    txdiffctrl_in,
    txdiffpd_in,
    txdlybypass_in,
    txdlyen_in,
    txdlyhold_in,
    txdlyovrden_in,
    txdlysreset_in,
    txdlyupdown_in,
    txelecidle_in,
    txelforcestart_in,
    txheader_in,
    txinhibit_in,
    txlatclk_in,
    txlfpstreset_in,
    txlfpsu2lpexit_in,
    txlfpsu3wake_in,
    txmaincursor_in,
    txmargin_in,
    txmuxdcdexhold_in,
    txmuxdcdorwren_in,
    txoneszeros_in,
    txoutclksel_in,
    txpcsreset_in,
    txpd_in,
    txpdelecidlemode_in,
    txphalign_in,
    txphalignen_in,
    txphdlypd_in,
    txphdlyreset_in,
    txphdlytstclk_in,
    txphinit_in,
    txphovrden_in,
    txpippmen_in,
    txpippmovrden_in,
    txpippmpd_in,
    txpippmsel_in,
    txpippmstepsize_in,
    txpisopd_in,
    txpllclksel_in,
    txpmareset_in,
    txpolarity_in,
    txpostcursor_in,
    txpostcursorinv_in,
    txprbsforceerr_in,
    txprbssel_in,
    txprecursor_in,
    txprecursorinv_in,
    txprogdivreset_in,
    txqpibiasen_in,
    txqpistrongpdown_in,
    txqpiweakpup_in,
    txrate_in,
    txratemode_in,
    txsequence_in,
    txswing_in,
    txsyncallin_in,
    txsyncin_in,
    txsyncmode_in,
    txsysclksel_in,
    txuserrdy_in,
    txusrclk_in,
    txusrclk2_in,
    bufgtce_out,
    bufgtcemask_out,
    bufgtdiv_out,
    bufgtreset_out,
    bufgtrstmask_out,
    cpllfbclklost_out,
    cplllock_out,
    cpllrefclklost_out,
    dmonitorout_out,
    dmonitoroutclk_out,
    drpdo_out,
    drprdy_out,
    eyescandataerror_out,
    gthtxn_out,
    gthtxp_out,
    gtpowergood_out,
    gtrefclkmonitor_out,
    gtytxn_out,
    gtytxp_out,
    pcierategen3_out,
    pcierateidle_out,
    pcierateqpllpd_out,
    pcierateqpllreset_out,
    pciesynctxsyncdone_out,
    pcieusergen3rdy_out,
    pcieuserphystatusrst_out,
    pcieuserratestart_out,
    pcsrsvdout_out,
    phystatus_out,
    pinrsrvdas_out,
    powerpresent_out,
    resetexception_out,
    rxbufstatus_out,
    rxbyteisaligned_out,
    rxbyterealign_out,
    rxcdrlock_out,
    rxcdrphdone_out,
    rxchanbondseq_out,
    rxchanisaligned_out,
    rxchanrealign_out,
    rxchbondo_out,
    rxckcaldone_out,
    rxclkcorcnt_out,
    rxcominitdet_out,
    rxcommadet_out,
    rxcomsasdet_out,
    rxcomwakedet_out,
    rxctrl0_out,
    rxctrl1_out,
    rxctrl2_out,
    rxctrl3_out,
    rxdata_out,
    rxdataextendrsvd_out,
    rxdatavalid_out,
    rxdlysresetdone_out,
    rxelecidle_out,
    rxheader_out,
    rxheadervalid_out,
    rxlfpstresetdet_out,
    rxlfpsu2lpexitdet_out,
    rxlfpsu3wakedet_out,
    rxmonitorout_out,
    rxosintdone_out,
    rxosintstarted_out,
    rxosintstrobedone_out,
    rxosintstrobestarted_out,
    rxoutclk_out,
    rxoutclkfabric_out,
    rxoutclkpcs_out,
    rxphaligndone_out,
    rxphalignerr_out,
    rxpmaresetdone_out,
    rxprbserr_out,
    rxprbslocked_out,
    rxprgdivresetdone_out,
    rxqpisenn_out,
    rxqpisenp_out,
    rxratedone_out,
    rxrecclkout_out,
    rxresetdone_out,
    rxsliderdy_out,
    rxslipdone_out,
    rxslipoutclkrdy_out,
    rxslippmardy_out,
    rxstartofseq_out,
    rxstatus_out,
    rxsyncdone_out,
    rxsyncout_out,
    rxvalid_out,
    txbufstatus_out,
    txcomfinish_out,
    txdccdone_out,
    txdlysresetdone_out,
    txoutclk_out,
    txoutclkfabric_out,
    txoutclkpcs_out,
    txphaligndone_out,
    txphinitdone_out,
    txpmaresetdone_out,
    txprgdivresetdone_out,
    txqpisenn_out,
    txqpisenp_out,
    txratedone_out,
    txresetdone_out,
    txsyncdone_out,
    txsyncout_out,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  input [0:0]gtwiz_userclk_tx_reset_in;
  input [0:0]gtwiz_userclk_tx_active_in;
  output [0:0]gtwiz_userclk_tx_srcclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk_out;
  output [0:0]gtwiz_userclk_tx_usrclk2_out;
  output [0:0]gtwiz_userclk_tx_active_out;
  input [0:0]gtwiz_userclk_rx_reset_in;
  input [0:0]gtwiz_userclk_rx_active_in;
  output [0:0]gtwiz_userclk_rx_srcclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk_out;
  output [0:0]gtwiz_userclk_rx_usrclk2_out;
  output [0:0]gtwiz_userclk_rx_active_out;
  input [0:0]gtwiz_buffbypass_tx_reset_in;
  input [0:0]gtwiz_buffbypass_tx_start_user_in;
  output [0:0]gtwiz_buffbypass_tx_done_out;
  output [0:0]gtwiz_buffbypass_tx_error_out;
  input [0:0]gtwiz_buffbypass_rx_reset_in;
  input [0:0]gtwiz_buffbypass_rx_start_user_in;
  output [0:0]gtwiz_buffbypass_rx_done_out;
  output [0:0]gtwiz_buffbypass_rx_error_out;
  input [0:0]gtwiz_reset_clk_freerun_in;
  input [0:0]gtwiz_reset_all_in;
  input [0:0]gtwiz_reset_tx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_tx_datapath_in;
  input [0:0]gtwiz_reset_rx_pll_and_datapath_in;
  input [0:0]gtwiz_reset_rx_datapath_in;
  input [0:0]gtwiz_reset_tx_done_in;
  input [0:0]gtwiz_reset_rx_done_in;
  input [0:0]gtwiz_reset_qpll0lock_in;
  input [0:0]gtwiz_reset_qpll1lock_in;
  output [0:0]gtwiz_reset_rx_cdr_stable_out;
  output [0:0]gtwiz_reset_tx_done_out;
  output [0:0]gtwiz_reset_rx_done_out;
  output [0:0]gtwiz_reset_qpll0reset_out;
  output [0:0]gtwiz_reset_qpll1reset_out;
  input [17:0]gtwiz_gthe3_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe3_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe3_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gthe4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gthe4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gthe4_cpll_cal_bufg_ce_in;
  input [17:0]gtwiz_gtye4_cpll_cal_txoutclk_period_in;
  input [17:0]gtwiz_gtye4_cpll_cal_cnt_tol_in;
  input [0:0]gtwiz_gtye4_cpll_cal_bufg_ce_in;
  input [15:0]gtwiz_userdata_tx_in;
  output [15:0]gtwiz_userdata_rx_out;
  input [0:0]bgbypassb_in;
  input [0:0]bgmonitorenb_in;
  input [0:0]bgpdb_in;
  input [4:0]bgrcalovrd_in;
  input [0:0]bgrcalovrdenb_in;
  input [15:0]drpaddr_common_in;
  input [0:0]drpclk_common_in;
  input [15:0]drpdi_common_in;
  input [0:0]drpen_common_in;
  input [0:0]drpwe_common_in;
  input [0:0]gtgrefclk0_in;
  input [0:0]gtgrefclk1_in;
  input [0:0]gtnorthrefclk00_in;
  input [0:0]gtnorthrefclk01_in;
  input [0:0]gtnorthrefclk10_in;
  input [0:0]gtnorthrefclk11_in;
  input [0:0]gtrefclk00_in;
  input [0:0]gtrefclk01_in;
  input [0:0]gtrefclk10_in;
  input [0:0]gtrefclk11_in;
  input [0:0]gtsouthrefclk00_in;
  input [0:0]gtsouthrefclk01_in;
  input [0:0]gtsouthrefclk10_in;
  input [0:0]gtsouthrefclk11_in;
  input [2:0]pcierateqpll0_in;
  input [2:0]pcierateqpll1_in;
  input [7:0]pmarsvd0_in;
  input [7:0]pmarsvd1_in;
  input [0:0]qpll0clkrsvd0_in;
  input [0:0]qpll0clkrsvd1_in;
  input [7:0]qpll0fbdiv_in;
  input [0:0]qpll0lockdetclk_in;
  input [0:0]qpll0locken_in;
  input [0:0]qpll0pd_in;
  input [2:0]qpll0refclksel_in;
  input [0:0]qpll0reset_in;
  input [0:0]qpll1clkrsvd0_in;
  input [0:0]qpll1clkrsvd1_in;
  input [7:0]qpll1fbdiv_in;
  input [0:0]qpll1lockdetclk_in;
  input [0:0]qpll1locken_in;
  input [0:0]qpll1pd_in;
  input [2:0]qpll1refclksel_in;
  input [0:0]qpll1reset_in;
  input [7:0]qpllrsvd1_in;
  input [4:0]qpllrsvd2_in;
  input [4:0]qpllrsvd3_in;
  input [7:0]qpllrsvd4_in;
  input [0:0]rcalenb_in;
  input [24:0]sdm0data_in;
  input [0:0]sdm0reset_in;
  input [0:0]sdm0toggle_in;
  input [1:0]sdm0width_in;
  input [24:0]sdm1data_in;
  input [0:0]sdm1reset_in;
  input [0:0]sdm1toggle_in;
  input [1:0]sdm1width_in;
  input [9:0]tcongpi_in;
  input [0:0]tconpowerup_in;
  input [1:0]tconreset_in;
  input [1:0]tconrsvdin1_in;
  input [0:0]ubcfgstreamen_in;
  input [0:0]ubdo_in;
  input [0:0]ubdrdy_in;
  input [0:0]ubenable_in;
  input [0:0]ubgpi_in;
  input [0:0]ubintr_in;
  input [0:0]ubiolmbrst_in;
  input [0:0]ubmbrst_in;
  input [0:0]ubmdmcapture_in;
  input [0:0]ubmdmdbgrst_in;
  input [0:0]ubmdmdbgupdate_in;
  input [0:0]ubmdmregen_in;
  input [0:0]ubmdmshift_in;
  input [0:0]ubmdmsysrst_in;
  input [0:0]ubmdmtck_in;
  input [0:0]ubmdmtdi_in;
  output [15:0]drpdo_common_out;
  output [0:0]drprdy_common_out;
  output [7:0]pmarsvdout0_out;
  output [7:0]pmarsvdout1_out;
  output [0:0]qpll0fbclklost_out;
  output [0:0]qpll0lock_out;
  output [0:0]qpll0outclk_out;
  output [0:0]qpll0outrefclk_out;
  output [0:0]qpll0refclklost_out;
  output [0:0]qpll1fbclklost_out;
  output [0:0]qpll1lock_out;
  output [0:0]qpll1outclk_out;
  output [0:0]qpll1outrefclk_out;
  output [0:0]qpll1refclklost_out;
  output [7:0]qplldmonitor0_out;
  output [7:0]qplldmonitor1_out;
  output [0:0]refclkoutmonitor0_out;
  output [0:0]refclkoutmonitor1_out;
  output [0:0]rxrecclk0_sel_out;
  output [0:0]rxrecclk1_sel_out;
  output [1:0]rxrecclk0sel_out;
  output [1:0]rxrecclk1sel_out;
  output [3:0]sdm0finalout_out;
  output [14:0]sdm0testdata_out;
  output [3:0]sdm1finalout_out;
  output [14:0]sdm1testdata_out;
  output [9:0]tcongpo_out;
  output [0:0]tconrsvdout0_out;
  output [0:0]ubdaddr_out;
  output [0:0]ubden_out;
  output [0:0]ubdi_out;
  output [0:0]ubdwe_out;
  output [0:0]ubmdmtdo_out;
  output [0:0]ubrsvdout_out;
  output [0:0]ubtxuart_out;
  input [0:0]cdrstepdir_in;
  input [0:0]cdrstepsq_in;
  input [0:0]cdrstepsx_in;
  input [0:0]cfgreset_in;
  input [0:0]clkrsvd0_in;
  input [0:0]clkrsvd1_in;
  input [0:0]cpllfreqlock_in;
  input [0:0]cplllockdetclk_in;
  input [0:0]cplllocken_in;
  input [0:0]cpllpd_in;
  input [2:0]cpllrefclksel_in;
  input [0:0]cpllreset_in;
  input [0:0]dmonfiforeset_in;
  input [0:0]dmonitorclk_in;
  input [9:0]drpaddr_in;
  input [0:0]drpclk_in;
  input [15:0]drpdi_in;
  input [0:0]drpen_in;
  input [0:0]drprst_in;
  input [0:0]drpwe_in;
  input [0:0]elpcaldvorwren_in;
  input [0:0]elpcalpaorwren_in;
  input [0:0]evoddphicaldone_in;
  input [0:0]evoddphicalstart_in;
  input [0:0]evoddphidrden_in;
  input [0:0]evoddphidwren_in;
  input [0:0]evoddphixrden_in;
  input [0:0]evoddphixwren_in;
  input [0:0]eyescanmode_in;
  input [0:0]eyescanreset_in;
  input [0:0]eyescantrigger_in;
  input [0:0]freqos_in;
  input [0:0]gtgrefclk_in;
  input [0:0]gthrxn_in;
  input [0:0]gthrxp_in;
  input [0:0]gtnorthrefclk0_in;
  input [0:0]gtnorthrefclk1_in;
  input [0:0]gtrefclk0_in;
  input [0:0]gtrefclk1_in;
  input [0:0]gtresetsel_in;
  input [15:0]gtrsvd_in;
  input [0:0]gtrxreset_in;
  input [0:0]gtrxresetsel_in;
  input [0:0]gtsouthrefclk0_in;
  input [0:0]gtsouthrefclk1_in;
  input [0:0]gttxreset_in;
  input [0:0]gttxresetsel_in;
  input [0:0]incpctrl_in;
  input [0:0]gtyrxn_in;
  input [0:0]gtyrxp_in;
  input [2:0]loopback_in;
  input [0:0]looprsvd_in;
  input [0:0]lpbkrxtxseren_in;
  input [0:0]lpbktxrxseren_in;
  input [0:0]pcieeqrxeqadaptdone_in;
  input [0:0]pcierstidle_in;
  input [0:0]pciersttxsyncstart_in;
  input [0:0]pcieuserratedone_in;
  input [15:0]pcsrsvdin_in;
  input [0:0]pcsrsvdin2_in;
  input [0:0]pmarsvdin_in;
  input [0:0]qpll0clk_in;
  input [0:0]qpll0freqlock_in;
  input [0:0]qpll0refclk_in;
  input [0:0]qpll1clk_in;
  input [0:0]qpll1freqlock_in;
  input [0:0]qpll1refclk_in;
  input [0:0]resetovrd_in;
  input [0:0]rstclkentx_in;
  input [0:0]rx8b10ben_in;
  input [0:0]rxafecfoken_in;
  input [0:0]rxbufreset_in;
  input [0:0]rxcdrfreqreset_in;
  input [0:0]rxcdrhold_in;
  input [0:0]rxcdrovrden_in;
  input [0:0]rxcdrreset_in;
  input [0:0]rxcdrresetrsv_in;
  input [0:0]rxchbonden_in;
  input [4:0]rxchbondi_in;
  input [2:0]rxchbondlevel_in;
  input [0:0]rxchbondmaster_in;
  input [0:0]rxchbondslave_in;
  input [0:0]rxckcalreset_in;
  input [6:0]rxckcalstart_in;
  input [0:0]rxcommadeten_in;
  input [1:0]rxdfeagcctrl_in;
  input [0:0]rxdccforcestart_in;
  input [0:0]rxdfeagchold_in;
  input [0:0]rxdfeagcovrden_in;
  input [3:0]rxdfecfokfcnum_in;
  input [0:0]rxdfecfokfen_in;
  input [0:0]rxdfecfokfpulse_in;
  input [0:0]rxdfecfokhold_in;
  input [0:0]rxdfecfokovren_in;
  input [0:0]rxdfekhhold_in;
  input [0:0]rxdfekhovrden_in;
  input [0:0]rxdfelfhold_in;
  input [0:0]rxdfelfovrden_in;
  input [0:0]rxdfelpmreset_in;
  input [0:0]rxdfetap10hold_in;
  input [0:0]rxdfetap10ovrden_in;
  input [0:0]rxdfetap11hold_in;
  input [0:0]rxdfetap11ovrden_in;
  input [0:0]rxdfetap12hold_in;
  input [0:0]rxdfetap12ovrden_in;
  input [0:0]rxdfetap13hold_in;
  input [0:0]rxdfetap13ovrden_in;
  input [0:0]rxdfetap14hold_in;
  input [0:0]rxdfetap14ovrden_in;
  input [0:0]rxdfetap15hold_in;
  input [0:0]rxdfetap15ovrden_in;
  input [0:0]rxdfetap2hold_in;
  input [0:0]rxdfetap2ovrden_in;
  input [0:0]rxdfetap3hold_in;
  input [0:0]rxdfetap3ovrden_in;
  input [0:0]rxdfetap4hold_in;
  input [0:0]rxdfetap4ovrden_in;
  input [0:0]rxdfetap5hold_in;
  input [0:0]rxdfetap5ovrden_in;
  input [0:0]rxdfetap6hold_in;
  input [0:0]rxdfetap6ovrden_in;
  input [0:0]rxdfetap7hold_in;
  input [0:0]rxdfetap7ovrden_in;
  input [0:0]rxdfetap8hold_in;
  input [0:0]rxdfetap8ovrden_in;
  input [0:0]rxdfetap9hold_in;
  input [0:0]rxdfetap9ovrden_in;
  input [0:0]rxdfeuthold_in;
  input [0:0]rxdfeutovrden_in;
  input [0:0]rxdfevphold_in;
  input [0:0]rxdfevpovrden_in;
  input [0:0]rxdfevsen_in;
  input [0:0]rxdfexyden_in;
  input [0:0]rxdlybypass_in;
  input [0:0]rxdlyen_in;
  input [0:0]rxdlyovrden_in;
  input [0:0]rxdlysreset_in;
  input [1:0]rxelecidlemode_in;
  input [0:0]rxeqtraining_in;
  input [0:0]rxgearboxslip_in;
  input [0:0]rxlatclk_in;
  input [0:0]rxlpmen_in;
  input [0:0]rxlpmgchold_in;
  input [0:0]rxlpmgcovrden_in;
  input [0:0]rxlpmhfhold_in;
  input [0:0]rxlpmhfovrden_in;
  input [0:0]rxlpmlfhold_in;
  input [0:0]rxlpmlfklovrden_in;
  input [0:0]rxlpmoshold_in;
  input [0:0]rxlpmosovrden_in;
  input [0:0]rxmcommaalignen_in;
  input [1:0]rxmonitorsel_in;
  input [0:0]rxoobreset_in;
  input [0:0]rxoscalreset_in;
  input [0:0]rxoshold_in;
  input [0:0]rxosintcfg_in;
  input [0:0]rxosinten_in;
  input [0:0]rxosinthold_in;
  input [0:0]rxosintovrden_in;
  input [0:0]rxosintstrobe_in;
  input [0:0]rxosinttestovrden_in;
  input [0:0]rxosovrden_in;
  input [2:0]rxoutclksel_in;
  input [0:0]rxpcommaalignen_in;
  input [0:0]rxpcsreset_in;
  input [1:0]rxpd_in;
  input [0:0]rxphalign_in;
  input [0:0]rxphalignen_in;
  input [0:0]rxphdlypd_in;
  input [0:0]rxphdlyreset_in;
  input [0:0]rxphovrden_in;
  input [1:0]rxpllclksel_in;
  input [0:0]rxpmareset_in;
  input [0:0]rxpolarity_in;
  input [0:0]rxprbscntreset_in;
  input [3:0]rxprbssel_in;
  input [0:0]rxprogdivreset_in;
  input [0:0]rxqpien_in;
  input [2:0]rxrate_in;
  input [0:0]rxratemode_in;
  input [0:0]rxslide_in;
  input [0:0]rxslipoutclk_in;
  input [0:0]rxslippma_in;
  input [0:0]rxsyncallin_in;
  input [0:0]rxsyncin_in;
  input [0:0]rxsyncmode_in;
  input [1:0]rxsysclksel_in;
  input [0:0]rxtermination_in;
  input [0:0]rxuserrdy_in;
  input [0:0]rxusrclk_in;
  input [0:0]rxusrclk2_in;
  input [0:0]sigvalidclk_in;
  input [19:0]tstin_in;
  input [7:0]tx8b10bbypass_in;
  input [0:0]tx8b10ben_in;
  input [0:0]txbufdiffctrl_in;
  input [0:0]txcominit_in;
  input [0:0]txcomsas_in;
  input [0:0]txcomwake_in;
  input [15:0]txctrl0_in;
  input [15:0]txctrl1_in;
  input [7:0]txctrl2_in;
  input [127:0]txdata_in;
  input [7:0]txdataextendrsvd_in;
  input [0:0]txdccforcestart_in;
  input [0:0]txdccreset_in;
  input [1:0]txdeemph_in;
  input [0:0]txdetectrx_in;
  input [4:0]txdiffctrl_in;
  input [0:0]txdiffpd_in;
  input [0:0]txdlybypass_in;
  input [0:0]txdlyen_in;
  input [0:0]txdlyhold_in;
  input [0:0]txdlyovrden_in;
  input [0:0]txdlysreset_in;
  input [0:0]txdlyupdown_in;
  input [0:0]txelecidle_in;
  input [0:0]txelforcestart_in;
  input [5:0]txheader_in;
  input [0:0]txinhibit_in;
  input [0:0]txlatclk_in;
  input [0:0]txlfpstreset_in;
  input [0:0]txlfpsu2lpexit_in;
  input [0:0]txlfpsu3wake_in;
  input [6:0]txmaincursor_in;
  input [2:0]txmargin_in;
  input [0:0]txmuxdcdexhold_in;
  input [0:0]txmuxdcdorwren_in;
  input [0:0]txoneszeros_in;
  input [2:0]txoutclksel_in;
  input [0:0]txpcsreset_in;
  input [1:0]txpd_in;
  input [0:0]txpdelecidlemode_in;
  input [0:0]txphalign_in;
  input [0:0]txphalignen_in;
  input [0:0]txphdlypd_in;
  input [0:0]txphdlyreset_in;
  input [0:0]txphdlytstclk_in;
  input [0:0]txphinit_in;
  input [0:0]txphovrden_in;
  input [0:0]txpippmen_in;
  input [0:0]txpippmovrden_in;
  input [0:0]txpippmpd_in;
  input [0:0]txpippmsel_in;
  input [4:0]txpippmstepsize_in;
  input [0:0]txpisopd_in;
  input [1:0]txpllclksel_in;
  input [0:0]txpmareset_in;
  input [0:0]txpolarity_in;
  input [4:0]txpostcursor_in;
  input [0:0]txpostcursorinv_in;
  input [0:0]txprbsforceerr_in;
  input [3:0]txprbssel_in;
  input [4:0]txprecursor_in;
  input [0:0]txprecursorinv_in;
  input [0:0]txprogdivreset_in;
  input [0:0]txqpibiasen_in;
  input [0:0]txqpistrongpdown_in;
  input [0:0]txqpiweakpup_in;
  input [2:0]txrate_in;
  input [0:0]txratemode_in;
  input [6:0]txsequence_in;
  input [0:0]txswing_in;
  input [0:0]txsyncallin_in;
  input [0:0]txsyncin_in;
  input [0:0]txsyncmode_in;
  input [1:0]txsysclksel_in;
  input [0:0]txuserrdy_in;
  input [0:0]txusrclk_in;
  input [0:0]txusrclk2_in;
  output [0:0]bufgtce_out;
  output [2:0]bufgtcemask_out;
  output [8:0]bufgtdiv_out;
  output [0:0]bufgtreset_out;
  output [2:0]bufgtrstmask_out;
  output [0:0]cpllfbclklost_out;
  output [0:0]cplllock_out;
  output [0:0]cpllrefclklost_out;
  output [15:0]dmonitorout_out;
  output [0:0]dmonitoroutclk_out;
  output [15:0]drpdo_out;
  output [0:0]drprdy_out;
  output [0:0]eyescandataerror_out;
  output [0:0]gthtxn_out;
  output [0:0]gthtxp_out;
  output [0:0]gtpowergood_out;
  output [0:0]gtrefclkmonitor_out;
  output [0:0]gtytxn_out;
  output [0:0]gtytxp_out;
  output [0:0]pcierategen3_out;
  output [0:0]pcierateidle_out;
  output [1:0]pcierateqpllpd_out;
  output [1:0]pcierateqpllreset_out;
  output [0:0]pciesynctxsyncdone_out;
  output [0:0]pcieusergen3rdy_out;
  output [0:0]pcieuserphystatusrst_out;
  output [0:0]pcieuserratestart_out;
  output [15:0]pcsrsvdout_out;
  output [0:0]phystatus_out;
  output [15:0]pinrsrvdas_out;
  output [0:0]powerpresent_out;
  output [0:0]resetexception_out;
  output [2:0]rxbufstatus_out;
  output [0:0]rxbyteisaligned_out;
  output [0:0]rxbyterealign_out;
  output [0:0]rxcdrlock_out;
  output [0:0]rxcdrphdone_out;
  output [0:0]rxchanbondseq_out;
  output [0:0]rxchanisaligned_out;
  output [0:0]rxchanrealign_out;
  output [4:0]rxchbondo_out;
  output [0:0]rxckcaldone_out;
  output [1:0]rxclkcorcnt_out;
  output [0:0]rxcominitdet_out;
  output [0:0]rxcommadet_out;
  output [0:0]rxcomsasdet_out;
  output [0:0]rxcomwakedet_out;
  output [15:0]rxctrl0_out;
  output [15:0]rxctrl1_out;
  output [7:0]rxctrl2_out;
  output [7:0]rxctrl3_out;
  output [127:0]rxdata_out;
  output [7:0]rxdataextendrsvd_out;
  output [1:0]rxdatavalid_out;
  output [0:0]rxdlysresetdone_out;
  output [0:0]rxelecidle_out;
  output [5:0]rxheader_out;
  output [1:0]rxheadervalid_out;
  output [0:0]rxlfpstresetdet_out;
  output [0:0]rxlfpsu2lpexitdet_out;
  output [0:0]rxlfpsu3wakedet_out;
  output [7:0]rxmonitorout_out;
  output [0:0]rxosintdone_out;
  output [0:0]rxosintstarted_out;
  output [0:0]rxosintstrobedone_out;
  output [0:0]rxosintstrobestarted_out;
  output [0:0]rxoutclk_out;
  output [0:0]rxoutclkfabric_out;
  output [0:0]rxoutclkpcs_out;
  output [0:0]rxphaligndone_out;
  output [0:0]rxphalignerr_out;
  output [0:0]rxpmaresetdone_out;
  output [0:0]rxprbserr_out;
  output [0:0]rxprbslocked_out;
  output [0:0]rxprgdivresetdone_out;
  output [0:0]rxqpisenn_out;
  output [0:0]rxqpisenp_out;
  output [0:0]rxratedone_out;
  output [0:0]rxrecclkout_out;
  output [0:0]rxresetdone_out;
  output [0:0]rxsliderdy_out;
  output [0:0]rxslipdone_out;
  output [0:0]rxslipoutclkrdy_out;
  output [0:0]rxslippmardy_out;
  output [1:0]rxstartofseq_out;
  output [2:0]rxstatus_out;
  output [0:0]rxsyncdone_out;
  output [0:0]rxsyncout_out;
  output [0:0]rxvalid_out;
  output [1:0]txbufstatus_out;
  output [0:0]txcomfinish_out;
  output [0:0]txdccdone_out;
  output [0:0]txdlysresetdone_out;
  output [0:0]txoutclk_out;
  output [0:0]txoutclkfabric_out;
  output [0:0]txoutclkpcs_out;
  output [0:0]txphaligndone_out;
  output [0:0]txphinitdone_out;
  output [0:0]txpmaresetdone_out;
  output [0:0]txprgdivresetdone_out;
  output [0:0]txqpisenn_out;
  output [0:0]txqpisenp_out;
  output [0:0]txratedone_out;
  output [0:0]txresetdone_out;
  output [0:0]txsyncdone_out;
  output [0:0]txsyncout_out;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire \<const0> ;
  wire [0:0]drpclk_in;
  wire [0:0]gthrxn_in;
  wire [0:0]gthrxp_in;
  wire [0:0]gthtxn_out;
  wire [0:0]gthtxp_out;
  wire [0:0]gtpowergood_out;
  wire [0:0]gtrefclk0_in;
  wire [0:0]gtwiz_reset_all_in;
  wire [0:0]gtwiz_reset_rx_datapath_in;
  wire [0:0]gtwiz_reset_rx_done_out;
  wire [0:0]gtwiz_reset_tx_datapath_in;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire [15:0]gtwiz_userdata_rx_out;
  wire [15:0]gtwiz_userdata_tx_in;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire [2:2]\^rxbufstatus_out ;
  wire [1:0]rxclkcorcnt_out;
  wire [1:0]\^rxctrl0_out ;
  wire [1:0]\^rxctrl1_out ;
  wire [1:0]\^rxctrl2_out ;
  wire [1:0]\^rxctrl3_out ;
  wire [0:0]rxmcommaalignen_in;
  wire [0:0]rxoutclk_out;
  wire [1:0]rxpd_in;
  wire [0:0]rxusrclk_in;
  wire [1:1]\^txbufstatus_out ;
  wire [15:0]txctrl0_in;
  wire [15:0]txctrl1_in;
  wire [7:0]txctrl2_in;
  wire [0:0]txelecidle_in;
  wire [0:0]txoutclk_out;

  assign bufgtce_out[0] = \<const0> ;
  assign bufgtcemask_out[2] = \<const0> ;
  assign bufgtcemask_out[1] = \<const0> ;
  assign bufgtcemask_out[0] = \<const0> ;
  assign bufgtdiv_out[8] = \<const0> ;
  assign bufgtdiv_out[7] = \<const0> ;
  assign bufgtdiv_out[6] = \<const0> ;
  assign bufgtdiv_out[5] = \<const0> ;
  assign bufgtdiv_out[4] = \<const0> ;
  assign bufgtdiv_out[3] = \<const0> ;
  assign bufgtdiv_out[2] = \<const0> ;
  assign bufgtdiv_out[1] = \<const0> ;
  assign bufgtdiv_out[0] = \<const0> ;
  assign bufgtreset_out[0] = \<const0> ;
  assign bufgtrstmask_out[2] = \<const0> ;
  assign bufgtrstmask_out[1] = \<const0> ;
  assign bufgtrstmask_out[0] = \<const0> ;
  assign cpllfbclklost_out[0] = \<const0> ;
  assign cplllock_out[0] = \<const0> ;
  assign cpllrefclklost_out[0] = \<const0> ;
  assign dmonitorout_out[15] = \<const0> ;
  assign dmonitorout_out[14] = \<const0> ;
  assign dmonitorout_out[13] = \<const0> ;
  assign dmonitorout_out[12] = \<const0> ;
  assign dmonitorout_out[11] = \<const0> ;
  assign dmonitorout_out[10] = \<const0> ;
  assign dmonitorout_out[9] = \<const0> ;
  assign dmonitorout_out[8] = \<const0> ;
  assign dmonitorout_out[7] = \<const0> ;
  assign dmonitorout_out[6] = \<const0> ;
  assign dmonitorout_out[5] = \<const0> ;
  assign dmonitorout_out[4] = \<const0> ;
  assign dmonitorout_out[3] = \<const0> ;
  assign dmonitorout_out[2] = \<const0> ;
  assign dmonitorout_out[1] = \<const0> ;
  assign dmonitorout_out[0] = \<const0> ;
  assign dmonitoroutclk_out[0] = \<const0> ;
  assign drpdo_common_out[15] = \<const0> ;
  assign drpdo_common_out[14] = \<const0> ;
  assign drpdo_common_out[13] = \<const0> ;
  assign drpdo_common_out[12] = \<const0> ;
  assign drpdo_common_out[11] = \<const0> ;
  assign drpdo_common_out[10] = \<const0> ;
  assign drpdo_common_out[9] = \<const0> ;
  assign drpdo_common_out[8] = \<const0> ;
  assign drpdo_common_out[7] = \<const0> ;
  assign drpdo_common_out[6] = \<const0> ;
  assign drpdo_common_out[5] = \<const0> ;
  assign drpdo_common_out[4] = \<const0> ;
  assign drpdo_common_out[3] = \<const0> ;
  assign drpdo_common_out[2] = \<const0> ;
  assign drpdo_common_out[1] = \<const0> ;
  assign drpdo_common_out[0] = \<const0> ;
  assign drpdo_out[15] = \<const0> ;
  assign drpdo_out[14] = \<const0> ;
  assign drpdo_out[13] = \<const0> ;
  assign drpdo_out[12] = \<const0> ;
  assign drpdo_out[11] = \<const0> ;
  assign drpdo_out[10] = \<const0> ;
  assign drpdo_out[9] = \<const0> ;
  assign drpdo_out[8] = \<const0> ;
  assign drpdo_out[7] = \<const0> ;
  assign drpdo_out[6] = \<const0> ;
  assign drpdo_out[5] = \<const0> ;
  assign drpdo_out[4] = \<const0> ;
  assign drpdo_out[3] = \<const0> ;
  assign drpdo_out[2] = \<const0> ;
  assign drpdo_out[1] = \<const0> ;
  assign drpdo_out[0] = \<const0> ;
  assign drprdy_common_out[0] = \<const0> ;
  assign drprdy_out[0] = \<const0> ;
  assign eyescandataerror_out[0] = \<const0> ;
  assign gtrefclkmonitor_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_rx_error_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_done_out[0] = \<const0> ;
  assign gtwiz_buffbypass_tx_error_out[0] = \<const0> ;
  assign gtwiz_reset_qpll0reset_out[0] = \<const0> ;
  assign gtwiz_reset_qpll1reset_out[0] = \<const0> ;
  assign gtwiz_reset_rx_cdr_stable_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_active_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_rx_usrclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_active_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_srcclk_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk2_out[0] = \<const0> ;
  assign gtwiz_userclk_tx_usrclk_out[0] = \<const0> ;
  assign gtytxn_out[0] = \<const0> ;
  assign gtytxp_out[0] = \<const0> ;
  assign pcierategen3_out[0] = \<const0> ;
  assign pcierateidle_out[0] = \<const0> ;
  assign pcierateqpllpd_out[1] = \<const0> ;
  assign pcierateqpllpd_out[0] = \<const0> ;
  assign pcierateqpllreset_out[1] = \<const0> ;
  assign pcierateqpllreset_out[0] = \<const0> ;
  assign pciesynctxsyncdone_out[0] = \<const0> ;
  assign pcieusergen3rdy_out[0] = \<const0> ;
  assign pcieuserphystatusrst_out[0] = \<const0> ;
  assign pcieuserratestart_out[0] = \<const0> ;
  assign pcsrsvdout_out[15] = \<const0> ;
  assign pcsrsvdout_out[14] = \<const0> ;
  assign pcsrsvdout_out[13] = \<const0> ;
  assign pcsrsvdout_out[12] = \<const0> ;
  assign pcsrsvdout_out[11] = \<const0> ;
  assign pcsrsvdout_out[10] = \<const0> ;
  assign pcsrsvdout_out[9] = \<const0> ;
  assign pcsrsvdout_out[8] = \<const0> ;
  assign pcsrsvdout_out[7] = \<const0> ;
  assign pcsrsvdout_out[6] = \<const0> ;
  assign pcsrsvdout_out[5] = \<const0> ;
  assign pcsrsvdout_out[4] = \<const0> ;
  assign pcsrsvdout_out[3] = \<const0> ;
  assign pcsrsvdout_out[2] = \<const0> ;
  assign pcsrsvdout_out[1] = \<const0> ;
  assign pcsrsvdout_out[0] = \<const0> ;
  assign phystatus_out[0] = \<const0> ;
  assign pinrsrvdas_out[15] = \<const0> ;
  assign pinrsrvdas_out[14] = \<const0> ;
  assign pinrsrvdas_out[13] = \<const0> ;
  assign pinrsrvdas_out[12] = \<const0> ;
  assign pinrsrvdas_out[11] = \<const0> ;
  assign pinrsrvdas_out[10] = \<const0> ;
  assign pinrsrvdas_out[9] = \<const0> ;
  assign pinrsrvdas_out[8] = \<const0> ;
  assign pinrsrvdas_out[7] = \<const0> ;
  assign pinrsrvdas_out[6] = \<const0> ;
  assign pinrsrvdas_out[5] = \<const0> ;
  assign pinrsrvdas_out[4] = \<const0> ;
  assign pinrsrvdas_out[3] = \<const0> ;
  assign pinrsrvdas_out[2] = \<const0> ;
  assign pinrsrvdas_out[1] = \<const0> ;
  assign pinrsrvdas_out[0] = \<const0> ;
  assign pmarsvdout0_out[7] = \<const0> ;
  assign pmarsvdout0_out[6] = \<const0> ;
  assign pmarsvdout0_out[5] = \<const0> ;
  assign pmarsvdout0_out[4] = \<const0> ;
  assign pmarsvdout0_out[3] = \<const0> ;
  assign pmarsvdout0_out[2] = \<const0> ;
  assign pmarsvdout0_out[1] = \<const0> ;
  assign pmarsvdout0_out[0] = \<const0> ;
  assign pmarsvdout1_out[7] = \<const0> ;
  assign pmarsvdout1_out[6] = \<const0> ;
  assign pmarsvdout1_out[5] = \<const0> ;
  assign pmarsvdout1_out[4] = \<const0> ;
  assign pmarsvdout1_out[3] = \<const0> ;
  assign pmarsvdout1_out[2] = \<const0> ;
  assign pmarsvdout1_out[1] = \<const0> ;
  assign pmarsvdout1_out[0] = \<const0> ;
  assign powerpresent_out[0] = \<const0> ;
  assign qpll0fbclklost_out[0] = \<const0> ;
  assign qpll0lock_out[0] = \<const0> ;
  assign qpll0outclk_out[0] = \<const0> ;
  assign qpll0outrefclk_out[0] = \<const0> ;
  assign qpll0refclklost_out[0] = \<const0> ;
  assign qpll1fbclklost_out[0] = \<const0> ;
  assign qpll1lock_out[0] = \<const0> ;
  assign qpll1outclk_out[0] = \<const0> ;
  assign qpll1outrefclk_out[0] = \<const0> ;
  assign qpll1refclklost_out[0] = \<const0> ;
  assign qplldmonitor0_out[7] = \<const0> ;
  assign qplldmonitor0_out[6] = \<const0> ;
  assign qplldmonitor0_out[5] = \<const0> ;
  assign qplldmonitor0_out[4] = \<const0> ;
  assign qplldmonitor0_out[3] = \<const0> ;
  assign qplldmonitor0_out[2] = \<const0> ;
  assign qplldmonitor0_out[1] = \<const0> ;
  assign qplldmonitor0_out[0] = \<const0> ;
  assign qplldmonitor1_out[7] = \<const0> ;
  assign qplldmonitor1_out[6] = \<const0> ;
  assign qplldmonitor1_out[5] = \<const0> ;
  assign qplldmonitor1_out[4] = \<const0> ;
  assign qplldmonitor1_out[3] = \<const0> ;
  assign qplldmonitor1_out[2] = \<const0> ;
  assign qplldmonitor1_out[1] = \<const0> ;
  assign qplldmonitor1_out[0] = \<const0> ;
  assign refclkoutmonitor0_out[0] = \<const0> ;
  assign refclkoutmonitor1_out[0] = \<const0> ;
  assign resetexception_out[0] = \<const0> ;
  assign rxbufstatus_out[2] = \^rxbufstatus_out [2];
  assign rxbufstatus_out[1] = \<const0> ;
  assign rxbufstatus_out[0] = \<const0> ;
  assign rxbyteisaligned_out[0] = \<const0> ;
  assign rxbyterealign_out[0] = \<const0> ;
  assign rxcdrlock_out[0] = \<const0> ;
  assign rxcdrphdone_out[0] = \<const0> ;
  assign rxchanbondseq_out[0] = \<const0> ;
  assign rxchanisaligned_out[0] = \<const0> ;
  assign rxchanrealign_out[0] = \<const0> ;
  assign rxchbondo_out[4] = \<const0> ;
  assign rxchbondo_out[3] = \<const0> ;
  assign rxchbondo_out[2] = \<const0> ;
  assign rxchbondo_out[1] = \<const0> ;
  assign rxchbondo_out[0] = \<const0> ;
  assign rxckcaldone_out[0] = \<const0> ;
  assign rxcominitdet_out[0] = \<const0> ;
  assign rxcommadet_out[0] = \<const0> ;
  assign rxcomsasdet_out[0] = \<const0> ;
  assign rxcomwakedet_out[0] = \<const0> ;
  assign rxctrl0_out[15] = \<const0> ;
  assign rxctrl0_out[14] = \<const0> ;
  assign rxctrl0_out[13] = \<const0> ;
  assign rxctrl0_out[12] = \<const0> ;
  assign rxctrl0_out[11] = \<const0> ;
  assign rxctrl0_out[10] = \<const0> ;
  assign rxctrl0_out[9] = \<const0> ;
  assign rxctrl0_out[8] = \<const0> ;
  assign rxctrl0_out[7] = \<const0> ;
  assign rxctrl0_out[6] = \<const0> ;
  assign rxctrl0_out[5] = \<const0> ;
  assign rxctrl0_out[4] = \<const0> ;
  assign rxctrl0_out[3] = \<const0> ;
  assign rxctrl0_out[2] = \<const0> ;
  assign rxctrl0_out[1:0] = \^rxctrl0_out [1:0];
  assign rxctrl1_out[15] = \<const0> ;
  assign rxctrl1_out[14] = \<const0> ;
  assign rxctrl1_out[13] = \<const0> ;
  assign rxctrl1_out[12] = \<const0> ;
  assign rxctrl1_out[11] = \<const0> ;
  assign rxctrl1_out[10] = \<const0> ;
  assign rxctrl1_out[9] = \<const0> ;
  assign rxctrl1_out[8] = \<const0> ;
  assign rxctrl1_out[7] = \<const0> ;
  assign rxctrl1_out[6] = \<const0> ;
  assign rxctrl1_out[5] = \<const0> ;
  assign rxctrl1_out[4] = \<const0> ;
  assign rxctrl1_out[3] = \<const0> ;
  assign rxctrl1_out[2] = \<const0> ;
  assign rxctrl1_out[1:0] = \^rxctrl1_out [1:0];
  assign rxctrl2_out[7] = \<const0> ;
  assign rxctrl2_out[6] = \<const0> ;
  assign rxctrl2_out[5] = \<const0> ;
  assign rxctrl2_out[4] = \<const0> ;
  assign rxctrl2_out[3] = \<const0> ;
  assign rxctrl2_out[2] = \<const0> ;
  assign rxctrl2_out[1:0] = \^rxctrl2_out [1:0];
  assign rxctrl3_out[7] = \<const0> ;
  assign rxctrl3_out[6] = \<const0> ;
  assign rxctrl3_out[5] = \<const0> ;
  assign rxctrl3_out[4] = \<const0> ;
  assign rxctrl3_out[3] = \<const0> ;
  assign rxctrl3_out[2] = \<const0> ;
  assign rxctrl3_out[1:0] = \^rxctrl3_out [1:0];
  assign rxdata_out[127] = \<const0> ;
  assign rxdata_out[126] = \<const0> ;
  assign rxdata_out[125] = \<const0> ;
  assign rxdata_out[124] = \<const0> ;
  assign rxdata_out[123] = \<const0> ;
  assign rxdata_out[122] = \<const0> ;
  assign rxdata_out[121] = \<const0> ;
  assign rxdata_out[120] = \<const0> ;
  assign rxdata_out[119] = \<const0> ;
  assign rxdata_out[118] = \<const0> ;
  assign rxdata_out[117] = \<const0> ;
  assign rxdata_out[116] = \<const0> ;
  assign rxdata_out[115] = \<const0> ;
  assign rxdata_out[114] = \<const0> ;
  assign rxdata_out[113] = \<const0> ;
  assign rxdata_out[112] = \<const0> ;
  assign rxdata_out[111] = \<const0> ;
  assign rxdata_out[110] = \<const0> ;
  assign rxdata_out[109] = \<const0> ;
  assign rxdata_out[108] = \<const0> ;
  assign rxdata_out[107] = \<const0> ;
  assign rxdata_out[106] = \<const0> ;
  assign rxdata_out[105] = \<const0> ;
  assign rxdata_out[104] = \<const0> ;
  assign rxdata_out[103] = \<const0> ;
  assign rxdata_out[102] = \<const0> ;
  assign rxdata_out[101] = \<const0> ;
  assign rxdata_out[100] = \<const0> ;
  assign rxdata_out[99] = \<const0> ;
  assign rxdata_out[98] = \<const0> ;
  assign rxdata_out[97] = \<const0> ;
  assign rxdata_out[96] = \<const0> ;
  assign rxdata_out[95] = \<const0> ;
  assign rxdata_out[94] = \<const0> ;
  assign rxdata_out[93] = \<const0> ;
  assign rxdata_out[92] = \<const0> ;
  assign rxdata_out[91] = \<const0> ;
  assign rxdata_out[90] = \<const0> ;
  assign rxdata_out[89] = \<const0> ;
  assign rxdata_out[88] = \<const0> ;
  assign rxdata_out[87] = \<const0> ;
  assign rxdata_out[86] = \<const0> ;
  assign rxdata_out[85] = \<const0> ;
  assign rxdata_out[84] = \<const0> ;
  assign rxdata_out[83] = \<const0> ;
  assign rxdata_out[82] = \<const0> ;
  assign rxdata_out[81] = \<const0> ;
  assign rxdata_out[80] = \<const0> ;
  assign rxdata_out[79] = \<const0> ;
  assign rxdata_out[78] = \<const0> ;
  assign rxdata_out[77] = \<const0> ;
  assign rxdata_out[76] = \<const0> ;
  assign rxdata_out[75] = \<const0> ;
  assign rxdata_out[74] = \<const0> ;
  assign rxdata_out[73] = \<const0> ;
  assign rxdata_out[72] = \<const0> ;
  assign rxdata_out[71] = \<const0> ;
  assign rxdata_out[70] = \<const0> ;
  assign rxdata_out[69] = \<const0> ;
  assign rxdata_out[68] = \<const0> ;
  assign rxdata_out[67] = \<const0> ;
  assign rxdata_out[66] = \<const0> ;
  assign rxdata_out[65] = \<const0> ;
  assign rxdata_out[64] = \<const0> ;
  assign rxdata_out[63] = \<const0> ;
  assign rxdata_out[62] = \<const0> ;
  assign rxdata_out[61] = \<const0> ;
  assign rxdata_out[60] = \<const0> ;
  assign rxdata_out[59] = \<const0> ;
  assign rxdata_out[58] = \<const0> ;
  assign rxdata_out[57] = \<const0> ;
  assign rxdata_out[56] = \<const0> ;
  assign rxdata_out[55] = \<const0> ;
  assign rxdata_out[54] = \<const0> ;
  assign rxdata_out[53] = \<const0> ;
  assign rxdata_out[52] = \<const0> ;
  assign rxdata_out[51] = \<const0> ;
  assign rxdata_out[50] = \<const0> ;
  assign rxdata_out[49] = \<const0> ;
  assign rxdata_out[48] = \<const0> ;
  assign rxdata_out[47] = \<const0> ;
  assign rxdata_out[46] = \<const0> ;
  assign rxdata_out[45] = \<const0> ;
  assign rxdata_out[44] = \<const0> ;
  assign rxdata_out[43] = \<const0> ;
  assign rxdata_out[42] = \<const0> ;
  assign rxdata_out[41] = \<const0> ;
  assign rxdata_out[40] = \<const0> ;
  assign rxdata_out[39] = \<const0> ;
  assign rxdata_out[38] = \<const0> ;
  assign rxdata_out[37] = \<const0> ;
  assign rxdata_out[36] = \<const0> ;
  assign rxdata_out[35] = \<const0> ;
  assign rxdata_out[34] = \<const0> ;
  assign rxdata_out[33] = \<const0> ;
  assign rxdata_out[32] = \<const0> ;
  assign rxdata_out[31] = \<const0> ;
  assign rxdata_out[30] = \<const0> ;
  assign rxdata_out[29] = \<const0> ;
  assign rxdata_out[28] = \<const0> ;
  assign rxdata_out[27] = \<const0> ;
  assign rxdata_out[26] = \<const0> ;
  assign rxdata_out[25] = \<const0> ;
  assign rxdata_out[24] = \<const0> ;
  assign rxdata_out[23] = \<const0> ;
  assign rxdata_out[22] = \<const0> ;
  assign rxdata_out[21] = \<const0> ;
  assign rxdata_out[20] = \<const0> ;
  assign rxdata_out[19] = \<const0> ;
  assign rxdata_out[18] = \<const0> ;
  assign rxdata_out[17] = \<const0> ;
  assign rxdata_out[16] = \<const0> ;
  assign rxdata_out[15] = \<const0> ;
  assign rxdata_out[14] = \<const0> ;
  assign rxdata_out[13] = \<const0> ;
  assign rxdata_out[12] = \<const0> ;
  assign rxdata_out[11] = \<const0> ;
  assign rxdata_out[10] = \<const0> ;
  assign rxdata_out[9] = \<const0> ;
  assign rxdata_out[8] = \<const0> ;
  assign rxdata_out[7] = \<const0> ;
  assign rxdata_out[6] = \<const0> ;
  assign rxdata_out[5] = \<const0> ;
  assign rxdata_out[4] = \<const0> ;
  assign rxdata_out[3] = \<const0> ;
  assign rxdata_out[2] = \<const0> ;
  assign rxdata_out[1] = \<const0> ;
  assign rxdata_out[0] = \<const0> ;
  assign rxdataextendrsvd_out[7] = \<const0> ;
  assign rxdataextendrsvd_out[6] = \<const0> ;
  assign rxdataextendrsvd_out[5] = \<const0> ;
  assign rxdataextendrsvd_out[4] = \<const0> ;
  assign rxdataextendrsvd_out[3] = \<const0> ;
  assign rxdataextendrsvd_out[2] = \<const0> ;
  assign rxdataextendrsvd_out[1] = \<const0> ;
  assign rxdataextendrsvd_out[0] = \<const0> ;
  assign rxdatavalid_out[1] = \<const0> ;
  assign rxdatavalid_out[0] = \<const0> ;
  assign rxdlysresetdone_out[0] = \<const0> ;
  assign rxelecidle_out[0] = \<const0> ;
  assign rxheader_out[5] = \<const0> ;
  assign rxheader_out[4] = \<const0> ;
  assign rxheader_out[3] = \<const0> ;
  assign rxheader_out[2] = \<const0> ;
  assign rxheader_out[1] = \<const0> ;
  assign rxheader_out[0] = \<const0> ;
  assign rxheadervalid_out[1] = \<const0> ;
  assign rxheadervalid_out[0] = \<const0> ;
  assign rxlfpstresetdet_out[0] = \<const0> ;
  assign rxlfpsu2lpexitdet_out[0] = \<const0> ;
  assign rxlfpsu3wakedet_out[0] = \<const0> ;
  assign rxmonitorout_out[7] = \<const0> ;
  assign rxmonitorout_out[6] = \<const0> ;
  assign rxmonitorout_out[5] = \<const0> ;
  assign rxmonitorout_out[4] = \<const0> ;
  assign rxmonitorout_out[3] = \<const0> ;
  assign rxmonitorout_out[2] = \<const0> ;
  assign rxmonitorout_out[1] = \<const0> ;
  assign rxmonitorout_out[0] = \<const0> ;
  assign rxosintdone_out[0] = \<const0> ;
  assign rxosintstarted_out[0] = \<const0> ;
  assign rxosintstrobedone_out[0] = \<const0> ;
  assign rxosintstrobestarted_out[0] = \<const0> ;
  assign rxoutclkfabric_out[0] = \<const0> ;
  assign rxoutclkpcs_out[0] = \<const0> ;
  assign rxphaligndone_out[0] = \<const0> ;
  assign rxphalignerr_out[0] = \<const0> ;
  assign rxpmaresetdone_out[0] = \<const0> ;
  assign rxprbserr_out[0] = \<const0> ;
  assign rxprbslocked_out[0] = \<const0> ;
  assign rxprgdivresetdone_out[0] = \<const0> ;
  assign rxqpisenn_out[0] = \<const0> ;
  assign rxqpisenp_out[0] = \<const0> ;
  assign rxratedone_out[0] = \<const0> ;
  assign rxrecclk0_sel_out[0] = \<const0> ;
  assign rxrecclk0sel_out[1] = \<const0> ;
  assign rxrecclk0sel_out[0] = \<const0> ;
  assign rxrecclk1_sel_out[0] = \<const0> ;
  assign rxrecclk1sel_out[1] = \<const0> ;
  assign rxrecclk1sel_out[0] = \<const0> ;
  assign rxrecclkout_out[0] = \<const0> ;
  assign rxresetdone_out[0] = \<const0> ;
  assign rxsliderdy_out[0] = \<const0> ;
  assign rxslipdone_out[0] = \<const0> ;
  assign rxslipoutclkrdy_out[0] = \<const0> ;
  assign rxslippmardy_out[0] = \<const0> ;
  assign rxstartofseq_out[1] = \<const0> ;
  assign rxstartofseq_out[0] = \<const0> ;
  assign rxstatus_out[2] = \<const0> ;
  assign rxstatus_out[1] = \<const0> ;
  assign rxstatus_out[0] = \<const0> ;
  assign rxsyncdone_out[0] = \<const0> ;
  assign rxsyncout_out[0] = \<const0> ;
  assign rxvalid_out[0] = \<const0> ;
  assign sdm0finalout_out[3] = \<const0> ;
  assign sdm0finalout_out[2] = \<const0> ;
  assign sdm0finalout_out[1] = \<const0> ;
  assign sdm0finalout_out[0] = \<const0> ;
  assign sdm0testdata_out[14] = \<const0> ;
  assign sdm0testdata_out[13] = \<const0> ;
  assign sdm0testdata_out[12] = \<const0> ;
  assign sdm0testdata_out[11] = \<const0> ;
  assign sdm0testdata_out[10] = \<const0> ;
  assign sdm0testdata_out[9] = \<const0> ;
  assign sdm0testdata_out[8] = \<const0> ;
  assign sdm0testdata_out[7] = \<const0> ;
  assign sdm0testdata_out[6] = \<const0> ;
  assign sdm0testdata_out[5] = \<const0> ;
  assign sdm0testdata_out[4] = \<const0> ;
  assign sdm0testdata_out[3] = \<const0> ;
  assign sdm0testdata_out[2] = \<const0> ;
  assign sdm0testdata_out[1] = \<const0> ;
  assign sdm0testdata_out[0] = \<const0> ;
  assign sdm1finalout_out[3] = \<const0> ;
  assign sdm1finalout_out[2] = \<const0> ;
  assign sdm1finalout_out[1] = \<const0> ;
  assign sdm1finalout_out[0] = \<const0> ;
  assign sdm1testdata_out[14] = \<const0> ;
  assign sdm1testdata_out[13] = \<const0> ;
  assign sdm1testdata_out[12] = \<const0> ;
  assign sdm1testdata_out[11] = \<const0> ;
  assign sdm1testdata_out[10] = \<const0> ;
  assign sdm1testdata_out[9] = \<const0> ;
  assign sdm1testdata_out[8] = \<const0> ;
  assign sdm1testdata_out[7] = \<const0> ;
  assign sdm1testdata_out[6] = \<const0> ;
  assign sdm1testdata_out[5] = \<const0> ;
  assign sdm1testdata_out[4] = \<const0> ;
  assign sdm1testdata_out[3] = \<const0> ;
  assign sdm1testdata_out[2] = \<const0> ;
  assign sdm1testdata_out[1] = \<const0> ;
  assign sdm1testdata_out[0] = \<const0> ;
  assign tcongpo_out[9] = \<const0> ;
  assign tcongpo_out[8] = \<const0> ;
  assign tcongpo_out[7] = \<const0> ;
  assign tcongpo_out[6] = \<const0> ;
  assign tcongpo_out[5] = \<const0> ;
  assign tcongpo_out[4] = \<const0> ;
  assign tcongpo_out[3] = \<const0> ;
  assign tcongpo_out[2] = \<const0> ;
  assign tcongpo_out[1] = \<const0> ;
  assign tcongpo_out[0] = \<const0> ;
  assign tconrsvdout0_out[0] = \<const0> ;
  assign txbufstatus_out[1] = \^txbufstatus_out [1];
  assign txbufstatus_out[0] = \<const0> ;
  assign txcomfinish_out[0] = \<const0> ;
  assign txdccdone_out[0] = \<const0> ;
  assign txdlysresetdone_out[0] = \<const0> ;
  assign txoutclkfabric_out[0] = \<const0> ;
  assign txoutclkpcs_out[0] = \<const0> ;
  assign txphaligndone_out[0] = \<const0> ;
  assign txphinitdone_out[0] = \<const0> ;
  assign txpmaresetdone_out[0] = \<const0> ;
  assign txprgdivresetdone_out[0] = \<const0> ;
  assign txqpisenn_out[0] = \<const0> ;
  assign txqpisenp_out[0] = \<const0> ;
  assign txratedone_out[0] = \<const0> ;
  assign txresetdone_out[0] = \<const0> ;
  assign txsyncdone_out[0] = \<const0> ;
  assign txsyncout_out[0] = \<const0> ;
  assign ubdaddr_out[0] = \<const0> ;
  assign ubden_out[0] = \<const0> ;
  assign ubdi_out[0] = \<const0> ;
  assign ubdwe_out[0] = \<const0> ;
  assign ubmdmtdo_out[0] = \<const0> ;
  assign ubrsvdout_out[0] = \<const0> ;
  assign ubtxuart_out[0] = \<const0> ;
  GND GND
       (.G(\<const0> ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4 \gen_gtwizard_gthe4_top.mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4_inst 
       (.drpclk_in(drpclk_in),
        .gthrxn_in(gthrxn_in),
        .gthrxp_in(gthrxp_in),
        .gthtxn_out(gthtxn_out),
        .gthtxp_out(gthtxp_out),
        .gtpowergood_out(gtpowergood_out),
        .gtrefclk0_in(gtrefclk0_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_userdata_rx_out(gtwiz_userdata_rx_out),
        .gtwiz_userdata_tx_in(gtwiz_userdata_tx_in),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxbufstatus_out(\^rxbufstatus_out ),
        .rxclkcorcnt_out(rxclkcorcnt_out),
        .rxctrl0_out(\^rxctrl0_out ),
        .rxctrl1_out(\^rxctrl1_out ),
        .rxctrl2_out(\^rxctrl2_out ),
        .rxctrl3_out(\^rxctrl3_out ),
        .rxmcommaalignen_in(rxmcommaalignen_in),
        .rxoutclk_out(rxoutclk_out),
        .rxpd_in(rxpd_in[1]),
        .rxusrclk_in(rxusrclk_in),
        .txbufstatus_out(\^txbufstatus_out ),
        .txctrl0_in(txctrl0_in[1:0]),
        .txctrl1_in(txctrl1_in[1:0]),
        .txctrl2_in(txctrl2_in[1:0]),
        .txelecidle_in(txelecidle_in),
        .txoutclk_out(txoutclk_out));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync
   (reset_out,
    rxuserclk2,
    gtwiz_reset_rx_done_out);
  output reset_out;
  input rxuserclk2;
  input [0:0]gtwiz_reset_rx_done_out;

  wire [0:0]gtwiz_reset_rx_done_out;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire rxuserclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(gtwiz_reset_rx_done_out),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(gtwiz_reset_rx_done_out),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(gtwiz_reset_rx_done_out),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(gtwiz_reset_rx_done_out),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(gtwiz_reset_rx_done_out),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_0
   (gtwiz_reset_rx_done_out_int_reg0,
    reset_out,
    rxuserclk2,
    SR);
  output gtwiz_reset_rx_done_out_int_reg0;
  input reset_out;
  input rxuserclk2;
  input [0:0]SR;

  wire [0:0]SR;
  wire gtwiz_reset_rx_done_out_int_reg0;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire rxreset_int;
  wire rxuserclk2;

  LUT2 #(
    .INIT(4'h8)) 
    gtwiz_reset_rx_done_out_int_reg_i_1
       (.I0(rxreset_int),
        .I1(reset_out),
        .O(gtwiz_reset_rx_done_out_int_reg0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(SR),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(SR),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(SR),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(SR),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(SR),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(rxreset_int));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_1
   (gtwiz_reset_tx_done_out_int_reg0,
    gtwiz_reset_tx_done_out,
    CLK,
    reset_sync5_0);
  output gtwiz_reset_tx_done_out_int_reg0;
  input [0:0]gtwiz_reset_tx_done_out;
  input CLK;
  input [0:0]reset_sync5_0;

  wire CLK;
  wire [0:0]gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_done_out_int_reg0;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire [0:0]reset_sync5_0;
  wire txreset_int;

  LUT2 #(
    .INIT(4'h8)) 
    gtwiz_reset_tx_done_out_int_reg_i_1
       (.I0(txreset_int),
        .I1(gtwiz_reset_tx_done_out),
        .O(gtwiz_reset_tx_done_out_int_reg0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(CLK),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset_sync5_0),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(reset_sync5_0),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(reset_sync5_0),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(reset_sync5_0),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(reset_sync5_0),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(CLK),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(txreset_int));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_2
   (reset_out,
    userclk2,
    enablealign);
  output reset_out;
  input userclk2;
  input enablealign;

  wire enablealign;
  wire reset_out;
  wire reset_stage1;
  wire reset_stage2;
  wire reset_stage3;
  wire reset_stage4;
  wire reset_stage5;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync1
       (.C(userclk2),
        .CE(1'b1),
        .D(1'b0),
        .PRE(enablealign),
        .Q(reset_stage1));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync2
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage1),
        .PRE(enablealign),
        .Q(reset_stage2));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync3
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage2),
        .PRE(enablealign),
        .Q(reset_stage3));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync4
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage3),
        .PRE(enablealign),
        .Q(reset_stage4));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync5
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage4),
        .PRE(enablealign),
        .Q(reset_stage5));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FDP" *) 
  (* box_type = "PRIMITIVE" *) 
  FDPE #(
    .INIT(1'b1)) 
    reset_sync6
       (.C(userclk2),
        .CE(1'b1),
        .D(reset_stage5),
        .PRE(1'b0),
        .Q(reset_out));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_resets" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_resets
   (pma_reset_out,
    independent_clock_bufg,
    reset);
  output pma_reset_out;
  input independent_clock_bufg;
  input reset;

  wire independent_clock_bufg;
  (* async_reg = "true" *) wire [3:0]pma_reset_pipe;
  wire reset;

  assign pma_reset_out = pma_reset_pipe[3];
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[0] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(1'b0),
        .PRE(reset),
        .Q(pma_reset_pipe[0]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[1] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[0]),
        .PRE(reset),
        .Q(pma_reset_pipe[1]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[2] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[1]),
        .PRE(reset),
        .Q(pma_reset_pipe[2]));
  (* ASYNC_REG *) 
  (* KEEP = "yes" *) 
  FDPE \pma_reset_pipe_reg[3] 
       (.C(independent_clock_bufg),
        .CE(1'b1),
        .D(pma_reset_pipe[2]),
        .PRE(reset),
        .Q(pma_reset_pipe[3]));
endmodule

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) (* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_support" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_support
   (gtrefclk_p,
    gtrefclk_n,
    gtrefclk_out,
    txp,
    txn,
    rxp,
    rxn,
    userclk_out,
    userclk2_out,
    rxuserclk_out,
    rxuserclk2_out,
    independent_clock_bufg,
    pma_reset_out,
    mmcm_locked_out,
    resetdone,
    gmii_txd,
    gmii_tx_en,
    gmii_tx_er,
    gmii_rxd,
    gmii_rx_dv,
    gmii_rx_er,
    gmii_isolate,
    configuration_vector,
    status_vector,
    reset,
    gtpowergood,
    signal_detect);
  input gtrefclk_p;
  input gtrefclk_n;
  output gtrefclk_out;
  output txp;
  output txn;
  input rxp;
  input rxn;
  output userclk_out;
  output userclk2_out;
  output rxuserclk_out;
  output rxuserclk2_out;
  input independent_clock_bufg;
  output pma_reset_out;
  output mmcm_locked_out;
  output resetdone;
  input [7:0]gmii_txd;
  input gmii_tx_en;
  input gmii_tx_er;
  output [7:0]gmii_rxd;
  output gmii_rx_dv;
  output gmii_rx_er;
  output gmii_isolate;
  input [4:0]configuration_vector;
  output [15:0]status_vector;
  input reset;
  output gtpowergood;
  input signal_detect;

  wire \<const0> ;
  wire [4:0]configuration_vector;
  wire gmii_isolate;
  wire gmii_rx_dv;
  wire gmii_rx_er;
  wire [7:0]gmii_rxd;
  wire gmii_tx_en;
  wire gmii_tx_er;
  wire [7:0]gmii_txd;
  wire gtpowergood;
  wire gtrefclk_n;
  wire gtrefclk_out;
  wire gtrefclk_p;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire pma_reset_out;
  wire reset;
  wire resetdone;
  wire rxn;
  wire rxoutclk;
  wire rxp;
  wire rxuserclk2_out;
  wire signal_detect;
  wire [6:0]\^status_vector ;
  wire txn;
  wire txoutclk;
  wire txp;
  wire userclk2_out;
  wire userclk_out;

  assign mmcm_locked_out = \<const0> ;
  assign rxuserclk_out = rxuserclk2_out;
  assign status_vector[15] = \<const0> ;
  assign status_vector[14] = \<const0> ;
  assign status_vector[13] = \<const0> ;
  assign status_vector[12] = \<const0> ;
  assign status_vector[11] = \<const0> ;
  assign status_vector[10] = \<const0> ;
  assign status_vector[9] = \<const0> ;
  assign status_vector[8] = \<const0> ;
  assign status_vector[7] = \<const0> ;
  assign status_vector[6:0] = \^status_vector [6:0];
  GND GND
       (.G(\<const0> ));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_clocking core_clocking_i
       (.gtrefclk_n(gtrefclk_n),
        .gtrefclk_out(gtrefclk_out),
        .gtrefclk_p(gtrefclk_p),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .rxoutclk(rxoutclk),
        .rxuserclk2(rxuserclk2_out),
        .txoutclk(txoutclk),
        .userclk(userclk_out),
        .userclk2(userclk2_out));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out),
        .reset(reset));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_block pcs_pma_block_i
       (.CLK(userclk_out),
        .configuration_vector(configuration_vector[3:1]),
        .gmii_isolate(gmii_isolate),
        .gmii_rx_dv(gmii_rx_dv),
        .gmii_rx_er(gmii_rx_er),
        .gmii_rxd(gmii_rxd),
        .gmii_tx_en(gmii_tx_en),
        .gmii_tx_er(gmii_tx_er),
        .gmii_txd(gmii_txd),
        .gtpowergood(gtpowergood),
        .gtrefclk_out(gtrefclk_out),
        .independent_clock_bufg(independent_clock_bufg),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .pma_reset_out(pma_reset_out),
        .resetdone(resetdone),
        .rxn(rxn),
        .rxoutclk_out(rxoutclk),
        .rxp(rxp),
        .rxuserclk2(rxuserclk2_out),
        .signal_detect(signal_detect),
        .status_vector(\^status_vector ),
        .txn(txn),
        .txoutclk_out(txoutclk),
        .txp(txp),
        .userclk2(userclk2_out));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sync_block" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sync_block
   (resetdone,
    data_in,
    userclk2);
  output resetdone;
  input data_in;
  input userclk2;

  wire data_in;
  wire data_sync1;
  wire data_sync2;
  wire data_sync3;
  wire data_sync4;
  wire data_sync5;
  wire resetdone;
  wire userclk2;

  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg1
       (.C(userclk2),
        .CE(1'b1),
        .D(data_in),
        .Q(data_sync1),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg2
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync1),
        .Q(data_sync2),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg3
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync2),
        .Q(data_sync3),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg4
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync3),
        .Q(data_sync4),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg5
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync4),
        .Q(data_sync5),
        .R(1'b0));
  (* ASYNC_REG *) 
  (* SHREG_EXTRACT = "no" *) 
  (* XILINX_LEGACY_PRIM = "FD" *) 
  (* box_type = "PRIMITIVE" *) 
  FDRE #(
    .INIT(1'b0)) 
    data_sync_reg6
       (.C(userclk2),
        .CE(1'b1),
        .D(data_sync5),
        .Q(resetdone),
        .R(1'b0));
endmodule

(* ORIG_REF_NAME = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_transceiver" *) 
module mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_transceiver
   (txn,
    txp,
    gtpowergood,
    rxoutclk_out,
    txoutclk_out,
    rxchariscomma,
    rxcharisk,
    rxdisperr,
    rxnotintable,
    rxbufstatus,
    txbuferr,
    Q,
    \rxdata_reg[7]_0 ,
    data_in,
    pma_reset_out,
    independent_clock_bufg,
    rxn,
    rxp,
    gtrefclk_out,
    CLK,
    userclk2,
    SR,
    rxuserclk2,
    powerdown,
    reset_sync5,
    D,
    txchardispmode_reg_reg_0,
    txcharisk_reg_reg_0,
    enablealign,
    \txdata_reg_reg[7]_0 ,
    lopt,
    lopt_1,
    lopt_2,
    lopt_3,
    lopt_4,
    lopt_5);
  output txn;
  output txp;
  output gtpowergood;
  output [0:0]rxoutclk_out;
  output [0:0]txoutclk_out;
  output [0:0]rxchariscomma;
  output [0:0]rxcharisk;
  output [0:0]rxdisperr;
  output [0:0]rxnotintable;
  output [0:0]rxbufstatus;
  output txbuferr;
  output [1:0]Q;
  output [7:0]\rxdata_reg[7]_0 ;
  output data_in;
  input pma_reset_out;
  input independent_clock_bufg;
  input rxn;
  input rxp;
  input gtrefclk_out;
  input CLK;
  input userclk2;
  input [0:0]SR;
  input rxuserclk2;
  input powerdown;
  input [0:0]reset_sync5;
  input [0:0]D;
  input [0:0]txchardispmode_reg_reg_0;
  input [0:0]txcharisk_reg_reg_0;
  input enablealign;
  input [7:0]\txdata_reg_reg[7]_0 ;
  input lopt;
  input lopt_1;
  output lopt_2;
  output lopt_3;
  output lopt_4;
  output lopt_5;

  wire CLK;
  wire [0:0]D;
  wire [1:0]Q;
  wire [0:0]SR;
  wire data_in;
  wire enablealign;
  wire encommaalign_int;
  wire gtpowergood;
  wire gtrefclk_out;
  wire gtwiz_reset_rx_done_out;
  wire gtwiz_reset_rx_done_out_int;
  wire gtwiz_reset_rx_done_out_int_reg;
  wire gtwiz_reset_rx_done_out_int_reg0;
  wire gtwiz_reset_tx_done_out;
  wire gtwiz_reset_tx_done_out_int_reg;
  wire gtwiz_reset_tx_done_out_int_reg0;
  wire independent_clock_bufg;
  wire lopt;
  wire lopt_1;
  wire lopt_2;
  wire lopt_3;
  wire lopt_4;
  wire lopt_5;
  wire mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_117;
  wire mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_57;
  wire p_0_in;
  wire pma_reset_out;
  wire powerdown;
  wire [0:0]reset_sync5;
  wire [0:0]rxbufstatus;
  wire [0:0]rxchariscomma;
  wire [1:0]rxchariscomma_double;
  wire rxchariscomma_i_1_n_0;
  wire [1:0]rxchariscomma_reg__0;
  wire [0:0]rxcharisk;
  wire [1:0]rxcharisk_double;
  wire rxcharisk_i_1_n_0;
  wire [1:0]rxcharisk_reg__0;
  wire [1:0]rxclkcorcnt_double;
  wire [1:0]rxclkcorcnt_int;
  wire [1:0]rxclkcorcnt_reg;
  wire [1:0]rxctrl0_out;
  wire [1:0]rxctrl1_out;
  wire [1:0]rxctrl2_out;
  wire [1:0]rxctrl3_out;
  wire \rxdata[0]_i_1_n_0 ;
  wire \rxdata[1]_i_1_n_0 ;
  wire \rxdata[2]_i_1_n_0 ;
  wire \rxdata[3]_i_1_n_0 ;
  wire \rxdata[4]_i_1_n_0 ;
  wire \rxdata[5]_i_1_n_0 ;
  wire \rxdata[6]_i_1_n_0 ;
  wire \rxdata[7]_i_1_n_0 ;
  wire [15:0]rxdata_double;
  wire [15:0]rxdata_int;
  wire [15:0]rxdata_reg;
  wire [7:0]\rxdata_reg[7]_0 ;
  wire [0:0]rxdisperr;
  wire [1:0]rxdisperr_double;
  wire rxdisperr_i_1_n_0;
  wire [1:0]rxdisperr_reg__0;
  wire rxn;
  wire [0:0]rxnotintable;
  wire [1:0]rxnotintable_double;
  wire rxnotintable_i_1_n_0;
  wire [1:0]rxnotintable_reg__0;
  wire [0:0]rxoutclk_out;
  wire rxp;
  wire rxpowerdown;
  wire rxpowerdown_double;
  wire rxpowerdown_reg__0;
  wire rxuserclk2;
  wire toggle;
  wire toggle_i_1_n_0;
  wire txbuferr;
  wire [1:1]txbufstatus_reg;
  wire [1:0]txchardispmode_double;
  wire [1:0]txchardispmode_int;
  wire txchardispmode_reg;
  wire [0:0]txchardispmode_reg_reg_0;
  wire [1:0]txchardispval_double;
  wire [1:0]txchardispval_int;
  wire txchardispval_reg;
  wire [1:0]txcharisk_double;
  wire [1:0]txcharisk_int;
  wire txcharisk_reg;
  wire [0:0]txcharisk_reg_reg_0;
  wire [15:0]txdata_double;
  wire [15:0]txdata_int;
  wire [7:0]txdata_reg;
  wire [7:0]\txdata_reg_reg[7]_0 ;
  wire txn;
  wire [0:0]txoutclk_out;
  wire txp;
  wire txpowerdown;
  wire txpowerdown_double;
  wire txpowerdown_reg__0;
  wire userclk2;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_cplllock_out_UNCONNECTED;
  wire [15:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_dmonitorout_out_UNCONNECTED;
  wire [15:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_drpdo_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_drprdy_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_eyescandataerror_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED;
  wire [1:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbyteisaligned_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbyterealign_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxcommadet_out_UNCONNECTED;
  wire [15:2]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl0_out_UNCONNECTED;
  wire [15:2]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl1_out_UNCONNECTED;
  wire [7:2]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl2_out_UNCONNECTED;
  wire [7:2]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl3_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxprbserr_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxresetdone_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txbufstatus_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txpmaresetdone_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txprgdivresetdone_out_UNCONNECTED;
  wire [0:0]NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txresetdone_out_UNCONNECTED;

  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync SYNC_ASYNC_RESET_GT_RX
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .reset_out(gtwiz_reset_rx_done_out_int),
        .rxuserclk2(rxuserclk2));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_0 SYNC_ASYNC_RESET_RX
       (.SR(SR),
        .gtwiz_reset_rx_done_out_int_reg0(gtwiz_reset_rx_done_out_int_reg0),
        .reset_out(gtwiz_reset_rx_done_out_int),
        .rxuserclk2(rxuserclk2));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_1 SYNC_ASYNC_RESET_TX
       (.CLK(CLK),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_done_out_int_reg0(gtwiz_reset_tx_done_out_int_reg0),
        .reset_sync5_0(reset_sync5));
  LUT2 #(
    .INIT(4'h8)) 
    data_sync1_i_1
       (.I0(gtwiz_reset_tx_done_out),
        .I1(gtwiz_reset_rx_done_out),
        .O(data_in));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_rx_done_out_int_reg_reg
       (.C(rxuserclk2),
        .CE(1'b1),
        .D(gtwiz_reset_rx_done_out_int_reg0),
        .Q(gtwiz_reset_rx_done_out_int_reg),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    gtwiz_reset_tx_done_out_int_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .D(gtwiz_reset_tx_done_out_int_reg0),
        .Q(gtwiz_reset_tx_done_out_int_reg),
        .R(1'b0));
  (* CHECK_LICENSE_TYPE = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt,mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,{}" *) 
  (* X_CORE_INFO = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,Vivado 2020.2" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i
       (.cplllock_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_cplllock_out_UNCONNECTED[0]),
        .cpllrefclksel_in({1'b0,1'b0,1'b1}),
        .dmonitorout_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_dmonitorout_out_UNCONNECTED[15:0]),
        .drpaddr_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpclk_in(independent_clock_bufg),
        .drpdi_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .drpdo_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_drpdo_out_UNCONNECTED[15:0]),
        .drpen_in(1'b0),
        .drprdy_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_drprdy_out_UNCONNECTED[0]),
        .drpwe_in(1'b0),
        .eyescandataerror_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_eyescandataerror_out_UNCONNECTED[0]),
        .eyescanreset_in(1'b0),
        .eyescantrigger_in(1'b0),
        .gthrxn_in(rxn),
        .gthrxp_in(rxp),
        .gthtxn_out(txn),
        .gthtxp_out(txp),
        .gtpowergood_out(gtpowergood),
        .gtrefclk0_in(gtrefclk_out),
        .gtrefclk1_in(1'b0),
        .gtwiz_reset_all_in(pma_reset_out),
        .gtwiz_reset_clk_freerun_in(1'b0),
        .gtwiz_reset_rx_cdr_stable_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_gtwiz_reset_rx_cdr_stable_out_UNCONNECTED[0]),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_done_out_int_reg),
        .gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .gtwiz_reset_rx_pll_and_datapath_in(1'b0),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_done_out_int_reg),
        .gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .gtwiz_reset_tx_pll_and_datapath_in(1'b0),
        .gtwiz_userclk_rx_active_in(1'b0),
        .gtwiz_userclk_tx_active_in(1'b1),
        .gtwiz_userclk_tx_reset_in(1'b0),
        .gtwiz_userdata_rx_out(rxdata_int),
        .gtwiz_userdata_tx_in(txdata_int),
        .loopback_in({1'b0,1'b0,1'b0}),
        .lopt(lopt),
        .lopt_1(lopt_1),
        .lopt_2(lopt_2),
        .lopt_3(lopt_3),
        .lopt_4(lopt_4),
        .lopt_5(lopt_5),
        .pcsrsvdin_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .rx8b10ben_in(1'b1),
        .rxbufreset_in(1'b0),
        .rxbufstatus_out({mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_57,NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbufstatus_out_UNCONNECTED[1:0]}),
        .rxbyteisaligned_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbyteisaligned_out_UNCONNECTED[0]),
        .rxbyterealign_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxbyterealign_out_UNCONNECTED[0]),
        .rxcdrhold_in(1'b0),
        .rxclkcorcnt_out(rxclkcorcnt_int),
        .rxcommadet_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxcommadet_out_UNCONNECTED[0]),
        .rxcommadeten_in(1'b1),
        .rxctrl0_out({NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl0_out_UNCONNECTED[15:2],rxctrl0_out}),
        .rxctrl1_out({NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl1_out_UNCONNECTED[15:2],rxctrl1_out}),
        .rxctrl2_out({NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl2_out_UNCONNECTED[7:2],rxctrl2_out}),
        .rxctrl3_out({NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxctrl3_out_UNCONNECTED[7:2],rxctrl3_out}),
        .rxdfelpmreset_in(1'b0),
        .rxlpmen_in(1'b1),
        .rxmcommaalignen_in(encommaalign_int),
        .rxoutclk_out(rxoutclk_out),
        .rxpcommaalignen_in(1'b0),
        .rxpcsreset_in(1'b0),
        .rxpd_in({rxpowerdown,1'b0}),
        .rxpmareset_in(1'b0),
        .rxpmaresetdone_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxpmaresetdone_out_UNCONNECTED[0]),
        .rxpolarity_in(1'b0),
        .rxprbscntreset_in(1'b0),
        .rxprbserr_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxprbserr_out_UNCONNECTED[0]),
        .rxprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .rxrate_in({1'b0,1'b0,1'b0}),
        .rxresetdone_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_rxresetdone_out_UNCONNECTED[0]),
        .rxusrclk2_in(1'b0),
        .rxusrclk_in(CLK),
        .tx8b10ben_in(1'b1),
        .txbufstatus_out({mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_117,NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txbufstatus_out_UNCONNECTED[0]}),
        .txctrl0_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txchardispval_int}),
        .txctrl1_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txchardispmode_int}),
        .txctrl2_in({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,txcharisk_int}),
        .txdiffctrl_in({1'b1,1'b1,1'b0,1'b0,1'b0}),
        .txelecidle_in(txpowerdown),
        .txinhibit_in(1'b0),
        .txoutclk_out(txoutclk_out),
        .txpcsreset_in(1'b0),
        .txpd_in({1'b0,1'b0}),
        .txpmareset_in(1'b0),
        .txpmaresetdone_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txpmaresetdone_out_UNCONNECTED[0]),
        .txpolarity_in(1'b0),
        .txpostcursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprbsforceerr_in(1'b0),
        .txprbssel_in({1'b0,1'b0,1'b0,1'b0}),
        .txprecursor_in({1'b0,1'b0,1'b0,1'b0,1'b0}),
        .txprgdivresetdone_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txprgdivresetdone_out_UNCONNECTED[0]),
        .txresetdone_out(NLW_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_txresetdone_out_UNCONNECTED[0]),
        .txusrclk2_in(1'b0),
        .txusrclk_in(1'b0));
  mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_2 reclock_encommaalign
       (.enablealign(enablealign),
        .reset_out(encommaalign_int),
        .userclk2(userclk2));
  FDRE rxbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(p_0_in),
        .Q(rxbufstatus),
        .R(1'b0));
  FDRE \rxbufstatus_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_57),
        .Q(p_0_in),
        .R(1'b0));
  FDRE \rxchariscomma_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[0]),
        .Q(rxchariscomma_double[0]),
        .R(SR));
  FDRE \rxchariscomma_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxchariscomma_reg__0[1]),
        .Q(rxchariscomma_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxchariscomma_i_1
       (.I0(rxchariscomma_double[1]),
        .I1(toggle),
        .I2(rxchariscomma_double[0]),
        .O(rxchariscomma_i_1_n_0));
  FDRE rxchariscomma_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxchariscomma_i_1_n_0),
        .Q(rxchariscomma),
        .R(SR));
  FDRE \rxchariscomma_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl2_out[0]),
        .Q(rxchariscomma_reg__0[0]),
        .R(1'b0));
  FDRE \rxchariscomma_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl2_out[1]),
        .Q(rxchariscomma_reg__0[1]),
        .R(1'b0));
  FDRE \rxcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[0]),
        .Q(rxcharisk_double[0]),
        .R(SR));
  FDRE \rxcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxcharisk_reg__0[1]),
        .Q(rxcharisk_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair112" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxcharisk_i_1
       (.I0(rxcharisk_double[1]),
        .I1(toggle),
        .I2(rxcharisk_double[0]),
        .O(rxcharisk_i_1_n_0));
  FDRE rxcharisk_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxcharisk_i_1_n_0),
        .Q(rxcharisk),
        .R(SR));
  FDRE \rxcharisk_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl0_out[0]),
        .Q(rxcharisk_reg__0[0]),
        .R(1'b0));
  FDRE \rxcharisk_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl0_out[1]),
        .Q(rxcharisk_reg__0[1]),
        .R(1'b0));
  FDRE \rxclkcorcnt_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[0]),
        .Q(rxclkcorcnt_double[0]),
        .R(SR));
  FDRE \rxclkcorcnt_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxclkcorcnt_reg[1]),
        .Q(rxclkcorcnt_double[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[0]),
        .Q(Q[0]),
        .R(SR));
  FDRE \rxclkcorcnt_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(rxclkcorcnt_double[1]),
        .Q(Q[1]),
        .R(SR));
  FDRE \rxclkcorcnt_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[0]),
        .Q(rxclkcorcnt_reg[0]),
        .R(1'b0));
  FDRE \rxclkcorcnt_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxclkcorcnt_int[1]),
        .Q(rxclkcorcnt_reg[1]),
        .R(1'b0));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[0]_i_1 
       (.I0(rxdata_double[8]),
        .I1(toggle),
        .I2(rxdata_double[0]),
        .O(\rxdata[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair108" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[1]_i_1 
       (.I0(rxdata_double[9]),
        .I1(toggle),
        .I2(rxdata_double[1]),
        .O(\rxdata[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[2]_i_1 
       (.I0(rxdata_double[10]),
        .I1(toggle),
        .I2(rxdata_double[2]),
        .O(\rxdata[2]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair109" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[3]_i_1 
       (.I0(rxdata_double[11]),
        .I1(toggle),
        .I2(rxdata_double[3]),
        .O(\rxdata[3]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[4]_i_1 
       (.I0(rxdata_double[12]),
        .I1(toggle),
        .I2(rxdata_double[4]),
        .O(\rxdata[4]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair110" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[5]_i_1 
       (.I0(rxdata_double[13]),
        .I1(toggle),
        .I2(rxdata_double[5]),
        .O(\rxdata[5]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[6]_i_1 
       (.I0(rxdata_double[14]),
        .I1(toggle),
        .I2(rxdata_double[6]),
        .O(\rxdata[6]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair111" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \rxdata[7]_i_1 
       (.I0(rxdata_double[15]),
        .I1(toggle),
        .I2(rxdata_double[7]),
        .O(\rxdata[7]_i_1_n_0 ));
  FDRE \rxdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[0]),
        .Q(rxdata_double[0]),
        .R(SR));
  FDRE \rxdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[10]),
        .Q(rxdata_double[10]),
        .R(SR));
  FDRE \rxdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[11]),
        .Q(rxdata_double[11]),
        .R(SR));
  FDRE \rxdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[12]),
        .Q(rxdata_double[12]),
        .R(SR));
  FDRE \rxdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[13]),
        .Q(rxdata_double[13]),
        .R(SR));
  FDRE \rxdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[14]),
        .Q(rxdata_double[14]),
        .R(SR));
  FDRE \rxdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[15]),
        .Q(rxdata_double[15]),
        .R(SR));
  FDRE \rxdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[1]),
        .Q(rxdata_double[1]),
        .R(SR));
  FDRE \rxdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[2]),
        .Q(rxdata_double[2]),
        .R(SR));
  FDRE \rxdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[3]),
        .Q(rxdata_double[3]),
        .R(SR));
  FDRE \rxdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[4]),
        .Q(rxdata_double[4]),
        .R(SR));
  FDRE \rxdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[5]),
        .Q(rxdata_double[5]),
        .R(SR));
  FDRE \rxdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[6]),
        .Q(rxdata_double[6]),
        .R(SR));
  FDRE \rxdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[7]),
        .Q(rxdata_double[7]),
        .R(SR));
  FDRE \rxdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[8]),
        .Q(rxdata_double[8]),
        .R(SR));
  FDRE \rxdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdata_reg[9]),
        .Q(rxdata_double[9]),
        .R(SR));
  FDRE \rxdata_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[0]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [0]),
        .R(SR));
  FDRE \rxdata_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[1]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [1]),
        .R(SR));
  FDRE \rxdata_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[2]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [2]),
        .R(SR));
  FDRE \rxdata_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[3]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [3]),
        .R(SR));
  FDRE \rxdata_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[4]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [4]),
        .R(SR));
  FDRE \rxdata_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[5]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [5]),
        .R(SR));
  FDRE \rxdata_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[6]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [6]),
        .R(SR));
  FDRE \rxdata_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\rxdata[7]_i_1_n_0 ),
        .Q(\rxdata_reg[7]_0 [7]),
        .R(SR));
  FDRE \rxdata_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[0]),
        .Q(rxdata_reg[0]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[10]),
        .Q(rxdata_reg[10]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[11]),
        .Q(rxdata_reg[11]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[12]),
        .Q(rxdata_reg[12]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[13]),
        .Q(rxdata_reg[13]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[14]),
        .Q(rxdata_reg[14]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[15]),
        .Q(rxdata_reg[15]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[1]),
        .Q(rxdata_reg[1]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[2]),
        .Q(rxdata_reg[2]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[3]),
        .Q(rxdata_reg[3]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[4]),
        .Q(rxdata_reg[4]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[5]),
        .Q(rxdata_reg[5]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[6]),
        .Q(rxdata_reg[6]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[7]),
        .Q(rxdata_reg[7]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[8]),
        .Q(rxdata_reg[8]),
        .R(1'b0));
  FDRE \rxdata_reg_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxdata_int[9]),
        .Q(rxdata_reg[9]),
        .R(1'b0));
  FDRE \rxdisperr_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[0]),
        .Q(rxdisperr_double[0]),
        .R(SR));
  FDRE \rxdisperr_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxdisperr_reg__0[1]),
        .Q(rxdisperr_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxdisperr_i_1
       (.I0(rxdisperr_double[1]),
        .I1(toggle),
        .I2(rxdisperr_double[0]),
        .O(rxdisperr_i_1_n_0));
  FDRE rxdisperr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxdisperr_i_1_n_0),
        .Q(rxdisperr),
        .R(SR));
  FDRE \rxdisperr_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl1_out[0]),
        .Q(rxdisperr_reg__0[0]),
        .R(1'b0));
  FDRE \rxdisperr_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl1_out[1]),
        .Q(rxdisperr_reg__0[1]),
        .R(1'b0));
  FDRE \rxnotintable_double_reg[0] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[0]),
        .Q(rxnotintable_double[0]),
        .R(SR));
  FDRE \rxnotintable_double_reg[1] 
       (.C(userclk2),
        .CE(toggle),
        .D(rxnotintable_reg__0[1]),
        .Q(rxnotintable_double[1]),
        .R(SR));
  (* SOFT_HLUTNM = "soft_lutpair113" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    rxnotintable_i_1
       (.I0(rxnotintable_double[1]),
        .I1(toggle),
        .I2(rxnotintable_double[0]),
        .O(rxnotintable_i_1_n_0));
  FDRE rxnotintable_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxnotintable_i_1_n_0),
        .Q(rxnotintable),
        .R(SR));
  FDRE \rxnotintable_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl3_out[0]),
        .Q(rxnotintable_reg__0[0]),
        .R(1'b0));
  FDRE \rxnotintable_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(rxctrl3_out[1]),
        .Q(rxnotintable_reg__0[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(rxpowerdown_double),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg
       (.C(CLK),
        .CE(1'b1),
        .D(rxpowerdown_reg__0),
        .Q(rxpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    rxpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(rxpowerdown_double),
        .Q(rxpowerdown_reg__0),
        .R(SR));
  LUT1 #(
    .INIT(2'h1)) 
    toggle_i_1
       (.I0(toggle),
        .O(toggle_i_1_n_0));
  FDRE #(
    .INIT(1'b0)) 
    toggle_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(toggle_i_1_n_0),
        .Q(toggle),
        .R(1'b0));
  FDRE txbuferr_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txbufstatus_reg),
        .Q(txbuferr),
        .R(1'b0));
  FDRE \txbufstatus_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i_n_117),
        .Q(txbufstatus_reg),
        .R(1'b0));
  FDRE \txchardispmode_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg),
        .Q(txchardispmode_double[0]),
        .R(reset_sync5));
  FDRE \txchardispmode_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_double[1]),
        .R(reset_sync5));
  FDRE \txchardispmode_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispmode_double[0]),
        .Q(txchardispmode_int[0]),
        .R(1'b0));
  FDRE \txchardispmode_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispmode_double[1]),
        .Q(txchardispmode_int[1]),
        .R(1'b0));
  FDRE txchardispmode_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txchardispmode_reg_reg_0),
        .Q(txchardispmode_reg),
        .R(reset_sync5));
  FDRE \txchardispval_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txchardispval_reg),
        .Q(txchardispval_double[0]),
        .R(reset_sync5));
  FDRE \txchardispval_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(D),
        .Q(txchardispval_double[1]),
        .R(reset_sync5));
  FDRE \txchardispval_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispval_double[0]),
        .Q(txchardispval_int[0]),
        .R(1'b0));
  FDRE \txchardispval_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txchardispval_double[1]),
        .Q(txchardispval_int[1]),
        .R(1'b0));
  FDRE txchardispval_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(D),
        .Q(txchardispval_reg),
        .R(reset_sync5));
  FDRE \txcharisk_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg),
        .Q(txcharisk_double[0]),
        .R(reset_sync5));
  FDRE \txcharisk_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_double[1]),
        .R(reset_sync5));
  FDRE \txcharisk_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txcharisk_double[0]),
        .Q(txcharisk_int[0]),
        .R(1'b0));
  FDRE \txcharisk_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txcharisk_double[1]),
        .Q(txcharisk_int[1]),
        .R(1'b0));
  FDRE txcharisk_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txcharisk_reg_reg_0),
        .Q(txcharisk_reg),
        .R(reset_sync5));
  FDRE \txdata_double_reg[0] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[0]),
        .Q(txdata_double[0]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[10] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_double[10]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[11] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_double[11]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[12] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_double[12]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[13] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_double[13]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[14] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_double[14]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[15] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_double[15]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[1] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[1]),
        .Q(txdata_double[1]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[2] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[2]),
        .Q(txdata_double[2]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[3] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[3]),
        .Q(txdata_double[3]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[4] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[4]),
        .Q(txdata_double[4]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[5] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[5]),
        .Q(txdata_double[5]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[6] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[6]),
        .Q(txdata_double[6]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[7] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(txdata_reg[7]),
        .Q(txdata_double[7]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[8] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_double[8]),
        .R(reset_sync5));
  FDRE \txdata_double_reg[9] 
       (.C(userclk2),
        .CE(toggle_i_1_n_0),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_double[9]),
        .R(reset_sync5));
  FDRE \txdata_int_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[0]),
        .Q(txdata_int[0]),
        .R(1'b0));
  FDRE \txdata_int_reg[10] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[10]),
        .Q(txdata_int[10]),
        .R(1'b0));
  FDRE \txdata_int_reg[11] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[11]),
        .Q(txdata_int[11]),
        .R(1'b0));
  FDRE \txdata_int_reg[12] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[12]),
        .Q(txdata_int[12]),
        .R(1'b0));
  FDRE \txdata_int_reg[13] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[13]),
        .Q(txdata_int[13]),
        .R(1'b0));
  FDRE \txdata_int_reg[14] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[14]),
        .Q(txdata_int[14]),
        .R(1'b0));
  FDRE \txdata_int_reg[15] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[15]),
        .Q(txdata_int[15]),
        .R(1'b0));
  FDRE \txdata_int_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[1]),
        .Q(txdata_int[1]),
        .R(1'b0));
  FDRE \txdata_int_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[2]),
        .Q(txdata_int[2]),
        .R(1'b0));
  FDRE \txdata_int_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[3]),
        .Q(txdata_int[3]),
        .R(1'b0));
  FDRE \txdata_int_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[4]),
        .Q(txdata_int[4]),
        .R(1'b0));
  FDRE \txdata_int_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[5]),
        .Q(txdata_int[5]),
        .R(1'b0));
  FDRE \txdata_int_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[6]),
        .Q(txdata_int[6]),
        .R(1'b0));
  FDRE \txdata_int_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[7]),
        .Q(txdata_int[7]),
        .R(1'b0));
  FDRE \txdata_int_reg[8] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[8]),
        .Q(txdata_int[8]),
        .R(1'b0));
  FDRE \txdata_int_reg[9] 
       (.C(CLK),
        .CE(1'b1),
        .D(txdata_double[9]),
        .Q(txdata_int[9]),
        .R(1'b0));
  FDRE \txdata_reg_reg[0] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [0]),
        .Q(txdata_reg[0]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[1] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [1]),
        .Q(txdata_reg[1]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[2] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [2]),
        .Q(txdata_reg[2]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[3] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [3]),
        .Q(txdata_reg[3]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[4] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [4]),
        .Q(txdata_reg[4]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[5] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [5]),
        .Q(txdata_reg[5]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[6] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [6]),
        .Q(txdata_reg[6]),
        .R(reset_sync5));
  FDRE \txdata_reg_reg[7] 
       (.C(userclk2),
        .CE(1'b1),
        .D(\txdata_reg_reg[7]_0 [7]),
        .Q(txdata_reg[7]),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_double_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(txpowerdown_reg__0),
        .Q(txpowerdown_double),
        .R(reset_sync5));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg
       (.C(CLK),
        .CE(1'b1),
        .D(txpowerdown_double),
        .Q(txpowerdown),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    txpowerdown_reg_reg
       (.C(userclk2),
        .CE(1'b1),
        .D(powerdown),
        .Q(txpowerdown_reg__0),
        .R(reset_sync5));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2020.2"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
WrLPAmevOeee/HiaIGgPKffTsGjPw79Mvhb1LvIE3IQs20r9+LQOoFGpfUylEN1UW2O2frWdS04S
72SDyqvJ5A==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
C57Uh05FvDEJaXQ4H8lC5UbDO/jg7m+45NOtD4cM+eEYb3jcEPXS/mMv8e0ZOAe/mg7S5VXmkWr7
VEk0dR5AU4kxRj4XjFKlvVLZkhNdXiS3LQk/EziN2GSKJjjDKBkNHEfhYIGF1ZkOpC43O4yuYrxk
CIWTpVXywZi8wCaExe8=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
lnTbrZfs2R120YpSyobtyskobEgxZSAlXnUQXw1gJpszgY/hqhzTy3v0ru7GipkY6qPoEcZwNnVX
iD7GpCBRhqKix8pqMugQ1kvNhkn1r2YRhmA6XHA0ry90LNrf+n9uqlf476IBJTLTd3uu4ZngV06I
QvBbiq8tjaP25el1krCHHl5rfNirhuwiDDOMI2E116k0hSU8spCYQ0rZ4zCPJqOKT+fAtz1I+L2I
7khRnsRzR+YQ1RpBojQPxfqkEiv3A1XZQAUu2jSrW9PWm/3IpjLtJkZmcI7pciYLWv6MsTfFOhxV
6plNRVK33O7OxS/zjPhtulkG1IT36qOdQJ/Taw==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
NYPBrFjA8rEwnRj94/W5n/OoJJ3VW9KspqmB8LGhkba5zTpRXGx5cP5VSAONdwboNqGe1cRhXJpS
mEHlKqR0glqNIxnLFETHEfkwnm/8dMDrYX6GKlEZVWbhg4uvlJIq7o63AhclqIqjyA+EUIWFI9av
c/Cg2WZkvMEk5Voduuli2eqGDoNjtmDUO4UdgeH75LdFY+E+U4xGGx2EjuMxwi6MtgMAzDD+P/gb
2nE3Cf73IZGJnwsh0ov4Y7OeTZ3lhbpUZqjEbOmWRvr+qHsDr7W/qKnJlzCwft/TK1nwPSkQvDoO
Sh4iuY6J4CC2wm95ser/gBAkQRbDLCyN6r+p6Q==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
l8u9KWR7K0iPE4cKBtlWMJgIHngboNXFVNkkmZ6xHn0dciEOTcoZJ47OzbolWOOFGMusDRe3wPtf
ExmCTLetP1a5jaZMnwKNMmVJqq0v1MCXmQo7CRSSvmjqubldjetWzfvokwLk6MZBAh7O+uM2lRVg
2JUh5JSpOyhotZWrrds=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
sS8d+5TDoy1zTTZMk5jun5fAGkESRFp8QMV8vg1sxwTYGe/MJptNpwEltS6HAqGJ0yAsHgTGiwbT
+PlF6ZE7GdA3glLDui13HfwGjVy0dNgtbTeWYb0FHGMjNDSJfT/IEaYDdKr1JpgrZJPIOQ7HrQF6
YMldqxFOawfLh/OhhNaa5tKLjc6+CsSrjpDc2xu/XL01G1T40M44u9ezedVs8kEEFbhhJoSZJr+R
Ylnota7Y4vr97XPxV540BG16z5uWCTfxzmtqjY0jRsdmMdWnhPVEemtBUdyBgpquhyWigLjIdd+m
9FytOvuiYqx/QxlsxkfK+SGt5NTbSf8tnbpcTg==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jNC3g1ETgClEMyVRhJ9X1s0X3KSfCdTvdZ0hojJSjoINg4/IQZvPSTnm6KvDNN/9PD4ErCjmDDOV
7sMbtgU6WCbq/U9qhyKK/PWjXyTgOd32u9xnMP6sNlms5y7haCan/c0J3oVpTutiV6FVgEClXJfB
n6wb0JyxR6eXI1RBZNNu4xSis1Eylp63Pg2jds0dA3HV1PfmkSmZ2llTUpuUh9dt5hBDsgevFCqq
lEiJByppRy8Qv3L8bbNSl4LQSQfiGho07tKxnCrEOqJG7yd5jckcWNgwK4ONAZrBPYPjgPr/6etW
42E/gtZfx84l0bOSgB+lTAvbVJ/HXcEJ+ULNJQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2020_08", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
pTLqFXpPpE2wsvVFAPd6keg/FFvC68hyF9vLqKPMM2rj+6kUgPBCKgz90mreQi2fbuua+uvx6l++
PnxknxaYB9TXxHfRJsyoZX/lDaUDvlgNy3lgZ10JP/sGNlu8DMEiANoLx2Ohda9e4aq9Dcpr3IWp
CBAzAaUYSGBBZlIxhN0o1NGemu0bHisB4FMqqN144xTFb3G/ofll70V6WbXVqq4JSE85mg9m8Sny
Mylfwhg7XM4vQBhWx1WmUxD19oquKtZeWYm8xJ/0FtlO/dZW/v/IrTsBHO+g31Tuc4Yeq02xEa1c
lAadhPvCyPFXNR39xVwlTKf8TjWKchWjriUEHA==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mz18GBawyyJpgag5k/ejGuWP7010DXxbJmmL/KB398ON6rHGp/E040EN7rcmiOjYamjthKi+JJ2H
Tsnh2qF0B/TBwgXWQfN04JV3tPSOr334V4HruGr6OWUGQAHJKJsH0QNDci9vwkafL+ZLz1+0JhRU
Gw+LKI/lB6iQ5sxRT75gHKPtr4swUQdSkdcS9UFHulKsKMJPsSMMQnlVkHPnlvM3c5gHCbWM1V/+
GXVuzNWNhwqGZz8iUOKWTw2IVwb2FoqM8OcImKR2VhTloz8FFMN3uYbLd6PqzMrb/IOKBNzLq6ZA
HllfEYb6sxyvg7DpPdUkiMIe4F4KLLEgaFkhGw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 149328)
`pragma protect data_block
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
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif
