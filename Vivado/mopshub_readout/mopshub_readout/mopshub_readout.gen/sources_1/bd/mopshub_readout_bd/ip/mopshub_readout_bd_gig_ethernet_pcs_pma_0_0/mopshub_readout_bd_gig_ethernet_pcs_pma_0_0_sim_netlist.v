// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 12:55:13 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim
//               /home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0/mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sim_netlist.v
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
H4UajIvT99Yu3cR2Np79gZLsVosPpgRD++ReWWhElrTy/7GKZggAYnW3O9EYH/3xPSzkQs1Tiacs
s6y95pjq+XkB6IiO0THskNgGv+5nld5tOekoggEESRZR4efC2FSHPhR3wjzVRd29uh3H5hsgoC5k
lRvrx+SAkp5Ym6/TcDXeXsU8vDaJrfHb2YpmguECqawMw0nEwVTIwursBaI4bm40xk1SFke3Mn3A
bFkkojYchTcf6A7j4RmV8G1Fgmgpwjh4hRcxidlSxAAMtstjC9moV/awSyivkmKFj+FtrL8pmBMt
uimRUnTYwcxuN9R5Ha6otspaAt9h3Wr4u2ZI69w2UEAkv21zkWSwCQiWza27gObwqeujuuLyLm9e
qPqiC+jB2iJF0SnNf9aqAJmVPnb7FQX+HV0Bx/nGhhOS/541Vd4w6ODqQmcxy5reo8rUYBoZx7iy
uyT80N5I+cf0yWyTEywkoIg0sQU5pLJPXui5fpz2vEfFjn5Oa+MJXzREP0svMxGmhDH9QXp0Fuly
H92mqKjmVpbz6g0CkRSXxPXQ7h8qWBeuSh2JXqR3l2rWxkgPpJRJKtwSZK0fg+Q0gVYgDVvq5dC7
wfxSQ5dedJxZhouJFCDAyLI4jET1oktrJal1w1vTm3RVqgNhgySwQmZIZTquyYIhY/oJ9r0KxI3K
WCddNlomsbBULDJQH8ga4YmPJQxu/WMLz6JctLyZF2O9c40oIE6piW80BUYCXRDPc4ja07yfW+l3
S4xYuUhy8fsm1pA55B+yhkIuPL7Y+6jNxBsElLyDNLXXqq6uSNf4UzHQXr25ZmNvlsaac5Ck3a3n
9eNzu2spc70IdYkDsa/PYnJ9QAoOzutsjrWlt0DPB802qupKHa0EODWezxrWp25CMN+nlScZXkUl
q3vPXKQCwmyEDVgBnx/1uAFu8Lm+VnDDhwhao4OOkasNQwQ9BBS1VFrFdIiz71GBc2j0SC4CIEj9
Wsj8qPc+HSjSVNtbQfVDSN/Pb+419fkfGfWIkCIr6Qe6rCjl9s8m2XwutZSfOX1wBeePHXLjeigR
r+Toqx174BH8/WCuyKnyUZJRY3JK6YcPXzy0MgkZz9jR//0NyTZYBk+6INV+4Uf1L3Ejx+OiJOPP
VBTmXmeHLszc/SFTgLU8CrWKABDffK1BVbyF7bljT4nw2k37RpJ2JDfS3hmGBOQAs0Q6JUVDHWjP
UKmdcSgqc4kS6LHnQFj5ZC7w68mosYJLUvkn7ZZJSRxwz6B19Dgu95SXuFJUkBcO89Yea43RM8x8
n5bEqZhpvOf6taCKvhFHw8u+yBcpVH8DdRHaeQbUm6IZSj7BnNEEXOHuc7+lTh7Bw7aOPJiJrFTV
oZBhTCVnS6g6I+MgUQVGI+dfu23Pb0lKyecivFIoGgfIkoNhsncf8x8nLyRO/M53sF6mTIpEvPz6
LyNtEmIwrcLCxaXz4yoO2b9x/leM+4WhCy/60/We1DEEbqC5plrKoYVMNHM1ZiOcWaVH6RwKTNWL
4h2GuFZf5TEn9x9tfw29Pz/w3+QBl647nRabi5ufNdyYk3ztxuGF8Exes6N8wKHDcTnnmt3LGy8C
S7l1GZ63CbVdbBGRsFJ32cIwRwhhuIhOaSBn5WnJ48eWO7oEmUE6GkbJJJAaQd0Qy10LOh5BQJoW
XQ8weh9cW/KQkmwk8EhUfUORVlGamGrk6wpZ1Z4+qqSoeYoIfCzXLLQhPmsh+2Dvl3vIOVYGzJag
uPS8nS7Soq1QQczezup7Bcjz1gOl5n8UxzmByQtBQ53rdAqrFCfD6+CenM/3Ft2FWvlojbyJyIwX
trXQXCUq6MZgcY3sdPhdHx4gkNg+CQqY/69t9p4pHeddSc+OFLAGFJCYfFcp4ao6Pm58XYgjqTpE
bbZjfOTu3h/QONfg/FWPLhc4XNGeuQxem9WkJcesJ3bmHQY4qVEibUmcFq5ui3qOzbJHeQyZS52g
+MQckJk01V+9ZuSoSR4SACXgTJg0LNE5Aar42YuhJSVD3beVnyH5c+Wex0O9oukrdX69KjsToxBD
3RkuYWQEcHL4ILSPW4dCqcpIeZ3lZfO3LuTXyHicL59Y6V4ZEMOeOPqD9m8WDPcdf6aSFe+RdMfe
LxX4JY3jtK58eCBNyF+jEIt/39SdHsoGNhRfOW0xkaXbUsG3aiNOmYLUxq6p/IlbkmBRbHLNML3f
6h2YF9Q5pOF89VOSSJqSCbGWR7L7H/Y/yDR3N0voIAtJI3D1b9OyXUnSMhNHqxEva5Y4FPihi1M4
+/cxhEIZG7nxA9bGhTC5fGbpL+Ksjbhtf5nIq2HlxV8B0Hjzi4cajm7ryxS5hLcYoiq1yp4vgRys
6Bqp3zdXwLfpNm/S+DyFEK/29x9u+OUsIXW2kyv1JzO4NmUOZ2IGbxDgzlABsharOzL6SR9TPNUX
sB0mmarnUFT5S/ZhvxNBdmCvFuxSj5YPVB6FYdN/wtYLuWwX6NP8+qissUi8C2Y1dlOwa8CPOwbp
z+idsubjMixOKuat7JLlbZM+oWPI6Ht5HW+vrO+HR5u/H2PBjNHauds5oU2HCiBwltjSMxUGDl6j
MJRp9jc/PHUewJNAPdh+s9208Ks/nz75xFWO3dohvFmI9pO7RaifKIWhUvPnCWCZf3+OV9koGeV2
NvF5hhXactVscbfHMvD28IXPPNCzk64R2CrFeVx73fGNwhP8DbaI9KrtjM7XSznKg4l96t0cEASu
TA+n9aVeLx7YDBSG8BkcuuueVIjxLIgBNJVSDN3F3TxCXMtE67/HJjbKmNHuPsXnI5JJXuaQ3Enj
nalaU6Ssb2h4P+/tC00HWMtSwywSrRmhf1iF8TLvBr6kJe8GS8GWGXn8RMYQLC0ypSAv8CS/fDOt
W+VQMJRkcXccuipmv7D9azrt6qj5EfbU3pq6yq1Xrn6n5j7wuSDxC8YYVhDrsncaX5M19lPdc4fK
95r/L9vO18evfqi00CpB7AGhbByGc1MmSHEwl2aIu+kAYFHv56X5tFgwWQLDnxVal/0jmu33mdsL
4YxU9g8YMu9HQ7B7yx/HZor0C0zftIXahob/ppBPsBVwmG6+dFLBrmALHmlH8AfYPeZUDM0RcoWi
WcIG+Mi6a9vF2kxfgtgiE328NitZWmOxS/605rbUidMrOSx2uXMW5BZSVwkSrAjY0sAmaiiKKj6Y
N6ISgXXz1fiSHLJOmCmLJ4HuzMWfMEG9ojtq4isDQ9i7Rpd+fCRHawm/igILI3Pz44pgOewupYWu
Bmb1Tax+F15Q1jH3jDvsRRiQxthiS/Xx0pdGxwd/xMdQdtDWHttntyjTAVrL/ksmmePc5L1n4Zri
ccuEpO/c7pXKK2T09Kg+v1DA2CJgRCNys/wBS8VaW/du4ZkeOcxVwNtkS09165XtcwGx63pmEPu1
pkDKfUBnmOTHLY+e/ZA2UARTpo0iiiy71addlbfHyYS89aS89kWHRAOY4M3WRojZEJsaIR0/9UOG
7n2HYM8mKvAIfIIKu/aE46JljkzujWTYva+cIgd87NNmYaogAXz42JTXZSugIhqK0QfCQVU/LnrX
99obGpROAfPhfut+Z/WeDax/BIjRFMWGISt374/NsNv1DTPoP+ExU3dg5ohhDjK0UzdFn/odcDg9
1jID8bc0UgPHCL07lg4/ZrapN/Ct2bCHsiEgH8LT35sulBGVJRtAQLDlvBG+nrlcSLc6Oq3UEQlA
BdoNZUfybpRNi4FmWDJmOs2I9TwPYwzbR4hJPYzkL4uZ/lfh2RCS3Om/swslMfqAR2UheUhzRrkI
MSBShshnvKayWinvTVfz9WVLI/qIcPbqbsAZq+GLI5Clr7xHNi42BKV7Srb/AUKocLR2fc/Yl5mY
mGGU0HbvsC44WNRUgBGGa4DHyI1F5oUF4LvCS3pbYJ2+OFjualGS+OVKwWgXo+u8lQ5HBm+3aV2f
VnuxOz07jXM2bzcpwtuLXisAgc0lIMi6zvc7joX8B9qKLSvpQRMD4azzPf/9ls1jB+NxifTSqRDX
PATzDOTn3cpA8dZYXh9LzmgI43lJqcysErdipyg5niy17ywrb6vJ4b72yy3gH7FKLGU11WiVaWI0
XTZXwqHGXqyQqPCEwC0CqHHbKyBqYvQJTh3SSYhBCRSSuBrzZLTJXz4QgmenBsqZhdHhUFRY213X
w174WuytvyhvU09aOX/D2v6XDOFfrhmTQ+OgL/8CyHt072gusxE/s4bcqZwOg3wyIdYEJv+mFdQB
QzxGcqKqK3lmIEo9lc4p9ES0kJrI2o94hxpfxQEdR2OIvh8GySM6qvWMyN1QZ8LzY+LhCpGoTet7
BL9qrKJydyDeoZMo748ievANoyZ3g/A1uTvyrNXx2J9ddTicGSZs7HRsJ47sXn4SXpZxuAzQZzLE
tAVmkas2vbdWtww/P0BcF3EBtUAWp7Q825lR7Rc1X3Zk4viOMmsKbA3Xw3SsZ8XjJhkVILovqwVV
H8FWgSW/oudDqJtPZ56I+l725zjfdkScLcDDF2ktUgzBictY/IiXtKUPFvUVyhXBeNkcJZe2I8aE
qWpmpOGJL7jrC9DbgaOLgDjR2xP/akuLJPGnqjqiZ7o8kuATbVSGdwR3QUnO3gez3tBJ/AG0Jz1C
dQuOOOjfbKFYHoZdt5XGcwISll6FXZoNABfnAN8iocsvVM5Ji+3N/WStNOul6g4OK2FtL8jviWgg
QunH58UkG2vPNg/cWWa+YXUBhEOeVjs6Y6GsSdTCjW+o2v8wqq1oaD0VUAUQxmRxP1VYNQOGChkg
ehfdD2VpYKgGtRnneoCo7tbD3KrZXhIUUz3i3DpYvfMlthYPx+mfBW5b4mfvE5gomHKqCeeLmyDc
5iWxNhYKaD78HEI3ijtFdsEgStPgzJu+Lxj/2vaHvaSHlaGikvkhr5pT6hIjdE3refFXcGRPZJgX
fqzIKNSmTQzwzAKLbYTP+zUF4vuhZ2UJ+F2e457k9v1KWQRsTmHnqG7lYQArq0e+QR6WNaptZfPh
0kse0ehaGT+iJ92T/2Xf5gGTJ1ZcZHdH7u0nI0A1OLRG1bgF8bpFha7ZHy6S6MrfwcriEYdjDJij
hEeMpFfId1NcQyo9/eBeUDWoAdSIAlax44k8peZjhJ7YNTXM1IcHY/4BBAgL9HOtgHbFwARmVaNO
MSYfhtDy0F52evv411gWbMI7EX0ICLYgb0hWYL1nmMH8bubHucXEO1SRwmVYC+DqOSh1ZiFlhIjQ
ZHvS/KWaw9OWUEhkGV5+NBVEPRxWCtV+Un/DQA2IQNeWqKTEineq6WtSox3K4r/2Ds4+mQljAiEq
S/eeWO3wls5c1s2+oFudTla3xF14TxlKBo06gzQ+O2eSjrRqPgh99girOrMJssMFtgvtyVGkPTt6
4Jc1R747wwCrT831vwD1X/LpbdAuBXOXrFQICwySVjcENpIqaEPQzrxl1uVn1l9z3302E8VUIi5a
y71j4KdVfpFCLpXbNlXhmUXoNY+bpIs46EYkrP5RW1Mr5yBwf/ExIvzv1b4nu6K3sggesIjt8eUj
G8brw1QJvBHljooS+xVZ4BQIhnNRo9i5NgcGhIj+JwQG9p3Ns+WFPOHIuEXjxfWMNXmCSB+PKro0
+t1qrtL4h+EeBGhyIw/TEtn144560tg+cjM+pP8MpODo/5dzFJ393Ytu+uyvHfnV6D/f8BLDGgad
kFS1lra15hvjlZ2owAR5pp4ut6Er1lNYr4SmbJdynxG+YH5nHTY3ZCsT/A3r6qYZdGsde5cP37I1
JoUc8qU5XQbOYzBgS/F8eC9p4NPdJ8ZPzgTXnHBYuyTRBvzpgVtFh3tsYS0fyatSBTklzromdDKV
pX3qzk5Dbmht0L+y/ES2cliHo9bSsAGC7hVkX77xcpDrL1esXb6toVM1tt9i12CAOyNkRHcYWdGc
efO2Xa071/K2XETjjghMa4lb1lMQmwo1w+8m0FVTR2nYJkLmCUNXUmcmWWBsS2sSItAssrAO7I78
bM00bHvOJxr9FTnobZ4jQHDU00B1A83D9IbmJFUSUQBtOQeLhV3c3Uo2inZXU5XV9AiaIXRb9QNY
H2xeG1qFSDjnSSnAflexYmV01bsDxZoYEXTeUhOz/rPUZWacRe9LloBWQwKv5Jvh4OaRYJfpKdvh
4JfjjlF8Giasnsux9Uqq8+Ee9fkL+jNqj/8n1Jrf2ZreVoplrG6FPKeG0821QWY1QHeA5R8skMgn
EFHg5p0NY76Ts9rUHOX49zXUb9Hcjub95DEg6o4tYxNSC2oxJH8H/vYx5wcs3jcpua9FXkctY9Wv
bpNLs9vdZSAf8zu3Nq3RrzOCOv8Is0nXEDvEozOgXcoKBiTElVLL0FIkuRS3DFy61jKo2NCX4E2y
WI1FRBIKAKanSSVbigbCgrfPr1O6AAV1eyOsYd7cB0w5T0ENh8LCQReZRWMaN9Eiqwfox0p46vjV
87otVEYICR9cI5KeFkq+pMfHLF6Iar81AFeBAC5hMD2iqEPUFpR053xz8y29IU3oPGpw8wwwxHVF
rs+Z/JvqlWio8pVNUpefGXr7s1FFh0xyk0EonxA+OCcYmYIeNgXimr3XMpdi0pblb+ynrELOVeUM
52fp/5NdguhrcUDokXE4pg6DipLuLem2c0hVPCOjq6ZkuRql6hVUq0fohLBxFfBtSo0mxDxJgHYQ
vv0pweK+kRLUCA+XapPgfR1AIY2+s+KeaLJIAvXHkdj4P/0FP8nb8OdJfVK0zbBXLx58eyrpyQa7
apEvbkqJI+UTsSPGO6oJbdqh7T07mMdJxiMmQdFgldabVTJWpZEhojePmXGZ/RqlfpuVQr04PkLI
nc0/SnKAcb+VGk9BmDfRhckJFk9kRwl4TVSg+D7Sn5DtDv10Y4FcImjtOt1rlbqohzCoaSrbSpqZ
K7g7m7mhAkSqCuwrLvnSjd+ORmavgreQQMJaHSKOK1Iltx69aUK9I4Pq+DR7PtPWY3guhBfv23QO
TAtDziJz1C/h6VZMuTbNpUuLpUEqojD5LU1QUYJ3Qkq7z4x07b2vj8FQoyZQmOPuXWf6bQ2ieNah
xkDjdzqhMVRxDqLEKvcMFJ4yLMxQhqHrb9RbUMeridpwSaffGiFrFqEH/WrEUrje0mOQVAOCTNQG
g6dX5hnNv7/AAM11Jp4SR+xOz0O0tL6LLSj+38eQrPdVa/Xwczaw0ly0wmFYlkA1d9GRnKz5cZo1
LayecB8vnDwL3PPDw2not8H5OjPMYR+gu62rk5Df3xDMFpOrsUNK3Ar6kvJDZGjfJJXK2zQWwMK5
uCb/fW318T+nyfBFQPwIX6tGOhgObxHLsAlWeVrcbuQBzobmMrtBpMp7LAeYT8Bjn1p1J62i6j/y
BLlcAP0cB/eNVk/zSLendwDap3jd5heEYfvHm69AjYI2Unoomkid53zCNXGHOnsHeCp1jA9Ppi9W
yRd5WCa19xS3pU87ShQrbVIS4cs/iZKtUoSJ8I3UyAv4Orh0IF0N943hUJNn7I4AbhFmvVd6uy37
SWu7C47Nj1MexSFdsDt1BEW5axQyJAC26m/j0fd6sJPLoMI3pPqRAs5mhh5ZoBEri309mwWSDLnu
uGwD+9bgtjsZ8S/6IJFWjT+0P/Mj/fq+ONiiCoxCYHWWnfvqvBG9rp/vV7+FE6ZcyfzCFj7WFPVU
GSR52HqoHWJFO7FQbaWZrLcYdWhQYiDAURqt3pnGv7Kqi3B1xPiDwZPhkbMj1xsq9u+8uMSSrjkI
99QzM2vQH7juEbtIJDkazhA5AmxXKBJ7RcTaQwaetoLpXUsCdBa55gxYHFSaEBCCGQ2toXPj1c1k
2ZJLD3aYr/ipVxTxYr0wqbABfKIC9I2Fy3XgSbcEr4Lb3AW7AaOsSlkFegJdX5u1LaJGwegFFAEd
qQYnfKDXPizh937lF7+tzgcsULuLsucreoeF8ScHEBzwY5f6syHCCD8eBFygYN1bdvnlvFOtniKT
GmfxdJoPuunkhD7WBM6hHYJtSt6ukgDK8iwqdda+Js00W9ELnLf45zbPpfsLQXH2WyRkqfG7jOqb
1BBMRe8gKxbBrm/Aa+B3+Lvelp5vr0SY3X+3Ovuoo3883HYXYRERWLK/VfTLGGWJbaACbWeDwot/
SFmLLDwFpUdU6rhpJWEEgVuk9/cS0PiJtSI/YTEvrq58VFlE5YEzQaBxr0zYN0rkAuj3wQNlCiO6
8d7ajkPxu4HADCQsP1vlkna2k9l9tsaj0vTqLBMoEj/crLZrHQ9IpYatOwYA8cGd1Gz97AI4dd7i
wmuY5/aMFD8BTc0Imikcx8gWG0zAz84GLOoNAVBSB8isuHziJQO9GpFQ0qD54Xcf19cOaqHkGZgh
J2jrHldsKVbuYWsj/Cup/hYIw8f1sDunCFHNudIYi5rqL2tODShyCMPmobzBFxaLRE0tzq1S3XA8
vFPAvHEoFxMHLDaPIhzgfM8fZ6eUb34UTB6UJVFNWYKICSzFo9D+415QOpeAlBybSgWBOoxeWG95
3wDNmcmIX2VDO4x2nl4139upSdFYM2NAfzciw0jewWjI4Ya9DZmbG88GkVllxVNlmvHetl5BoXVd
jRNkoz2FflwnmdAhaIB7G9tCLqH3nY6Z6SgA345eIRjGHh/6HohHBo1ljoHoeyfiM/Jgfvl8o9Nx
9BaqymGEBy9WQVHPMlz6kOckRcPjQFd7p9p4qIQVtRzwPX6ORqiklJg838g55K0YUcY2WlFfljB3
Dqlb+CUQfSPSJHr/5U94hdtiC9Z5uXaXjUsEJIyox0meBvyzk5YQ8dL63Uxe+kvPMq4DcsoarBJc
Q4wSa61CueIQmcuOme2hJOHt1Sl21XYH6id0alWLgT2zsXaT0+GNOVLOVk8sXtPZIARIPsHXAoVf
PV6/O2jnMCDw7lPiZpMLdvHTFG38Gw7TewGZTDswYBvDehGLCSTqq0Tv9mzwSHSqUKoKPhQ4Cj3d
EKOI87cWRJgGqpccC3TdRico1rLFy3PxpuldCr11gh65aMohuZzZ8UfMVDST34SoJ2uj98nbHSH5
ycZ0EIRfFqGo1HRS4bUhgIB/PKBGmi/xJ4TU85AHXAU9hiM0v+t3ZnmNoIAspeNdKmKR992IFdRN
kmGR7d3J2b2NG1HgwR+a5C01RgF0fd2JpQDyN0Mz6jUtEjoCK87i6nz0tFigOpWaHFX8Ixf+/VbG
o+d3ACCVIRvM6O5FE4bPVceHFmOvVYcTWFASQEoL1RENQAxKIuO1NKPeCmompgGWfEmWet7h7jag
Ou4hDbKn3gZVISV9T+4LE+VhI+v/0bqLnTP1FHvYOviAMb3uPY+unmFmVnBXTIZ7spv/uBMT4tz5
Elc/68BsyMP6KH5+niVz8FOJPSM0xVebJHia0SXCk4bhmMONSUVjFL2Km5RJxw9Drajzy8ymp/96
BmPSuKyGkFDBxmVUHpbFVUTM1YR501znl5dOuM05X8VvxZXrUKJewzVnmKrDXh+kXD/5+3Kaec11
kBYLbIMCU1CoLB7LLV0wmsNEMxUiX5e4WL83oto2XNhzkgZFmG/d6K6HIGMtZPiaceZaxSR8AbTn
1u10N2VJnzpwmHjnkuDLwk25uRgzpOIARtQi8WLCAFQLaQUb8PhEnUCUDEXcSvR+FugvMp6i9kLm
Pendyc0JMx9+J8RnOMwyI3+7zrP9P4L0Q4vKasQBJgabN/k4+m2qc4iyy5lqoe9W4EFOG4NBoxX+
9lpBGWXwjbBLshD8t6RVOOXaZaXBGa7KG2SYrCTnGcJkDabmTfbO2VPHg2ucF2gNqyAutMnMulPl
Sw1tlLcyyoOG3c7nV6EKLql+wpEeY0SmWINo13d+2SJ9tNnf8tu2x2h7TI6NXtFEWdZ0pWcy6vOy
+7bhib2v6BIX0/9gTM46EoHkf4lZn54OpSXhESukP0mB53VcrQOG6d1+XXbo1Wn8DZ+UPPi0N0TK
wFPPlc+CrJaq3joKKJGxj9gtvFQ3D03/xp1TO5qVwTSTMOkS14fsNvlJHviVmGFl/zgQaj+ldr1z
ECwoLD0klVJK9vMkdvEQJwKEWSmlZL7PGS7iZ7DEt0MafxZ7XaOg/85oKDZLU3VAMqqqkBkMgI7x
EE+sy8DAhIKAgPxMVE5CUQtD6rYxNuLi/DVwgvCKx9sUJKzzsOK9pWT53snuw4sl+sMY18j2g71x
mBLbOqrMmTjCiOqVzcONkTgbGwdPLb9eq8SI6uac/EI4XM7MCBsKdX+cXq8obyEcZyBX+YvvtLA5
cL4Te8547YPuy47fYoQHVEUbRUt9KtISi+1ecX366Eq62xTkBAep3p7A2YVhnohWQ4rFfeqPi/1Z
Jg3BvW4ndjDKk/I50VXI6ZuYRSWsto2MCM5VN6nIrwWX7+Ey9I9hZyPeDzAcGLAJW2mvOZKNAw4v
+Q+eDXypzG9+YAToo/Y+9+sWowkiKYJgOAq2d7JZDEkYFXJnc23vHneiAJ5jx7K0yTQ5kvRoH1Ty
LlYnkGxE0RIq684ul+6X68yiNzYquIgPANBxdy6/VqnF/YTZT0MfPjg9nYqhebX5Z3LU/sOttiQg
5lKZFMQQyTiBtEK+BaR1Nzwiz7Pu9ekW8d/0uMSELvKuL1knj5k0JTG/8iFBPsXrNZBv1jlUnDss
XqB+VUbzv308rj/jNX7U2R+DLkaP4s1JNqgpYNT0Y6SSaaBAmV8a+0LdMr0cGLZ/kReX8jvuBooK
WaesyUIobdDAjZGP1jNP8jJONLClAA9WfmyFZowWi26I0VMrhD6Z8WofoGly+arWyd6m+DrqKCq8
XabI6ElKeWy2SPjJec9fkCbwJru9owCXSGngW8BC5wtNHeC7yFKV5lWtlAsXwLDccy7Ne910E6v+
rmDJj3+9Za7wiTfkT21gRykJiTJomDgxC2srvSd8zCxlx0ntnZvApE1OE7A7NBgDKq8zigtXdTHG
KyZb+kPYk0OxSc4JVHGKbFHtuHNbZ9uu/47MB4tBq76ybPj9OKotiiBK/Mol0jElgkUU0LycJix/
lTsEjstwTPuUz0y31IJZPwnyZBtRV+9DUB6VkJSrh5zciBDAdOUNd9oeXyJ+NKkwXq8vzqyD/Imd
ZyAH7NACQrfP2XUNsVoxAn3e+0DvbPR5RNXwi7Mkhiq4JCVXZuYn2O7nT2gLPQmiJWcGZhbwu+65
hShlOXDgZPgn6yn2HEHYczYAWg8dY4qfPbvpV9PPsQV/1UCCHqPHoF9BFz5RHFpftrvg63czZFtd
NqENru9GtZeYYmvkr6efQ2mcpY20CJvnDXTVjMBkPYHsTTIf4AvYPI3/HzMWHjjhYpEG4EYvUA2e
VJuK1RTeJvAags/7LRCSfoXJQ+DDbNWa9BF9fulPW09+6qb5UCObsv1Wu8OB5z8bCyn9wS3NW1Rz
ILUC8Y7DuzUl7VmE4i5KP5qVIU0BUNUQIuRGq4J3Ly4wLoX6sbTbZMJ0wOQEfOBLouMRJKw3pmv8
dl3+zuSSvGsRwmibesHCdrHSVpKNbfWo0xINMpL09xR0AAGCsNTg978bCk3sepiCJS9JJ4F0fMuk
TI678/+binu37f2gKjg3XHAfKjrfnyEj0aqGU30caak4BGb3QjrYSWCydBi/ldDB26772NIL3xYG
GBQuILVMNp2cZ959HSTR5jyLDSbPjROxnrdTP5vfSIpFHal0NDqdUw3nABs53HhDq8dviOG3WHMP
7AS1AmOEx8aRlTVZQ62QtXEad2h1kg5IqMOvGXlJfGhkDxM+9X4cfU+6FiwiaJ6bBr4Pnr2907xZ
yXE4hBHTyxurqRTtxQH2bJZLyz5FxpjZONHHJW9js3/WGxxOMOynHoHq+HGwdB8f9H3/wMSbaRg7
fYDxCkMLgdJgohFNbm+jfhCYHb7UijVtQtfNh10oJLdFromO41kOWo1VtI90WJbAMhUPYvmKkoGY
0Dfdw7nvgPJv0t8xRY3iZCCKEGGCoIgdxBBNKLj0ReHn7KW7g/iwomK83Gaucbl7lw4LfctJlGt3
kVR1bCQIGdfceJap87HCYzw+HDC1f1a1WacMTtMYAKuu3g82oGhApL5rZZYp9eKLCVarLrMCeqoz
8Vm9ddlpYR33x2WTHqGl8U3folfI35FgcxapsOVM83O0mNTHGthK3aiyQcpSsFVkjISF29D77btL
/ZXihi/ACF9DMDsvfVy6FrxCSroXTR6PamrzpsXlyeyq7rJVloyq46JpXoYDClYM6Cx8ovrihwIK
/Oy9UZOlg4GsCPfudql6/39405TZcI3gxAcpHPRHLJ2pVtJflLg1XDDFw5G9ZAyIBH3jyqLfLjBi
ZdQX3q5I8P0/V0zL4v4NxK5b52lbH9/dhX7RJKOXgm9zsEtfdu8P7LQJAqaUcxE3kvahv4P82v86
0n4o0oyE9qSCExnjSNk4+FJuPK7FWiEcsxhEzDqdRBHIEmHGoxZSWuCQ4Jmzgp6/94kqtXbgkNgI
uBK9JKZ1BQkWFskVmpht6fvEE0PHnOLSz8nE5vQdHUCpIfz25/aCauewAJmDCnoM7B6LspY+Fada
9yC+AaFHdK80PZWPDa7dzZei9kzQvcsrzNeXq59ylxZos0dt4XPTg92vvRBc1Lu3dW1YWy58hZ4j
qi+HkuY6bGYW+3dE8c58qRbja4ZkFayn9wJHJSYo29P9jRzgtf4lNCBdnRZ6QkokvloJpStxuF9T
fNnuWQ9DZALMd4j2Y8o9ETdPmpm6uOks82UG3RTjcsyJyektBBrQCkkJWrLwZ49TtPTGwOJ68y11
9OQTYpXRo6KALN3zpNq2YfnFJicRiJrrvJ4tN84dw2W9F3F/mNmsFltwjk9I8r/GCwfyLH6BvGTX
rtc/boihZtm3VXCdxlj3jp/Nk896+d/g75f+/SYapemEyof/suayDsunKmgBzJMKhf8jHmpkthB4
T5SrBKwnXSwmI58BC2EW4kZLVVR69jjFQcaendkfWRJhb5gMIzrkQAnrBoknRyY8fA5a0hvDaBNr
tY+7KCTpeSFUn3SFBSwphhiMQ4/PVFSzl82/MdaAF5ZjVxmFmW6hiA26cHrolvBrxpiMslfh11Jb
NzB9pweMG0OY/p7NeTOe7jecxQJmETH0Ttm/CqTEGM26yW3SF2WDIU8omj6RIjkagchwcwf+iSqA
nBA70U+fWa0ifFBEbxVVzA88OosIlUMZfoqGjGhJ9JptO0GIZYc4VTyBkyb+n5UTe+NjaGDD2pyy
IGTtmvHQZSgk//w6yFwFP+RjIbg6AEhpfOsxc1DgAa0ezpDvu1hww3PrjIPp0fFrPlbtct+32xPj
Cq+/Zn/K42pQDgff6E1FpKJVdb5sZOTPUHUjmH03OS9JcmGUy0lFVwFBJOPinu4JZqWbiuq3crFX
1rkVBPBx5/LOjOl4NKsQbYg7m/beENxz4MxOoLsPAQv9ZwQ3WsAJgmHz06dy0uZHpEUZI9P4rZGA
/6P9f+dtwX7mSF4r8gyqccWp9HOe3CbEsE0sfjBJeoGhjbnwI7eIXJRKqa8Bjna/QaFDT38LvgTR
qUTcbnCw5GiNuTCiTwRFzhpxnXRB0MW2aEGZG8KOHWtLikKHUeGaUK1ywvqi0w1cAKWwbe8gVYdO
+J+1mGsLS5czfdsM9gZl76ejzYijXwCHz2OpTJoSummSUbR6fkRVzKWiUwacC6BUTWUX805goFKf
8J+XpayJZFyD8asXitf815TKqDoxpD2dks6/XLTyTjO5yyMueHXXUuTU/ttmPbJWVmmOYOGTN9Qk
c0l9F/17iAmGsGtGPAzwgA55zHjpC4UmcE73lWu8CYYQ8s9O2kCt4Pog/PuNHxI2LIV0YDMbBnmu
bPvyQALEtTwl943f7w+OyVi1ydyoQLdGuDallSnJHtltzGZHe2QExH2pTUc0H0lYvpwAu4m0LJ3R
71O/T6MiJDKNUcM5BxA9Nh+Y9wwAiDdKFuBBMVbulJ2YXeWTPOYIQLa1VywpruXnMBcyWu0l85gp
+bt/HT2tzEQ7x3AcS5liBHyR3kRzy9IjdEn5xkNNQSQhVHxsNvwnnOszQF/yL68Q4AIrrkMn8bDr
uWJf+liKGA7b/3WA0rTcFfTJuiWT0H0nlk5Gqdpo958nolWl6EFgZIZHIBA1/5bdHDS3gZHu4ol4
CBTasE9NxcvuOB5y/1KQogUWHLiG/QBGX3aG4E9LPfoFj86+qtkRTtmz+UrtmtUkz2j/zninoPUy
Qxd+VzNr3WJSLZqKlWHpcj846GflAXGcROwBK3Xm0uwqmljvrMlIDstZjwOU8nBJY5VQducTGMp8
8JlJEM98fmWpdK2CdT9vEqox2OLFiXMLfOpAatJal6EWJs+Pf7fKSAYqG4XZ+92OoMbXX68MprsS
tmA4JzWD3fkEpczNImUqoXJQ/3X1IiGmFdCvmltAD+VCVa6nJJcVlZZ/DffLL9+Vp8xo4MEn2LZt
7e8925dl42D9SjsQIOcXiY2Y6qhacOKHm6XbdT3OPmudeWSfJmaMRrztGKXVGj68H24XGT+PkR+m
HYOtLVm3exvT/ZqL48USfF0AMH0qZyCDGFxg3DjbvNXcM18ySPGhKHF3AUfUF5KCuO1qL5JA4vNe
iZ31Ea4igapPRDKMoFyluVr24gvL+YN5A0rVGZdKXR3hTslVVLjHn4wNMy67OBM65tIxHoULbyys
LwoEW/y1dmIqfabPZ3aiHoRh8JpcQnEVtTA/KyfiQ7U1x2BHcDv6xTWq6BiMhdbX0ohex6Sr4VI6
1kcsGwzrpVYjfRy+9gmxw9dmmZSo3K1gv3LEJA9DOoEtc01niixoNd7pxKFMWxsKRPDaelOpfzMe
G/zIaMl5rX5L50upn9hXpRlswAuCuPEUbbd6WNf99VgJfefAC9SNKwssJaCqFjy5fe6YyhYPdq3V
X/XiIvfMBsv0muGJ06BwzRyxf7iE4cfU84uScPiaY/8UjItqVIrA7wIT5HeomrTG6scH1j12LdF2
jnv6PTikzI+I0UOf0dl6dBonPUwXPM2elRvd/HiielVUVvyDxZUnfF1GVOk7nVdZtNI8aAxEbRWe
rrldkCUhLiZWdNKQmQqIjPBxOYgA+sRtyrT9Eyx2Hc+VSt4k7dtFx5nDK0PYtSH9IOzVM2rUn71g
4mF36t4EzO3QwxOd66yEWYSqy7K4VzBZzwgZFr4Mi2u17HsGXwkxtB/wDxaZ4knFQcILmTMOeI7y
QVmqXjMhYs8jniqniCM0nvD/mpGpDK7h1AJtQn2ANvxiqBIYuwl/4PYy+wpeB1r4qTq3XTxMsuHH
AoX7k7ab1/ZA0IYD6LAYs9sngDkpVVkk5iO7fbNFUXVyWndBrt/93qUe2aW13tiOyUkI/UUq5A20
XOE0dIz25b3RB8KFUbT0fgK3Va5XgNG6rApxz0294/l49SOXtGj4ohqlg7ca5rMZEfI2TUF3faJn
QGtXcj7oD968ubQAHuZ1cN+Lx4+uBw1PDmjLDDzUHvme8lvdloDLxkbfuSF29Li/iJbelv5j5/G5
YOq5b58KIcWfpABExN1A365EXqlInJ8fRgnWvAnf+dzs1nDRRwZ6Gx+r7BpnqqxwL2PVH0JAwKKW
nMQTmvVfacRkVGNkPo/8yRLw7dP1aFzOyrtPkGuqXJuWYcNi14FkDYHVBZfDeK0qsGDnIoseqXJm
9fINEYKshkyP6bQ9AkTTaBjEO4pjrFvWRRQaNhFrcPOtlf6O8dN+CB5tEm8LRUeUdfhsP6kJK+78
t05j/3S92hvLgDiGRXWB8LSLqekSzOh/xmHFjkB3LU9Sr/gr0ftb0PYfohQ5Jb2oaMOYXfYq2PKn
KR1sMLmfy9UIZt+N6fNMe/US4honjIfKuEmlSUN1xTHZ69GjWVP2gWaj5gjXakROU6DVAGT3jTZd
vdQ324o+nGgdkcge8chOfTJhznXbciqBNpZTECofT25byVNutHxh/H0mxK9OIesssDQxIr2udAAY
vx3apYuuM1tWjOF+Ai2qr3sQ2GXEp9WELMJSaEiufH67ksH0OmDUc+kzgTBd2nD57mKpIh+uU2Oj
jcmi/reLblpZewnyZikHCoQYVeUaOJPM9sM90hB9/oRP+rdwuy1Nljg14raNOcSzd7e5SFCRp1U1
cM89XtVa7R2wZyszfShmUFRX5h6R1C8orKvjNpNu5iSfeKv6LBEu8xcoZciPTfQKkIlSxIMeaDOR
fxM7fG/2gxHdTYCpf2RIvKPw3WIEYBZzwPGKikavhKRjlHshdxu0WzUp5vT2Z+n3yr3xbgb1In+2
99VbKb6m5j+lpoI1guMVMmID7cU0d18flQk90u4d8O5qrpHCLjqVZkf/I9NZCkaVnXG2Tj1cItZo
KkDqa68GYe8HVJeJ4CtlrRxobEtpE/VfmpJ3n685+0YIckJ5LxUJuSMTckAbwustBUm0GIPl45dc
Gly/T1I/QqdTyajplM/95fp9S4SsgF4p4Lz5779g2eigu1/Js+Va5vNumRUcvbRLt9hjQpewMCp9
4m9BE3gk3N3MROF2pax+idSwGkPDiUhy+1RnIOrpPFOb2kvAN10aZ//frkMiVDca9ZLgyunjmq0W
+1MXArONE0EVIOFKIckyr0pS5P3CIIeLUB63zXmXtvRm6+PVYNBs/4X0aeQcoEggSIqOA/VsScLw
zxM1aNcam9yDAT3TFsGhHP9jk2tSaoUF3Bjg46m0a3QUCUcYzvIG0llRiXzyQYlAiGRaBFsqg3NJ
KQWZwQR989D+Me0UeHB2gqZhW6rAhz1P9PLpbM82UkxzYIU7p3oTJfutw5e7zv38IQ/xn9QqOyh5
C+NCVpLM55JGNTgM5jgz+lt7rHKnimL6VBvXsZnPdunWanU3fAXjCNetuN0wwZJTlc2dGdmeIIjw
E/sAw8QKZu8bozr4mFLl7ciWmU7ksTknd90Goqp2LJ9PYx5PrAET/u+mjJw8mWzdLT5vRhqUY6Li
EUPnyemoebJBLUj6Uh1V/hfcs15TrPt3dkwFCqWtcTbfBddaVDte7P3CoyscX9iE2KyYaIaUde5h
VTumS2rUZ0w9UCxl/MbQm1InD5TgmX8byfEieK6w4T54Xul5HtWNxyd2Zk+toBbIcHbDAE0XfdNr
Dapv4SgkXOvJysxIkDPiqU+59tKGtMiaI/1t2uh/CGuQaBrG21Rf3PprP67lXX6z7uKtUZ3VNwsH
k1yTgmsLmsfDqjcu/vyXt0IpyliKPMZrZOKflpMu0Tg9rOgkYUnmBrBfHpWFfh0BC6s5AZhPwmNx
Mo5jGPa3gTyfGp386oWUNulavVBOLKuaerEEg7KlBwg/CmNeaUVHozbbCksfGuEPJdm0qlZQ2C11
F8kxzxg7i50oV8Fd5xFDzI82D1SyDyWceZtIUozwxavYOD2+FA2kL2YXcquQTeKy6MfOlNpobyCW
BXrq083AkIC2deyFkmCQ/QTfv5hp10oPmwDiTHul3TwiykpI/eeTL0OztKKktpTLLz6VCy4ZQsxN
rs0/ZdKKUajsLnYf59XMlog8Qmt6+dBDsqFld5vGesBdMVxMz06dRbUgaPllWe6KHE7oeR+5svi+
eu7yMSaL4cUkuaLcL5SC2gylEmM6XRxleD3C5lnaHNHBBbMqTB4i+Us2NqLeAw5LYK9Y4bNiHnzT
8JPeYiikPsXm7bTpqCzhgli5edudj3AKTZgIbNr1iyLVb0uaWytFJHhLYI6lllwd0Wc1ccq86I4m
dsmSq9V02A+YPuKwnPNlB7bi2QDlvl6lboVi3gg6gUSGap4ZhCITs7XBybb8Yi9IyS5b03W2HecJ
Sf1EuRoxZ/CQ/F3nQuo++kqaFkIyqg0JNbbPFdf05P+2AWxgLdZBpzkJrvVC9UAKETEPOno2MXKX
32DvJ2le6r7Vkk4GNptlHMIMgtKAXdHXrSDoEOc99rR6W4HSjkbMiDh+gXM5bSwbJnfKVwjZNfI0
zK7ddrg4mZpJoC41N5MyAbAlzP1O2gghqMwEsQ2ap23gJhsEaqLYbNonF9TPBLViXiiyXHhkkBfK
dtOBCAFYs6bMpLiFuvyEBrrytBdeCfHOgsW/6v687MvrEW5xuLy+ANlW126iLjU0Vo31pyu0MZ9A
FfsgEh1Zq5CR2L7P+YXavO1QcjKrTDEQaEZ61ScHOZQxg14Zf3ce+YiZp0Bn1TVntVXHEQPMYOYf
L7lZZTsKpECMQqYRpuL1ZPAbbxDFoFwxHg+gfpWTNm5JUG6VllgHsfSNOFUA/YzuR6DHZEoUJf2R
CsntemvaRCboCSfi1FEq2daWUUYn41XfLVNrvfL2ynafiS3/9mY8spKBc23Tp+LR7wBQPl5co/gQ
ThXQEXAlEYndcNT2/g7HdNy29HZEOrUEL4QjL5RIEMmVUREne6iq7jj9uiau+C69Aqf1AJihG3y+
nRKxmKZe0xjVk8FPTjWWsJKvVE41blAcZIhpyG6C372QUmX5edKfzXkcOZs3yKrVmndXLOFulAxR
LAS4rvgEyhqtgheWnqiCTl4F1D40JCVatR66JDWDz9+CUPGykTSFQO7NXPhWB09ymCI3U5s6C5lZ
WommEyHGka3N4EIBkhasVaEwG8DUKBjlrH4X9A7+s4PexJp3W9sxFjV+/eX+IScZJoTYeJiY/3Cl
9q3YTG9UNyGr71cpxy1z6CtTq0Oz5l/LlWo+IoAmxe07SbMYUHDZvRrWQ3WypfS7ksP9UaN0xWyN
guouohiy9o8I/onuTUzFMuCckebAOHqFrUXV5u42N/NUckRQ23GdFQzJGnUuDbfeQUkYDZU8WUkd
algZpYK/u4BNgkbrWo3KzN0K/KKeUSfRTGe5poFwB6AbCnExYrLl3QnTeKmKRPKSoTInVb6XfcO2
FXJhBG1K9hfiiUjinKYOIO6GJNtEjjFge9e/xhvNRvaOHTWYCkAQOw5wj0AEIu77O/rBtfuYry3Z
mEW5biY69VOgFnbB0xYb7BIgu/Ltb9R9oV2+98wgaxAgFlpMonW73eveJRX0nH7kc1+nHUU7bYLr
BA7lEQcSsDOaM63jdMD2WfhiAy8eRTn17IK5fdQ7wtRfEEwkHCTO5yjEu32vm6KwUq6lsWAFIxK/
EXhyjxEqTppbVifSoIattIkUB+zouPlmiBfiZ7r56cbzRwWWlZfhFvCAMWw6VpfvRBiLnzPDGYoB
6yF1y9oyYRNq1HnXZ0QMyq5auHPqwl466ER4rPEZ773eEbjBRbk+6MrTmzpma/cbomuFwYmFDiID
fvH/+nZsUVx4OMxwDZU7FnFXiHLGRhFk7vERyUpdvzEBQq6HZ7/M7Xsdcb8/yku2mctbOG5MgAM0
oKRZCG3nV0x4y1bwTBwy0+7Q70NSgSYRICYwqTRjwTI/vp7No/eLsN5/pHSiJNcint0jOUm1OZ6R
NcF419t2cHqZ9f1hZtTt0GZHvQq39RoW/zu9zB6Ec6q9UsoHg/mDFJcbTHIlUK3lyzI5O5QpltJN
qNI2TzGNczbyHddbvaaS1BMR9YwMvuayOk3dEc81EvgJ7HCFLijl19xtnWsVcVLfeecoI2AzQWT3
lBoe8R52RXT9B2WoA73gM1JLsSUAttFGAl0TxUUX6fzfxwL2u17OUNdPh4e/cplr9E6DLOo4wSuQ
vhg4pX7ZidbuaP/hRmWNsNlXTTr8ewMHduqlRMLuEUrjzhIcz6rbjBh80UtORBsTxVrbx/2g1iMP
Y4yJv7KdhI4fB/Y5+B770TzUWvxwfnrENPoFUV8rLqQiDtW4WrwSWmE6kTqW98k5hJ+eNIk/k9Ko
rgAaPWSpp9BJZVd6Pq9ET8Xm8uQ6Yrqx80A/0QclcEXd5G9DAsvRasFcIJ6At4++RPz3YSD+FoNi
vxfMt82NaBV5wuIg6ElO9Ui/I6A1uNYbT1GMWyrPs1EfGp5+Kn6McyxK6cYTsJFdgVYhTUgcao5R
s5baDqsN5BTveejMfyWoyi+ZI5o/nNH/qSk7XSKPzITdW48a0OkLvUn5RrIFNP2A6doldn87Dg+5
B6hCbeocgNrSIAj4AF/FE7wq7Y28Zn2eil7b4MCZdi0mHp23/Dc1rH8REaEh1oq7qMdanOixwYYf
DcWedjg78zg1I5fgyASVPJaUbz+5gv6hlOBqrvtpl6osoUxvkESIfO5zCT6g+nHzuRyIR4QNYi5o
lL5zduJYDpu25YdHqQx0sdB40MCMh6Clg8eaRg4xQaOLGndVv62vpii99TqYx2BI3Wfvrl0QHQPl
i6DEIAXYA7+Zxm/icgGcOpL6ZJ1fwLmDPrB/JXPvwlEoKYk82Z0xOwnyoeTLJzPtzPE35mvXPdTH
okY3wwXko9rDawitNdKWO9upcmcWxNjntYjTAQZYu0pROAclQp8zOrv1mu8YaxQDGG0qQxWyrUFK
3Ae422umFcef91053WGiPAk/KV4bAjvLWBg2HpWrhXkTtbTh7dP9xrHrO12/BlrbqWFIZ71DoGY6
uqV9QuJsXSxI8ugZVdcFW/fVVfcWCxHP3CeByx4vhov6Bs7BwQj1lwjkeaWIP0Jl4Qg8ERyB9Ex/
hfJaOkVRcElSMCXe4KhH74CY8SFYX5/zRV/UdJ15uR3e4nQWWS4taQWBS5owEpeVir+5i5HZZVk+
JP/lMyTgdecDheH9oVs593R9S/tMkO6KoMOu3FAV6Z9Py+wLpq8pV+Z0kyafqPNslwmp03RI2weE
PIicxzQFPUwis93bGamU11RPcPnGsQJpECdiKWWM0TrBI56TSzWR/ZCleEF9HswqLdiN49xOChqd
ncx391a5ZCS3Xktzgt6ft5GlQFjiQq4MySZadm1f2CppvVelsFP+diQZ0D1zfOEbKAOcqRpIHn6T
RZ2Sajc3UlJHZjh5/A56+HeehYdhSK+D7NEsvPlueITXA9nfIbl/IBKTnhMQOnu80+1D8ZuyceWz
IePeZ5gcfMrEBdk4DqPw0tWW2OQXvi4O8OrTiao/6ZEdlXKk+6BbjrIrvFTlxpqNkUSnnHVbD4uk
uh/ir9FhvamCBd3T+dBkKYkRd7asM5PIwuJ7vcBrKbbg4eO9mdymbihZVnLMYt3fqAVyYciqghDx
9yY5/ka+stJz5NPXK2w37VoXimT9i37AXFZPSXDO+SVxXcbcDUbqLXUrEUKXVfJDm5J3+GsIPRQ7
aBohm3MH4zTFZpDUPg2EQfH7eY11oGJkAxnKwxPbJxnkUAQsp5pwl3A1uV2DGhifPW9cAfD35ALI
0hvLgI8i6ZgnagL+L0BOVIOtKsTvPmmf6IdMfG7/ggknokA0OPDMAVf1yrYxSnF7yeg6QzfKbhch
HvobDEW/hscj+nDis4NJ2B/cL2gyQSpbedRhZ7pPsOhcAUyC1GIaSWm/vrDqAThMLEsrlA/e2Dcd
rIqHttiHX4O+jCujkaXvr+nG/t5vrX8yrYWCHP08ieBALL95qK94u2w1eVLfzzG1JmHpKAKBF5Ec
FIHjceGfnM0swCfaxY+R4uRphvJus580tm+XwjJWIcyS6hg13JOh4oX5GiP9PzcVp4ORSFJxMX4X
3PrVtuGNqWf8tH4CPjHgnt4sgk0hSX8b8mJedXDztE/0YXHBC3+XHKZ/i2nVvpnT0g97Q/Y0UV8B
sTh1TaWUUTJhxKcgbr4HWAtnND/9f1spxufoeOlots6c/+5/5fJGP7kUVMOMOTAy/jmGOjp5PQ9s
z6pXUZodMu3mSVSqmqK0S9kCtYSt4u4XrH41lJAULbOpGKxiYIxSRTNpeue+aO9CvUUb9nkNLhZF
ObKXc/GlelovKBDVFYB+7k4zX2cmqIMrbZjzj5FWyw286Wa20W9Ppi0qQWu+xUpbYcgjvQ51j6iV
nlUw7e2/V4u2rwWz0eNagDp/lmUaKwPbzq82mHsrjKqLy1FsAhKrtramWMrIxhEx8UUm5kLaEFch
M5b+BTSQCzT+WT0dDXH/rGxSOwDsUjpjvMMxfQ/YbRHjXqTLiK+1gwEEyam2eLZIdSf1cqESaZ1a
fbYaODMUjMT4TRfPdgeKT9q9QZ6ZvXpHIzWPsNVSDti2zPWLFDFz0Eo6RyDIDhCetIP6TkjemoYE
4c22LGhE4C0CyciI8ZsNW2p2e5pomX7wWm3HBOh/KObkWZPk9j/adKEOpDumJ7cIn/T6WpRateat
LV+535Uh8A693IJhrOQ5JLl58JlV3cfDdZ0hsQjyKyhC/+ZWXPtYIEee/xlBD71SZ07CEAYVoEaF
FxmsoEkAFbwhsga74dN66tGUhmddmNygwemH0wHVaGrRXdOycGoudRrobhOuWINrrRxcNuR3ALEj
sGAPvb2TqaxU+2FPiJ+0x3fRPvjMCKd6pe8turbpzzvqL/ri/KcyFJa8720iarjqxMR4QsEDxvgP
+0zIIZuGI2EDUQzUDS7zP8hfcpoQflthTWuG75XsI0K33ruHl9F6ID5r3mNU6HcHKaApZg5UdS49
+aPWbT766AW+QmIeW9xsONFC6UPVaepFJZkVhmH3yTh6e/Vq803CzW6vti5a8bfzRlJ+gTkelRRy
NZ9JtbKXSL2yj9ThaU9kazaG1RXHzxEL4MGfrLgUVEgMiN6E4mQl1ck1iEKQM1UF5P/VB+A6UzfE
zFgQxQaeGSjmNMfMspByqYg5m3esHJnN8f3KSnsb3Goq39adrOmI4DJK/SzYTublpwB4B02+sFJT
KrRT+v8j4ZN8Vt7zVNlikM/2+i4+vaOzcqXcNKvdVi5ZmTgP07A+Fo2W+VZ3YL7P5xtddefzvev6
hMABsGYv5KjUEHfOytX2wMd9O+X5DNR0itch8r1cLMCSUDsrscVafZN2m46XsGPm1+i2d7AZnV8H
i9Aqb+fCOX/571qHGRV1r8Aab1IznPeVl2JgDkF2UDhpjFhLgQMnGpKIva7mfI0ezMWOl+wYM7oY
PyXRXYgEqbpZbVK0AUqnv+Zu+Cxx2Cw3Fh8hoLdlOAlHJ8xS+Y/2kuqZ0xbikOSs500D5Mjj6Ik3
y3QfzL2X1iW8KzxZgDTV++7y4uRahhAYI0DR+icaGW4gUSZY7fvBShqoJ6U6QH8wS3uti+Ez/6jP
FvK92dxG8VO9YQqGJR5rElG+NV3MYLsrgQND7JWCda7OhR1jroHWnJOyHhlxtnfct00YZOJYCwFD
scoxlwKk/zTZAhbLSOdyEEs+15o6HD3aLt0+2ZjuPF3DQNCP2K5Q9tcM01QQMd7x5sI7jNkyrHt1
iaDxfPF/F/znHSLozOQq8iOVmMo2om+FVWNEa2LIq2ko+le13R3fXD3uSB6V+h9oW09jmXfH0Z6U
+5K71XkgdpUbhK3lZbM8AafX2ka50vxkuAPmDOAoGcpuReplnN5nXjJo4t8UXj9fsrytGUrZFxHj
ItBPs3FxDDTZZKqGMKutM/M2H0JsDKRbYoo8JcCOzjoSujJRJFd76ic126bcLyvpKepCNvpp6qMI
Fx9HX4fd/bF1tmT1LWj6RHx0YxIQMCEvBkcrYCLxboehr9y/KzFtbNIHt4fdsLlJRdTutZIQ/eQH
rN8V27/F9I9Z1ZyWFDUcHmclcDhjcZR43PAS/Q3WOYFDGcoX2O7QjfbRHBTY78AaEnnZRs97mXCU
Z06UvyW/PmkcneqWC4aOkvepvhnMD5WHH+x409U3aGXhJ9CoO0V5XJiGf1KAIgxKJXbwnc7q+1UN
jBBfCj0x2aZAFvVsdv916tA2OChjOq1Alg9+LYQmkyLikkRvLpbgLEQ9C/OMdFNIm8wNFfeHhJyV
JHKw+MnscTttfg1z1JrF5YKdr7drN+gtIRDxA76O76eXFziGTeI2lsv56iBu0kHGBCxLjzh4XkHs
QLL+3dZeh8OgEuy6tQ5Htc3tByJV3mFK7mcg8LWh9ogpDbLkKsBczlcsl+9DxZrxeZQuS2s/ui2M
rtWOcTIRfBcZ0u2T7Em7w3VI1YPGBx61cRB0yxIMF1r4A6ECsV2Zx2E/gF9KuFkJYEjPfFIRHC8X
EEdJxXgG9PfzanAXaw8twUrLAdO47oDk0LQr7MzvIDKFosi2pRJ+6u/wP9jzZ/FJbd8g4mRDkExn
Hdv7xs9iM3jvbvC4dwJZ3/3bJQmyuTinKgbvGCcz4qrMAPNKZqo1cXH4eYh1n9MjZLrfOHgqrIun
HSVZQJPgWd5JFNH6obmT/oiWiq+q4NCQ6Omh6kwXbzYr5Gx4c8O1zHa9t52WpCICKPCXltcEYokt
TNPUQjwwbhzcGy9J031DFM1jMHQ//TUuhpPgq1WMNS6IgSkFPOJkfBdUZMDc5LIGHpVQ6gk5IMjC
SqWMD7P3Ey1oJXYQmATsy+V4u0Ql4bgPShRubanJEfogy/4+GOuaDFIbhwZ3fL8DUGH03UnIqBto
KTTcvPXxjFS08Eqq1S1OkBo1InoK23gc8T7kBHPBsRxkAhvUJMJ+7LkKVuYccCpXC70njIQZ86SN
0q3MNN7JtSZ6gkUNvgQuo4PuLKQA3uRTW+F+CqM4E3jVExR/rYE/wPiIkLCgvfxrjOWxHpsTNMCH
T6eRjJVZHhvx9OPmBPdIp6YUJHQxTbhBy4X4Y3bQxGgYY2S0U1dUMYSUtrOJJgDlYODloVJoFJ+e
EwBY+eRIcjYNY0HDXSHj3skIE8vBAQZLziSbX+fa5Cs5Knc7h4jkEusO45lS6QDgk+FV4Jwg/+Xh
O7hIJoXiGQ+4ff4UyPqjKmKzUOpz080kIvKHmQyIOF2jT+UUvIEGOQQA9zmXz7GsgmyWsx/K4Izo
1oxh2c07k+VeoL9yOrGepBMNeYNigsm4udEzvl9CwD3h07U/vXjRfcJqoekYVJpLLFVbMnMEH5N0
dnyov87LE4yw1KWfF0TUIRDawzVwyTkeNJrMMGfwElwusMcTkRxoMGzvahh64efChoTVPyB61hM/
EgQLNYrCJi0vrDsJfJK29AkBkmyMJrKDh4CNMcP5oP3OKcGLEGniOgernioxoqR9lUS1kFQOWAv1
JwIWcPUHXzLv71Hl5mGUADlZ8NyWvQGJJVlUDPTDv0Lc/n2/lrUBkGWe8nKZNtGpY5r8eILCi/1r
F0ajbxxIYf01+aKM2GlcqfLEBnUVnCYiMJ8EeG4rTx5OCVtSYU3AbMI76Z/KPPVsPtDi45RMdBOk
uMmraivP4zjrw601zW+2KG+SCtyurd1vWFcrpvjiMw36sFmn53Y2+pszn0k0lw/9Fs6sNiYD6V5v
9grWo8kLq0NQgo7gBS/uqpiV04sCNZgBiS9BjH50P7UDw+giUy2PUAo/DfHxEVmv3k7gRfBgJ4lr
Mv5CSyY4E667y74hu09HiGTtNaSBh0DDBqnsYmFlXaT/APbnVYcjVPA8h4G8OSQ91s6SzZL3Cs/n
j18FwvxAFh9yfa404Gv9Ajs7e8xv9vbICvqErWYhg4wkByGGnDr+SH/p3Gv4Bc7nuJYk9oire11u
SpKlgKNghtMQjNBasJcsWhIaZRfkhYOmRlPmE4JM4YJ/zVUyKbzQ8y1dAxZEufpDBoLkKO69v9QM
15x7VY1Q7x53q45WH+DA7iyA81gDUW75dQ4N3+Y2PYaHkwxDE3cB6N3SlUjRUMAlDUSGEDjx7Mef
Am6kd+eqRWfb+I+TgMohtjHPLazAgN+5z8orpaJsWEabq/da1CpPs8GYzFIu8fxpjTmPx8xWHeXX
/f+tbHe8E6mFPoFGpAbZPig3oJITmbStkdgYrstzevQRwqwUikJLY4d0vMVhOjPNaHg45iTNsE0H
o1EFuta0nAN7OTzkkHfljYG62OaA8Nvr4nLEDbpRizo2ETJeARSDNOrXwC4Gd77ntKO2HIYb66Ac
dVuq+819jKOM7VwZpGXO+UCwu04cRni6skYb8rOANULsA1pavrzXB2MEBl7cJw5KeFYuZz9x5mbH
yztlroVxni4oaY6JezwkejoRH+ECMdyFNiR8M+DMxJ8tBqC16OLezj8aqgXGExLOgVEDbnJ0AlEx
UJ7FBQ6+e4c+XcqEeO55kNQp+4bjko4ypQP/ZWthFnzMMS83KWF1YPp8+bTEeDT+6uce5pJVxJUJ
3heB/kVJj9OJCc4gwG+6jJwRNOErtnkIafPcInG2IDItHhYRKeWefcJBt/W56ms4xX4/V3EtpYtp
dOsnSzJUtr8zHyriJeALA2ieRxt8u+X/K2qhSZOgiDMYvz5PYVuYul2twI9NI6BlAsShRxu9W2A7
7ggY42Shrkm85Jg8Rc4i3liBQ0KAMThvdV0Y7JhRnqhZeLQvxmLiU0/jSwMzX2CRch1J68+OZGd9
MYNOwQKLGEZ7f1NL/GKbZkgmj3zopZ8oh87Q5O3lAYlGSzoyTPRVEk2ViyC5XOuKtCGQqs5/BYcT
NDiZItIvx8LVd9V2iNhWLiJonv/yATV7eGGEPN8ipn36Jf8ZF4PDPNPQUUSLKDUZehPMaRYLOOSI
MlJxBzm+beGdGNNNq0gzJ2HHmLnBeNe34aj0kuVnuu7awprWfIJHpIcFvM+PXFSMH6qlu/Jl+pHK
+ReX4mJ1qygbtkmH4iLshi1cCs59ix+cHoVrVLPMceZMbW0kWvjFq6Jb1B/CxKBUuH8GO2QqVZT7
njZhyVUJGVoTbo2GzIV6If1YEXWbTlDl5MYupCYrXqxOa/VnE5FF/6HGwtcrEADnXbaCVGLFdmnY
5EWsMrWi3YAgsGSfpPAn3Q0KhDdNi/LbJHkcNCDipoR/PVOKiMYnCFZXlvU7k9AJ6UF+CCwnmRFd
qCsFUT8HZiYlviGvuN8X02pUWLYIZMGTQcgsVb56ZAFpqIQtiJAbB0KXdxFZxJ5BtcuMRJooNvHG
kARqdE04bcT9tSejkDsvwE2kK5/NH0QSReSttjwPDP03PAtnLjZy2FPgBU8kSIlHvBuEhUqL4xgO
lzxOjmdd70AysK/P3Ra4WYd/kgPmSopGJJopEg7uGQCvdZM9q/enLFzt5dS8SWEV/awO16vOPfcl
JqNTrU0PS329NfpkCTPr4ev1qq2pokeTGL9RyYLOL04OW3vkO2QxBLapD7vNqGGCr/VxsqwZpS5x
1OUFnzV9J8nnvo5pxMkmjidcT7OnRsG5Dr9QSeI+6H365i0DDahOOlAD9mDJ0DfgBH0uHUOqoVC+
RSdX8ATOisl18Y0LIleyStgv4ymmde2ToIDv7CBAFvSFqGZTeJHlUbtJB7mWNNjox821aeGEOEUC
iWtVPGrr3WpCXoVBN+oHh0dcHxeDHmE2v7Wh4pr+TXXA4QngB56NexvakVPufJ95M5StmK12woWJ
05JkI/skNFptKdR44j4zAGihteBRRM3ls4N91wV2JB3DFxgrEAL+XsjBiNKh1ZSNG9ZdoVMio+qf
bSyOxyHq2wGEKaDgTB1VaYDmaop9hPjv7ZokAVQMeZV29likgi5rH6bzZNADsuJchCF3FGAOr0hw
tbf78Y76OS/rWm9mTjshQ+yBUS1UbMv7+phMxepLfkAtGPwv/QA/dHVeANZHbBeZbfG7J7R/JP6I
FRQloN4kKX6dXFN4PpGLKIGMfWkXzXfd5tRmiRvOwOW+nT6btw9hbnYRDV/+vq9C4BZWxGlr54t/
ybUdcJlBoVYEbl7N+a/TkBqCQK4NiKynGfLQrrJvqS81hA3ODlMWNXc6ECH4mOjhxDN/ypXiC5Nj
a6D3iE2wP0alfYwBfQxlExplIGU53kRO47Kz9OQkMi9nji7InlWth/QWcQBh4kBVoGQ4nQ2uKjdQ
btyHv01lKYeZ3a1t32AlebODEVGaKbREci9onpUBLyc0yClXQjpaLtyxVuXh1ZYmJHqAlP4lshBE
bxIqlvQv7wJNO+Jv1G4/uMAbUuhddlKHAEhz9kWFqGhzEabdF9VmO0snODwCW6Hk9c++ZeKGtW8I
GWKRjH7y/Tv4MIQeZgVgNtNbYATe4HQxCAj0wps6hqhWswSkIx3CwZuL/1LvYtbpTglCi9ALFYT5
nO3ikyepy/cBIj6abIY4AFyTLikWJKMHarTqHd+Njlw28bDDbZfb+5dvPOOdGr/KwTtIRwu5Bxoe
hLYfqa1XQztqrpoxR+dRm3MQxpi6fL06xPy5f9F8gSSVWiKgAos1iyWDw48BKy1ojL9vgg/uou9K
vYum2ocsHpJUhhMQhpk7cEL03DgTR66Gy4L38b2En/H4CbVuAkQC4VqAql58oKL6lGNP+2am6iWC
oLH7mJx/Qv/Tr/EG4eeDxsPxQpuC4zhgG2YOxMHz5tzyGivVazqtVXyQqttl13eN7IiJGrKl0UCV
yt1DUX75a0v719OSioRRjJ39C2PEfk/YMvbNQG0rJSvXvf31jguB3XuqyMVBDU7GV59UGfzVO23e
WGZQcCfyYbedRLiObuqEV4+enukO8ohaeaNxPzCjJZjM2W6YBnB0nMaVkdsZLidt644I4AH7viq1
jvbACg3zLh662b6ua/wvmdylyIIy3r9Ljkjs+wjI4AI5mCOWwfihT6mWgGlo5SMbVzQqBdM8rwBy
G1sw8i5/+iiH2TsriIyyTB0Gv2a7b1qx8Bt0LAmrh2G5hxebfT7oNHGmaDyTLDKZEfYdpLhFgTBN
rSL8TgLg3KObaIha0+r6bmzZhBXNITw8sEXAfExmqad8bRyBhOE3wccyvMY1iocWvF/SgT1OzEFm
YvN0XVNIaGJOCQ3DeZDgg4wbjDHFyjyPzKSOXRYcMjPI/Ri7DQMK0QF8idps0Zgj0qtMW/QOOJyJ
7/0N2LhaLJs2dMy5xACwbD2CNVJ3Dhtov2UF9J7Fiy23wqb7DHA54kU1HsEGbkgfqb/DVpV11Tp+
4gmO4u5+Mp4yUcX/E3FzXXq07FKVUMKwie5dPNhagNigkNFQGU7e6OZez1hmHpGuqwAbtHKdMh6K
PkjoZrtT9MQtaJcXbbnyZtOnTfFVpzqQoVB9JqMGZ9JMzj1dMIWzm68kHysSwVTdBE4T5Sx8PCY7
2eBhQegtrEsG2WJ/qwWv+BIajwNor06rDtbu0ONguY7FRwLOY18O9a0ATtlcfUAdO43Y9vXYbN+k
M9OMWxE9TKAVL2UyG/AWMcDVDEU8y0dgPDxQ7MYnERPNme6cOeFTUt22axPmck0c79BgCiWE1/Sz
QvJQYJD4HqYp/ntyBpR7FeGhrh2FF+m6IcP02l1SpC2rca3tzeGAPcTSUL5Qrtyno31QE8gL1vIw
28K6wUECmK9PshSrC4vUOFPKNMReuFqtfnD92feF0U6SdFajul2sqEU96Yd/GJdUVvH8HDdPIaf8
Z0ktRWQx6tNo7y1+6MZsrlNQ9MCQRQR/TuypeJjwIYftortnxWs9ZsVKZ9NV7mNqv6qZ5tQ99dh0
jik3fYzHopIkzzXHHSegKwgUVSH5zGUorY4Ydn3Sh/Mgb0TOW2eKjZGZhDkl/sUtP9GYnhYzMyqf
hcg0oLdAu8hFPJHTxZzjSBSI6S5V3FS6QOo5wWoH4e0i5m9EUbAOENlyCDafSHmwH63oRR1La35v
9K0Et/NNYEbIOn3vgH5q/C2HWxkrzLuQGmv1TnGBAqodMNwL9/wdu3nWyKEliYpSn1HIO5iG0I2k
IjQrjq8WVbtucuQI1CAmKvJdNb0fywwDdngQccJRaogysTZnoaXirTVKhWNklHr+tbKTGAv+HZG6
J2fANCWZD25E6YuDel18mSLhoDL+Wrc3N6mKN2VulW8fgRa5PiOMGSrwxbs56KafRfdSLYf+fOg7
e5uGLN+MolM9vJymHkvcQMxFtEvqAmQ6hynENSF4x3lZjIepfmdCuvsPm7x0l745gvB5kGCY7qWe
4J4WgKIWh/uDD3BlwZjIINTf0GDL3y1hQZj3T6n7PxkKKUwYajlPDgm9jNzcE1sxtjZjGsb1jZfP
RxWSy52ARCToeUrcgxETES1IBhKWbSYsvO/jjmVEjSu6SyzcgVBdZUsYsXPgXFOXb0VppC12iXCZ
OueOHcHQb4UJyl5YhHxmuuYZTwix834VoSHDp4WNP42LgDnzpmqNi/0bnxPfjQk6XzBM+NrptBJw
n3JiH27k2ZpZS3jAtNxHN+ctsw6jNNaRCyV2DH3UlePq6YllMF2EKyWHhQo2FH1b69+ByBdVfJkY
AtOSEgOrtLxJN07nvyxnaSuxSCiQYyX59SEMFL+IiPN5T2o31HXcMWOUOENMZXyzCgxhb3XDlN21
WOBzJeXfjDkRsQtGv1cRG6AGFG1KVHZveaKWNKGRQJF+pQ88kiEuZHYrhUDW9hD2ayXhmkP+hVey
fIPkIeG604IbQHNlvDf5DJGgdHS2pgqYIRX64dS9JB/sk9zP7B5LiKr9P8G/tlFUyd71MJJeIxMU
AscYwxlqBCmIuGXaOiFvwoIGlMtFpfw3eL/w4KAU/N/V0Ag32p6B4EwFeFOaIRL/cgD8lhycjnOl
J9miYRH1vmYJ61SiqwvKxq2SaUqQbyMJD9oNNv/9jQELdcGWLkjStZwMe77sQzsR0tFVWqSvi/1B
5DVpiZIDOgiHDKDaTxrbVjKbMW3PPqdruBrXOruCkcXddJCOGGm65p21vM2RJm8qoyhREa5rqVci
dOmA0wLOF5wjGHDcsEP39vOdz2R+YuRhRWjCsR2LJs74bc3MuslhtRON7gyNYqxM6vOSxnQRn6Hq
Ly/q7sCBhnin1zKZnsfsUAK3kJ8FR2lz6/YYtr8kMSb6YGG/2fHvjAsjqSuHDEMu+yvzocPpt70l
VjoOwcmbJVDfqzQbkF1OPawHl9nHnnUErjkseWl0DLYZHRtVuaVMF6PonagyrJipZn/7bzF6qqww
tpC4vrY4zfCwP7uOCwCnCq7Os9bZDA6McrVkAVPHUDgMb4gy9/c+UniGFTxtj/824Mhi1X9zJcLv
BrQgmAQO9CUgMu7dxS2Xd4/sQPDanagalfgIGAYmrTethQLWDAw4UhzKaDkz6qaOtFzj/qZakkPw
WgndemuwBsW/EPXfeBpWkizjtbhmlJf/cyQwwlzuH2dq6x2p4p2j0R6UAMEFbyrS0uGxlR6LD3ID
K9I4BYv1B/yfeCINC2QZFrWZCcvjNnSSvtMcXivsnHXE8C5X9JYBnGny91zfffJOp/McLk6G6VGa
pKCffYGw/aUQYdxEFq8aMwWZSXUAkiHCaXaBxayHDpfHu5r4rf35MpGGRlOBpddYehPIZx+GHQJc
OIwUfNf7s2W7JjW/Nts3aBZynzcGzdV/6+p0Yh4R4Ir2iU0/2ZhfnTYYkpdcl52lzmVeZUy4y7JQ
lLDL5Mntcvef0BW5XlDmOS8QyK+4lyEf/3KlbjQU9keTnq1UEcQSoXUScNoMiLV0wHswpelJC4qG
PP/vxba6LTJSpHxwjUgDLYFdjaeNsf4Myzn7iCQZs79qu680Q9brpkvFSc80fsYS5JDdsctD+EYS
UBcarMhZ+VJwyg0uBs3vRdpvrtB5wAas4mxrBGqYWlzfT1ifhX+MWn0wrd6MTJPwC4P81CUuAeZc
rdG+L6jpUwCZfLxLoz4YrdJ4pr1aE0XP3+OX2v6z2pFeTORVXpSG7biwV1Kz6tpT9G2ksvGd55J1
WTMM2OrRiSs+m5Gl1iSDm/KnmWWBVSTMhHxMTvcU1XCKZ+LcbW/l8duAPBiY0PKGx4QyLX8g1S/H
yCfHGW/hkUpDrTWg17m0MX9IRcA2jwSxtfC/QoCL2UgdtCWMZptTPihXlHestQHGPfhAt5+FXCBg
6YexYIl9kQBizhqVlwRF54naQ1fPPTGXdX6UVY959GZcqHCKmGqGAx0dYgXSmgsWUKQV/CZBwjRY
7kvrtJ9AzakrMHddoEhbS05bt0SWE77yPODN6DnDntSXitEuD7iwcJelQKHylK6757DdvPADoHY6
kfG3Nl5N3iogoL+2x07y4qp3yjWbtbr2fsOO4ap5pVUHFJBkUiBPocql4M0tr5RdPhpgXWGJ4t20
DlOmg441aXDrIsbZvWWG2gUVKDaZvYAh5ZFpWnSzdq3V26DpTtoUrLoiYTKppQsw+AlCNaN4DmyA
95ls5kTHEs00KPhfTq14hryeOa4Ip2Mc+VJTNkpycW4Eizh1exKT7NWxM1bwMl32Ercb9KhyCMiE
vwSxsIAt81u923DWoHsZOkIWFm6UP0LahkP97IzQ4yd77n6a5LFZcQVmYkkmrfvZRqDhNsoprQ1O
BwcOrZ7xhfcWEXSdBRB7GboZeuCH/tYcKcNxuWaKyH8AhrCem50PVJF1jwVWeFSMR/3ScFB1LpUW
T+42HRrUcCdPnEmgo1OTyBdZQ3kTTNL8v2gqzEtKNL8EWkjH3LBwUjNovf4XH30WLhahxGMRML1u
3HMN78UuBD1nDORUFEpjLSlrlzuPFR9lMCfyOVP0J0WY5R5i/CJpTHxctW9HZGuj2LQYftDP8UP0
JavB/frCHp6ZfgfcXq4ktP8nqjYu6w+VVs5Jezb8PfsVlVdnDBw9G9rTRrFfhnQ/rHYJa1GBgvbQ
TzXqG0/+zSbPrlYK4FWGh/UAwsM/dWTkTrSE00hwciS9Rvqj8R77IOmcppNAOhFN1kV8lVCZu7Oa
AwikXkLLr3laRxdeMTtONDbKfw/frtzKadpH+wFzmfM35NnoRUfMI5X/bpp6WMA31YR5e5ctzH5J
20dA6EfZ78oT535gzI/Rlak/d1g4Zu4niRP5uGiWbUBjDJEyPXnJ0fCoi5G0NqrVtZ0V5Xf7zDyX
aSo6T9bbIrEsTgKQYZgK1P7UgYGGE3gMiGMFqHvVaEn3CN2/n6VFrvB3WYW/7n6w3T81a4drleAE
GF9NrbAnwpVrakl4kXqBnC+VuqILeP8u2AEuvaW+0Ax16oqK7lGWofECmDtTe2m48jm85eGuYvru
VFkM+ykyxh/SXphRdJEOfmrlYdNCD7cqWNLs4HAPNFEM69YSfeg+jFW26Fyza0mrrjp+OyOod4W+
/34WetvFwEGw3UU34ODeVtdq6nK0vwUN3MbRXayrQXsPt7Kru+bm+BZCF8dfW/qeRVq5q4ODRrnT
TXQsR0IArF/nfQrhDO+1zrF/mVpGPNCBa/iR8QESG3yKitmRW5XLqzZMjwGEm0HKjDBrx80w7njA
mKvx3uVqR9ncj5KxkVo6juy6R9hZPdPkIqIqSNMb2emIRPFmffyqpB0alFUL7srOPGoRrtFwPWnz
nyj+NbzEP17AVAmsDk9thb0rIE4FOmBqUsg7ZwQE3DlHU4buiPA4Hw81m9WcLso3jPMUxiknA8Oz
GngQ9KPugdFsAYPQsgqY+TcYu6i3vnw7tHgNJzdjFvphgohzZjP0Z9xjWGyHVZ0qrB0ec/jJYMDg
aIN+01L1Dtwg0dLCfT82JT/KqxegHI52P+bG35X4EHL5EJ+rBkW04/PGdBDImYv1UJfaP+Tsyqht
bqOT94z7aGwT1fL5o7NtkREFIf+UfAtVYLiwcKkZYY73zoh42kCcTwNmTMNAuz34/Wj91s2zIEY5
0vyJmeR8PrMi5FE9iTmhDp/3rQndaHSB+NT0mmk6L3CGzI0XPyg4c5rwLkMFTOwroQs38ogWcU68
k1KG47MK4a7HGLUxuHawvjjGuHIs0jLj2SexqNT/cyOTv/8GUOcgyjml3/dfrROezzmQTkwLYrgh
ya+Pnh6LGYyKKfbpX0G9BdaoaJ3nZVkERlQjXFANrtekNTgtsr79WvjAiCSDibhN5+suzE08r4wA
k6fS2a9RZwgdjP0gBMDe9WzNgNDAEDkcKJHV9Bs52/DckDdwVKDYXzh2iFqX3oEA2BNh6Nd96kS1
kMPgaq6WUSvDUHX3k2tTJzhgorf2EAORM8kw+gewSIAdiX+qjiKcZtIboWk7CnEC681fS2XdgcZ+
1AlDnq5WEioHvXSyibruofGrrMY6qJP9x6yP+KylH5UZZnAXKykGvRTKeiqHzRilP3iP9iti3s5s
XX1MXg4VKH7v+qANNsuZLwGy5tSc+0599UGRimjY1CxyX7bTXPlqCBzknmX4QVgUbBkeY6fZTY6I
oSimfPpcWaAvwssQ6Z/kv9+FTo5+SqjGq4n01DGzEmmq6lR+k3kjiqFaP1xONCXcT6rHzAzIRU/z
C4HM+DNyXY1XNjvAGX33WyYkMJAhQuGTyXb+1qOjACN94JYBAiVyWu7y2xWVlOJ7jtl7w5ePEjlk
TGP1pqaDc5LCxyfIGAJRgxMBCYCPkIt9QIKSGJuObH8abTuOvaHMUyu7y89Zi2Nck9KJhel2qCY6
+C0tNb/j+FNqWsuBKPPKBwXIALUjl+2BqU9OXJ8Ij630bArIsLNa4ieD5rcAJgexNGnaCAvCuhTj
02oOMiN/n9CX9iiyMAC6dke3vJxvgH/EWoQtszz33ss6mAhkhF3UyvX5racq+Ur1eIOpbYI8x3cz
hxovGESunBkbH+WT304YOcwbaqoZ+TBOFV0qIfRTTo37eTK/t1ZH/S7SLgM7W0jKlzEuZMOytATl
PbPSlNf8vzdohMq86Sou4KGMEnjECKD7z5jMEmpWBNZvcHWDb7sXPtr0bLVhVSSinoIm5ZxBn6q8
5tszIkzHY7mTLWFHbkTWX2fuPkRlxmRkKHoQJt3zAVZEwkwNsyuIpPK1t8s93+7DUskHBqbT6Hkm
u5IjKW13Gr8ojA/dGUZBvBNxKi9qNr1gZuRz8Z6Tx6QCSdezQwAvpF+gq2Agme8wKUQ6eLQbZt4E
X6gUtlePZfxHNeQ60O0STj5JjdN+0Kj41DRKwW5IBwqlltqJqNxc6jHF3kLVp71dODNwIP9xgTi6
0R+Vik8p1E3aEgyRzQfWs6Do//pyoqcQAhV5B5xy6i9u9qctPjzOwz1jvPA/qLqNW8g7kkmCh7u8
cPUxJYZT0J0hcj0XXdlYFjykwJ6h3Con/a1Z+iFbRpX/CPHgRPG/pS/uqssq8RRoN63BwEKK3jbK
26rMgY4t7KCmjOYU0RgxmWU8ZIAVbJwK+ZdC/W1kE5xtkVVsV9Gg22J+dVh/meAE2f65yubWqPX9
MvFZUtV44KWC5B5Z5b0tvL9S0wy6QEZ6966TwPL7mgPalbMZbtGbINcCExVWHXsWiSAvwSXn7jMl
6ALzrJV2eDfiz+hpe06r9U7KErSmfHkk+rMtYu5xz6VJ/DkgzhEX4xm7Q/QEZPZvrmseGTjwUpgi
Z17GRNCz+b4ewp07q9e8k0oPry9Y3NWnWkKCSjotSRf/+NZ4j3KH2mhedBsAcvA9/6X5yn0gqhIG
Q3TzclKLdMwevxRjvQkadtkIJ6jj+1tp64IjkmApukq0Xo1DtqVYMjxj57Rj/C4cjS51FNZSarAc
w/vNK31s3vj60jQ3bJxJhkFjZs8mcRAic//9OlNN2KIUeDkYfTGjVH8M3dnZAp44HE8Q2uUK9BUF
Qosy8lAiCLHZ1gWuWIRCK32t7QYcbbL2HtjmlBORMz7P/0f9AMJV5A+AWZYD3IXimn1rt+Kh0f1Q
EANGn+q5+z+bLIX/CRXLjS6fNV9nZIaMePrwl2gtK/KTogDtK+V1A541CZ70G3kmpXhi//GLf+uP
kjTJT1yHBaAkxKv2Ml4FtHjQLDvyYoiKO2ajAEPwM3s54o/NR6eZccpQzzrvfwNoBz6zEtIAT5U3
6s4fAO8ob8SXKW7x791kFpV+w0pyUUc++NEe9NsJThHAig6hQV25y/A65FXIkaK/afsKAs9W/oEf
I5IZp+Wl/iwtFafJpTj8LTHbsqcY0pfibZPnFZN80Nvt010gKJNSkMMBySdA9X/el00NBrFcJLiq
cGo5QH0SILoWVfz/D3++siDUKGqc4TXrIQlhCWraWQdREwLo6lf4Ak+Ylewl/rwarFpgUiiXQtg1
kLAbjwj1v3i4K6c18ODqLcrZdfjOcc9QeQDLciOAt8AU29hLjJH04nn/r3irHX/6lLyd/wlLS1Rl
x5zogt7WoV2Gtr4wI8v/aAiTXQZTxa+nW9+4TrvR/YuBoMtVLwPB0URxm4tO1EKfFCf5ZWVQ827q
SLk7grL4YXNA2ktF4554UsG+lHmwn1IUsggdYiFojlRkQfrLMzGwYz/HWneh40encvyOMRDZr8SC
z+VQAKgoY4T7MtxvzkleWXfEW3T2fMErBn0hHi6kWv3VxoIBEu6OO7cjXEVJygJDUaPdYrx2vwr/
BkOydODB6EF3mtjwp+IJRfu+UpzXTx6q3vbplTWPwZAwLCIJxwoTQzGf1bVJiEq/b3a8pc7JG0Ev
EqzhgXjibyzSKT7VraMwG7txRpImylZxFzQBHxjTj4MIDKgZL3rZEZ46uH1/Jq+nisaeCWF+sCNR
IS1fmTCa/0wA2FLct2ET+vf18ZWnzzn6ydbTNM5l0LRc86q4HzVsPINAXLG5PsOztk22eiSS2FzG
vgoJzwHqmOjRtL32xWCE+RwMF8x+QTJgmFL6t5jzqZQBKs8Opq/qgX+VrYiUpqfXetPJUjSYxPny
11DZw1kVxWpLV1mG1vg/OKIYo6xczqYP/OsmpU829Hg1KrqiMXdvKrwPQOuCrQxNK+Q3oRGoZTZ4
IH5eJljkVhrJ9gyUC5X1Iczm3LNhb4r7tY+pA1KYts3JpKRS3mAeWJD+VFtrchvLflRwxTeWPs1w
fsiO7z7vwxOuv2NK3A5TwVC1L4yA5X+tPi/QSriBeaKe76kK1+R8hZzTZpOh7gPtRroWaIrDPYsY
4S0+l+PvO55MGEo1Eyj7ZiFIbIlwA9FmDLUe21iijtq7s0GL0XY4fe+kTVFVDvkmNmD5101ZnvyZ
HkoBn57FU3ozXP/2pvN11BVUKHSwc5md55G0mIqjxD32kvaKF/H3UBPVnnckf5/LPRkmfvwTYEtN
KeyQsQMSLlxgHkHyuTjpYOTqu1hx8NGBMpBPsloEj5pnjjcBkc17Jx1zYQdZx5mpDYvUjGUNeVqd
HwScqhQsYNmprNZ6qtpijF7NMausnTbLKmTS7A72alOckkNQSUMz7eA0sTWR0JyyDllYeeXqkl1r
QRHS/w2mxw8pR8V1OaONjfK3eyTTVtC0BQMs3ThYjsN+Ve7U5Qg5WUu1Bzf02HEJ6oulBFgO6z2V
ySlQLxq8/+NrNvbmXJxMRMDtq6vQIMDcqrVYiOqeaywu4x1v1HIO7lCb692/NEklftzOpNltwWuM
guwyHdTTwp+EoeifAFjsQQ6Eg0VjXDVZCEhSj4BjsZ+d6IEwYINJBpLVTzpb+YOPqK+Z1KkmFec5
0/L954AVnwQjbkKpA6sgz3hczr+mh7uRGgPXVe4FlTwHqLy1nlwXsA8eBvdy8uuSeS4bow/zfjhh
GTpPsz4Gvg4ZRj+oOWjZwYW8OC3WeQMudR8Rpk7+2lkJMGg1pcPGXBGv2neNbU+foKnTkS4eLGVz
PbQQWFBfv3bNyXKBqvX3BRZhIqY6A7LcI1hqUZ6jRPdcst+i4e5XcycsFxDcZLl4VQbuchzRAtYb
QzWek8KtDLhGNfqYR5V4zeUZixgfnLXZW/yr36MPFjY+jw/WljGJgNsoDVitGp0ukecf5s7ZD4L/
LDNh1F1oEKVBj0qw2A0grL/h7h86G+KG3TOD3ifPqGPpZ/p/Qzra32NGrv8+sHpPW9JuQWw/AKch
m+NVwJ6BuzT5Ph0atnXW9rjiA2ors0+kdR7R4t3yDNFwzMNcY6P0uwHWVoONhhRJSys1ymsxGl21
nrxDcmJvhdBz7x4vt2YMLoG7FG62Z3QW2zAQ+A85ufUsxJji+bUBLNhcknzRxpyPVBijIYxgtAuL
Nj3RCUsJ6IQiQBSKc/O/q+1z9lOSA4cC/TuAMpU4zHbVzprs5p5cumIHieMnxSG6iiHXymM+1Dc7
t5iJ9aEKrqwRsSkzPDVpMqqWzVeyrcg7XIilt5K1tqOpuwbR4qlAsToUbcGn+yOW8t9IyVFvg1ds
+uKpvLu9Htec3CYQjtFg2hxCHWb5BgJxJBduWIFNnAiuQz+/sNkqRr3fxGdS+LU9hdkc7e9aEs/x
kbCc89GIzsLphsG+Mg0NWEVfigbGAttPMvJmf0fdBFmJagX1RF+2Y/tzXcG9j1gzAxIwBqqjc/gK
9ad+EINIPFtqTZIO16IcLwYriAMU4k0YPGCQ9YbRZhAmL/EuVZIq4usBPJq+Qr87iMFJCwct3OXl
5HT2F4oHwoclIpHeAnIJZgHn1ii/4GI2iPqILxOrk/PbWWPehE6dIurcmwppQV9WFqguelAuF9/T
5kjkWMzQEuiV9iJKLvKkhNCt6G1Ci5jCGcpvbGkCiZJTMtG8sOOEECgmMZapwWUZQPqqInA2DVz6
FuRJkMFHFNMAcm9hzJ+Lfldbzxe9W1Vr7pWa0Hv4K82c/HGOGnzcx7WC3NWXYGSzXuaXtO5RmTW7
f6onFMT+6TtNp47e0Vvh0JtnKtvZmRmXQrWqSqYqBNMou/CbOXvhmnCdXjYPPo+S0IomQngj/Su9
eyXgUAlz0a7EOh7Zh5OdNEfd3Dqn3I8HR7j7cSUO/8Ej86Ig/HpEZUmWzUbREf5hCSmDatlpy07z
o0hUCWGjil4Y6Vgt+890FWLF1U++CBWTJmdtu2d1xCNzRhgl1TNgnJBIBaL9zp6+m6nW4KGJwXvG
rKSV+V703iKOmVqSTWPDAWGHfnpSNTtZGH+Vn7lTyhggJYKpxHoqJrLgtyooAxGqCsgzIVsqi/2r
GzifJ0t1fSH2F+LJCY6Kz+QvbbLfcd+efi3qhznq0NzRSMir9FyRRX6cZPDLixxTBo3VDV39kV57
mgtv5CkSOh4lBHNn8CMA2iCGEKPcm/2SqMLhlCMaXrs0CeLBYXWom5rDpkSPHfZlfg0vC/sVHCX4
DOFFBuUMJfZgkT9QYWYWvCGc5IpA0oB+KrOdcrDTB/lIKYbXeOLMP6Ygqu1RM3Iu0CTaLWNn3CLR
AIEgv+WlsHzRNQP/WhbwChxfZ8D7gRDeO1aDQFH7rzN2q0ONUJMuMzBkYtagiYXA4Rvv2qUNTYPM
545tCm98ySntxqZJueQdIX6pjmnzs7gp9SbKMZ61YNV+bH12LH30o14QWxXwcn/DICkG5JXXCzcx
9tDYk6a0LmVNXy/DOdxuCD4+Cu1GGDzH9dXc7j9sW+JfNuUWbgIWpt2jaX3+W8AeHM4YGQignPPh
zGckHkI17ySL1eivuIsY7rtglElN5nATKblDDe2FWUdI4Y6aBzIf8jJ48IvzLSz9OuIa6fpKw/ur
X7hX5RlvGXKcKcEYM7EbkvAp1KR57fTBusnh3cKfWzrkWBDJrbb+CzQ9qrFEd4nPBQvn6yyjgqA3
1z7LpiJixC+qXsn1FLLI2nvnXzwDYpm2ZRoW16lXiyttn2kLTcwj+aOgrZPVXrU3wnoG3kUM89op
QjjIkuLdBb6BU4bAi1rxliXbaiTsecdJ2wwOQDa/PgQsN9OwWvJC/bXJCvoeRJDn6jMcQV3drcXl
/YRkSCIWeD/avVD4yfVfeHhSyuJOFTAENpCq9+UoDUDY9Kq4SFIZlbBhDsdpUTa250rKiJox1p0A
SGWoBJr6Y2Z/1/DwtLhUKbnBM0myFCTjfxMx/Kut9Uwc7BHjTI4+kCeVzCIUDUvwudN5e6osvw5M
I+69K1h0WBmLoJ4/9JHFMpWY0r893HikbvtDfnFMYbkTnl+/SWgmBh7peS2fpX59rrHGURj6WyKS
7xcy2kBG6EAnyRFcn3OZqmggtndtNJ6n3oJmmvuvqx4dDzHE5V836gD71N0q1Za//Ek1HOFcePFi
pW1j5MqM6O71DnDu2jkXi+ptFlj1hK8cQmlzS+Zl/oUTeKb00N7NGHqpOfyfvTb+dVTCmjoEZujJ
3WlZaC8534qaXJ28RQAfme6HsNfiCAnOOA8XVa2Yry/tiOmKfgSDslfswJbm1MHr7nZlKQFKP0Ow
PmKqQBHzxFqrSx/DOOBaUVvf4yCbux2FEgaEYTTZo9MbJ/k7IbFdPTrs864eEJsAeF0xOO+EZ6rY
SWHPzPYfeXu9UoP3FkHdlXKrymPC5FIQ0d4x4FKKmUwA8fMDSVOsfrGqvRajv8ckvOKtfwhEGIwo
jFM4rENudSWUwM1HZI21GmePUKWQORWBLeHHTcA8ALpKRxcXr2/nZ4R+K+6hxAUA9MsFmAYJv6EV
o2Hpxkel36LXdS/pcFFb0uRD2bZJ4vwIToKapXJF/oEYXejv6e/ZU6MkrqiZ8VYlZNyFtPkKj02u
09dRlrFdocqKb2rY39GJ06jZ0Aw9mASK0nQR3tTeeEg1ZulXzeAKU6GvV81kwuKqacAf7ItD4DQH
vcDCZbtzb9jRNfRZVhGdd88htzdRXopb6xaDB5UjM8QOumVQhMK7LpQN0nF97XBaX15iq4QNdIg+
jsXJjP2hNxuu7X3UAlPEDlJOLz4djJCSmJqlVoHLxM/x0FzMff2ks3qv7mA+al9C/mWwxqi4UHlo
NeSS25BEGKA+2sUK3knZJvkAlAx4HLpMJwETnDD0fK5v7Mlk9tH+ahojaxIhUDaWcR3om5Y4nzjY
uDPeKQR9qrhPevOsnprmReBcB/DYVD0LB5+0P4k+PjGl/DUikrFLyzF3up8jRQGo6pGkNxo4sDSN
5D1qHrEFvpO7U5FJAdNkavRSz2eTnLDrz020l7qKoeCzk21rRVyjYpnXABmGK3gZtitVPbIJDMld
dx2/J7EasrxCKkTyffZ/+mUYABGBRi48X+RwUnAcLVvgLBLB8OwqJgNkWue2awlJ9sVzlB0yjn8G
Vk8WW7OAspb6p6gwsEYafrx1DTsl6M1RowNlbpt1lB7nz/hhm5yv2EQxFbvuOzbXPq+8tkV6Bwhg
GoJ725ERUZVXug0FTR3qIbLvQ71LW4/0DvEIbjkMF5hY6b4EDXLyyvqjkWBN2Mav8OhlJN7gksLl
JuBC3wcF8EaXd5LoERfa1kIea/0kDCV3FA5gwZbDn9k+3DTS2kyAV4ykZUjDmpYft1p7zoCpXEse
O7kiWDrv0KLAVsiCzUZ1KKGdWgATPXBF6UVaaxF4XxAh3FH11Ji0Q0/iUNtG5JFYVm8wg89KDLw2
sDhgFh+PJ0QFvHM2KrvOJPi/3eJDrWyEQPHv/tnUT6Nepla1FKvV9c+S9Pki8Iap0T7uM+ISnWEC
FT0iBCUgOKn+G9xqxGX946+drN1xjm+Jf/CWwfr+Sv4EgjtO5b7Ui2+zsgJ8TX8dCsHi50DspwxD
YzmSwzQMg4IRy6kggcpvywgkcfKZ+1ssrnaQOH9AvaC6EX2ZPRsGquye5HGKB+s2xiMTdoyw2Pym
tM/Bza8x2ZKy6NkoFUytQljH6W95LMt6RZngz2jGuqZriRyFpbpzsWzyg6RE6LEM0cIBW51llBYr
4KN1SX+rAr78r4DjoVHzF8QB9qpC1etBBho2h2d6PEQPFmkZ8JiZx/TMY8gtWBNXlCnmisT9Du5C
R7PhgEO3dXwSc86vF75wLg/ssPgbkF679u4D6oAAo68MsL8BIznNNqrf3EHNqRQsheRbYi/KjO4J
qvvIR4SuVjBJla4IOuvVb4Zjs63xcCH7exTS66/nbPwDoAYNlGITdE22e3c8ciW6vlX2Lw/2sv+e
i20YNIZaic6ar/wb/iDzq3z1HfidcesALKuy6BLbcIgDajTvsnFzFJV8BEwL3GLHizC6O0Q/bUpE
hfDQAc8TRVA/RSzjUohuWA3/2rFs0PXUWK0B2MOPojdi1K3WIeXxpQmHH4a+wcTO72qfPtGEEM3k
8sOkd97MO3m0UzgE0oTD+i8mH3uN4NCZPNtjuh2lp1CohlwCytkz25ooTMpRWdUVe1tsdnQHRzEx
YIbozR/ikaq6re+1WvWzQGoOPXr8hUYA6IK0pv1Wx9n8G3MXvKh++erXTsxnyEjkQCsKD685eggA
tHXJj6Y8gwdr2ZS5IHQL80zgGQ1QKUpCdVciy71IWu9pdBhHL25P/4hsh0DXUYC9J7YwIC9V7JxP
1DVepJQ6ZvGjFBDlHAzWlMGLbCJpv2JziLJUTOOrUEUsEn+ZQQQGezvR1gPxUObEobPRa8M4k8A8
Zm0nXqGDlEi5hxmZJa1sLovAIaDC5brdtW5kKrBn3co7F0/iWtx8wSOIOvF/GUnTg7MKmyk5HdIQ
Wn0KFwcgeW8pwIXUvSlOKjRWN7E3Lp93MluE6a42XOIdcBjo++JD2Evik7Km/igrhtI3xvEsa9qE
o45sCX4+pnWPwxG90pEsMXQxaZS/3rpQ6zkfwkJCiurC0NvyzyVg/btxQzRnqsbBBVeKLTyQTza4
FWdUFNs2Qwjbgjm/4mfAabcakZCV3HH/urRDn9PZz219Vs7FNBl/NCDpe18xcj/w2WjIkBnW5oMV
BIHtgf3G/ljCaPOcTIslBhEaRB4/4myGFd5p2VBohPtqfVMm0eM2unQ6GJ+ilktDBll0brwUIXwD
MhMKM97LEUpTJnXCJJuwbuSEmBzgnL3XYFnFLr1h5kFXS69ryK0m1JrIGzI6LA5Z24PacPl1zsBH
vowHgXFcGG7OaCwIHsw9CLHOHRcoZ2iNwFOsdn4md4nWnUggvkdux7TXIDKdrh0Bh8AnpWFK6rkW
o9zyGEjGRN5xkQ1BMujJbHuqKNaqZ+U+XrKJY3MlIq9o3b9sCA6Uj4FCysgthw/T0K4gBHvEHxql
hTAms9pAloax3nPakWJ5Jayk1TC4NHsvNkA8Cf95HFHYCsSjKfX1rYL3HYoo69B4I46qDr1jtyxq
imymuo+6HjC3N5CwWKWc7oUX2QYNmRLsnjvHEm77iWd54Qa/IZNv2G19PliENiAhQIxWaioCjY6H
gPro+BwVuCH9mhKgErgHLdlRkLjG0Dh7TSVB5c4NG+eWz37tr/5MpZMBVrW8ac+rRoV2LeTcHAoW
XUVL1oBLtMBXpV33M0liNPt8d89ijeIYp8NKe0ZKI+l1KT3WAioQJRJhLmWnDpxQQXXGpovcOJJg
AlVIoDTkMI4It0SF3ofsPOK8b+NDaav1SigVXealU8MbjqZrXSswqDOhnfvByN72qxR+KKNxLlf9
jwqy1HCBYouIluMW5JSAttAd2/bfxN1e+rYsVlemVBqLKTt91sVLZipmxpr4ZyplbjMBQdw18Xf/
eEOcvVlk7ChaNQYSQJ8KQfcGtmUEV4Uf4xAtO59t7bLObY2BDvyH8dmTU2Z0gQ+7O/ldbRZQR9cM
pQg5Cg6AVeJuIv1bH0GdjxgrpODHzS+CxGZJGxaGE10m5sJgCDxf+m88zy9Ji8Kedz16F77itKPp
Fh5FH4/uxSkpPrcbsKIltIDaoLP+Gx0CraN/VP6dpYkhqz9CYG+w0NXeq0CMuGPV2JcQxSgTs0Wc
f/vUxgur2qPRmwbh6NBjWIHuMK/Hieu88/WwzgDOTRBR6vTEkz6aY/SqSiydevsXzXhFCzas4Yaq
GoaJte4LFNhDX4AHMtSVCA0dphUTIRhnKkjr8d7G3glw3csqA2n0QgFMDwjy0etTXmhiqLwmC8CE
BOW9WB6an0uC8i6Tpbpl4xu8jdoh3vXeo8PglAmhnIstCQpvcyq+0YE1wHzo0mwO+djByoJR3H83
wATS+asWbsdH7eM2iU4TZEfrk4j/A1cxMo6bSUAmjvLzFc0BE/gUzZlvGii1//vV0+r7+52uLnSM
JEW6UPp5QHfOMYjMKW9GHr9ASPXruWgoYVq3dudJym9rIGdpieidz/LY+PT1/o7/vN4k/A7o5vu7
l/u7ILfORcNwr9C16baj/MtWa4md+WJ3wq7D+JyoEMX/MLBTw7/ghkQVFpRhZdNCl39D36R1EgZs
/CoHonPQtIlFH2kbZMnT9gbJ1fvy3Y33T/4pnpU13skJfSZFNAfQPMtu/u6DKSoz56YUm+aTRXV3
ZjoB1DBF/H5YUI9Nf+m/DbAV7Vj2LNw5OeCGn/778CXQyojsBUDVHAi/YES8PIXqUjsU/YmA2sva
g+ihimYxznsmXVfucql41WCNUb/mYOS38IVNtkjNH6GzYM7mwa/WPARH3wYjDHQuGtpBWm7+zw7L
V6O9NV+XKDwm6otpTvw3MbUH7U5+VnlZSHRwt1Y4dOHR6vEt+tvIPmijbDstIN6VF+ravrwFvWVY
BuYEiFF0jG9ukG5Nu+cFUkgpMviMRjmiSp/A8MXHWycZFnxH61VU4YBE/RS6NwkDbV2tKCyc0wfN
ajQWkkkCzW/YT9nTCLmFLh2gWeL8fl+ipHc+xpW76OJDXClnwFy7Fk4EgiiHgbd/tE5/GnSchu/K
6IadVBE0k0xZppTDNHAVIYjkDxu+dHDDZtUc3df6UGjYNAeHk7UpOjQq+9sQI5mBX5mypa8FcWYC
mAB2t+iHivlr1/CovWke/pwghTC+LdQcToH8gxXw3kqFmWTn6w0vYukqaIr6uG+L7Fbloh5sRust
OA9+E4lgldAvmOtb3VRO8ssVZnRaGUy+yvzle6jW9h2jXe7Pnm0NiDfwRC7y9lnzZ3UMoOPgepCv
J0pvEax5GiiKv4qY25MnTcbAhd/81VcbeEp/38vwus5XxNNGCCUeGgFsGwfdPCUohVaZYEA4d7ov
pb7POiCk6tlXkN/CfnLSYAAqAFRox1vUDk/vN6piWzfmEicJggkC2+fX9Gxdt55fB63zFzRoI3Sn
nNVj0mMQ3wenq3KqmOdrlFIPIWYjHNwSyV3NhUNqv+YWUMkwoT4Uv5hx0Gyayq1Rr/T/O6QQ/s5i
cS8NjYoek7byJkYLitwMx3bK7vlfmaLdRt/ZpSi9NqKmG2c3Fi098aWY2JlUKhec6Egh68f/4/Kp
KFidCZn8OTt3P78+sgoqC2hcZyN6wyUkZcxnEJix+39QA7ZmElt0ogI9cKmtD8FvMfzvF4w2PFHx
PiJtX9Gai4iu/3YcV4VzKnz+6QgSG8BPQdIX1XohUGJVTC4BLx9pQdzgZmwz4FAobWwKGvQcZXnG
XYWIlc/tnB3D7/4JLr24q95iNP8uI3A6Am5A8gw/JQWEwrLapmPFD5tA+573Y18LlIlSByset9Nw
FbTFFS7PLNtO86DgTS9gIN8yxsg/FhLqr1OlCQsOTvaewi3e96wbZAZtOXzQtt2cJVW9nI6o9MNz
CLjWD6bKrDSxN2Sb/M0WU5ZrkngyLqTBbzuqppRWkF0tQQIQNyEMwvLMcuNT6xIkafrTSA7b8i7a
aOVYaSxZEOmnYSQaJX+erCrLue7fV5CmZXMw+h97Ins0OSoxaio8mDnVHYUHejwcL3Dw3HBl+ayD
VSfXjzIPVWs0TE28QeDLUCxYFv72GwBFHqh/Fdq9vd5iJdFT95hHhjEKxAmTmqW0lWOMzPQ1RH78
MyMrQLvDobYr+0bzfzU/T9xm8mDWBhJh7QxZ0b0r+n5kIBE/rnFhL600VF5XbmlTlZqN6ZdbUURk
vW3z3OHg3neDqRnMB/W3hYwyaawWVOCgL82AGL8dUOyxIiyr1WZDqjZiy+zC/xXC3C3tfrlaFxeM
nO4J5wY1ZW9d6OuwgnP1FUV0hUXqkS93O8S2OubJ5/MNd8k0bSxjjWUn9PbLxzlzWnV6mtov//LC
GsWt2oG953n/UyrXQR7/Mwo9ezs69bADjgghrq67ygfMW8sW7NMz9GL/GLhoMHH67fWMA2dpXi4+
YKOiA9XnCtkAqyfQFQuaS1sR00JrqFCITolcaidW5e8MGZQhLqzOT72myeWaNenGckdd1t2nYNQX
HnRVNnU8nOlN0und9UhbntOFsTEqrH8KDecR7y6d6aS7UdY37mux5G7dDamXwWIZrn4YvgD9auRz
BVB8cbR/yOM/R4jnFMCYLl0uLOcMW0Yi4B/KRLOG9IkdZXDFyGembGYQHHzEQypV9esMhG3kiDfX
ogEaMd5T+FfzYk+TugUSHnisiu6IiCPsvWkNrJv6veABBhz36tFdjMhWYCwupPOqt+IkKwD90uRc
XyDnC8TEbP5+u1825c2XQkyvGQjvzSIHHJ8eKh5Y6GnFthV4rPXhuZWjUaWkRl2FP26AJNLXABl0
cg0QOmVqX369ZQqSH/ElvSbWFo/LGCkMNfXB07A5X6L/+cYERcz88747YCkbnSZFRVlYLKCpZuPV
+riwkTd6gFyA8/UheorvqVN/8LuWA0s5h1mKPEXk7bj0pfYhvOXOfiR+G/cBVxceQVEhW+mXA5M8
Lr4XT0E/zm0qPU2AcITJDwHuMpwrPokd2Pu1TM/4LYVVgktvStXjxNFdV7k5f69B895D/eDU9PAU
UzzNxVJC8ZraO0qDp5R2QMnkzjyznFxhXyBP8curoVdgMcoFNE+iOhyEce4Dw74VWSvTmh2KFlRY
r77gOYQGVvrXNxexfGsg3Nj6u/q0g7iEiaB1VLy/NyMjAvMt8XmlYJ75dRraMTktlGPbDUebBkIa
eE0acYezlFMl8idDKsjWNW7FiQisQZnPyLHy5prKSubfwMEhSS6PjVZJAXXpvIiDygTty7vSRQ0q
aN3aBekgKT91sNd4q4UuGImgwVDmS9i0RTXAa0vwiJd/WD+GTE1R0N0y1qjtF8F0AnWSPpGI/rw8
kqtMbVa78K8soUZ8zmd+lvrdGoQ6WllSrM7E49ICKU0iY5Z6XF25CznR5+puFAjonJIJ1sblqwGa
6dNRvlOLutVC1FKE356tue9GIz9tgJaIDWFBPCji56OVPFA+MlzVTjrdmuVqxxj5tX6WeXqOYhGP
04U2bU4eJrPLUi+Bq1AFyV2o67SO1rWNSuU/HnbPrgkpigVc2rJMrrRLHx3seTvufKgQUxF5PwKW
3BgP1CXJWR5q2FT/yNeQL1I1GHchKijjP/S+DrjNe+pzq6zaHP9lf9bZr1QuFiGriIMc/9K0JRNu
TEuAghLR6gnfuRkaE/v2sdswlqHM3kEt1ukLK8EKdUSWTJvqLRAJHICTKdHwY9iVsz24kjYO7+Ls
fMEYVoGFYxEHRPvhM25nT7utSfPx7DevvPAWMM2s2m2T8O4Z4urCfNakI7bTIMBJm1/08qTIYXCh
7kKmGYGtZOdygYnH6LZAvIMitA0c5M+Oj5YhBT0GAJdjHxhAE0zyD1ZAJCE9KSLU8kgaI4CXcZbX
rP+rutpxpXbMCrDsKP6Rc6eBTIFOcaXvonWccV9I7JjtTTl+OMgK3B6iESCjFJHe8WabvfgowwOb
L/Jkgo1R39gXxJ6g22lFdu3LeDWtr8JMs9edAdRriJrnkX0tgXTxYZuY4C7aDIFkq1ZUklMXxMTs
iZJeHFIVlvzcXYAtct15B1NcbcOBBUye/iwDtTqQJloce0zpOYoQcKRoJLLKHoLibaCjKyx2T6ua
JxbgAefp7wyZJgDQ4kmI7A8Nl8GXjgHMbN4w3XwNoHo6jWmDM/wMF5COEXnPjramiA2si2vXpjIn
nDQtrgPrCEQiA5Eysr/I2LWROnlZHZOekSieNyY4Wy+WtCcvVl3g1DzGBZI6snYZ1omZxvpnCMAR
E4O5NGRYPTpAlTee2+w6lfs/XHVK5DjNeQD+m5CMsDL79jOZijerbaePtsub6csfVaeqfeWDbIV5
VToQg7u1JI/eoJkzrnmx8xBPHpeFBbGA4iXVOUhc00evsXdMnh9eSynPS70ICywyDp7EPlqDZz0k
pguPGF2GCpcHXpTmI96X2LiAnmFYxsJ/Yn6eDBhzdTRnCqusCXvvscLItA3rhcrIBkzBsYKIWjXg
qjy6DZqc4+h6BsRkUX45k4Qa7kpcKzMpDGGV8ZqY9khVLojBJdx0vUVONBAMwhRec4hoMJoNwqQE
k2QVgz/gHUAft6uJ48L++FcQARsD3vKJC+92Az5newuVaGzae+Z/PXD0jRcwCJZPTnkL7fy8WzEg
GO5L++wY41/vaRP7DKWWPbPl+0dPb1bjxZT0DEDXPng6LpK6AFqAUpnM5B5q03V+oVCY9ErBZXrO
2RqiY3nZT4dSzXRSeW68zOKKMuIqIaYKBv2/7NnFm7eg5pRdHhWbQbAEiAGZUg9N1AN/KGi4eGvs
da8UNe5iai50EUR2s4NzpG7hprrX9V0Eja4IbiqutsVlnZCMUi6sKheSLaccuajXbxMqsgpgiiHX
+lIzuxb/l3FDOmQ9ErBO4hj3I9qEcsKLMNaFVPUBuBnZAYgkR7vnd6+DnYTi/0h4mU0u8kYMIGlt
3rmNtDnIOgYHAe6jUiyXH8njh5qnG4Pz62+lkCfP/bubG7eS0z04nQpIamxlDkOstNvhxz69t4Yk
imzYqSM7pg29WKt2RA3JZ6IhA5biRQSfnmbpXEI8w+B3fmN7WuPwhDvwtmN/lToXPp3Xox5CHKpr
IJuxs5j92vxWxlApDCuVEsPvG1wwYB+Zx/864ms08uIREG+6o5KTYiubEe247XPqdhCU7wRMUoeG
hPlsjoAgxSo1adJLNUMkRrohCPCadkZHGLwYCtyiMMCUDg+cjJCvQKdMQmSJARt8ZLB4ue3eumgs
e1DrQE3IOXRkrjkaGcaY2Vvt9tpco2jVdd1xsRH2+G29gQksy5yRIN0RASkuZn1ABaEyFz8WQv5u
h0F7+UqSFozvDT8qmc5fm44b1aqjN/PknMjw3OHIB+qCww6lGB+LBGkraZIIMBg6rrxrP5c18aJM
z7c5N60LXK68Pl5sfqq5+D4LoCpxgKSYddsTgRztgQP8FmGb37L6FGGJsA3lrSsLY3wn1b1qngRP
H7yCkLiA5XeIgNuIwP2iMZsoB1FiyW4INkg7DBwaSLL2JQH6xWHhtQBZ4NlDyfglQGYspPv9I5CQ
4W9GQOkPhow1WgCW9BsEPiGuNDZTED6YP1CCUMI1p5qsB7uWM9DvIH3M6pEtMkhX/ubKUyklNAvv
NF8ukbZoVC+KjTqfi3oiiBGzSWnhmpw9mjrCfBxU3S36UuGcXfy69gl04p3OaqjWVcJ4rZ1w8SxW
g7/tULvKf+0a0TnbqsZn0LTKRNBPboJLN0W4Vdnr0o1BlNucli/pVOrUxjk2qHTlYhDK4ERROVwi
QbtanHHBHKfchMkyvQwHTMshZf7UzkXlKOnuVKGzq+rMS2QEFqx6WT7HbSrfTeQATloQ4xOcPlCo
DsN4mWamZvKGOVN2Sg9bGw1bNUHkEawUVll1gn15xFSU1QJQMArcS5RpclNIKIxQEMbdBizvJyVh
SCPMJY7PlsClufuUVscA1xGjXk43bPKfS38ZdQJnc4TIOX1BDsKA0xaVIAbV2H41QYXHvU+Hg7+f
wOSMEvg3E71gKyiVCP99eqR3bUn5ru5QW9SCyCAUWCTFh5wVG8as3E2K8eDXBCViMHbCYcV5E9Md
/DdhUKiqptd+QpXq9YSvC1YizM2Uj6OupXT72UIuClMRvct5wSKq2VUx8TaUow2teznm2Wk80hR3
fN1wndB6+novtyKfSxJdoBYtyZqQmGxR/rd60s7vhJR3RRkx6ZFlL/sQk3hHF7DBdMkUHcbwqVIR
u7Qb928ErpBLLpol0MXEUCAsSx9+7InTwWCBryHvF/bU9XCnrMfUMzBWTr/L1RMRSLVhyBbmrV9K
WzAFR2OFagse8fwXik0q8yWUErOq2MpQbRSNER7LAd9157d+/zNtkQ3tX/BS6UvAlD4MtE2NzSDX
NpbPxgAITyjiv9AKtoKaChzSzCCt4KUKlCd7Gqe14KyENR13b3um/S9GOYGvSEmx3bwdddfa5Khl
DvVuLuhmXkZ98wXD8Oy53k/iru/M8yjSXJIc4xUb1d3KDMKLib2tvTbBx0GR++nb71B3oWiKbjvI
1fcEd5ygfyHh4PLZDLXfmDCZ78ZRYd+aoe/9RXmE0oj3JW2w5MG+LuEWR+0zZdrR0TVT0h2BvBiA
WxUumx7sHvGq5fcl7CFwzpyc0FUp1nVAeQ7Wa7dolbOewBw+O3+G28+ff4y0bkLFRynMe/eLKYY8
sE+Wqz7gwOzntHaBYJ5aVsLxEerndxI+5CFdJr89wmdHm1MK2EahuOdDI+DnO4DILnTWcICv0Kqy
3q1NWzDSiUmW566UrQk7pVJfoI7RW0NQNXq4VVvyHCOiXGiMi1wxOqXkO1UKK3DGj6Zug/0tKCuf
IhrSDE4uKQyk/aSH3pI9a8DRO60+Qufa7TNzevFPWkyy4P8QlLwDuXjmKIPNiulvMwIhxNufOLyq
eX3MOHGjzea5ZqG8VfpLvqiMtWoVjIchi6jNCvJ4OYCDgTWZe23p32XNSZH5AiHwEaGBspHJa8KA
jZ9d0NMXVXLli+B7GC+4C0ItZJyKYqXrxZJ537IUNsl6traOe23cFNYNMfyeoD1958Q8I6S+umFz
22jmh8TJwCJBPB1QeqaRj3hwqQvfGz4vuJAQ+bkFQ55VqwTMvwOm0jb5bJ5hR8Y2Q7LIfJ6qzby2
YENlyisJxvHAliODKhkhhaB/eIvdW4udVWLk5ct5JgZyMQyNdO2Kg4vDXPfdb9Oj8RbOIrHQCPUT
g4r+E10xYpH1WgBUYTqrB3sFbX4uB1YF5wfZP3VZJ1JithvzffsVUKYIonDO6ez9Dzl+qhcehyAK
zyndp8EuaKqvwwpUK3koEQrjN9j+GLugO0Nsc7lKNdVD/rqxRY/8aVzkXb2s86EiOhJeb4q6GvM4
4YaKOBb9EsQU4v201io89/BqxyN5Krp11US3YQrpbhsPz14Nvou2ck4TFfRev1wNvqD3xmhx17ZI
ms+XLQyzGABqpmMZVRDJIihRPwE/FL9UlOwlatNV/1gYSt2F33PBLN+VP0BP7NrPhVS8/847Qkrr
p+iXUZo5KEDVCsAo2JmYE1UYCvXLle6zRS25UNABcCT594KNFDlIAHr54rPQiVwthxH7w9tRItQd
Bh0IZAKHIoU1oc17lbtC0PLslOj/V5HaFLb99LzTzHjyYbCXIh1Qp8Cx8DiU3q35RODUFk3HVhYU
VA4b4edk3Os6OOORgRyLrx3TlEBbaNtTe5GUZrCFzfUck6qMBBWF8jz5H+O9+9Dh5K0c5Je2Ke8p
5YklVtex9B0N653zb/dIN++TLoQjeF4HQFRcNZtdS2jdAGjD3a2AQIuv4rWczWVX3JCN8cVol2MN
mG0xtHqTPYMIeY693YZgdzX0bYy/9M8YvyUnmFecbV3pT/ElApQrh/jP6HfNV7ZsMm9ctynUmKaG
Kso2QB5BNkb0QYPAzS0M8zjKZ8SqL/uGr7i8/kZblOBgfxL3OCeKKEXhxoee0XPWfUYkk8kBf7dm
9n40I4gifcyNWcokLYCLPhklpTT1teWZOU0P3Ui0ePMpWzOTZpuabCkaYg+WFeDuQTXLKAnDDK1L
B58qfei37hDijkuGpuvwr+kNB9kl+z7PNhlS1VLBtNT/wDxy3VfdYcBqc11uTGBvbX5oOUCCjp7q
9h8CIw5AarWZ3iU3w/M4p4UcsPLmL4HBxZuvk0L7Ty6YtCGveCvCs3L6nHuKnniH4vsoJtncBKWf
a+yXQYyTKYIHQ64/UB+ilZ5Jdsdp8OODsR8AmUSuftVKU1caX8F2masSjst6e7KxH9geyzFxsEpZ
9i+amE0upFghHGvKIXmMNxSf1yzTczt89fKpvrpqgwhjmwkqI9alU//MQiJcs2FzBz5oVc1ghCOV
TWiNrYkPzNe7L59dQuyV+jg0HukFbtxi2MLAMd7uVOTAMn9GJGux4R6az7lKced924XXRsBp2C/K
LPtXuuy9e+ZsVicLsGR2rGYJtmVRzLwWrAAAhN+tGXF4nUlVSU8Gm5LRlvEorD8XSfqM7FgXmY46
gLGOp55Pxkp1OeOMj90nqdke3R/hOPdx3q2OZG8bqaGTEZM7put/HHTGB/1Sybb5kiq8v+2neMH2
va4TsJwne4dIoAlS9cUUPPx+pWWbqj/XfYGFOIICORzHBWUgluLlU2p3NBDQ55w8u1F6p3mel5mQ
x0mb79Hv42vIQyz5h+4VvjDOqXVekyiGANj94PaMwTulNojmPKYZo7fGnG73igujSFyTudKoZeTy
GIskfGmH3Sm6v1CdPohrjuTHYkqhqJtyoCwHlNQQnFCluB10uV8rNFoZ2gick5uM1llXVzZZDNpH
cNs7MJGf9om7I5m3ZkI0qd60HXCG7pdpW09o/Xvn6/w2GyyW+ltawRXkeQ/DOOw7DS0CYmKuNHCc
xoOIlMWBxyjPLnpyZSShQXY5G5xnqEz4R9pdoCVSzGgTS0uRcEd3oRmfqMa/ExBZj7Ub0iFu/XqR
zsokx3SaJGKmWB1SMi+QHLs/bCIgVZhSUmxYHQorEeYG5X9BjQTw5/XkS+CfgZdlxtMNhbyq84zm
lkqA0qtdgaKAe60OLLFqh68ytj6idRygYXjl55JCMcADADbgsr2skABfWGgjUtXpVFD2H91HTkcb
7YTnt6ZJBxakmw0eiYDi1SBBnWxSrueraVNo4ooqbn+AHJrg1lmsLzc5I1F8VgcAkicsf5ZJRdPi
DVkAWGxQH5UF4cpA+So84DG/NlwhFkyKdZhARfOI7y9FK8itcU8V6fOr3x7aHnl8sczMqFowzjKM
5gXazBOcYmE6g+RWpMZ5enqFXL/bFO9RdTV2EDUEQl6ilGPwTlFwicn3DS9QzcBsPzmZuhS4H4J0
IBHLuzaxQaxXydPJgi0SeAuNh6jr8aej5h37NXKLEYAbc3EH6z3qXhl1atlcSaBmTEmHgEjcqKfw
m7kcASjoLYYb/4OZUpMdml1yHKYNEgbD8OiImJSzPP0tU+li5sH34svIjjfhlLS3mry5KqSVXvpU
K3eT+jiGga0eg+F73S5uSBe5afPh4DbTa3Kjq0BjXSC7zGylhfWa76INBIYcw+bizHNzkljuQ8+/
2qICrt9BbDazCTie+ldY83dWwjzyBN7boVLceuUZzWO4TWSC7D3L7k+htRngDTRy15Zm62Tk15Lg
4g0vQ8FPNNaCQNe7M4eRdjPX+7FH9jbooNakCNC46CV/PY20+HdrTSVeRjGfu8qAcMlhBrXQq8/i
vMqUorqLrTSqcLqnkpMZlG+Eb395Ienwr89X+gpVLQ7rTOWb0nbrFMdd9YyiVoJCOFZnWqQ3QTee
RICQ1VGGwOaBmh4enSYH+MnfHcFFv7VJII9yceOw8FraLnAd1+C0xRUNHvJS1x0KyYhvh5RDt+pp
gOmF0kvchX1wFZoL+S6GzaPV+ykj1ZrImuVY0Ck/7D8nEfzUlLJaOkwGc6uL2GcoS8gstL1kxiMT
4w8s/fP6Uc6Z1nXoxRcU4qzjBoyXbRbIclXlmIKVMBnRDyNYvr871l9FjzRqCp1o7Ml9lGMG1sKM
hq9u66As6NvDjpi0456B8MnYiIziFL9wWwSAZfZqYPkoRFF/C3RMEYwFcIH48R0iLcJq+e1Ubudx
J0LXTu8dwD51+95DLvwbYMsJGA/+0sLBlXPPc9/13wQtow7hTYB6kYMhhNWobOm4xPGl2peqDkkN
6X4qayx3FCeMDJe7XybEgF/wgxigIl07eya0YIfNckeQFY7s3dNRo6OWCkiWQVQxP5/qM6W0BQp1
6Bo0OAvhM6uOqiWfjHp7ZZy+VAC9ZO+pEUFA0qgofHlaXp1BLnPZMhXzLg7yOhNITVY7D8IB4cPP
CFvAtJGYCkg6FttcTFUWB39JDvbgJ1l1gDCtHItY63VjTLbrJoPaLsXt4X9Y28vEiqRIbQetPFrH
ocK/UHbHnZoKQIrAGqSwJfvVcIPemH6c9w7UzT8mztiNerPdHfyoHag+2ot2dmw8LAlf+vWfiM9l
XMENQbzVk2NnuYKwlXI7s+5RFlwpZ/JgRyRCJ1P4Hss9VslivcWAw99U+x7ewX8xrONiHBZpBTsm
QLAqpmDvXXOmVA4D1HiyzuD0U6vqh4xl5zkHr/II0Ffk7vzlS4swKrDgZI2NdnhLGxWNPnLI2uYh
qB1+M+91slp3JSzzAZWmkIz3NS9lg+r7vbmmC/ujhJwSoU+uhw+NQGVo3Qit+pWo+jk2MHaQ53PG
KDeQB+++QYqht2Jko+GJhBci5UJ1j+TGtvkWnA2zxqlb7HXaZn80vsekkGGWZxiym55ANZbszx2t
ggoYf3qgE7XL3OZz1JVk64rNa7WVl/xSj0GWdl/J7eGjis1K5/32PJ/DPpU+gOGm9F1Phz9ms1Kl
kL2nIwMzAn3CaNnQXdEnSdpfYQQACP9AiNg3AN/G+vtFL8oko8UKZfk2TFbrqP9Ke3wgBbFdvhJk
S1mqqRwUmkqZ2loenWYimGi+/8DdhDrYT3Xa6uRhrk/s4em0Yd8B7bWlbR9Axq31IyNDJhlhN+zN
V0fq9xGl13l71j36yPKjMkuhA+Y7KYTGgZ1BSF5kWLwxlCAIVqHkOQdIm0UKgu55cwGk9TVb2QmJ
lxlRL2s/W0QFh8twgPJ+1xqKM+UjKHYL/tw5ZPu5zJ/NSkxso023qVtVh70us5GVXR6TRxSnNV69
AGqc1eyYM3NUAZid4NJc3/Qdk2X4ktZgA37wIJxil+8AmkfzG6/2mdpgv44GXw84J6xtZZvfsin2
hA0vNB3LZjoV66aKykb4KOFX899p/2i+rQ4o3FoaFqFWu5T4K//3JrPdyN1OrE0f0kdE5m4Gb1lz
+6NRq+k0F1Om+IIRAgnPo2xJ+RSXsXLO3EkIkSMFnz3Hh8mj9oAv73FBDSdLJh5C3ycn9aQEVsE+
6shhk0mB2n7W1NjoGOXWdfQNcZL35imBEE7GiD3hWK8dWEJvCL8uzwMhjaonMkfZ3pSSU9Y4UvyZ
jyhZ5kQo/LVct/+wmzi866Ofc/6+0t820BnWzHsMk8kj6P5+YHC4ZC+vKVi6xXrZkLEXvf2a5ieK
QfO6J5y/VeC//9QksUfpjbQ2AcjmiBkwMYAB3gtT/1+ENniN+45O/F6M5rXOGIcCzVYGAaagRIMB
3PRz7WqtfGVddKtvhLsjyuczHErfbipXjG7n11YcT/D1ijh228yZMuqUpoX1xbJKVgLd9A22xIey
88KRs1aOXN9HYd0Pn7DdIrxujXBO3HplGxCOy4A+SCUgelEl5aI09Zlnd55oyhuKxP2AWgmeH4cd
4IKd5it6uQCFIRBlHmYXFD6eqmh0GX+AjjlBTPNydh9NjhOr/uPIWxYrhVCec83Sow2OdLkxQZl0
gEImxWOa80mAPQDAUDQL11VZHrYUlocpEO6KjHX1qGVlbMHIblmJSMb7FXiAgHmAvBK2MAa6gAc0
mOjwHsExYwbf1J0sXOBbgz2ln04ys2MmSKVomNWi5+njRd2n7xhaj2tA83qZeb4xD4C3gkHlP9bX
/VWu9IoFYUA1PJ5FTsyoDd6JHlOgmJlZG/LOiXzOvs8263qD41/0s85Ih5yLzOZLI94/g6CXD70l
0zQj3DRikFJ1xAX3CrXk87leN1SogVuYifrdFXl6yB+uHKsRa743+vzh1nlc03pUyFeVsI+VhjQB
K5H5Kwl4QQmzhIdf4xp926uIwf40cNX2iKEL3jchypNOhgxHw3Gfy836NsC0wd/Ro3BGua5JLdmX
3CUXv+5Fwcnpz1S2/SYF93hwyMsrD2O5dZAvaBi/7G4EZRLIfgvACdlldAsCFAdSV86FYp22tX7H
k460lkaThPaVp7xHjfcAx9XWCwf82zcRpyrxDdFXjGWh9GygYU/KCCGyKV29V9T1AKqjQUcLzNPC
Cmc612RWcGt8nT009i1CH/93Jw66Hd5PeaXqVV30K2FxoWz8rDd/cAVlVcR7xUpJpPFtyVEVxFxl
uyBW2fvqhX0UtLhW4ck5Ct8JT8JuUQui0U1GuOzJ2EJbDf4sBOW/ZGGkFgTL2BGNTpJ+WI+u0KDs
LC4ytAvnmlTHFgnxtX6KRsjCge1qLoNPPpRxdZ6i4m34zZbcFJWjSdMkr9OaQ5a5Gvo1hv5RSzfO
+BdTywAWnSHDhFBG0yFm1l6TAgiu2rDk6T9iTgJRdZrfn+zYq2yq8ZH3cPG4pZbgBRhYO3Hhf+Ra
arPNkg1UXG0NTIo7lJOvV5aWI81lW1N/ZYsHivNnhwSZMpGnbRYW99xpfRHti0JUrkFGTvFOubWt
F6J46FNRGkFEnE2SU5PX92Jgz80ao37hHB0Fn+0F8HXlD4exNkJzsjXoOtOaE8vTOs/H//ep3izM
IIMwxO95tqo4bufWs/VaWjS+DQmOpVr4gIRk8PmxX0dOFuDHd+A1lhBTS53GGS6am2NQ/u6sZcQ+
wCJe/GGlPuzk9NCrse2bM40vTQUogzIruGHyYkprOz0EPd3y9MTLObZt/g9UaizkclsENqghOW4l
leQYGSv/YvX5Np93fOw4ixksqwsCPzvh8a0GOF2tufogHMGdh7teXU8v3kD8Uk1h2SJsowSrl7tj
apPxS0AS01/DJvGHeDMsUhj3NoUowq6a0JrI8teUuxprlD4NXQLkGZypbFYu1atDrnl2lg+4cSJn
O3BCteuA1fzYzPgKE5cD3YeSplTTWzvxmxvRYYKbA+t+uJviNwrafwbfBIHCeCNmhCbZW9OL2Ebz
f6Mu5LcNW8Q0NfQ+wN4oDd4ybA5Pyc9t2JPr27UIwLoq33Y74HzKWcaKjQou1RaTlI7dNtWwb3Il
bR6EvUI7b9/b2JlPIgL35xR1/RGI9kalmmteyv6XkaZEAb7JEqviqOtbRUgyN6nsDcDcMfeIHkff
DQRBVDFLL1DHyoBEbQk769qfTi3WbNVwoDxKIZ0WXZZ92sPzqe7Q7GZ3lxeSWrBMW0AW2KhLElrk
dzP7T45DJJey2bC/NCBtMArRuIIC+w4PhpfBg3Dis2ISMNJvyDfJ+Uykbb/+JfTfO39gIqzOM5sP
5Fbsf/aFhiT1HwONog5xQlUBpqe50l3HX9bV5k42wYIP3pb5cKEXOYyRc/xil4xX9OAaAZontRCm
zoX5rab5TsMV3X6O1v6PLVscjh8L9gViTejwh80gV+p2lUBHymGKRp9Q1BVdONq2pwoKP/IxuMF3
kVa3/+1DXdavrFmNkScyFRt9/sP+zzAUVt/Sry4qvxAdkZ3E9yJApVhxt6e4RRZYB1W6hdkHnJub
YXua7lm7BOCHiPJf3yfmNnRIweRWB9JUm+S0ujeAZfpLc0oeztscO94grJPMB8Omat64iqDUQM7f
6OnzDmCBpfjEMhBzYPwsk/FwjFVa2CiZIlrUsmGQkbWhr/ABvDT+cWKV2tXL3eTTrpi6LD4hRDgd
+tYgCCHUiPfpmgw9S+m4PQvqaiu4cHEf8pleFDrvNWqmJehPYAP51BWOWTyEIGuQPIefEg6MlHVs
An7NA9fh21elqPJbjn7ABY6B8Mp5DKoeqyI7E9USZnnjeKDragMd08mye4IZD7nyi8nu4v5MPIL5
pfLiWbMPSLKSynNDF0YcCygKViFUHGlNvfOtnAC03cq/NdV+zaBiEtxqCIqtaSgasGXaqFrdQnvW
6fRKnJJgpJYJGBGr7KiwYFJ9Kd3FNpcpIPU5tFssRJ3phK1WIIozHESYTMCXAwZqdUpDE25Oexbp
WsQ3M63sqhPLxcVgWJcKwVYJhp6vf5YERFz7u1p9o02eJ1whOEZFvMJ6Gq9ksB/rYbOV4gigehzt
QhQB/T1M0f8sQaJLzHmBUq8XELeTd1Z8kHq0psAs3NiU2qhPL53sijFv0eRRox3rTNVUNKZCC2xH
j25jmuqwflKhzAFKVlvRv7J8FGHdVSjYFAJkhRK0YSIuXDhcVJz91Pd+SCKL/7H+Kn1FdDKtQGtv
1WgVN/Wvmc4iTUdbhWh+lQR5lK0VSQz5ze6EqtEF4xwjra9a8mNxExkwtf+FlokWYtDslbH6gTRx
pmLfNZl+zdZuglO5JfZ8AUIqlWO9Aza5yvxRQ9gwwj0AI4uGBu5c0MZpnA4RuAwws9LCFMkPfUjy
N7JcCvgfXjtaXHUKSEkASJVeKfLiZ8S6gZ2E1rn+qkknKjt/hDqb6NgqjLu3lTpVGl4jTOCAFxOJ
ZB6suDqfxImCwVYvZYvrsvS16EHy6TPkZjPWxZG4TRaC10xTj0w6zwBRKBzQjTQFu97omVZGINUU
nCel6+U/COwlJ4zRFllqR63i1Tzz5Tdgr9zGTAyDBcUXlL+DoAq1Z4BmsmsYd0wA7KbYfXqI/FpG
a//ojCH9dzHSgXnUqyKmxlQRDI0On7fGT2wu6agCIVvX5xTcotT6YcbctwUgN7H5AEO6OOJhtd/T
8MmPSrYVLWGcvXGUltALtBv46EPjkA4kjHKJ/v9cuKSpyIGg9Y4gpDxaeixTuifsIYG66lnyGygt
N1wYQtagjmQ5HeOyZOG+6eHG3H+LbEi+29nM5jyDhqU2r0NVIVGfAVGBjITaOb8boYpT0INixxsE
rYjwx4h3GhlpPeB2dbeJgclrjLbSao/5iOF8lscnL4n+YmQLjecT55Lou1BI9YzfDPnVZmrNxpfF
qN34Kwy5tDgHUz7XdlYWJppmodyqV7Er8kUlcIADnh5MGKN+QUW6ta9CbD8D9tET1xIPoS0OrfQO
si2eVf+kUFGh/6q0zCMLkor2IdRYAfK/+snotp97hHlpCoADM3xVzQ1aFQ6Sizj74Ji9HvF+EDxp
Yg1z98N1gK9JXFXLxiwlPfLf3DuRutWXmDdqxQ0asKDOvgDWjZyfhqhr3M3CWjTulmT4Zv0yBQXS
GI+iMdvH8Jx+z4egw1ph1G6WQDJPqI0YpBMO2GtA/vxcNYAPwueO421puHsTQXm6WY4TSRnfMGxb
9XqvxO7+X7wM9MDdIz7DbfSppzOTffhnwsC4SlRwrcvWESwpcHJAQHQ2wT7ffIBjV0ty0owXdj78
brtgCwQCm57Wx4FMdKumJPwKd16tlKE5yjTivWTnMU0V2acAWPGM370543lAxBERal5owaBHtURL
/6nls2/UHjcbIRIeOdw2bn0vXIclGF9pa9R1iBB/T1CQrDl4XXJj4d7pf0pIew485vj/nfmNADep
r1T4A6ozFotWsCg9N4THCEySN3WJ2X2zSbV/GypzP16dwGkzCh6KTcWBs3rGqWlc+AFZVvbpN84Y
Le3nNMvwxhCI7n3pavetqUWMa4srrth458/wFL3+CO6+I9kmyLtv9sQAaif09rm/5Y/J8793wKTp
9CsF2lfRM/XdOwUk3F8+w9FPOYuRq848cjVl7A8yhCdAHf3+2A+GbZCv3MZfiPmYHcK5h/vi41cN
1vqq6HzierqqmsDQ+kpBHoAEyT2A0iywYtQsUIkvW6DwFShuH0LqXcHJ5vuUYpUbKnF+Dz4hZDtF
JNYog7Y+6mCYsTSUlf/aqLXrjj77bizLVSZH1rq9EKHoSa9uBqo/rNkAb/DfOyKYJ17PHQjnFrPZ
CI+m7TzxF0YHikIthPbJ8f+fD5QIN7kPDOqw31l2fznXqVvgVMw/2IyE4JgZ8LBEU95+cESyswbI
F8DPU++Umx/aAbj9u/z4BkR2pxcP7ngXsR8gI/N/PXHTvCarwrZm4B4skzDAR8GOJa7I/js81j/N
M0ix8XORD3WxKaCLfIpEc2KgYqhJzoF+d9OBom2H2ntSrvABhqvCFAJNhYvdiFX3JJ0wcTVJrAs5
PM6fJkghaQVhLykeR1z/BuPnZpZuK5ndwqGnJB9IZ6aEBOlkYMSBEd3VlJjz/f3SlJahA5HGaRTi
5MX/Eyggm1dAkawckEuaEq9oVoCRTwMkljo8D9LMWGpQUshY66VxP3WjSVxlcvK3QX/DD06BpZe2
S0yjIwWyr3JzM4LZX8CdL7QbSidDglWSVo9gqA6umYY3NxlE65PsDL3F6A46O7LHt1uqGr+5O9AI
8oPKJpjOKJ3Xv/jDBGcjnx5A24qkN8aZrq7tl53a5N4PIiRxLnJ1iUswxdOH0stT7kqVaX6V7UYF
nuSRY9kc1G8F3iOy9YNe4+rsLcmq8YAD89beaE9FQEUAIorVjcjLJIV3b1lGsEdSugZXyTHBFgiZ
1Hiu1wS0ow/RmZ+zj1Aadu/hTzZ3mUHEhVyi+YEL8S55EX3R0xfWk5idVJBoeluN6ZqNz4GFkSTS
fIY6CYvWIjoN6OaSZZwm0wMW93Cg2BXaC6sjJDqYkTrpmn/2PkZwKrNtPyTF2yAQzz7EB7jO9iBH
PtBItDEEmc8LPSGqwKQ9mP5EKhBQw/s7FVRLyShjopDOsav0NuOWFOxMJy+O7m6BfzeT7qheYHps
xoIDHtJSNW96J+Pw2FLfzZoJD3sVveSmx29pKHenRXUxLeH6CmS9re31D01U/Yopt537mj2wteie
h23Vvm6goEKIHAgWktbL08y2Q1GCgsg5zgJKxBe3Vo6lPvWHLmtgUFiYyRSYvHJ311tLKLP1H+Tl
vF7dJQxt3ebYcf+nDwZBFjzT0FbVu5FJRc+y1/odr6isYjXygIU1la8d6eQ/3SIBDw/fUG9ntLI1
dD2zCK0b2iU9IgAgCcFxfKM8/ebMBfm2Deqn6CyPs4oOxmDxwXFIJd0TgDX4pjYowInMHGmFQOrm
MAGo0MePs/YmetppDRWYP0XSKahGyKMSFRxLoPUdOTowqYkmgiFVFc+0XDLXECUNI7ppAgBbGG90
1o8mnWEYCzLDlauH0+Kz80eMcqKm8s/QEkjen84nivQSbTTb6jPJIUGl38aRrbUgDJvd0ILffWpU
LxVYQDHW0u07j9F2Bv2xnkiezAMF9SFXkPSKE93Y5i6NKSyAQv09R7nRaSchnpkoO8Xp2YQzHwLn
Fv4+Yz2a6OcLl0OfEUPs6RdXb4Dpldlu9J51mMjXzLnoPo4lvpzYrF79REwwY+PZmhm134nRYtOn
z3RHjP2DrLwc5EPDkCmaElGvRs3S/7Ti5GULos9SPe1gE7ALvYD//c+F7FpppEJDbaP4tadRzpDg
5dzCRFakiKfAux0lZzorYM6/mju4yrmBIaReuW+ZOWViRasgUdO5bf3PjV0ihOzmWcN8ylKfNTpK
nnGFr6D1fDANd/L/sBgSnIFxQaTzcxjkNtkTfQVQUAgFHI9uooA/XTIqe6/YCYGx13liSG4fpV72
+zzhr/yyCCnvlhCSvZqOaZIpakk4uyWn5zDeUibbIwkbRsnpp28lKlRNv/8ww4Lxv7R0l6X1VKhL
ovZpg7bU7N4SMwBy5DYn69eYYMVgpLbpTIhz6xwzAcgteblkCk5ObiVBMhrnUdqvctRV8IbDuWWU
RgeWV7nuay859w9OHpmmjdJvXpTzcLEJcRiRkJohocxj2JiErbHH9E3kbjW49LTGJafH0/zaKP11
MssxGGEDzVDWSV58ZMQ5In9lWB3gXNxgvDimIjH2LWantMG8939dvHoOCo4APV/ZNEDjZb+JnAN1
vaOOuONxW80roDQtFsyL1/sP/nEB5dUR0moTKal5422o1eaY+gEZpFfzoYw1ZCiea/ixujPwibgi
Rm21AfhGN6UnRDUbWfmKX5jkWfpXntpdu4D2q9uj4NL/fSYBHCegRRdlRR1oHTubSMXRMq9pCeZm
uQTTT7IrTdzGr0u6lVTTDrlNyVhkGC/iwFqSq6EA4WtIJC0Bf3kUDta2FRuZJKztqOj2Iw9ZluPk
V104toHAab9GPIswmrmQwmUjnETRw/1sHX7LGp0iHgsmZjhCHC1RrtKd9Hf77lKIlYAlhOFv7ci6
DT0JaDhMWo+rhHhYoIohrAZumZb6zGwMskuBIWYBTEfDg0GrU8NQhErdcpkTq3Iix2z7Svr4dOLb
Z1Rs5Vht6S+DVz94Eo2cMByVYBEGnD2pa2uFKgd3cjX7jtfCcl7UWstlPZSAdkaQmk6kHtbyEPIp
XaNUEzb5C6aGnbn/FAvTQk5m3VnDHhmnpwilSbQiR1DwrBCHiEMwQDComH7OOa+MH8ZZkqisjIQI
IR03N1HTT10Q0qxK1RSPHHXtcLKLXz3cgH34qQZ3ojPtVeTMj2/TG3g+okDnYDNgUZMn1Ybx71bz
bGspO5dQHy0pmY18iCegSavmwO5snBH8m0bx2xb25qscOc1ziIX9Fu+j/mLB8FzXIswamGRpYbTc
gdphZ3HMKHBelpbpGg6Ixt90n25QkF++QqdpW5FjUnylFryCyS6eh1Z48GDh/mLUP7H1t+3fIUbs
c8UFwF5fBasWZDkPXlmv5aQ9msMVcFyXt8IxgWPh/EBb41FmwYqJMQOuN+P0IqEGdp2YsXxZyAA7
DbY1beLUT9GHoe7kQ7phZPgJg85M7CsQ8ATJuKQoA6bL1ULlo63cBH5vaRCyr6/VtlqkuK9SdMr/
WZcv1R/rQlU4CHjiNCh5Cb2v8+SSI/M2xc+GTmnwIeVLbtiCWuKdVKgWDBtFBdpxHyqBSXnhxHFg
Kn4XDQvIfJsxXi0KlDxC8bGuDlpT3R7/ah1rc0YdinjU/iAvL8H3Gdr8OFhpvI3H0Kk1dnmF42OR
KgxpgPty+Iv3NzCq+NJXgOBeuct/ekKaVGPzRSYR4tXvw5IkLhH/Ez7NZJayd8LKGdLbYK26QCS8
VWDorFV55pwG2i/BeVG6s2i9zvEYXM1HAKzGy1J//W6PrDfIV4UHjmOv/USxwVHGTzrOFyWxWRhG
zrJGbGefO1wpWahqPbHnPRd6dph9uWBt4KYvq2xMRgsotyXc+NZOyET11C7/YnV8L/0ayoORRpuO
cH6UX3wKaVBnRfsBXcTIO72NpIVMzrv+8BoeeJus1TBPH1fUQ+NOtqT+66FYc4f7yXJxvSbadj5e
otCU4QNB/4zEFH1qRwS6jG3G3tf5DmadUkQ4j4UOG0iFvslnFEWbpVDwJcTJ8X10UiK+Pub65rMC
ctY7i7JmlKScqNjDSLZgSgt2PTC6//KUeXMNZhR7Gj8Lbxr5k99Dm5NnedyvaBKxFwvy77z1k8LF
MfR0mM5WaC9bGu7ljT9X4LaMCCMNUOSZku3zYMdOJGGcB1w5PgNF4u7Aw919pyKc9KoKCOjDdQQE
C6aj5E6H7kX23uThq9AQQy75BWrV+qDN1N02+kGhJCXI+/LlwJtk7I6eituu88m//g/F1Z7ahcQM
7uunGEr6jBxPP6yrS/Eb4tGq2+P1fwBidtelKkTxJhxewP8ycCjvCBujbMBdIaSLmCKw3ClfD/Ys
KxmmirVFnK/cPSIpLLHsdQozmFwoBlXPO3OxOR55DQ/KfOlXS8A7bCmeUGJgj88+SiCw6uFpB6Af
uzzkOExjrMNTL39Rl7rBvG7juyFd3/Ow6gFt9wFZrcz+5fPUyaBx7DEEaPp+1SZBKHmCM0C01iPn
j9Z1pLvQNQtBszB9yMwofv2QQtUSzdc2QBmafY6UVaY4tjsZaKQN6QvURWhhTTfOtFqN++Ffwlre
xGZegPVfe7G0D4LjDQUgmLh9EQL0haoXuG9R+HO3/xR5D+cYCtdt7YanT+wVaJPCoIOYgdmaG8UH
mUPrP7x4Pm0qVU+YMdnV7OX1QsxmaBsSl9F2lxppSI2l3DrxMQRZS3JFiwM1sHccp0tF3zq9mekw
ppReoTumb2cr3cprXQEdqbVAq8PMJmBkNUGDijLq5MaZ/JsLoAe3iBXOcw6hdDbXOIkKFDXrOKBb
rpF6vlt8HJsR3hIvC8q9IpBNXlyJPQi3u+n//con+3pxBuuB5QTMUuLNdkQSLtCOuHfV4zSeSiGj
q4OpK4Dl+LIRtNjigU4f+25j80oOCL00a9LH8rL8YEaEHLf+MWS78VRszFNq4zNxVY5GhvQVE9N4
QJFTQ9FvJxGY9uBvbR9q0nMEzKzTIVFaE/uSd5TPWS3TuVpUrz5TJcHL2wHdgwad6+Hg/irnp/AH
ij4kZHeuXtgXtpAtzcBDpHySuEjkluL79Ohij4ZUrbZLJ62MXsPLK1fZTd7r4qQvWaDU4wUFlhKB
o4oQygMH0mgXhzxjtkV8iMw628IEoAtbokBLQLkQjTOdCx4fdaILT1b9ZPRurxijGIOEADUYegoz
YB9atBTOYvJLldU8Kye1hPwCnyPcob45FYsBfjDljdaeoKZ6uop1yTp2T6LHBVl38JEpD21tE3Zm
9oDd4mdkKllfqEdDhUuCfzOOvRrmlpkEDldOVtIisu6DpCPdhwHrHQ8Nkfv5fI0zscS0gSwtLHNF
ggSS/s/9+RuxN7o6O34w36uF0yDH2kDLuWW8kwP0Gbjk3xsyj24y+L7uMj1gxe9/l10eabx9mBlZ
zt6pZ/6SPNkEpJqd5HICTe+TYaFiZm5+dubf+kllhXKPPQ4YK/NbXbSHIl1K2e2k/y4e/vVpIxNP
nVVD8fO/sBmI+fS6Wa1wPDo/45NKzBMHepIIDzvJDuRftw3/4ddxDEfAdRolzKVQrSG/8/rgFLxX
e1LrZ0cdlijCA61BsBOi2oc65CDsOSihqzdOkdqxBXOQt03HkcoATT1bXPllveTXiuCvZ1F8/S7U
MfxzExz5sOp3D1X+0OJuxthv1xEGg7yooIF0x9a1CBiN51+BsxOKMkcxkTRceWhlwyqtapc40O73
uQSynbxUDw+ZwD6qvVQu3BGq+h2D4H+5jbY+0Kfn4hGJiaio8u6lCpzwmohlcOE1pwwXjUr2jJEJ
vxYfDuPzEgS/0sVF8oReMbJr2dSvjj7NDvf8Or+gkmNEkuq8ccKng5dlJdHOiBN1SetkyqjCsM0V
+1lxOfoJhpJfm4QAz9kqeWjaDbjZvQtwlBXk299+WVKdxM8KjOcinrIDEzTfTbgzYBTLskkzUMNa
/iZrPWoIXSJ32tYgGjrNQc5TWzh+uvN99B6n5+mUbAgj6G5bqUSUTfOq1bimtgLQD6baAl1Mn+q3
8avRcJB8Kio8vcbnr8zjy+9a/+1158QljMn9mzH7uj9kjl8k4Lym2y8Z+c0YB4n1zplLUz11Q3ve
7Dg9tGV6EYeHqBsbLvnkRvT8JGeNw6y+H0sA1gyk7mD6Je0PiPpME9GNmZtrskSMkcGuQn+WLP1h
JST/D81GydOoZj4tv5zjJpiEEGHmkDEfVrCGiMVdmetwTevC/036Em5NvtG9GXO4UFb+y1lN9JkP
Lp8ygh76cLS1t8I2Z3ywI+Y+Ylj5Byi9/6/nDLOu4i85IAvsSDDYARM2H5TiUWkLaUjuLT65UWYI
UBNg5l8lFI3G27Jb3Ch40aTbvHHZx3tY/+t3P2MkgMoApgtnUlZnplWzS7TDw5paZYVU6+7uksop
uZl3rGaP3vawb445j0Ed1mSe75wgbp9+g2QIE0qBCVkKJNafzV+IL8YeCvAwO+HYFJoCrKOBXdjT
X7pgFi4W5bc7b9Zc1zXgLA7mQZoWkl4GP2m+S18Gqavvd3yCWQcx4cTPkp0PIUOAMNKV/WiRcX8/
hriwQ1BTHZq8UO7t0DXkIE7T91tA88tRAhTSOaHQY+dMBUn6fEp4hGaEl3ubDTVTPbtdaWFfy0Fu
KAYySaiVR5JILCG9/ivOEPnF0wnln9kzM0qx0IKC1A+GBsFskTodV9Orxfr5YWbhUKmK6Cb9R9qi
Humb+UBKpkcfJNmwTz77VwHiWGI+DEhYH5cKvgAtFSJpW+mpypqQZgSnK0NnufdB2LgXUAHkIImh
Vm35N92xT7JQv9G9dDUzH9AUpDshaWv7sfXEcyRvpe78nEZfoFPn6g4zhhWAlDEmxotgga3OtmMs
9ytjpg0J0pwgpsYHnd7M2RF2+AVkLANSt9Oz6jhljrbfWl11Zc1CodllUWtiWvaNEIz0KxN8Bdfq
HBZXNSp/E6UMFXNmz74QS3EtzBQq8GDtHcIhKy9nHQE/P3oZ7S9jVaA4F5HSjUsjpTTCFoN/bjk2
ujivJIG+A8TmJObjb1jN+RntyEs8WQtvVkWpLU/0PiUo1HeGK016Pc4bW3IMVznfTrDTQ2ImXqP4
AjVonFAdmx7SBht7A3SkgvOgQ3LAKP75eJADCe858KaGzQSHrWrzajemJpv+7R1z3y1ytoQq7R8L
kAvJlTSSmJzSpiwWV7rD0Ru0qY3Bau/EdoIrrNgW+5XdeeOTB9s7Gc4cVG8pLgHKriprmDasmluc
I8uZu1dJdINdYzxM2Auuq/A4M5GapUMfHKs/VAcQWfl8bVXVl24mR726MeJd6DXpkgYa20h/Et4X
SUTZwuGgCf0uecaCYHm8RwdUfBcUmUYQ6n876IweCbfhUbq62kQKrvWbgp/eskyw8jhexUmb8+vS
ldeHYFkkFyVGSV8t/ugqhfcgSLbO/Gcubu8B2XbhZKOEF0c/399cheL8NaYgjOCNCpbmEWNj1A2b
/5VVEveLkLgyBtNmdv9+7oJbqA1eRJqFNUHnT1UUR9fFF9Ocj2RaTY1s5SpZyfP4ibwr0rMGNf2S
sTxgeAjM86qVLW/PR8Amfjngmx8OdBS65dQLv0uD+ZGNVVmaNqha09W67mUMLAwrfwlInEmz8z9j
wK5YJUGptUeurwaH6o3CBD30IAQFpCZ/vGnVwbJWGz2FB2b6wOL/Wb0FxQZ9e4DIPSoRc3vI8v2X
eaTH+KXZ0MByAxH8KtjjPmvJ7rCA1MzUpYAcmg+FTsE2ilbS+lXwkuYeDVJ9kAEjzzjj/JwJl0ov
HUT9gX28QU3eORG9lQh80OWh6e2QmvDsrtq1u2aqCqrWFjZpS1bvMkIm9Vcxzxw3852d2d9Wnu3g
6z2d+zb5HrIOqvr6FxdSXqDVkFjn52Iwz7PrqMtMB+qaxEuizk1sMeFU0CGqgZfdaJKSfGeQuEkh
KrYCbFyzUw/y5ImERHEZEhmnL6CYckv7VuPMKilL2P3WLT1opBuhFFc9lUthGvRGOgD2KcMLOl0l
1pPGIiZvHSWfgoF8DuWM1Wbvlcc3MDvvfGrPPSBqic6THhxV9T8OH7iYx6t4COz4KnF+d0dEzCWG
CQX84+IUwintkeNNULPQMV67cnH5VcjFhrkmb+3WcLdV2aUZC0iMUw71I+Rlusm/lafO6Lf3Mlks
mV2GUp6IzpRAL16ZhSxYtbwLlqjJTOz1LWQnNGSL7kGFcrW6cbpqmHSSj3aKiOpzDgXRk66sXfZB
6BtIZ0L43ollXqrcAJ1njWo2trvEHfxRH32FPfY5HnaEMpD1UCK5oGJGGF21y3S07DOKE1YFCdS7
MmfmaKh03p9+qz4uYi9r2vpqIw1z8eavpu+ma8EmWr52sDLfJrcg2G8EC2uAVwb/TEI2xU2XlyAf
HOeWIiaLCThkpiiWllPeuwtfVXu3QKfnLhBoaiW/Wm5HrrnhFW7OXfY48y8tZq9tNHxZAbj5F+ji
v7mEJa4PymPvrkrXTZjI29bh0NEhaGcT6I9hOrGdltJ0Ut8tB1ymTwIp9ar2XRnSyfiUENS79Gwg
6nezWH2XuudhyNxKkYgxd3KgCpDHIj/9mqLl0UMaYRg/9IiFN6GRig5S08Bo4WKEhX2MqUKTofl9
SSXPHSn/LbP/ijG/39xZgimA+4/JNMJlgC5nj1vaPFWZ0RR6t50I66bOc3kvYOGYu7lQb8yqZ57C
gvyk9V2db+cPAm8RXKZqE4jh3ci+SNrAlPGTrhIjsjjmRk5B/5l4wTaaLIv1m0d4Qowsy8kSy/Gj
1Goov2jOSEOF/OLNdzgsQJoS4f57SOBZmfU5m1tE04ozd/e6YkvQs3rt4TvGaD79a3scgGG8Xiic
ENYZy8AA3JQFoCwxvbYvWglaDlhX6I0HNZg7+yJOdYnhQf8WGgVoID2lp+9LI3wNOMMhEqpTjDke
cYkcYuuj5e0rJ0CNElw9VkTEBl15CkZBOWfwbJtcGBfQnK2l15rJuyVWs4Y9q5bWmulLzjMH62J2
N34RaruchCtGy8dXHlHbXD3eUGVkmC+JEbfRFl3mHucCrjo7tr277ADSdBJsg1qE5N2HiSfOFLHt
Pa+VInT6xRHWWqzUcGDikfncbg6IVr3E2iVudxL7WoZAkU9bb1p7pEkbqHlKr9LCzX7vkk9SxsGi
C14oIwUGyGtjCqnm9Z/4/BsWs5XgsY1fBlD9fZM5fChs0dpemNQ6O6aI9i3snXygF2fln5kfpSh0
pgB5Dhk5OC3LMYsbeT6IVVPFB+3CdpYjSZviBGo5X2YpQ/QteMAaISUAIVC//O8y51NTl9Di6nO6
j2SxppzVoXQw+ihM3LqsfVkJ3drFxo0XEnyhSCwAtS1VRbMH4SRt/je5+lMi613zj0A50WLEgMeW
4BQ8r3XAJF0HHyTUXCg6AlN5m3D4rkSf3a8NmBpLHT8dB91NrtOYvsh0210dr1XIIJ2jWPJMcW00
4SxS5fYUeZYSaOlBgD2rbxpYPWHOd+/H7gF9uuOFnoc/dyIkU1GcogDfXzOHTlhuZy+oHs6ez9xA
iZQGs3gejeno9IpW+awWku2qL+1ymCCIrXL4LLCaaQM2e634KGdcs+VD/L9ZQuUwL3gwCzLL+vDZ
cBKGt3CW9PRvVa1nNx07nTwxFsISfdSfrhBBo1tk/xwe/IFUspR3G4hH83I4UiVp1x42lMeAOarl
CMCZf2taAxviUqeIc0VpIwx1inqgyq//vNmI2qO10+gLXdg/J4ttwF8R4pQe98zEw1p+/WQMgxrI
UscvwKg85/6IEsNseB+McQJ+ZQfsRDw3FAf1Q4qzl34nOogQRWjU5s/s0v2EVtDoG5Vb6yYN/VY1
wnLh0Y0VRuFGvaT3L6DakNvTdIpOm+mtGDiYzo1M8UM7IGJ7SFw6ulCp00coiKX2IefLRLE2yLxT
V1IrqEDwYYuzojrDJ2rFLPDgiCQ9vEM/TDuWbEaLQ7h4MZtq59nsKKbn/4W/6yS5cx+2bXwfT72e
dLpCosocYa8XSfFEMDtuKlOXbRUEQ4tMWY5LmDkRPjLn/T4M+Lc+TYZs+cAPPfILBt+SYl8PTs9v
beeopwMAnSnKFimBrqtEwKILR4FFwkRozzQsv/ZjpTszJZtU7u0RcnZK0YdQWXUKvm42Oc+yZDIV
jrZpvOeTgel91uvO5YvgAOeLnybmbC/rfp1PiRugbGLpkYLHjIs2m8ZRkli+Ucc8W8K01vCwft3A
q+cZezfKXFJVxaXN92MF4G8tNweplM69qa9xtT33rezIIOrwfy3rmF/0cEG+fK5tm/MivbYmaIHH
VRtEE3pY002WWvsvbYPy+ymKGfhzUEVUvhiV7wHeYajIw0ZtQ3ZpKEdZbibIhp5pQzZKkhN5XU9p
mDWJA5FHaeKtYOBoPZ6LtMsCoFz+imC5ZhslxZ0etPwPz/asdICk4s2J2Yc33TVkQ1nw3HDywL4Q
6fTHwbwcd5CGxu6rCg0DJEIrWHUfUbpElrHscyQRf4VsKMcjQ3s7LQJM9rZ2wjTrMJwj7G2DQRTR
I+MNc4865HocIZPMNqg5r+wD9mHlxbw4iUEZS4TAfML8OqtNTQJVuqlpDdchLjkrUZ3VjNuW0ZAg
8EqY90EYu4uQqTdX2xVqBYJ2MWBPMipOJaLni9yG4tXaRVV3aYciT80v7DwhjkZLIaQIi0u5VzU5
1SZmFd4fJseQRhzDsKmlVI76gI9H9qca9vF3ftgXquacXZ/g18tNxsPEtSy/yMsstMGMTivCJ1kN
AwxplNqiQ0EKkgJc83P7jK01R3w2DsfpqoHBeaRuwXKjz0HBiR+3TKdOQ3lwyngkH4jr9E2zDNdr
w3BVyHLVVj3uODxUsf9nhDQthsh5jV1DXka2q+JltxK9HdF5rNK441ynCRS7JHgAduQW6l8RV1Lp
eE9pD1t45ERqV6mvg3HxI1tCcfkqSprrWIDNj3wn7VT5hv8aYtpI5mgyF8LUar9RUH3jdAgPHPnG
gLbMFBkBAXQW0/QjIEmRW9jKTyXYuNF/tinxmE2HBGCqmd9LxOaE/pQGWkcMtqodzYrL3OYreuhi
dXwQjHiLNz8pOv8b6C6d8/iuvGPMSu6y3H5p/nFBZoJUVYk57PIC9hGN/bXgnusLt6QooA6dwy64
c1ZVI7M8xSRd+eMEsnwd+9Cb9eiubAKV9dvcC3f0K7xfpShDFXK7DWprzm8kle1U+y7UgdBIam6U
4tmjUnWpRr4jsJtZPMePXKWmNcCKm98lJBNAsxCgcNtmPXm49L5yYHC1+9QVKdW3q2NxUJt9ezc5
YZ6mjU5yrurqM+YG0cUJY2BsMqxjCfge27B6OBvew23vSqUcCqA2N5P+B1EID4F+UEI3ayMI0dHC
i15JBlZpszaQLLIJySG+begpSU04/JXIJxnxvy3Ttkr0rvIj+Uw1sCGxUz6oe190X7z+p5OKrv5B
GlJQ4ArLQjf1VMncJexDLvgydte9EGga6y44syG5zO8llCQSOcfK+t9rdbXWTrSolERsydvkfPqL
qsG5f60RPkNjl1PjQtF7YmTOE2O/5qoTpBrwW34eBOEVPFfiWpB6/XfDkC063ffUiy6+jOsIT/Qd
p1/77LGb4Rb9sS+iwxloPLTWB164h7khzTCaYsP0AQVHxeGtAkFrelX73Su5kASQCnP2a1B4G6YH
PEgBx32nu1gi+7AeKybIy98AX09/RY1XREOsf70dCsL5MoXdMvUbjY9NIc3y3S7Wl9lMYcB+uK49
2aYDyBrKoLGqUA07LXNozSI0RVow1kXtSiLStOM9cno8Jp4i4l9zq7GpZfU67wfopSS9yGPdVeNl
Nq1XGGHODOfpdsOX27OVCWHh+7NF7HqQ5cLMH46+QwPnY/tAMvWeT0earVpNy20Aqz6spwBx0nNF
UvPj7OXRL23UjdUh19HlLF46ZQaBm7tD9ZaHvG/OVxAbbMGS61/YlFigUcKgycl5lfwNwYm8uIWw
Wzxr+kQlM2m+DOOXy4NMA/66qnrQekWlFqD3A6snYxq6PrZO5zieAodzBQbA3rBJF1exQGtYqJ9J
e5kakgyzS8mGEfsEwZQxCqTLjDaeeSIwkEqxpqdSjC4zUYXtG1OTstZ4ZB7hXYCYcO5WyVsclTSp
zN6tF3JxA8Lko7BuRd4kdmT9dW9XTDcrpbUStn+HQrEF2IozW9qCh8nm3l1rQDAOOl1rIX1gPhEt
1+m+k/MehWzghuaWhE/AXYkHKzYgBiHLiw0CTytK+anGIwaGQvzo73LNuKJrcPUm/tB3322UNU5E
9pFGaXKBiaGjfzYglzExmZBf7w3qBDw2WvcjAVFDlm1qZQAJ7XXgqfQ2cTAWafSSEnP6lWlqjmhk
//xfxu0vV4kamS7RCxtDpYmhTo8uoWDyYa9uH1Br9rqdEG0zpS4jRqhI6LvvtFjtQUiSVD5c84fn
cxacGWK9KWbh+TdfXQPX7Me34W7U62xHSRZkCjAqkTY8es+rWE0e/uh40AhhmpdZrgq9x7jCbV7F
tqZSs87ZQTiZL9TO6uYhD1IBUXS6wBliEj0UeR8qr6WrNGrGW0jiUrOfvpwKvEl1vIPmGehrrV6y
P2L87PxmtFHAeP9yGgAubQJkyNkDR/bK8X6ZYz9OpJOrLre2XWrfjtdyHlnl15gFHllK0Fe+ko6t
eZButMdz/QVYZApERO1wlsr5Qan013nF/doLV3SVfxDRjo0uCvUgjtlW8STuPsJySJbe6mM3onU2
Hu5ynTpXbYUz3/Xl9zraIN2ocng0zgkj/4lXYn5gfPO5KsFkE+FZduIinw/8bXvoZiXgZP/EMs4m
TJ5hHVSU5udi64iH7MfwF6qL02gI3CLdHuR7uuoybLpy2GYwzkoFkmh1iOWtdFPca6YO5g0gvtr+
uc2yc6OWW+Qcpuk+lIKu++LQcXFBL9QYjzaOt1P6eZBiq5gayLItkQ5rC19wXL96nZ1wwp5m7inX
R7RO6lsrGeWbqzfUmEZyS6iLJRhH7ux0HzUwRohRFmWqM3ckB8y3LyYkcZeVcWCUIBaOwYepEuu3
HZWIzTz7RlkkHX77vQ7mWJoHY1JYgNCoGg7jrHQ4yPDN/YJrfqxeQI4MtsHPYKnKH/o2dg6cDw/S
emK6Tqlc0IkUi4iPxxemyaevlMcL5hXBuNfeWJA87kzfFFv3X5nb6fvtvoB9H8wHIN7T/cfVwuqc
tGkS2MYAsZVYvG/+1v6VxwWABxeo2vC5G86JhjjE2L0yFj4NtiaQG9IG8YBZtwNXIGUYaZidSdBO
XIciRhaoZlt58/jNDEIH2M1ZFtSROWmlQAc+Jxw+wUkJy9tjf/jztgCU0KF84pv8BnTYmJ13674r
DpONjjyBpqJRRxXdG9jEtPeQbPEoIL/05JSacTR6Ifjqbu6FLDuB3ZGpz71ntgih9U3qB64DK/XC
0jMdP6v1Q0FyPZeDPgO5o2YOEoEh75PmD/3AD8TZG676j8y6OFTAOHXlB/dCAJ+48/I9UzSJxfCs
xK33Cjw72Au3Z+XLHD2wZMmoYzK6MAO3Z6tv6gcDrWm2py+XjvuyWRhH+XzkW4IlMyqB/pJMTKdy
58zbOBWoF0qUYGcfgORSV483qI6VIvSDvLYncH4ZMUyA6I45HI9viJ1OP/1Je/RluReuqfc9WSGB
qKhGR5QdUVr+5/VxoMhNM//nMsidTR2QH6WiGHk8MmmSXlgm/yilGOXNvt7tS15T7I0d6+hjTwxQ
oLaa34R2KDGEYJtI7LKhQHEHQxKtM8iT6WBOhvv9JQUB3hSwsUldt8ypyvu/WIhGXdhqCgjY+44I
Kt0l2UdKjCOX2JNCWaITv3ejEgtrJ/Y7qOKBgVR+IeptilWnL+CJtj42XfAEuThhKNZ6ffPDh4Ph
rDoZdgbdWyHAV+ONC6FMUOn338bd7G0N4cr6Zp2iRTTipX1Wl+pBqy8UcRXR3K6WqUqKoKFe9Wjj
JwG93u+Hfs4MYHCqRi6D5vgguD3zb0C8n7l06xBD9qsIvAaCBm2wUUTpHee3WODd6ZTZleGWxI2s
K2wAXAY+bFg5OovnFfi44NgaXoVmiS8PusvMeJff8PZlM4AQ+YcBnW4iGVOslaI0LrFx6oKp+ZxF
xxJP+PiZIAF7npxEyZ13aIUoMagHwB7XnR2BPmRulE7Z2hcUojJlYVjqUEjOCgmXt6qKJe5bHSqq
/3RMoHVFzuXM3zYzybKF4dW7PvN87DQbRWUlCSOss4ZPNjs5rAgBNo1WCMKPikFS31MpyahBUW96
4HzC1WTI81WkAe2vuOvD4vXxAPTawyxT00e0ZBbZEUJIY2VYT5L3hpQNj3KE21/6ezfSRaLQ/ULZ
/wY90Mn2ps9/Of3H8WwqB6M81nlQdC0nLRs4ddAAcTpCloXJii2byWM015XledBMvlnoFrNeWFT8
DNO3F7+btFmDvir1mQnhbqIeStsCSGTwEZCokHPEK0g3uju6e36j38dV0tj7idUxqglTa8NX1KQG
z/nyR+MUj+7XHf8oZy0RU9Pj+FNwH8JWiqF/vLuo4zKAujzlU6UmM5lbVpDdF4ZrkzgDBiJUZPWm
HDTuZY/1ZYk1LF/tkFVevMEHUCTZwvNCESQ4X1VHYJID6d6c54PT3rlb+2Uq69oqJXeu6qLry5Pu
VM6/nPmT3R42QCAeZcyqRkvnXY2nrEWkFIBx1NnjZ8ndeWK7fDbIp+ou6SMi5NqdeBixwD+jZ18x
GVQP1d00bVmE8xPjdnPuFtkWhthIPy/4mc3TiTf3SbI1KOOHOSlEFrNY+fgJhowfYd7r7oQGvomY
Uk2OhBBp9QIhcmqGMG0K4DYsk2v87tFy287Kmd2XxJMs8/lrWVESPt7pUG4NTqo+gGkcGbIg3wEV
dDZApviQ6IwTgJbW3rJ7dkFnSbh8LEV220SDKVr7kl72Wv1YlZQnfzIrMkL5aAd9+qlLJInZWXro
VGFvVRgLhA31nk4X48lGSufxLFvSFpbldm/hCg5LeO+6xpuo4uba2U12/f5jJJF5YvYvX+DRWK8k
uaGPFiId2S94hv7tKzl44Dj2KBr3UXeZUVT2LmOYAKdEH3Q44o+vPckwSHUx70FaKB3CSccMGKLv
zAc5sLA2Fip6rNYKFJ8a9fScorLs2+VYb7YB0K7HBpDW83MFfed02RbTzXSnP2YBruMN67ismIwW
d2A+XKnSdSbbdvE970qMI53IsOmFde+2HLMsl9FnDWpYeqGuaLxrbtqu9MwMUHSlA9mrdXlt90tt
mfQzEAQn3INTBeOU1IjDsxsH2agL7RCXmGZjxLBWFL7fQcK+81Hy3y8COQrwFNyeqJqlzRUjCNvE
sK6Rcii1sF30qTMYcvuoXS8yO9ylVCeQrrul3M3JVyY2RPxPHtLHS/UH6KbU2mcTDef8uyftbU6D
eCQDUlWbM6wTi90oQ65xsFvcj7s8WMhTPkFhOuc2Yi6nRA2WDd4+XMrAzpvdTmWqS4fwlfeXsF6E
g0JR16ZGpWSWTqfFIm5iY3KDBCgk1HDL9KM5JGR9ERNI9cNUG3Qg4KXRr0ks+hd2IA2INbAQiJmF
fys1UPJgs51kDTNlYqeVYXUWBnivfaxPRil5c3fFczOGbBPDJSmVyJKIcVWW/K82oTWjs3ZvhDes
MTIkbwoiZZ+fr5cGKH0/Uhd6xb+VWDhAH9xOX9RDziEaLJFBd3Fs0lnGbMJ+nKMW1rZvmHLFyFh2
ecgCQdte9WQzbvryBWPTBlt6jA7ndAEiRlmfAN3y2GrdBEk1yuXWg7R4nu5hvArpjU9p5N3+VBZO
iWSiSyw2Ep/sDKfA0sFwiu2kl4FoRaflPXMpmewquFBCFYXTsS0gSsu1KRCW8GA2rbJrdGy5Nul2
eqhwHAHk9jF89PlHMGP2LPDtxIePwIr44O4efUxPd73bP7vX1RPvem+sQ1rrR6TlTlBYur0yjCEM
mKYO5bkmZqRF6GhouWm3oDf/hGcullW7w9pyy20KtbT4N/VN+LQHT9djvygGwdLErqaQEs2PaI3d
JuTOsH3RYpHU5vQODfAS/QMXsTZ/oacB1auCTvFCvSn5AiF871zRtU9ghxwx6DoZDeKRm9p/yd0g
pu8BucoXFCluqKh0pFnwIjibQ2/1nt4VcKlV7L83d7WDfkxpcshm8fV1VqWPKcmwnRkvtMTVlDOv
q3kh08hh55I9IcLzSFj5PAZreythm1ZnbRGhR6Ez9/PXlgvKFU92lgx8HZ8MbvlrPu1rhrMeF0mV
23p8g3c8Wg/NGonMny3QCZqzzNN4/uDdFw+Qchuz8xxJSkTcP/5CC9cB5ASiwXJnTrXVpzjHgTZY
4nBYD17YeKDGhTZrJ0BnQUzq5HrXEQPXy+ETxmRojbky+eSpS3BA+DtAMVWQaLD/JvTBf7g7vgAK
uXttRHLp+HWNoIwy6aCDno2K//vNRz1BjBIPGSgXeGzh3dmADyulN4j2yBtG6FrKC8hpMt32EYts
chPoycZLOZIVgW7RMMKL4mbnTj2tE8N12JrRzfT77rhi1wmreLGzrgeRx93lc1yrNMmmc0d2sgtD
mPSbuVtVqyRclPTmRMcQrOHhWv6mNlVJtSa9F8DEUwU9I3YO8hTuOCDcnKR6DU2tVGp1Ne668Ob0
yHy6QnCCNslaU5ZE8YahfONDRy+7ymdJGjUW4V8lSLU3Sk3r+B7Y4cCsBjYf24VD648tx4yKBvqu
W+1v1R463N++jEI3wI1wsx9xrcpnEXOWJ5s1oON+/oSMxnUPsKsBT6mjP8eGrdiIiAQofl1iuBVj
x3EcP6mfcpKjffzKU6Lods+WdqPG/G/nUqvWo7PLJy0p4HpRKzsD/J4vBYoixeNAWW+LAMzoCQYX
A5/8UgE52f2PXZgQWwDq/cwGWhdBlbkYtfpjXu6Dh6fsvauhkm7GUcisQig29M75cGChPGVIJQD+
8lgxRjKsh6kaUMpXgmDxjQ0E9WluJC5408/PriTUU8qHsiTYu8PY6Q8vjU8dyPNzci0LhivMe1is
vUFl0vogvrn7LkGUTP1tkquvSxmw1Z92i9fg/Au9ojqUq56EpBEIkkTNaKjYj5U0eWpe9XvN6n7A
PnvxvNhWswyKiRTKurTPpIpL4kEOIhWsQDG/RlStYLjjc2XsTEbzNwgCkxjlkMnOeEJIzyRIUzhx
3LtgHTSYA69h+WzV9Jm/hmb1XbBAZxFHOHj8F7FZRXB7LMJPTBmbxEdPjuhwHy0miBpikzhLGxdX
QPDsfs4MYr+6GkaUq5O0LdD9Pwc15djTFbhOB9R8ihwGM1nLMrjupPVA5G0JXy80FP08JMnCTfYM
yd6zyqKSF9or5po9uNKGkr6opZcShtUJAkhXmWAlpRKceYGgkCJl+wZJxWYXHPo7CVr6aKGw/R4Q
M4nQFQuZVNOJbwaqVmpEcBTOJ5TpUTzqg9b8vq+XlapRi+aAf95wQdG/enXhnwO7NhJOcK0Sk5PY
BOHl7kd2aie+w6h1HVuMv1H2idc9gxr9QRLJaBxKoWInT++j7brJ50m+EakKi1EaLkPBd/y5vN8J
jk5W1UVEifbL0fBll3/uWEfQQ1Vyzxxfm+cf/IPciZ60mDeCweKOVfKiw7WP3xpUtsEgk1Cae7qL
0U0LOIwIfF+/AX33b5ccD4eJa8Lu/zjDHhDxP7135eGcaEegGGc1V+3XmmKejjgIcnbDOzEYVwVO
flZkgXzUkQ24l6gocC4SAT9L7AXxPNxDPYZK5F7I2KWVNX0LTcU+kr+eL9qhKrIpYirtebev/frS
YJUfwLVmryuXMo98PlXHwvsJozl0O8/NruVVN8mUu8lOy0e44E8vk9aog7mn+/3X25USlhGetm7x
gn76ZRMDedRPKoprdq6I3U3jxBGNpG8KcL1De+Rtw7BKxEMcJrNm7ZjgaLoicPClVqOn3NjSR0DD
TakMB4Yu2tDt1jBFMMgPHLAiz96LXYo11mMSRySWVNo6BnQoRhcnVmJ5R5Hk0tEMlztXgWkdW+sh
LaxqN7PNmRng0120eFne+63B91CUKboLX0PzVSTMYefiaMY+ZaXxAJC9l1OJWXh6wI3FIntbjRlI
odYONYTeRmgCkFjouFnYgsrELWNkC2UeqYYQ69tqLkRi5JG57IR70gIAVNVanAQp9CgMSa7xdQIY
l2x3UO+42ZlnyWf9Ohloli/04BLxuoYBWZxZB9eIutTKYubED9MvMptV3QAgij4JBdir79wKiOOC
Th96vIeTqmvTQuVYAtoBbudsDJEe0sy+fELy8e+w9DRpWsWlquYMaAA7tIM0O07soYHPJ6r54q0v
Es8jyHvS1J8m9njZmCYsFjWG6bgTjNRe7U7lUlzwosMwnh1DCjpHMVxt2RBOXn0RDBHtXREe2J/1
Vtd2pD5y5y423CzDmhoKDWEGMxJB527/1z02XrVZ4wV1qrDyeGWyVBCrx38yGjfYG21TcBnZyKfC
YWoSQIE9IZAf3ks3TBQW3H8bOrmn7WZf+iaT5yIQZs2YiBFtyP/knhsLMlIo9moVrvfjs4BlTnAz
zlPOsbr8saYIImwYKnEamFMSu7tlWZswpAh71N2cCFEAEvizXvg1atU1WgmxWgEwrY3IQSsg8fC+
IqMxHIHVNhSff/c3qZlZNJk9JartIXVc+4ZCcGBxJnVP0KKh32EHgri+wAfrk7dy9T9reaJQUCpk
MbcFxCLGuKa30bOsynms6BY8Boq8HhHhI/RAoiDLH266iiZDqz6wv3BfmT1c85e53IlA8yN4UzB6
q7SHqLuZd1fJSsZqRLPCI/5njkRhC0p/0IgNy8hByl50vSAEGhLy8Al0PIRn4mBx+IoDjYVTmdoX
2RPaYiva/KrzIEAv3jhRGXOR1Qoz35tYnMoqYK89nxaGM057WrKyPA7/QZr7dBLv0kJM7FViBbjM
/j4zI+jOMhV9+1rNBfHM5yL801tJTomt8EB18tg5f+z7M3vr5wNvR4iYGRKBka9tR9TReuzs9BXv
FXhGHpqpTmqWlKWVyZyQzMCFZb9bjgmaTsgcdGv01+OvMgEJjr/iTsTg+fTyaXzTQg5NgYJVL6B8
J6+PZX1Gg24zi94Al5XF1XUiP3N9Vp0YboqqGgUloeTYWyJLXkhh89IaYvYU9x0drxBLtXJ4nmDJ
mmdQLwTxUFoGw8JWaI1hQ9onAT+vE/Ye9tPOWRDKXgYlRefaoM+gRzjjT4WZ0YTlDlnCHknLiSOD
InbAqqbzWZ1FWTk8IOe7Bf+LSo5jGrKEkiP1Soa00iChjjL1yL6Cg93VYrVZpHEOK5k3oe2/s7mq
jU9WWCvR7TY0ONmmx0fOq0BW47bYqGEAQZIxRmLvSYBm4EPl3xw/1zKCQYJjcq1MtrdS7KNSh3BA
8LUVcnPPDPPyhrCcCwlJto7+4Zzw0NtV1s/ZSF3haKIoaRmMJwc6LOVVpTmEQCf2bJbfTuTeeayb
8NjKJ0gKKvlQy4OfQCs7HftBxaMVF01kXNMCv6NC5tj17csgWA2+C4SkS2v/Qs0PhtDqWRHhT331
jaRZz2c9V7WEX8dcD57lmiw4vwZxoNM6JwuqOgZmU0TCZSXNn7X9UvPPBWBJs+cL97/4S34JYyG7
PhMv/RWef90pWdxw+gJnDN4sKhWEa5rHVoxgXsxj06n2tDUV3MmZSv7nBXocORaDWB2Z/ORZpQLg
f8+K4YlAbsH02yEXmXqXOt7xgBMxMVMBtbm9xIpp11uTw3SySV3YrM2MFkzBhHbSQzNJ79zrSmGL
FCJM7khO5G7kAIPfLEMQWnsElHms3IxZqSIYKP3mFupTG28SoyjQ/x63A+BENkpMpq+Af35kxd0r
ZCeQzu1Es1H7aLFQMH/TTOmWOJWwotAWLw95m9kF4B2lFrepnISNtZC8lOKmY0KAqIv5PiOo9m08
mEp3kjS3PGYWCLohot/uDQgIjHkSh6LUp/Q5F9hUjYzJ+CqhsWAczSDwTkoZ2B4wQmgo7S7TeNhe
495svAv30GygOZQ26p7DT/WqLP186qPWxO/n5AZ/PTPlcOXtbHDqkhJp+R92CVv2ZxB6dUL4T5Cy
AhRet3jeEeLabT+wDB1SM4cr6dlguPwXwF9ySixG97WTRtbFYUNuHHvy+fR5DAlSwUeCVPxZSVig
sM7kSsMzx6OFfjStNRxq6TVivsiwzKGMswU5O1DZsz/chNnTq1ivdZN+n5oPmwtIxd184KImjkK7
EF6IS5vzRoGFrG4Hmj0mDnoh26mI0g05IS7RvjwZkoH3qqSLvaxXv4IGB4RVi9tbxgteSlFw9TWA
lnqBt/c/iL4G3UK1IzuUADGQo5KN3SMvIBjhRHcl92Toe0QmIxSgmXiKhjulreR2vl0R4iopCnH5
nB3HlOBPBG+ZErPJx45jim+t0562Ex8N/PAOi2QwSjVXSGxSmq/QU8dIhxWksXK8HhWm57b2Jf2R
rvDlgfiRxBi5uXhTdq87S+85m5pZRJR4lYtdOIBIX9F7Aysr5Pk88fGCmXYJWC9TNcWSDDlfgAM7
LwOpXyaP5QMwpYJNfmLRtMpkroooWcgiLkuhWkQWjbTjeD/k4yJDOFmX0R16EqsZnvz1uzO/4dTs
MAZyWOzCxa0CANNOa1bzlK7Tv9frZ8VAYDD4iy2kmoE6zS6RYiw8Z913xBAElkYc1eKsblwgYeQu
33kTD4mBnlxbYR9vwZ2y5CXful96PUsM03FyHydJ0ELRbYi0vK9NM8xL0UD5wqukUSS6bSQ/HxjX
SL5iekS0jN4XQwTTJuOUfGEzkyAHu2oXSvIA+zGC+qPGGPINl9hSVWqi1ZUcJMIPwHLcWWpH6EnL
tsZvfj5gNB6E3nbJxnLdADLRULX+y2U38FQAUCwldO3lky7AkAVJzCGznei3T2fTUdlwQ3d/4On8
DQ1PS7iNm0tEaxNrae098XPq5OZvHZwAlyYtp/O5Xc9DHumQOYYDBqM3RwE9IPEWnaN3VrxtOqDp
zoXjmpZg7/JOOKpsAPf9j5fUDS2Vav6muNiyZq0IwwKHGP4x6xEvIZemYpXB4F3RQTdfFezNbQpu
9wFTaY5LYZhEi4ra2ojHIN/Rd3mvRcaX3EnNaIlSGKfedkZnKERiSJTgPGxU4ND4xzFbSdaUqNRn
FJQ1eChocOqnZgalJpsCVxTEN2smE95h9LglGNjNpgHrb1WUA0Nd4rFL7sIgWJH4gK/wb4iBsTgo
1Tk9Y8wW9P4ZQdC3pvaY72+8ASrb9z5ZAKtfO4zasOCyroY87DV71BCELEFdx2GR2Cmb156FoLK7
dbz3vtss/wabp4CDTWjGxFvOr7fJHSqU36dYpghqnykO/H77J0RrkltpYr5tI1BHHBeRbxccyxiY
rxnU7+rKtrvyeXWj5TNHD3JrQVc+ZtfK3tUfGY4xQy2h58sR0hCDHeWazWkmHAtLvhd0R8Su5bc8
HPR8C+hET487nEcbwKrT1gTYLm+u3QeoLSxRktY+XpoqqOcTF4/TTz9B5DerIRaGehQ6hSnOFLeV
v+K0vjtYQqUjAA59wULeTYtK0ZdAPKtFjBe+5pUWG9vnfHWct18jnPGIbN6J1ZQWZCwwYz2uikxs
lBbaRfMRCji9PNYJAGOj0Pv+phziMsh28bRqWJYWgvOw3ZdGDM7/jplemnNZJyv/kMXp4kw+wSe8
rL3OMSm2ol4j25Mbj/pG4XJ4OaamvjkmZ//8WavlB2dCL+WIiMn5i3A+MsACgTwA7hlJKaYUnjmL
8a3H5Lg8tqhh9XxkCDCVvPW/pV//3E+vGO8GEPeC5aaUGNImig4mMmaRIo+9ZYK6ZmOS+SITzeb2
9XuPfALc/9P14/MzZmFN358Wefmdy74Q3Rt3i0LFbvTWpo4RuEOEdPnYx28Dsk6PfbuXf2o9l/qk
Ki4TuNXNMGJT9xW1z5d72AMPYfpFwQarZNzAYFTiEGugJmQEeiKlOuyZBHihEtzwc+Fn/jEsPBO7
2Jt0p7vGD84nPGq7kgRwOK4CEkXbTZJZo9kZOmh8/IIqA1rYW+NnWevxr4gnSAy9Fcd7fywQ4LRA
ycR34DqfkcAYjUGT18MNWybWEQltMYTfDTpwR9lClUCCaNoZ+THiTAn7JueXxojCq+o2HhXCMbvd
i1iLEQi0lO03POpz/gSk7Kg/ebYONxqJGSpoBZ4RMfiToYGiaOw4KXOC0eUj5E8ht20uMKtAiyMM
cPSt1CcEtTHnZzDM3aRkz9qMF3PJ/4Kbb3YQujeg4W9t7X4oKeBvzl21+4zb/0nAA7UZETGhfKqi
Q2EIzI3SYbnwfrW2G5LRed6MRGXRt7VtikF03uUxXTitaaf/V/PJprzdpjMXAELY1cOw2EqikyNg
V8zJ73LWW++LzGaeElxY8ltSo63/slneted0zjhjlzGlP33wnMFDU0DYOQhfwgEL+/6sbqe7dWCd
r15NB0l+5rvsbE1CEj4AVYs99jDvCcdo6HgrsDZcy/N4RUWGMukVfIp0uj8j/flb/PUjTK0a0UHs
B13apLUIu1geqGPPKOZsWjpYxkuvRX8cpcQPCECjSOJIXRwB5rhvOr26UshoTlrSv580cJ5v0vQn
jd14XVg5LYM390RG6Zg1badUT8YpFJRF5LZ4W1BuXjNQvzT9ErbxBgrC5E7fhDZmpjB+P8go2X1W
FeRwv5NOWtEZ5IW/+oIhwnu0/2/wU5FqpwAgYol/BHsSdIFZn0k6buhN2QqN1ScKOy1Mu/wH6BaO
z9ftc5zEHcwzF6FPWmuFBs2xj3+BY4hXipTp4j4ROaHCrNKi0R4qqPgW95tlFolDZI4wukkLHft2
6dFXlcSC2HDnFUhzlCRdNWmo2F8zBVO+ybCAfDkAr1skBK9s6czY4Qr32rzXZCP9xz6h26c0IpNd
cYlRjbpOZFo+VHN8+0Ih2xKryAIQzqIYIIKGy/rKYbo617l/8JjHBVaEiBNYvgfWUYqbN7fQYgda
PQujKcWKffdwKe0LjtZaJo9hmBoeUHJuD9NmYcjXPilzJLZlHP8+wv6ATVtbVIqNeke8AMH+3S/R
qJUUGjscRVUDV9S7UbDoM+lCim0sBtLqJpfCpfPfoKI8rOO8q2KYWL9zl8XoOssLuQP9kbHasj85
UrcMN9O6CdclAnK3Ocr/f7U+tgaYhc3hylZcq0VpoB2tQeXMcdQ+nVkade68KYbadoBU48foONhA
Sr9zzfRxx+GuCKwu4cs0TuXmAGsonFMlcMrKheK9/dwGY/Y6+ytQTD9is7X5mBvIkq6cjEaB/IMm
EgreKLJZBpdl7OtOp1kdeh6XlBYZPNXL4A/fnidPS1u+7xl6sNYPyCgAaM014C1hi1XiCAAcb3vA
Nc3cwYbXhJcD7kk18tp21ldzafYdLzG9L5O8gwXmMz5TfZcUWOQqo1lpzNEUuOKVBUrSiBD5YHst
el+z7vop+sbtx17d++5H1EuVTvDhXRrvJDwAZacxQQ3IdXi07XrUHYMQaZ4adc0gtXhL0j+eAL8C
ZQgCZgyneTiUXHPUNBuhQsHoqxQHjH1iRNMau76j5BX4bXVyjUKalFclnL6XGcWda6QOclhym/gF
zk5WYacarfLXnUyPcSLEZ5wLrJeT5eyHIljJkhDwPiVWjVA2Ez50wXtSaGdNVoOKMGpYFDC09Xw1
Ggu/RrTjk4NdUKhMYme2EFNco0iI2jgm0nqzNzlUUw4NFdsDZ3TrW5ILUbmnDUgWRtQ9PKnGLMYa
LjAaZ3kEl9l+TmrYFITQoui4ROk8RPvOw2YEh99nGneq+8DTzk8ntahUy5WlXDbXJo0JTYpNGzQG
+VqPf4nSGE91Lb5fUaY1FkjPj468LfMfAvCR77X+LcPNIRGyeYgGe2EyCtjya+GQ0Ay/4YpSdywj
dVqUmksluU2YNJxVRJehXIdBh2TGyITKDW5wLY6ckxEP6O+koqsDwkZ2N1J4DnOIXzLxpzDdYOuD
mfHZFxqi+n4aUTh4pcuH5hTfqdG514uAtItQde3jSWhSPEq0Bcf4QqhONeF24zeuBfYSRKUtE0yl
WnGWk1s0XacvLqhwaHiFsL9auCh6UIE0bKAHRhV56A2ETPqEAebSnBw8/nNbjo/Ho9X5X4OTMLcw
tkNAlAXLza/MbDolnlE8i6tbBX2KppEWhAbBiI9+z2b4k3hdIgDvY8XH6t+Jx3QqssBLQZ960C0V
v75Ox/xO2QKHLktRw6vmuyaKyCLwvjVHx0YIOp5KJRis6FXqAxURtmXh5pttuwrmZC9e53YCsocC
Ip3HUTieiQuO5TLV9tdAqtAFuTJC62oEoybakM2928W0gq4V/y4phCToGbHRE/GZCfe9tsgqXrQt
h3VBzKjub/+IsLoNnGU59/C7If7tkrd5FjR+FtAaPsq08OLrWmOWnQX8cqnlzHt8hOUK1HmBkG9c
Q6Z6mXA5OUWoOWjXJFZ6ObH40AHkEG1G9uA2b0x2z+wbmUlqY9HYK8B5eK+khGJPfN/bnl6334P5
+0Jjd00HVq89DidrBETybicMjKjKlrZlcHPLayuVhukvPXt63A0P5pJatLzEG6xJAGmodFfgRQd2
qVOPuNtOvPqQZs1uGBmzreqFM1Wj7HRQoJQYuH+IptvsGXfheJXGbUBLnuKtaSLw7ufXMhLuR168
DNJsLrWO/LajoRldsmBTuN8pOW74f4UGl182wi/KahKBGPpL4/2r2QgNLjjrExsfooQK1eXpvslK
XgooKa+Vghv8di6K0B/qmC/Ge/kuCZihYNX2+VjllJ/CXOVzoVwYowXPR2cCdE7QrQvq9o1s88Jw
aqZSN97x7Ic33GCDxXaALwo4CgZLH5uToHwbJZCvE2dYEoJBrZfl9t6j3cpgoNzuBX73Mu0QHYDp
vMaN9nPTxFHy8ekGr6VBBF5DFBVxiFfdKV/VucGBmQhG6kuYBG2Ps6ygmABSE8VbahNOPz516coT
vnMR6mUm6vkoKcObAx/lUW+eMcLDMnIU36kwzxy/ly36MQiMVStzx+nfzxhQW8o/N/1qs/XaWelz
Bn8LWU7QnYLqbqAWBHeAzlKlK9tobeGkWb5+la/y86vF8FN010zOptQb7LTPWsZrBmyR5RKWbgyF
93jvQ+IQB5L18ZJxZM11MKDgBlxSqDJ3cD2BSrHal8W5N/ugSHa84BAVTkQbAJbZK1wpMHFYApLu
G+THle1bVteyWelnQk8bY61u2U1mQkG5iU7dorKbIpOxnufSK37S+a+1JZCGyOU4RyN8Zn1EYWYo
iPWSFjz3j6o9G1cUffTDn7yD81/qWze2VYdeLYVTX8W3670WYEddjKA7UQC8pwHqxLxZGJu9txcE
xEvtrJXeAeKhMJpbBTpHUQW/reHUvwkchIcGLUJYy7PhXwqKY2JKiggOeH8TQSkg/7sCuN3JKhEI
RiTKslUDXUkMXEJqpcP6CPV0DcDMd5t39gZ5m5AeLbekfdHlyWKN8+00MV4dW25BBTOcpBU+8zjN
15vCmlgCSFunuzPwCJBVLsBkEotalxlbBKQzpJw59OtYLmfDXOc/FkdPlsmBL3zoPisHzCsD8voU
3AnhKB8yX73GkRG3Wj5hTLr4TOMkAXsXPFyEgGGZJoqmGeofbAijbFTrdQacPJ68dPxP06xnmUrj
xLQ7r3h4sGb9kvfrjPzcQaO0DP8fWHTFdTUEvZrGqRTJPMfuZPSzghpvPpN0HSBuZwwcbbKm/HH6
XbRlDETm67RVD1FhWcIk9ChF2x5kJaWJNDnVWFdUDBN5Bo0f9DwNBEhd4ut17Em9d/8z4SWRkvd0
ScckNSk5SCtLfTa/O7qqBBixk6DumYHUblXctLnHTbyFvUw6d7AVfpiFgIMnebB9y8Jry7WHbymf
8jRQvTBNTn4Vx8dlV5/buUCR8kvJBm/vx8uqy5yJ/TXuPdW9A2+5my/ggxLhNRrTxftGq3ZNMouS
qkqt2fMIPmwTzLycYRcF6vXJ8aK2lfvzsS2hvQ06lQy8Cm1sX/BMswJFUTzRpSno+1frXPOZmHjD
HD7mJTfpbOgLTpSgGwH38yAS6pjrLUMIgfKtfTp2RoDQAkavnXJ+eLT8ZziQbO9u3sJPD76NnES1
6J2R/yvAAwn8SDamGiDt6dXpRY17mzLIN/B3HiIED7G1BdtghbZjea+9YUWgGhwS0xwdTDPOcyFJ
V7iCPR01kgqLqI/fteXFlIVcKMhRVaH6H1cEiWaqAyPWwX3+lPQh3nHB6pMn0Vk8FyIdwPNqCevs
qXGGATbB61pSnRs9oypuEX0Q36b7kONZMslKHnw/Rc1CloXnU5WwMBCKuVwcnST/jT5LgkkHGvvU
rzQjZ22zvW/VQLLRAaPnxAvYWdqREcdVakvgNIJ/YNBJZkxSHmFexCInej4jnNn3kJqfZDVoKNL/
5UCEevayDvVzvNBtLuUthn0uaLl5KvHZIZozLDta+NbOmLcXE+bEp89+5Ot2t0wb7uYumqvXWUSI
Uo7eYMC0oK8vPKa70KGry92wyry22rf01WixXkqbXsjVKypkGaLYQdfOqZyJw+c43U+ihhLGwrdY
ucJv7Mc8FUecUU+Jz6PdSxyKAqto6ep6YsSmK5TjK0sQHYvwe3ASB7RXuf1zgIARtEiy0tHV5Jv9
Bj5CyMEbmsannHhHzTr1l9sQMmHV2bJ/BjhwLH/80Y6/dtI/m3eEe1oLbO4ZwIqHbqBU8mRiQylA
m5lhMDywhc50lT1vFJmlRb+dDDEqPSnUn9kKKg/yU72iM3QvOeieeg7ySDZ1jX2fzFVFSfMRreaY
XKMmMeauLng6DbNcMTiDd2GdQlcJYm/qtnlDCj0GJ7aoqXXidOY1VnmWzdby+gd6X2EuWAS/mi8A
oh51kTz6p9ixYTa2Ik+AUfK09p3N8k55Pxh2hxUlDpemV4SYlrS/pCl08geFxb5axo4oUvCWOnHU
moSjDlytRVj5BNwcPnxGWgU4BBwpnyi+Pl/LfzHX8asxxk3xIbxPHTQTcEN5CFk+1Uc85NmUicEN
LX7TF1Kg2dgR/Sbx8GAVDb0yA4CRccJWxnjjujwf5OMZqIxRJUymfpVTvW1V+OimB7p3PvIayd/1
AwndUR8HnxKV4dlpOYO14dsHyDu1iytsp1yh+//J3gpFzQ3sy1hMyIshmYTsh0CnBhkQAcSZ3jNL
LyZvVAEnoiz6nAzAQCylFaGSPaOn3By4ykjQaYYRBpGPJzbrbJUQxx4SJJuRkPqXSSVuF3+T0eMA
agBYv1cP6elxpWv1ImAe3s72Pqztu8GVWaYbcrIlpl/MIBJ6s4bmmYUpdQFfBK1ENwBi4Q7azWyD
CANq4pr3BU1T0W3EA9VcMbKHOw410A+JHzGtyXwnq46iRCBxTEaVFdo/5xRaZrTGIDj/9R/EDPC1
d+4OzxLfau0v3Jpc1kHwLPkKnoE6DX2nPZXKMfisPu2HcCHDK82Z6idPVzW7khssjl2jTEFmumF9
EVV2vZbZYs9EmJGkQ+UDcPFbNi18nZxLGYyVUHvJxO9S4UHshAm3kGRpLrUp7vjuc0wONVMe9tSw
tvTqGLq3KyzZn3zXN0UpnzwGLE7WrOeNZtyLdY6KJ2o1EymKQsRgjVb0QW3UkEuVSejD5laxS6S5
+Ow+0II0AVCZk/Ig3qySGnHpVR58N/Rsz5mGZyt2A3Vql43OWfpnYpTKLFY5YLtlKKV5Vgt9EGbN
DRuXlRA6KyRZOJ4eEzp13eY4quUpQchAN2xA1ptaAw/Kuowc7pQu3mvuWtxRsbXvz1sGkQR67mgQ
tv0BnExPwX+WJZZNtJfsiEFmM6pvR7YHC4bjlXn3swFXVNrm0eJiVjS4fWUN5EGbxVEFlrNm2D1f
RgxcYWmW3aOGa9HaPwftoWNVGnQORO7MEpF/1otD+kroLxfB8CauqjtWxYV73/JWUAc+D9EhA0NP
MOvlaMcmck5yWhzt77Qy2WIrYMrOuHOAjegTRkSANQkM5crbM12rFU+sSrZxmHLdhkF0xkViR7To
Zx2o+j2EEF9wiF2G5XfnZpm7rXWwFaOmW4I625ts3hmwMjw8H8AKhBfTy2imIR17r1KfJiYn6fA3
b90Hg4v+6hXJAOdL1eUD01m51fxoIWvUJSy+lH+kclayklUmq80oOa1TUtkUdJxiGyRW4PVJnPWP
Qn4+2zrxcfcMutwoJ6UALGlboYpioI2DsYKG3WFjM9LhaWQJzZVrJnENUAt5g1glFdswWA0E8CXv
PC44Q2R0hpi9uUqIInJzb3O6/xuhYY8Njy2yfM3WyzrcozMqiWvhvtE/pDXLUmh/a0Mn0WxrOWp+
2gvd1t/STPWmnkbPSQSBpJSjCTilkiLAq+WY0Kk/A7G2SvI9IYn/bh05kHwiPZk4bpL5Pv0coMjb
LGpFcg7N7rFAnIkeEOUQenf3YYUlWHNIwaelqRvRZmHwtZL390ZFjPJCNhgikmf2NcRzvAsFEWd1
jOODTSWkqceY2jS4l1I5JQWfn3MUttx68CyAiaIDiygf2NV40YeHQy7oICILepAjawdn9fNeP4p9
L9mcospvoFIedoxu65rLMZGNrYvJimn4rtuemfkbVnN25LWttwxjHXIlbmI/SHLA6VdRULGOImdP
03T6ngIcJQ6+5U+l5OuvT0RTKQr8JNmKszkqwuKGUgGA8Un7ki8rwzWTM65OpqDnwgdH0oJncuYI
9uGL+bCil5KZ8gQBXkcRtVesp+9nvKmWhwdhPS5jjfoS5OAwLrXcRfF3fVNXSMJTlO2jLAX7jOH+
mgIZLzDl1dly1q6TcIJKA0sJ+9xfB+5YZx6IYYxdb56D1mHSjRBE9dSiX1scTubv7VuRuqtvgPZY
DArhUpF7cDf7UkAKhYbHN0bP1gc4hXfudocmBWnMUl+vmi5jN/bQ8m4Ef3HLC1nvq3zpi1a0+7R2
DN+BQO5uwzPSRRH4lHhbwI7ViUDKe7XtODeP70rbKHiPZTENk0lUDxb+CDhul+7rGnb+XMFRJDeF
Tq8Mf/39hgqYAoqamnEUmHaj7+KilJvETLGHbVJ9GpN7iNopnZp5Vn7MrLt7xGq1CvVgzhKTE9yR
KX9J3Pf/FDy3KffCx05mzikJlySz/2AZc/RtVUoJIvUAQ/wXS2bTDYzLdxxRbb8jJX6hY0YUgq7a
2H/M/R9yBr/isnW93Upv9OG58yax3WEuTWTRCs/tuuNzKeM3uB6FeNbNPbkeb0LMi3JhoLao8qgR
1uP5M1CGpP4VdACOWOumlm7jHLuN0Ph1MTK5OHH1+HYZN0GhwZKDwx2GMiPuO6XJDm1brd0lYvk9
VgPYE1ZjGfLn1aIKQ+bCmkGW7wuiC5PALKDk4xlqOfTjGif2BqjrGEdiOwx5gL1ICpt8kLJimItq
Oa2wZjEaHkzPjvvCFtCn783x3VS3aufdcIxWPTmpDCvrYJylwZ95dweNakwnAcLs0uOZsPwN0cJK
Mhdu3ts3mEDOSEH6XtYiZeKEc4Kv+j7pd9GFEzfVNLocJ4rlw6irarEFIIdG6+th4AhqKEEEqfWJ
4P9dG9EMA7bYowPbcRBFxytl9l7i8MCalUdxHOF8pw1K6xnldYHK/wKM1sYPwTlYySSYZQWIopZA
myf3EpLoZ4Pk2uyiQjrHMPBACELsb6inW2HqHrt4hBO1Zpvf5LqqQXXVo/dnv2ukGZpYcWBu3t7H
Aut5GKr944Nn/t5zszi68NAk0igVhS9xGQjlirPsMInB61KfGBc2FCmWSVmqZmfmhhcrcBb/h7Qn
hnMxJl176++RSL3wE8ujUjx9fTUkG5Abh94oP9bvFqVJFz1Y5MbHQPFUYRGIt+N/alUxUt6VMFnT
HrCpFjUGnQsRnuoINNr3UfiFN4U614TQxyL07C5a2Xggxe8NhH3aTYcM/ebNQnd1Vw/hJWHzKHQN
08Jyl4u35THbfI6lyn7904tLHPBQNc2TX97OGrt7eevhhxXXLsAWlyRTdOj8ZAdFCadT9OSE0ond
SoezY8Opep4oOcKlwQvc2T81KPDrnXAp1AXnW5lKyekbvtKnjVWrJNCG1D0L1POH0j6JagaRRANu
m5xQbrPMyVMX50VaLkg9aTsr9mA/BOTDXUE48aCOCumnloV2GyRFOB9Tbkvx+2k1Lxi8AHgF0OI/
4Nsmnhu2PtbP2SYV7xRAwH7sCfdaw0qCgGitD7A6d507bybIn6r7zTbJBGwnuSulrJP95cVaudBd
VqdmSaX9Qfghg6f4R6gMiTfLxiCwBgQ6l/P57DZX8/+5VszSmn4OrW4MZY0Md98ucIRFv5tWFUdr
bbNLeJDQNpGNcMZkgmD8LdhDg08rdnsqZpdjej0cUpmTiJmPYhnr4lioJqxB54/9Rehvun9dZf7b
bfZAS1sAUUF7hoKVHqVW3hiu1wZcn/OyV+3KfGqWzUwJHZA0N1szQXg6lzTwHkx0DEudTdna0QNF
QToJXc7dvcrae7wxkakxyJA/9cRrsblAs9W+QFB55CxCT+toU6nJSV87pGLhHnrdWnSIJtO5P6E3
bILVWDJAtXN6NA4XHnC55IqZBDz/6urPNRoLG+SQyd8QDy7ApX73eFnCfSjDv5yKjIPynyrB7UR8
13hOG3kMCY7q+RecIpAK/aYIfI/RpcafyELjiABFuEhQAYJWpP7M0+iL6pV/6iPDRnIL8sxhMRaG
zigozLc2NNHKWgw1+sF4QCge5PZeNY6EGihZrTicayg86YArFr8l6YqomRRR8ctsqXfLTQK+gkE1
fOv8/K3M8rY0ZL3iJXxoJXPex8HxrD7yVTdTe+hntS/SSukG2Ct7sbSBRkYzpDb8ziaH/Txasmgo
064aguICmuiphAJejs+omRrwy0jrGgh9J32psD8xwd32SH9uyr/VxVRNMq0Zp/5FLfBq5/ZMDUoN
iulBUby/g31j9LO2RvltBVUdP4gYRckIrvEoXkW9ipXOpXEVgSJnPhNSWaziNyM/DGnNa1PC2CYf
B5RZev78+UC1Yw8D8RrWZvJAq6xQqVb5iAPL7cBcU+Dn63OiSvcYZ5pXauIxTatkAiDsgw2zpr/2
RNicCTf9KAeOgax8DVsVy2fnPzRIK5j3EXjxuW2hK+DusFdvZhZPmIZHbjUXkB2CRLsjV2RB0b+v
6yTuXqXCs8eBDtgOK6oQ+VFZ9lsGWBnKfG/zcYHj/VjoZc/cenXXPfT2TFZeIr5k89BfxyW4JP0q
vOQPVYMofJ1J5L3F3lCzgyRSWSKGRglG7OKzzBa9GsIr5eb9jVdR/vGimzWNnh+Jqru8Tcs5XWIH
fx7fpiHKHo2L3ULPgnBs0rksbhmI6ZdG5M78AXuuCaMqUS6wNBswV20emaVBHH0xYCPXsk5Uvuzy
sOvmngcjp+bpob24xMoAvx1frl592HgEimtkrZo0//jkxAr3zLfWn+2m1BzbPQyI0R2246s0oMrL
RUz1K1UvGaxuO1ep238ysUGTdDjzZfg6KWKgn5yjhcSb1GEAFKdg1N9M2jE7m8GQcn2izc+8yetJ
G8eFNIQH299m5Y/NZYuUuvhbjD2wEYqgmSotHKKmxSA1WomxzWvSV7ZVh+Avzp35+4tkQa9p2uuU
pnCDjJXLMSdH91vmyU6rIDjfBrQ3A6i6Jt2OrokpOo/tvVENJjeX+7S1d2sGBoOeCjt6vydjbU0L
j9JpYEXuk8I3BDjlx4+sVcAHpByoCA0YVvsnzTdrn664fgKv233Cps2I0hT6YiaM0EQ9MxFK9kVk
SFmo+RHbGL47oHuyjWgfolq9Z2X3lrkybXwzENrBbYLsWdSSJgqQN4U8vNfrP/p4uyaRahYaT6AD
b/C/5bIFjbNn7rFRUTlbq5aR+soxYVpNhdpV1gyDgCs2ZPaYROOFPfiiN/hHnIbO+GKAT52dYU3+
uP+0GKIqmEuJltk+YQDd4lFjM264f+jCAPyRm/VCef3FeDEOomKEaE6eJjoPSg7+FRmjQyUjjPf7
jXRwr2tnSC0AB9LVklsFFtJTkwEdBHjbh/l3+G8B62ouxfTy1USxZzpA+TLH6kF8rt9DFSX4e+zH
ixZKDd8DtAgjYgRyOUostgkwAJWvpeXyHvV1dHjDSE9V5kqf2Nfd0z7cWtKHiIbhe4S/a/nahNoJ
veVzfJCbAH+T3N8860D2tOXXmsLvLYoECRXbH90YICDM5EkSnZJ3u0uk0zR/MwQKc74mGD0tUuGw
si2UXm2pqPAIZpBr7x++ODBrZPU5fwtt1Wb4wpSYtpn4bI5wRkJHvtCjTlkwiCaCos5zbCtNw4uu
rxU0QWSuuI4AoREttqZWF5nsmr7GMR7hJ/HPiLsbb6o3agKDPYkNeUeMW/dejHE7ByZWjTBgDuAK
kRysnYDj1B1gAsCBeD151c+spGr2b47vAUi1chdZnSgQd192pE2kewE6uZozSpe7Axy9R3k8H31U
rlAKdfMEHg5z9CAP3wt+6iPYrJf3Y2LLvNDg4HRP/QUOllwybxA9qUDsvBWcGD4YyDck0ML+nn/i
dMJ20fj+u5xknhwAsBE70sNBReiGr2lyamP2ePfk5nZCgy20BvCMniPGHZPil1JH6e/cw+OxOrcD
FUMVu7xccEkhMa6IW/ei761liepern3UR9ZmeY0fmLlljrHwwBT7+9REm/oA+XnpWeI7nE349mIg
29+hya/IAlBCkqckdb/qRpyVaTECnktlmjMMUc2Z2jvd+a5yc5SJJ7V9k6AwVQDp/oNT1L3fn9bp
CnU7sg4FXhWV8w4OpZnxVZQibrYv+JHxbghw3EHSGgfX8jLOl+bltMIL/PcNlSvwWY/L7MWhhWEm
4gtNE/DLNy/ngzv8JnG8ISvA7SIrgO6ax1lhnkTXdCajl9O0f+MBnTGUdDx4e+Ib6e8l8LmVdHdv
Rkf6sU0A0cjhW7jytV18b9IfQqcj3l+t4dS+E+EcAntXbB+5u7mrao4qHkwJY+/62Rk02k1T5np0
Zh01X6+8UngdIg2+8RKKRkz4VPraxlH9rnxHDdE4g7Qf8Q5kOP2rirSG80Y5RJtcel2+QLWkJqM3
PGfcSB6kHpzwZUlnElUpOUifOmLXC/iBljCkyrJgWsmue75/frMmNmHdTxT/Quc3p/KY6ap3/c9N
V3EPClMKXYv7WQ3DYqgbGta5ku7N61djyMuyM+vvfHuMC5fW3cVrEZo3jB4f1WhKZdpFMW5yex2a
V/Pw0wdTvAMb8CwpA86rl29rI+sEDnucVZV8/9qSDfsQDss4/BlEFicbZUq1Av7CjjKX/n2Yy3FO
82wcvFiCe4sZqfst0x/SxI0J2gybGYAsD+ORhjLdkbSVi1YabciGrGw0jMuKactcmwc7PGUf0YZs
yBLZXAz2WE3YjxAM7O7vWs+Qwf4Y/Xi74MxDRJ1w+eMxwmulMwa8VzyncFaqYWyAFq1hXULmtwHi
f9EXzCVtWpElOr0/dbdaRS3rBT/rZkk5QVm64NDJsTVsfBJx6cQC9U8fsHTxMm9hr/yThkFkIuY3
4iZcCSDS2jZImhbAVA8eoh4mN6YBqEEVw7uKMY8Dcd8cbtlgKt7xoJX/GUw2qkVUlOHpC83muzSz
jaKp1Z6/3wkLX7cFpoMm6rNHi/FC+zODHPNeIxmvwRi1nOrxdHJC9yWxOszN7zLm0ZprkvSJAQ9m
1NhFV/EnBXix7eK3gscltXt619Wo9qfLQCAs6x8DVQjdODPztPHxF692eaD+hpZOdKeZ5V7fMTJz
kWAVE6x2y4Cl6UQZ55jyyFgq4YOWoQUIfJt2CZAGDb1eW2ETuEDFlj37Q5w59YtyHKe90BrAb4vz
iV6bJ+Sb06h6dTDaKuK3/aLlOoyknSr6o56YP9JpzKHDe6f6zL7VA4ywJkEXEL74170PSMZMmaxx
L7jp59Y7pgZPoxTXNLsnt0LLud+1diHMboFVlPZR8D+0yFgL075U6AOXpmiu1rDRJSsahK0p0Z8e
SLKHn8cbT8EzbsWLnPKRR/aGVeiPtf94DxjBru1XJaHUdalifV8YRjVpM5AFROpLJ/5qcZFjRe/R
CB6Hl2YBUyIgIEQb6WxCTT/4QWJ52xMGQBeA4DqwA4bOk8gZ/rnzMwQ1bCOK3K/E9PXt9DgMClSi
Z1JKR1HRaAMIVPQ1dS2XGgdu4ovFpBejSwJFJqPKhdvE9wLYXUUMKbcyKhMnosbY1Ksn6SZ2t03c
XE8ul+VT4X1x2oIv+u2X8ujnyV5zl1DXIRq+IrV8o/90SRG4T3zfCfC7Err5BvBg+PQmFhdMuJlk
efKBj04kfAyd0WusUIi531GcTEMzLjx4U3ojqBwF0nn0xckO5EEusBLeVCaWSpjhiijBbEO2WMYH
/SG5g6JWZUtJsJNfL1ehFbgO8wMzSTjqMGgYSoUXPJOb30toQkZ4rElpveIOx4f9cmmVc1vhacQ7
hR8Os9IOp28L4irxpCCEOL9tQ/ey0VbrF/g9POlyv/aRCnACYs8Pwk4nwMqOX+S9c3JOpFfxLh4a
GbK5LtsKYHI3ue3LNsJQeQXOgLISfF5oocLpzrnijnMkcUPozVHmV07fV2VHjttzpQ1Z/1F7UbwW
8N3/4tSd93G328Ia9SEavCdNlqbzlBQ4rsk3RyCeYPKuG7B+EutTEk6VZG1s0c8D1tiN5SUeSQsF
SFyma75D7StirInivoDCN/stqgtkrO8bbEPv9amp4N/2jso2KIFa4vk0sI8SOKVGdJRZvMA0U373
PjdvHF7IVJTdByAFHPeUTfW5hDOTI2l5enCSXt8/9w8XXp4rxXDUMm/70xjni6rctzu2MkYp5nD3
Ze9OhnqT7PCyp0aO3kOfwY2+DJu0lokFYFw2WWJpJbUOsKW7Bon3MPX4O1JUyMzr/D31PyLCXM8G
2j4276Ks0Z5W9L9VXecrfMV0+SYFyDFYtPDFsMLeilQ0mdmYYhOJVm2rf2qjve+Rp567QdnQFNLN
0/2JhOeGTRINdF04aFvQKly8Lc9X911cjlYfoGUsWVfj+dwqNphyBk9lUTl+OtHkeGb2uv+owi/9
vJ4elMTK6inZWjWH7+8ds2VcG3SMaSucoCoaL63xMwr5SuNPHgLxaPqjV9n7TEAenaycdZcZlfII
ENnozUgenBY6HNoWzo4ew3tBVeGFLZbNApAy1NSklAFfdFLY/o+ZHaJ6irjK6hqpOoQ4S2Z1IAco
mGZNSotOq25qC6MR1uGSwuo1kqWSGUo5PxkDwBCt8vdsbclqhp7Ufqz49FMYsHhX9fQmp6K7/2rI
ocSTXIdjwD+3VePMuNofGKOp3Xx6tnaxqpGi4dgUgXJoQivVp/aRx3jXMAnuStu5MWUOY/r4fmZ0
XFdWG0m+hYTmLoifZIjNg8pMAWhyRk4ZO2YUePpSiPZgy/fDJw6L5+NgQu35Uq7MJVU86f/Knu6p
aRLomuntz3ROtNh3gmS6FHktPk/6naIrUup9xh11jEkmEqC/0lD+lqgB9IaEzBOJEQmUbeCgMvRu
2uxWEt4gvYk8azw+gv1TuXAe09QjAvYCoNWQbGJ2rC/P1kiIfmMufYejUF495JaFachDM6c6JmfL
Yza0ALB1qXiDVLItxy3Yxzj1fo4eq4Vhb6ClH/Edu+jJxd3AUF1C4cTsRdi516FEV2FOpb0a82vl
ccCaV2Oy4KSOZDeGLjr7WNA9E2xdcRTzIJPJlgkNorX4JrxDYZLvS90Co8SC5srcvgfEjHhVqGqh
UMRwqC+uYwZJBK3l7wTsbXURa3qu5UUtY29kyO9AOAja6CAJaRoblriVr/F6uZYeUtwyRq6FXhBK
jD/+OSQKxtYOxV51GMVYusEBb7ggph6vYW9rIiCAUwkhIb4l6Nr/l35Amypvidsk7fJx0PqFVBg5
ilkLEp873Bj3dBiwSP19XImDTChU+DI3RMjL2wVmknGCutByxvAntMjBHINJwqAAkL5ywr3Mk3cS
Pqm0KLthctABfzRh+2FGQY2DMLV6b5qQWgJArZn1DZ11xncofjoTOgUT6Ch5Kv0JP27wSXQOcss8
aSQCHzhV1c9aXTHG4zCBYdBPjxImDDO0qoR4jnWHsYWvuaYVkce6gX/wOf08wNwB9xJpspHhedfk
zlL306C+PS6tc7Ct+FlUNinVW5MSCMJ/uGbLmubWDm3TzhOCNORf9VjlDHjnKOKZlTkxNQKUmD98
gqzvvei94bsMzrClhwhxi0I92g/VpTWLENXADMakSptUl1L/KXoGShUrsin2FVm43STAhSnyJQYy
v6b0XpynlyX0odd/mJlLcAFY55jz+8xajk4+blyIPU5GC7/lJ7r1yKYhqW4Y5qFUZQZf1S6JSTVV
hbSlsUXxPYQNncyIMBT42KtAWqrXfikuL0q34Pk/AIMARyRJSwv1L9yXTI2h5WKvkV3woy0HUSx6
25yGnI2eqYg4hx2dnL9Brd22ovwjeA0G7uaCUBdY9yyaTyn8vjxyTlz7QEyZu5sN1acbyLXjgjUG
fpHVvqNzUBf5kcxVsRDVJPonYjekRhXCleo9rz6eKMIUFA5xliXX/43rRPArfgjxJDYbmrd5Y3B8
TKPfUjF462Cl2WdCaMV1huS99J4DKiy3ZNg4flmDeuDR7uGmT4M1qgWqfGVPtsia7mObpJI7JANr
nyX4THeXhMfuBGgM7u2Y9xDraoDc2SMkeBu4foBsxZtKdXEtfPQ4zeQETwHYiTMu3DaLPSJ2BmB4
axeM8H9YO1rT6PVdDpMv0kQG134EbGlHm/QHfgaxXRPvX7svBWqSnELOsO0bP+W/q2hzc8J0qC2S
bkj1HC4vUahrwxKf6or/NJjMPBkh6DNiHGesdVLnJIC5TvyLGimQWiHZrgI2T5MKOs2LiAIMcgvJ
7AyZeZwp8a1VpMoKDZRy6+1XEGRXmirT7GqKJK45BJXttqMzxHiet2v2TaukoDpSZfxlyILTxVhO
JLCCVFMkS4LWVx1KIBwpuffXsjnw0DoB+9oy7/OaQOrh8VEFbWs+rlFpXnaAJkAiqb7LEF8DQLqa
SZn1q0tU7DjKhLymh5gx6f5sK2vKDz+S2L0s0GuurmSZbiI6P5CGaPcGKkGubRCpRVpT5M0/1RCQ
Nw4tgwagyfIywgtBV3UVtfN0iOORM7K9JO8siOs0EyCocB4movBGTkHsJJSl4MN5hycCHYqwLqEb
ZKUWjZo6aKsnCu9lBokc6amst5JkWYdNIqXjsY1evTP/PPYPiW+0OhWB+1IsQ6v0I9AwW7UUEFsM
OeHKjHtbZdzTj3On4TQarK3LReSBhj88LNXd1Vq2ETUIga9XIdg6n5OxawGpY3aANmUObGMA8oYt
j6xeuPxHhRL2k08v53n3I2v/YONn9JU7zk2oevyX7qWaJGQSzdpm0DO8ugrcveeQqWMmpOY2fXx7
s5eV9QyWz/qKF0spQbulDotLHlNk4WfIYQp2fUl3no/shi32fBnZINlw5DVCE+SLXux9npGawvFN
VWbDgOpfhtOqU3kBPBCoV8wn5Aj1BXPVJE/NluYH6ygTRkhsT5qBtqeA9kJgW7LBTvfm/UrcuLSb
GwOlKpFs+F4FQmAAIP5AP9Cn4thSWTh2tK33OFPjENbJoGPqsmGeMaoHLpssGHrf8YmxQj/EcvIW
MYBcR0O3K68JqfOSUOQn0dAzQIJHQASrErt36YdTUCe9FYL4jyy67YUSUD9hNlp7QmQo4lvWzKav
GZTZ434sukmozgSDNC/rb0qxTXCOWn+XQg/ymO+U3RRMGWHcbvaIh6ilnC+3kvbr/jyrPv9EM437
qnCROE+MXN/Bs/iugmnn091zvwh35LGG5lnfqn2u9Z31w0Zj30KK/8HvUn5xiTntIC5MXKX21KtJ
K/V3Wt0J1At0h9alwoCFCjD2bfosP8Jk1+apa0eoDLNYp0jKtl+WUIcIoRKaFBrXsiqUdskLVBpr
l9jGxIzWtcK6bJTw8cX8KjmXURPhy0j4PVZN6EJLKcacgcM4gxMmsTwixv5GrNMNpzjeQuUgaXsT
IklohH8BYUqWpUz4v/cpWo//wBq4Qu5piGH3j7K9KIXI4VkJnNiTQ54a8gNBLjkgWJG1tYjhXaPw
qxHjZOH+n6bP+GUh0kMLSKz+MQIdyPnfkUAogU28aPajUb+8FO89qaEBCDpc49SwkiHOgMI5ksPH
M5BT8/BHvn9lcXz1+AqtUlR7QTge6PhzUIukFP9pidndNsrD/RkESRn7yOMztVe4owPmiHUMgr7A
CtwVyLLfGgKDHoiTg8I0qC19OZhDhBkr2027gFiAhV0HPv0lsSZEUbuUtwflBfamAyDdeE9wG97g
UFIRlaMSivwDaNsoX+CtB/VfWOkXjQNg7ZXoof6993T/3kHeITqfeq50rjnZDdJBQIDNA/MnE1wI
DZmjynC0q2csnW8aXD8UXXF3OsZfB0ljk+WfqtLlQjqZqLvaQN14/XYcAsqXCIRwRC/n7Zn+Cxph
k80AbPlqc9j7SmJrn9Zm3nKaRi3Paj05Tgya55te4jR/5PWXi5yYWKFHgI9q7xnLKRZVzRVsNvJY
k3ym27s5kliuGHZWI5+ULkGzCoD41cYvWbuLk2F9ejUA4KYy2dQ2Wgqy9jyj5WUJPJyj3VjDM8uv
Jc3RqDs0dE7f77XIWR+8l1OfMUCAj9QRw79nBZqY/KqwxPJCCnYt8EYfXGEdzVxOZ3JuAKnAmn2s
rt12teNp0LfC6heRqKRaoxZiIx2XR3aRVnzzU4jfpML3zFBCgoGG7/c3GekKoQEypSkURwEaV9OK
IIYkzwNMDn7520F2MR6+3bmD8F2wf+FRbLZfQLqg+mOD8ZQg2HYKeUFKxRZcAhM1MPrkHsKUtSuF
xWiVHgEcD7hZyOFiXeRfCyEy3P6DR8bDFPqnagh3Ldy3Dy+r+XJeGpkDU1heR/C5wGmMOniq37KD
RevVJSC8/zFnkVGN1KrAK+8d5yenwSSvtF2Gxuiby3v++bUNe8z7HQ9o3pjp4lOrZjvCXgvK5ALd
i1l0AkOBeo3YDnLl7QpHPn1ssGNwFTnZPcL+X5roWvQTBU0KUwXNHPi1N3CvRTxN0lTyEkNPe1wZ
2FeylsZa0QLUsNqNhCh5TZa5nUlFxMJTHZpbljQ/3BYAVqNkc8KZcybPedEi1Jm5+lFvw8Ls83zW
XnI3f70D+EdY32kDJ0pLWm7WlAnECE+J6gub5TXnhLo/Hkk2IVJ4TvLtaoKLAeNJzS2Yco6eOGiK
+nCIzS2wD1OA0M6K29PDgoH8FPvDfdyvRDVzfQ1GUTiUiqw470hrMD1Mqqx+GlFVy2Y8AsY8aMlH
O0Rp5mcjK8KUvQrf35lDveaIQw9FwddoRUDzkBz8/BYSRjwawljjJo6L6I1+SXtMqgJEsevuLdvL
P1GgxUbjQBoX0nfUm3+/9b78t/P4P5FZzPURkWfg1sJhtIZSddOF2XDPmElwCbB6RX077/Hpl5pO
NjLpVcWgy+wlFWx6uAE0EfCwm4U4LqyibrFehpAtIOGfjn7mGQsoWAGNxE6AqED6LCQ/WUqzsX/Z
icqcPoLjBjuKRRFBsBMiXuwsj0Rc6B8Pk4UdZKLNKE6QGchXDfLeg4/BeAWk3sQX+Djo0qBESsMD
/qQa5D371lfNhX1Qn47RAEpIYNxIdm2ERBp7FENZgbfETSSq+d69EkXfnUtCtDKjTr9vyez71SoT
Vy7O4aiSrQLSumNj3J0FOEJ/+QBGm5iJWwQz8M2/PtUfvaXv/0s+T6CxJ4oZ+aqpGwls23LwpKWb
DGE1psc+yqWFpYljHJhH7r6RJ3464N8sisaRp0xsLreRRYwyRZ9aD9EMCUtQWen94QSlInbxjKEj
GdMB1pTyjW7jAHzJyz6wWok4DYDHN4JfSoaAULrU3PBUT5kkfNWiutVJdtxji+3LDqbPLMH6Xw1g
KDWrqUdZTdN1tR/Qx/tGWLeVg6gx7gl0bWgEDOFAUHyNygnYi7e3VqRXhN5REiDzf+xA8N+50pfu
2w/JC4dRdenI1XkSMnjsTF+IsUvI42mfK66LVmEvGPP41wOQFUa9kCdQbhUCRQPlk9PkfjoDgaMc
Jwa9i25pYTdkIZKEC/EPDTmPPMRpkdEYuJ9sVzFlJ5PDZnKNm4/Ex3KY+kzCBkO/pbCrv/M8JcZ9
qxWfoTc/giQUssc33Y2sYEECYfdot6nvwZ0KcJ2iAK6u9bLydJ76YF4b7HXjGVBP0mwnUnYg+z9B
4xvzFfxJI6PqSAF31H2sczBeIHWFX487wvp8oHXfPZu8KVqVWiDahT2p2f/t/55jTS6MiXnXtXso
SOeO7Lj4w7/m6R/6VEqE41NgAOd1w0j+OAAE5hpoz4fuWeMOiVlOzcR6mBeOmOybfbFZh1NezIc6
LUWW7phuVyZcfvvGJvMBQVWpSsLyy7016QrH/H4u+X2eVfaMdZZRsOxIWWMCX3RcTxQCEhBdxMiH
95cBTtNusKX0+ZfTt5CDZxXegUl4jv58v30Cwm6GJXl5cQG1Bp+wBD6I0qKUEDWMK6XOkYdRcNpm
/0mS2KOUpNFccGpg+JqGjjdospKUIM1TT/GzodrcXvjvxaXeiXiYLX9fG4DYZkydJpWY0jolyXLT
SXC79tWePfUUvkxbqBkD4IMqWznAOykW3ewi3LqgCUzPfZUQnOJB/66ISh3Ijln9Z7gZWTOrdCtn
U6QDCTo4lGA5snNLitpZEv1ORSZG4yqDBVj/6O44GI8mZDl0f59Irgbbf89e3NAmdL54HuiOnK3T
nvr8JZ1F3zHVm12HELcXGXvpkzj4OkQ1krWY3r/C14B67oHSIt9hzrSpSHCnCmJPRsy1OK/Xn+9e
R+4Y8jxqn+7EiwnhY0g9VVw2YMfKNZrhn6uni4hMQDOmbzuUWQXAKnaglMUMxmYwzysQYXdp+i86
LChl6m+YfppNRHSuIFn6rOUplXh83uV0g9k+woCFf0wwgZKqXni4hi/jmhlwTykax3mrpwBwuwp6
vfl42jWTtms1y7PujWVxdnfnARlu2qTPQXYNGWs/BleSOQcQK+3SduHrKCZN7xmTnE+IjYhKgEx3
VbTpoYaMZOFJtKcj/dvLIbyZP9TL/QZQnopoI3vJHGwz/5ha0bCRtXhXVPILS045J/ioQ6aWNL//
mu8kF3kqsTuc7C+jw0rA/VLj7SNUx6U7GbKqz4nbpU6wmdy59VCSMCJ8X4SZfUNVsq44mE/f0itU
gE/YQZ3cnUPuWd8Jzw3BucIqFmOkagpzKPgYtp8B3GfTbAdypz+IAIwirQIulKShlaI5QNN6JQM1
jixkHtT5HpD/TynDyiyYW7KBjK4JEslPR0SMb3gzM4M6n6oZqc0ZK+tmLZZYDcLz00z4cNY/i249
rv4wyVQa/FySo1lHO11GAMcjlK8fRG1JxcCdgkiTs9idPw3vm9pOaswxGyznD5dX0mkmYbdfXMal
80YESulc/IkpbpvqTJLh451Xrmx4smr0b2lUjoYtD/PDKvTj2x8wBqVYw43j+Aj9LHg87hEajgMe
jsQcvUjLBg5mJGEAK8npDO5aJyXscPEV2Zykdl7JDxTGHAfjqxyBaLNs8p3BNg2MDzdxZXuKKo//
Z9eM3g6hDT28micatYzxl2xOC1om/WjBqtudRcVEO6f3z2uW5rwjEmbXDUuTG2rrjR8JCXYgXfnG
0OlByjin15Bw5p+3mx+S5Z641vxRohRJ1UgPRrCbq3RMZFgaIOSmGYqRnxi2R1n2192H5dQc2xea
tAKy/Sx6325F6B5I6Yr/lv3SAKU5T0ytqaQJrdC56eU5rX7Lo3pzKj/f+o1T/q+hh85aR2NXTvFy
TZ27meV7gfBgFYdiAJ8itmGOLrL/TGQN12YaT7lUP57KZ8UAwXMpL2Jfh4QqbRysI36Pv6l5j2yU
TVuOg78zlIaB9raFKqh8QqKlkpms9xCG5OAcrMUQBdSvufTJfz2uLfEPQ+HJz5zeVnZ1nZ8P+WLR
Sv318cSOFYB3eccG/quvhh6f6VkIwVbGMQ28qOULlrmwaH6IuQwf87vESknr4tzpHBQsH/x2Tlel
XRC1E2CYSb0BVRWtB7iwCHKdOMjIq/Bt2QXPqozxZgBU3h8dNcz56NifLMrxRs8HClbovg26ySnm
gMEfPV8zAfH0AUPHdr9MpcIyMAbt4/jbQ7/dJmLs6mJYwKXOoB7eRBivjd58ECl1YPqGsn7+Vtt9
7hy8GiJySVuQ1j1/lAmblLozZYmPnOhBQQjBJeIsSpoxEqKOPglelDs1guHRwG+vGlZAfyveHwbw
72mB5uaNsV0i6wLuW1TXidzwPjEynMafwjiuxpR1Hqq7d1z1E4DSJtgXmMykzQH+zi3iCJDM36dq
3mx+9UnkCtb6gkjko31i/8r8zqw2rU9YvbgvwL7Ltl+/cnchBy/wEN6aRtr+In+iQLXdOKAj/aW8
zDXNgAa0XUW+sZkS9+kUXF23YAqsmfJ3O5xHXZviZLpA0XyTJsDlgjvlckKJ6QpjDLbXatTMghda
SWkN44z4Vl4v7+veSOrSZ3ERiUh5nFcBPpzHr5o4H43w78DW1SlqOCAD6MiFphQWTDqcO5ZgKM4o
8lt7nfhGhtsoQLcVfx4/3BxrSGvBzgSuL3oDBn64dx0TCrpqbxuCxcTZpNDx/T4iXsFbryLRw5bR
m09PgZdzV52KY5PrdtE/zHGjb4N+NZ8zwuJDWBoLLV0SBr+JW4oT/SYW6hUjeSoNcgRPL14bUXl7
zMIg82jy5qfCz3D24/wOrpuC3W4asV0bsJSjFWaqf6/NRp9vGuWU048K2RaEF9AHYZxeUeRWk2pG
tG7GylOiBiXzG0OLk0kxuY57t5qjliiR++7sdpzqtxc59W2iwxGLTthMFqWn1U7YLbjY91Xkw6Lw
LKqSM59fVZI/NiXD21UW2ICcKSSnWC85bC7sdsSTOF2lWQSdWZzj7lDxtfcztcRGUg5kTLhRw13k
Ae1k+Be7o2Z0VJHlEomIgdlkq+jLiE46CJZ1Qz1LaJgVGnof9Kr7Mulajnn4mWUDpg9u8Ad+/Y2e
T1U+uFgIUe1LFUq7VtH7bQhjX7SZf5Gk9Vs1mBiycePcU1PGIHXkbz3WnYqzLH4YYkj+xWh6/9lZ
7Anb2jziXpcdaifGDx1XBTt2kIrOBjh3Uh11AR8ImVVm6zVDf5+hk09YLMDT1+l4n+r1cNXlWuQ6
xpMsrf0utK7Sh3owigVT/1lc1a7d2zsnPZdmFgPEcJKPQu099viPI+B6ULaS8yA9PKM/a81BmiYS
PQm2fjUqwnoVXeRnxtXyU5WYNoEABSSceIjh8n3MGsH//bTwakfo0F6F4BCq4dj1pyVXupG/387o
ZKjkyJbw584mfUZK6Dk9m6Wyc7yjxXkW8YcrGRNX/E7budpDOgqAlHoCSkCqyO32SsBQb5EED8NX
wV91nvOLYA93Ef8unoHxXiRd5QKF0T7vk5P8nVvzi08v/HLTb5iDYnpdbhDkx4m278S8nvDRfY+H
2dWmaHskzDmGrDfCFhqzDMmkPlujsyAc6rYguNfcFHQ4OKLdTrvRq5pUhAogRNteGpYJ4dvKDARb
8OKqc3QpD6S+9spFyoT8ObKB9U1Zgc7lyDM36u8YpTApIojeoIKB03MqCf71yBmTog3FEjjhduRm
zqlVXJuQxu1LOOfGzBRXcCc7KzokkZ2M1arg3x/nGTKZyD0WDo87TDfwMn8EFCPuAoLKKjM32SYZ
I//5PywIEtAKeMIKdFwhbobOx/ObTxAVDlaZYRboy5Wyhq5jEDZlqPh7SyDT60KmO5OFxF42846f
BbEkFsSWqKm9Db7d9ikHo1SPDOhjl/OgCEkUX5kVbaVolS5akdc3m3dPHGbAle0v0bMiskMxtmUN
Va22GI2CFzR0qm0bCW8DSVZbkcrmTaaW/iV0O8z6nxBIbJGT16duoHM36oEaG8Y+uHMe+ZuAQTO+
DnpgZ/+mVa8yNdwTnWb0LbT2xmrTm3AGk331ZJHzo+/vbCTwPHGDdfk1WlfIlnF9mw+Pt0vs2lYB
99kNxBHTy2QCmSLfsWBVX4FPbgg0yp4fJb/L4oDznqSFvMluh7YSVGW6rG4poeXSmid0A34dVl0g
6TntjfXASeZk+v+QQDkbLSTNAUAnZRGNrn7GmX9zlIyAa5Vxm8YrkTFNtLa5LuGpIrSXJqqXLQDa
r9qvDdjd9xiakvv5CC8dAA42WpQx8+u/7LTjCgUITvPkLdtpyVSOPWZpe1P75zi6GwaU9mmnoswM
wZROf/9ZotiyS8YAWefHne2A9uht9Ay3CbcnGgI/69H6GfHv8Aet5+IdnJHW00qH+jzuKrzVQJ1d
8ZID0FGQurb/PPKWPmW1L5nwbiqQmpUEzQH/nTxIUFgMRPjtgv99DNhzPzYzOFMrMGVsSNsWU4eW
AfnUXp540nqopAokly+641uL9Zm3EgsV0LsAj1FAOxC4QAiADxfDRAx4+gl8uPXj04Sjd756yVYc
qzDwzxS2hn5zC0eeeil4CpCu86aTKjtPvej89nwvPbgaKIRkj2oTrpt6Eg1d/uX1S61Hd604DMro
JUmcnVrPfLVQPQeUKYHDw51vqXOUDtRUKEtubk4lSXfujsvIqg4nHuuG3UpAkC5mNZdDCJFolDgl
BnPpPWwcHloZa7pet/uCxj4qslCCdIX2Ive5enklM0zC9rgV4I/yIJk4JjEXx4hQyYk8UxQcpQfO
bwUoXRiVmxrr0czvekxo77SyfYjyoKiv1iFNOZxLB4Y8LLa7cOng5DEpeube+Jn5fauFWD2J97/V
i6lpvSmVjQhFVZEzcoCyeItBsdmMWdjT9jKLCpAxPpiMUlHYC9sj8fvOqV/z3UEhMjtDyaOdDLdu
C6K2OncbNbxby8W8bhKRhGtWm09OLAQvtmxg6Lbk7+LkQwZxV6SYLFUy3xslVfG+TDnm5VOa8LRG
ur4hjnD16RkIaxQOo0CYjNdMBt4DDQnQohsZMakX22T/5cW28a+OLIpHXVUdT+LFhrYD/PLfGWbo
LVIKJxaQyWY141M0dcJmAxVAE78LY/5p1g27h7jtWYK4Mf1i9fmJfBsSNQYBNFnTBbEUNb4YegQ5
VyjIOfq0WlqAISgluTmb796xcgvsAedbad8vYA5QQ8fLYY8HzDTL4KqG4zg64RobOjHT63xj33oL
ofcdGjy9Cy6ZDcxNB2sdmDXPcH2+KOkik/XEf5i0jRBxfPTxsYaTuEI8CttGnW+Nzp9HYPo0vnih
M4Q0fo9l8MSomBSOPnOMjkctIdDzjdETU3RuZarirPioKNKxsuWrzlUk/RUaFt7RJzlTz7Cga5Cv
v8zKkXDzL9Dt9QNUYL9ljuYxykL7he5AoW9ZbwOinxkhzQr3+D0B1yT16X5APYGDwrpNZduukwWC
2nVNQhiSVySWc+ei3M8c1frT0Nf8s00T87cv8di2QpUe70iK8+BoLs0/pUEKqKv3Wjc3ernMQ4Z3
guGt0GGA9vIo2mvoB6jUdHWsZhNlf2umpHNrM4jkkff+6uvD08N4AmVfLOOqSSOZa13R/DwHvtiE
A5gjBqE12CcigohuamIncvNPjDo2w12yEMGWI/AG6ioFeIVdjeQs+PVFwDXTihbqw2f7eyq3aPO9
qyddtyC7voQvlyf8wLCN2sQ2JDehxNA15/mi2OUjy6WLTxSLx5X1lVoMBJtvgfiJtTeOx9L/LRoe
0H7RsG/jO5nWH4EWqnXR5fgREU1xoueSRlhTZFPOCeW2VzKXPFev5FNqxbNzmiFp2URSJ9gggXUi
wI4B9aSkilgdyZ7WVP8LNiQ4xmCoC+FSqcxLvw3qBDJOsy0fumIF3V8tuxe8J0+5pgnyYuytFela
LVleciygd4ixhaJckvcYiU4PF5RBN9gkQzBCHIRawx1A+zgcV7H+Mj86ZsCd0XWXCRV5jg9hNHOr
WKyoKD48wVMfridhKQFM4XMCntG1Iqg6gCA5jH7QDZIYrEeFllj4f9QX0e781WHUA53NX6STogV8
fb3KP9V8HnSTf0jbK3LJWtG/5VxK8svzQ33x06vNnsJ0gItmPT4vQBoeBumcDbybBSyodSkPqkC0
xiis6Hca4brhivvUUXzs+tqwPLK0GjxA1lEDSOpgj6KXgNNocfgsGpbygl5OhvVMpIVVSHpIaMrn
r0MvhYmPMKMzMNF7w21IzNDtx6B7ATcRewk+HLFih0G5VJs9s4s4UsSv2cFL+l8Kxhawk1RGZJ5c
9dwmKvVySY2S+tVG0VGcd2pjldEEnpagVsTy35DyjWp5ALVy4iOfQZPAckYN8wvHdtQfath1atWU
UGLWS78flnbgfYjp8KkzOUXQmvgXRpjlcydO0t1rMiHUgpu2soBydubM8zT3QbcYkT6W1V13gV0v
ajAXtKTLnzGApwx3wulxZV17INpXgK3JHbQ/rv8SyqOb6b7rSE1txUiX3Vrt4WrXNcwNHVicisl1
NEqh6SQkKyzzOnZP0FzHdfVD2UgjhwBlv3irPdF0w5qlPMaelC1HDJ29Azg37qBg9KmMmgwsPlqF
TTByic6RJ/BRhVoOtcWH8AmYvyKWEJgouihEdOgx3GnkshpF26lnPRnb1p5d+OaYGBoELrudVNKl
BdAbdDeRSk9Bpsiyejvr7HjnFwP0g9I7B2qfLm+BDxA3Hyg4Tz9LkRcgBdzQcexEZAWmutwu/jxW
QcvStQYBMn7NOmEeXC6FSaSxb8Gu5DNYWl0siO7LG+AIQvs3HIVBxaboQniPn1SFV3V3Tqi2R4qm
geAUIIXGu+IAXAmJLNT1uGkDV87C+9XUvGTbmrLb0qgQWQO6/XHyRL4UBoqJZwKJxzfzsliEWSq7
AGBStM4p4yMNzfkfX5qE+DtKUMp0rJKRz+gqCDj0xrU6YLIvv1JP9trp2cC4l373JRNVdZib8A/B
AMPOzckDUDqbBBsthoFSOuYQqcycrmddKlaHp+b1jYAeCH1ZRa/d/MwDRxjFMswUMHr1tD5uUeiW
NUff/zcO6B/btZzgRFAEXv5PKLjZUAFCvwwP3auGYn1OYvjskUwk1S0st/4qMVVPhRrG/glLzSWY
YWnX/cT5+/MXO+ex7JNAYf8VdO1h1rTfErwA33/clGvfG5INQX3GfTcXJEPpmyq5JXzERHlrM5xz
T78MjxIv4z3DC1g8V6phHKarVBBArtNA56pO8L9XWt8tK8mqPzRPmcNDqVmjQSj63jWNbk7/ZDcy
iwoJtakWa4HC5g6V2bc2cxQM0er1WarE0ZffoF0JHfSOWfTsb/7+v90n3d+Qe9S/SCSbsOG4KFTo
d2QrJVH3NhQKSa1JMC8zcG+4iBdpWz32+ehHt9T0pRfb19ve3gJL4nABI4pI8uLn1MqNyB7Zu6Pk
mXAHdzN2W/05PzeoC/vf5H9pMpkEhi2jj7mO3pDirf3usupEPCxSsROo5JJASTbq9TdfZc2vpeST
cxhbTLB5bW/wHR1jjrf+E8huJlNpPcrj+zzL/SUhMJCfpGTboXh3tsSiw1x5C/kH1gp0J0U4qgx4
KQ6TDeL81+Eov9kUaiLH4tPBGGwzJB/ow6I/T5rE+D+rSYmrb3tFG6LcgYsW3na21gbQIXT992gP
t8yfhMkFbvDKohViDzXv4kliRzLJDv/vidXIBhYlkT4F5hiIhSHYkz+MEkMKR1BLr16GcXky5YCK
Mh2j/qGcurihKOmYTETZMLO5hVD7XP0cwY9hxWNCLufj+1kkcCltSPmJJ/kKg9QPwYI6O3Cn4nVS
QnffwRGeMjkZBRF5B6R8dTmNXxfKmr/4rgzmByphvbGfQAi3hAD6Tr10toxKw2ocQkExmo4ksTeo
prKTQd0EhclRnMMD4h+dIK8JzDAZuITFMb1FPkGrmTP/KQ0UNUjRm5PYsFJCjXAGnoDOxzkY79Dn
yQBzufZ62jDxykpk5I8HBABv42rlV0SB4CtIDO669MBYmjQxKyLJVMRv1chtQkHxz9sYPDkfv/VQ
482y7UtB/Gqvd+g46dsQLH+cNFMnmgqsKkW2AjUKHLwWU/vF2U4tvm3KXrI3jYcY8eU2gPmjq1j5
jzdqPfSA9UBctzgCNlRSaMEZcuO2Xdafxhh/9o5DdXK4wmQ9J9bazJ56Rm1saiGgr0dNsWJBzLfG
xKNavW5H3fHvxKu9tC+1A21T3kc9lwqmcyRcWvSKJGWFxUipIfRzz+pRY3n6+vXhN/j1eohtlpPI
gUWjzdKw0PFQJi09hC90ZzNdTMuSBh14L4RYYqvgkBICYdgNXTbFON0Fo5muTdcZeCpmNcJogMQd
f41fMglwsGmRw3zvj/NXZMIHjCBOAS0Cb/nvGBM9S38DuFnq1/uwOJdvLWmgeXcXtholiXjb/+Mv
1nhWZnM/2sWxRh+EThDZglGB3m8STXgeh3VGMJ01gSFLXVfoEYQR9mZLQqsyF3EXy22wqkLeI8/j
zSeE3PwmTY6pVsoZNJcqYJ9Y5oJthmdY04tJgbIO4ucW+2G5h8/ZSoDq4VSK678POlVrJWdHVcMk
ETxh502ohIcliPTYH4EmDAtvQNGHJI0Nk1BotHCaHKvAzPbAivZXvCBaey+e7STb0XS5usPjDcUa
JM7/URDlLWXzdFQZb4HPCtHelDKlvpuR5Te/1N/id59cXjdRmmgmS4/SkeexNQD+Jw4AXUWNpjZ0
lNysnAGeNseRcWoJkqEavoTYmCXC+k2PMt0mD4wb/pLTrQ7ygKMAwxFl3BcRK5QD21C5FOxMucql
LdUtIBH23jN/AQzvz5tv+b/RN6KB9KmtenUo7v2bdRsJinWoZ88Ay0oogp6SZz6Zjy7MZyDjPUsV
RXrP84ht1ZViuKjszNqnVOVi9S0hpCVBCNMTwZnh/P6y99CxuRkzdCCuXvXGQUZWejtceF0Vg+P0
/yBysUoAEpp28OsjV/1fS4hYMa0Q8LbdpqsnzIMasO78cAWQ/E2i3cwAFLQfexR8fT388vW64B3d
cF3vHl56bFrPuH4eLV65K9GhxQThZuvnnXq7JiW5tVBXXdwEP+T4t/Gc7IwiKB9EdjuNdliz2o3e
/3Z8m49pUJoKuvJSkgXwwsX+yUageBk3c/rKE0ope0alwJaaIE6OL3SyV6Jv1j+pUUHfBzm5fYzy
n/jSLJLXYAi3vtguevA1/cDPavzZN9cHtBX2icP3rz1psP1PktaBFZQmEUYsSOIPQL7TIfiI7vCX
8GUx/TicmtywqMyLO6Guk+jDDIr1svOoLaS/5nIblW2qiBdwTnvG4ywa91DXGJ60uWvODNc9m8Fh
guizpI5U2U5yA15SdKgNz/C2Fydo+lhMWhbXjyf1OpcD+h3bDS1uI5yV5L5ojhbaJhkIICitTtAl
+9dNYuehcQa+DHZDr2e4KDcLarxXT6c6t+S+DJBad/nqiO7ps8kb0e85VTbGSRgIp8GMrxRnrkn5
x55Emc5/ywG+JIx2pb3CvN8W843UB0aB9XZT0cafWxHjLmJ4DgQ/NQL+38L3fUOqZRfYGCSC3DOV
awmSsYhCvZ4MzSpEE6wUc3tk7Zdbzpe0g4xpmnFRk3RqP4/eeDql2NSz3stLcN3yyXWqz+xj/2BW
0FrYGP7ZbVNHFZGxzB3HmNb1XTLpjXe5ZSc3lo1ggrTEcP1IiI/4+l4Ov8SCZjZaHpXn0mO4WiFA
KUullbmPi7OubYzo2n/oO5obWM/FXDowo68spVumxQOE4Vp9GQeodm5AEMaHe/aRj6btMbw6PYOq
duQ0QEW3jE2bcrQbkUGvgUhI2S3qUZsmSAvcv99qBHBt0aInX0nuMlqeQoy5AwfeQe9gf9C5zVzP
OkBfOm/Eh7tRZSwbTTCRRamj1zZHY8jxmBeQ317FO+rHwdc3AJEXil1ACQcfQCQ7CtAhF0m+MjNv
De9Q/S+kBIYMSPzJ3Er4QYevt+1XxGIUYnolpXGFmUkFWUUhGWXkQG1zwWz7GM5FeurEgdsGncTN
yyXdGVnTYhUFRmI0fYmU+2lCTMM/Va7GpgBI+2dfOgpNHMsdBCUEy/wDGVxk6K+2EvyCFdfSji0I
Qx5YdI8DEGGslPoJthoQ7d/TAPd7Bt3DQQlJF1sUnA96IOwM6IOZt+0X24zsm0wvlMLLWes+xIMf
aSR7cxUa+EqKviO+eydwfs5qpWchZUcrv+YKBiyO1hxpX5lha3FPgIEavbS13Y1kK+B5tkipoIPy
KkdnCSNKqcJb7X9R1+imeNln/xCxv0omqrofHmCapHCzCa3b7mGQXTyQwDDGlEa3wQAbLvAXhhmi
AYLKZOPclzNhZQhQmJj0ffHtkbLeZP69XDKREtp6WKAuRXHxV+j/24o6G/vsM57e2NwoWuY+xEJn
BSyuSX0VwWQhxw9RIIzeKddg7TgaiBLZSjnCyB2TioQmuR8rdpvxckLc0+VJOoKAKo0321jmMKYL
aPPijyrqTsLajff4C2CGQMJR/U/ri7MkisfEK7S6R04KdId+pQzVgnd2gJk8YFr1TQhRImoTvyUC
WhuD99Khh/bSFRf6YF8JUfT7V9f7ahmR5AyqR38/YUbwIRGY6DiYc7WrztYsDdffNTsqz74wG9NF
KV1FuMf+iKAPoh6UfKydm63oypdxviCQyfvf2zNp2Bmm4RTUfY4C2hDPXyHsCuxDZwb/rA+xxttF
swu4QZNqojxM+LUsoKfL/fAnAGhVtmmeTiSyH541srTtSKNLg2c/ZryrB9fyiBfGm8UgGMJI7uWw
IE/Xs3XV6YUoyCnZ+TbVrt33vSil+5MrLQ4xX55n1MPOmqZeCDAikXr6cp6RVgTHz1C8Wm5L8hti
1LCd6O4QVgDRh8EbVxaNS6wH+oqxedpHhwP/ELC8z9cR3SivBGoxjEQi04ML0kt99kgCaNmNCGCA
soaMndMfQVNIVwEIrwivUNsCBCzUa4g+n9acnNT3fKF/Br0ru2ohcPl82Ee1F5ZzYjBqY/ZGOC6E
wWcDFrdKt6ZicV6govfTBqDpsKfHqyZ7GacwpJK/zTDu4Le0fEl4oNhIh18RrwlqhPypXwog+Bfr
RqFJG+KPDoh8aw/8/vg7Y+zKf1XdMs2BbZN5h8Cd5seV1Vjn2HvJIB6qtnpu5KdVIR94VWmiTAk6
dBuKbWvn8/2hvStd4gxvn5O8OGYyuqPQ/vTQPYZlM6r41yEIcPnghFTm/NLKM36jPpK4a2V2YC50
FJUVNHZhSABW/683zOjOLx6fbTpYpONIFzNtmWZYxjtmKBwJ82kmSOIx7AFrnnLx0lNCcOZll4Hr
SO6T6VDyYmECQwduftsNCHkAebTzkWG8oWBoMj+EwCj7oEpzbKkj1RzlhnbyrEogr7vO4YhDzTVU
2CQyLVOXE97UfgvWcYkg2/mEBVmytjgmCSLEhmLSNdB8ydPAKZT6962l4la+PV6Yp/aBmjUH1F5f
GWk5la+BLDZ0JEBWazgv+DxxCkFu72ba94a2v2ICP7Fr1+hfYtBqZvn7EIJRnFFH2qb83icgCpl1
ogK5NtOuso1N/yPEKRbgRGPzVjOZYT3wSPJ08KVVdmgO0hi6tSMu9LIa4VUdaQjiVqHF8fp6JUuN
3hEmsk/SFf0FcVqCJ7XEceYIvlFvJ/GamsQGxtAhxbfM5VZYywwsqHng/oXh+sAbDMw6guQdwpQb
8uAMINnVLrzdeZlQUuWtRjtsSYE6uBkn/kU0kk6dmg9L1gYj17yYvP2f5KFoB2q//Ke5rtVPMcjV
DA4k+kqU7YRwKuClMVEoPtdCWCp+YPzmwFZnQ2z6XVb0sM8jyALg0fJLp/Uq0bTDasVBvXTGf4kc
UMtQVglcDYroOitj1vHjvCKpHXGXnMva3Cj606bPwj7X2jVePMyogEWd6ngbK2WAIe336aOYcCuc
pAWBNjYSfu5EXWWCTdtgj4wfT/p5we3LiFTOhiseIL96Rt7o5a02uSFPHzsDsDgjFQqxi9U2KJ7u
lB94dtC8NyWWa9HN+DxT584QrQdoeWUN6DPI27J6O7gMFecsLiVHuN/oL/esCxi8uLHwQD3Ak9iY
I6tDU4LWnYZrEgMcCvZdVAY/7xDgrZPNofeipChSm/GormkK6uKBIhzglLlpkLAX0aEAu5p6nku0
CbMI3U+5HiVZRDkDUBFNyWz+gOuunCBUWjSq9y3Td21+QCUv/bvBf2I/BJEebuN4kNc8Ga6v+Xk5
HHhpHNrNee6YJfL7OOSGDqGCw5Ld0LkdO5raLDHAmAl9l6M/70jEPFtrBM9TkuYMe1vUAQM2eS08
7oQdtsX4X8Insek7VlvmMBxZ8UlcrKeOm8LXdq2LlN5wL2AzEy2/tZEfWD49QMchRnsC2HgxZypA
GMJr4JJYS5wVTKtfjSV2pYJFbuT4m1Iz1zbc+JU9v2Qk06atKWqMp1F04xh4O515S+/hwSJnxalg
H+PuUunBumomk9kscTd30t4hBTe8DHBum7omymv6bVV+PZmGOFK4oqjyOQ2nierHWCt3DQZaIjJF
8qWobuYNXEtqYMvts7V7AlrG9c7KX1Ikzm+j+6OR1b/aHul1q5Q7leBGH3RJr1/8+OhbEzhfRFi5
n1iqKVHDmrANZKNZwpdWyag/KOYyBMSkhvkO52TLwBx/Zp2HHicD2YG/BLIZFCldGBZhF139v7K4
UsOYqmzMli03KbzyglYwDvlUInaou28jJ+GOro7+HiEqx7gtmHE2P8yykSQYb3Z4E99HaIhgSYZa
4NaeFfgd5PTaOUmL4ZQLx869Bbmfk5jEIAmJSMVkdcgvZCxqLOBT0VjGsMJWGcIktiPiiHep0a6V
AOYbetuNTzXe7k3bzEyF5+VHTHuEwF9F66ym5oREIl5HS6NETupXXEj585BZ1VHeANLx7IdRIUcQ
aN9p+j7STzpIfMDnpzGAGAlxkrhTWJM7dzuHBFPrkrd1UG8kf9Qf41JKIa3My8w7sTIvju03UCK8
r1GEdLm/MxynHQAdt744ZBUN2mtfyCU8A4bBHgp3cUcRaNwUhDvgoj2GdAX5oUyKtzKsWUuNm5mR
WJ5BDIX1AwhwrBHxG2oh14lLQwYsJ2ll6+StNJI5/+3QdaIP54F3edKGUCOUxf0NNl3HeXMS4s70
3VD7UQeNHBek0uGwdhoF8XkNkgpDx/ZsKR9DaASCCvLZ2xxzb3CO7NatBN20aSIvprAQihBo2H3W
uandWUSvuzb7yP1wddgbrGriF5C9Dx7QOMnBsu50kcil5IAKhi74HgHjWhL6JXJb0JFZd0+WmSFO
Dz1akvtw+RmYfw1mvTNmJR/Yg4rY+aee7u0fOBqIZh4DNiCDGjxx0YOUm6Lu8t7OjkbzplUrMsof
LgEpfLq1Bh3x4OQWqdOVhjRZNm86jejcEADrTVZ9eNIUuFvwz1/v/W+bSWn1YwIKiaRZxlL8UlTp
Ax0mJNM0xNENzOyoirDPEU0GAPX7neCmxd9B554umhPBmJQ3TDE6Y9XCOGKmjRHgsuJsCmRdNLTX
ALQYQMQ33hOb/pe/oJdheaDh9NNfXSqcaApoVip8ukG/dflLwC9yjLnjLdlMw8eWYOqeaI2KTVrA
Zy7mbeSF2qWZDU2gq+oxUA7zWFFPNcIXzXZszDY8Z1LF5wApi036fzeR5LX+31SeYXMNzlG3jCgk
3W5FdhM1UwbLIddfBFbJWtW9zecrAa7HNCL9eH6XGPA9TVp6CAUULpDQvAcI3InL80pMiFTuAgWA
at9FVg2Yq3PaKdISPpeOH+Wti3cazsbngCxQKDa4PZlOBT2jupz212mPozb80zqT1NSssI+fBC79
LLZV8hfAC4Dyj9aPyKHWNNCrZj0HM9TBDcF7yzjfqrfGZlA+hKxTuVVf9rIbHhq/tDG+Rx6GxDt1
RbCyXBGuawafsogHL2ME5vNVKO/bCpbgM/QmAcydxJPA8ofY95qx66QiMQc8g2cnQLzsAswNkAYX
CfOQNYhP9U72rD8w2fiAEOUPZ1mJAUbld+XN44IWodRCekVFfCJRhW4I+QbeJQVHRgfRGpO0ZBGh
hQJGZpo3F8KpKeEM+lTuOI/69vxh7GHd09w+2MPiZBwsDwtOvm+2/t6antTge/dPOFxSzyONPWI/
5fRJEoegFa8DDAhktjmUD9RCsZ0W2lHAz2wJzBj05/3FNT+nejaMCri+9VSNMF0fzeykFjpbvCEa
kXCL/iHhBgylmpwyq+XUoaijn47H8DrUJp2pBGuXdzhOla3bwjR9yJ/U67enbY+Uao8tRi2UI2Tw
UU4mxjxS84P+QQhLxOPm/AKSl6HockyqlFEVv9goDmqjaSfC6554nQDNh0z1e8F3r9zTrf3W2NJ1
iWm5uvzgnIApFCULhTOwBXge/0ka4j+7+B2qYUGAbMpp0JO7cy9J1XHaK/DrsCzErPKnimrwmnvA
k5UWLFRLhwPQiKHy+6z0ExFQ2qCmxzjFq5tligkQkNTfsSnkBV98qo5qZPhfuTyrbpU69Z30gqSZ
FEC2ERXgKpgcMEHUSh2Pto66whBfcgtMJPCX0l7TuDiVsTWVMH4hrj68qDyjKCyASfVk/iD52pJy
Sf1hNCzYjaS+HXNeyfbTp4MfT7yxoyx4FgY6K2cWCFRx7UTVzI9xyHTlFgpngvrT6pB3B5YxsqvX
mnMehizEndWxyLQmkDDGLJnq69HFX0Xg/cC4fVIJ3Fn4XbZnPKUAVj//TTUHGOYWHuWVXh5hZKQv
Laog7lNS3tgmcy/02eh/BhcuW9TU55CGN7jAfNL534mgmKmm/8BC+YsH5ILTgOnJTOwW5LNU0JKx
713ufvbWLKxO6KjLDkTiaiZh/7nnUPBp9mbPSPtz+xB2Fd2FgMbnRfivx6R7gIFOM0VdGTe0wcv/
qO8suZ5XoUpsrroF6JalMr+beiBHfJ9gFCB0xAE7gYDrmL4mD5QWjYQI7fxjqESrU5di3HMGdPCr
PoSh7geqJByBtoO2pM/xz5qsSDmz9bPLEVPGp78Yop6OWiKuSkRq02GPHKYMPHEWdyfevxRevrX1
eSu2v3M3VaKOFWSj49qjBk7dd7BxH4OOaYaFKtBFRS5XVU/nEoB3/vVVBxqukCNcThkQG1/ML7ew
DDSkvCMiydTM/eCNS5yTNb0YalcCT2A1KaTK55V7OM/scwrkodYweBUlW6AQpmz5LuNp7lbpSTUC
0rkOconE7vaw3anW9eWRg59189+EL47LemVFZQ4u9xDMivrklmrTWatDG4l4ewAvnZkMPHPY9GVL
CLWjLdf2VNX8a8Y1EB3GeKY+lp/Me4AddwLQ4h+1T1oO7AW7elMYR/UyTO2/t5p4nOGTciHa682+
3+kpkm290Der8MibSr22MkPFYXCTA3mvkYQtMV8Wms2vxBiKKvaCQw6EzJxB4aazlXDKKBQMAyQD
BdyWamnwdlVuLjqrSIrb5WcqmG30cPj9iMZRWuh3YJTsoGp1Lnj/HC+ohqY4J7i8Ir3tEWeacElr
nOqbyWBg2R6PBQfCrOrIsP37TW4udaXveAwnJpY5HO+EKhCU5jjM00T7G3DGnWRxmXD6xW1Ml4/T
BNw0VHYKGEowKdZDeTH+JCL5zYZGMFrMQdjIaDCtyqRz9SRFuLNwkNU3d2CK8Dw2EWb927/0rw5B
/A2yqbtdrLgUxJYVVj6xMhxNdiPwU2eToft5zLNNzQxKhpjdw9n9doVs2t7byjGV62fYfGDXL+OQ
vLcmcvf4S0thx62ZyFem5zj552KjBEEeyS2UHWf+oPrhtEFkmffkEw5fD4nOsfx5nu77RrjVxT/v
Fkq6KdJk3FM0c0sAoi+9YfBuTkzvdNmSU5WQO6U10aGu/JUt23VrygkTbZbXCVDYB5VP3af60IRe
Z6wEO8S1wT+FDBgNfasqV9Mmxx1tmuN1WBRa4rI2EdADTsMhFTuByliHQCUPmVRJd63utzzNbjdT
6QT+rb9fykseFE74Yk9LOg0zIRul/seI1WnLbjeBqeVkiwtObPswWBwRu5mmpWBT2b6iqV+NaxQZ
opY+P/QsNVdAt7Edou4TvTl9FFxKPJFnnKddjmTm8lJlfF4wwhjxE9s83UPrEH2DoIATttGfuUv5
j1lN8TDPJJEA9AfjhPasJXrtQOVGCeZjjMsGxH1Q8/imKunPUOQ4xYRXgXBK7Zg8MJvy3jdhzvQm
Ji9CtzeInPBRVooKkUwyG6+iyYFywmfL++8aeBv+uhdgvMgQ7RVNKCEMzsDgdUuK2mdLfMWhY3ID
NZebpFAV31465Z56uFwX30m8ad38PaJIw7qoAxJIv5b3xj5IuObqaz28AlKmtf1Oyw7IwZQEs8rp
97GjN75HgrwNglfR9JDXjbgP78xqhk7jp5O41VxsyfrmLfvb8Z102mWZEFq0Aj5Oq80hWuQnqO6l
3AjR8E6Nlpk1fYVrmURBGt1iFts9dAZ/3clKlgxHHz4yXkX382DGod69GZRh1zv/JsSi5RvNYzRh
PzMJ3Ba8/Z/mmUgjuP1Qv6RZax26CtXcmfskGLZ1PatkaEy4R+bjM3lnC3r9VymS74JgWzciAV8e
dhLGaTxXsjQTQCdm1ynLmRRfD7LKrTToVHtH6OxG3Pwv+MUT04UlSnIAo0niVBOtR1OB3Rwk8RWN
bXDk0WE5WDGAsGvLHB2Wd16/w6wSV0oPqMaEfSymBDzJx5QezkREqIQIncySsm8I2FvCkoPuxjL4
NoKUkK6QRQfnRzq6EXB2DqmSLVDmTtNoEARf3i9o5fMQb+zXnZE/AriWopuSc9ELHvrWsDATexxM
R8J+qdsymK8ADFmEtFJYYBJ2Okup8Ie4aWtXQWciENRX/C3pafXuiQKSAyngg46d9kni4cIKKNer
aRTEQlv5X+eKqy6mJfaCVYHlELt462J8LwjtTKqk0MZzbARtZCn/CGsagZk6kT84OyYZRfKxTjlV
pK5NHDmSwjBz7IDWKmuOTluLvRNC563ElRLpbn0YtkYCYpGzCOPlgnuCuSd/yUOuarWaIyhfc8DE
Mgr+uf3qlbfuNthiSir02eMjlPVAFLeeBeIE1P0iLwtpaTGUwr4uxVL97zCbxO0PqIFdmZIzACxv
u0hSrwwlsiAlm3OQWA6VcTNtDerYyNXoPAJclLbsZQkplgVjpF0x4JipHBk20Vbdl6D2SehPGEul
8OuZve40/jJCsrokp14z6tg34oS2p9KfKl7MDg1AGy/ParIKKyDKTX58jw31LKudMi+UJsi09/ze
Fzg//v/yhhYJVsih8U0qPjnZuq7878nAZzojxWsWIkYV+7b4t2I0ATGmH3bqWSd9y5HmQhPuNY8s
bmSgqdsCXKz9DeGqG3oTxPzLYUJWAn3+V2ZDDxQXBz9787hxDIG2g1zMKj4+mnEWWCI7WyCGTjYt
gwv1qmIWLbPYYc9nPcDQnUpET+n87D2tRQZwOR+wXfDJnNtBG3cGBmRR8+ZN9onUd1soC5WuWoO1
V4kzYg8G197eh35xvM3sq06uI25DBniWfU2D3lJow/VylzmOZ7j8RfbVPDEtxuXEhanoroUEEoqr
oGWCeraedV1l+Mm+Ed2GJfFaSepxdVfL7NrvLPS3K0p1Y1Zf56DH2eP0ylEKlEbXGq+zwpP0vQ1u
8R4JRvSPSL+gqEoYr1zUO4AKO/kTkYagvxVdHRaAkgVR3H6S9laOMfcaNrSeqVgvlfe2pjo0eZ7g
kH+uK2vAXgdN5u9G0K6npy2CtJ4lk5UQRbM2e4oEfMgcscaCmcMXke9PXBWS9wrrx4dH4/8sRsT3
ysBZboOeQgAVuZOK6xjaOBaoLGreOZPC5HPjMAmhNH98UssuPMZJ7dVUG2Pr4g/JJzcKj6xkTiXL
kgmY8b9OBAj3TpphMMDumxZWSg7B8u8N/Hi6r8KQIibhwhPYq43LDFRSC9n14H82wLNbQ5tDRokB
GPxNslpwBtkfkVH5nwMORdJJlAvY2K1iUz2Uag9t3bs4P3HkhE6GnfBDA3Cy7B+cJzzp8Xbx7Htl
ThNfTCPWELhUbPxv6i+DDnZIDVMIlzxLQuyk5P2DdDJGPIDCJdCOF8yGeWUgkORAdBhhusn4+iKd
I96DQTF9M9FmJkEi9DZx+PqAu7uyYhZVEckU9DT/ZP5o+io+eZp/Oly7l7qj6MqDgJ9NNAftezhJ
5+0JyYEO7K0RW4SZAFg/i8prLoiwTiLHBRw9xRjTx6fK2NSmXmembBlZB3g5vPL/p1S60vDZ0nV1
Q4+o55CmO8ba6NOaS54vtKO9JVxZsBhClXkH8SYzRc77Om1xouQlf+7g1nEotwpEau8U1O27ZdPC
Of+JoEQmZHUxgI8GBu5swawNoX7Pu0K7M4mDu/X++kv/Cv38TN/BDD/eWBAWTtcP5K7Whso1hFd7
Qxv2qgdrbi6h5fVli1H586ovuBjW2Gy1wF3yDd0HCxVLhtaV//IjHGJAATeUve753mZQ1n5x4Ib8
hxEg+G6dsrZ4kYqgTNbGQwIhNBzncYwdCCF8uhpPKBi55GurcSkcE7CP/nq1M/uvaDUGLxIHGosr
5OVV3L7r8l+AIJVB8Wd30Fph8sn61Rf5B//Eo40BV2xvje9J7N4+wlqlaAh3LREFSiaFe00WVbvs
ZyvobNHcgFhngjB3aZhszGs+7xIi0F0T4+g8gwqdBuzRNUx0gyYqRUKTaepsCUPSzkv1Zn2jGHjp
aia4fAptKI6kIQ7TnulDw8j6H2hXf8IJNGLMzh9YT9j30LVrlHquOd/xv7fpwC28G1ocbw7qQUOW
NvJNgIGYn0JUNvDenft/Pzsf3ZHVAIMyYGPrjOYyPkJjtewiShVswQuhKzrbGt67Nmei+OfrLBjj
0dZeuzGwrGG2WXQs6CnUGRrU5ymAhYlcLbk0qSwrwnuF/BiI46kUxRoJwBQJ6/+hyW/od+psGPCl
OUOzvGMBN2Oi8oS/ZECs9qpMspvXBVyhRqhzqYDL67x46HrOYlqE/oy/kHEkI7EMKUmVb+E9hzWJ
t8OvGa6qUy2eqN9a9/x7Z9ULSn+Ho3+e1WgXMCY6Xzfnr/dUey/4knnzE1kZUR4RP0qneYB2wKm3
vsx0abXFl3/jzu1du1P/IZU8g9mMIBTbTyjNif9NbU45c8OmL3oWU4lkeXwbNNgVRHQ9Sja+j5Dz
IgCMCyAzLsxxyyfuo/3lFx2BA3VsL6Z91MGF6OGl0evP9uu6sHQpxlrNnbdh8wNk4N4g+ueAs0FZ
j+QiqTAZNjrClPxN2VaDLlnHutZKi6e1dTxGJTq2/a80Dkae4dbwX/nNipx9/xxHjK0/V9qJxmI/
Z+TtTsTmoYoaHGt3xuBede+Nt+fYklvz03eWyq9ekHZ5kk/gPzmV3b6usv1rs1Y/kkPAmkoK3Esp
BIaaO0JsB3bIZkh3ULWT4V3P8fg9jBDUcZxyPfHNKDDCeef2eLN12rpvwBEr6WpckUzfst34jRVc
L6+O4hHhzqIG/ZIsRUHtEQrCoilB9qEJLYg4nK7ciN9chsh/UlUw9CNKiCHE9Tp9sKmFlBZ8v2r0
yVSjh/Z8ZbHZcuFpkmSBG+Pkw+51QQhW9KcWJ9tcFR8IkW0a5MQyIOlmiAwgHbMBo9mGcPen0XYU
kgZo7u70OJQ6gYiAMevhvNVBOVdC/8dJsZ9JQCAPt31cu8VbHD7nUTdahhEYgiQkQ1AZ/wnlrdnx
fZud7GhwzDzAqhYTEqOB/sehlNIhQwrRu6bsY1m/faSGlLgBrwWBzH7zKQ99tR+HJG7x38R8Zheu
Cj3/+43egULrBP9oAlEeqHM/4BSoOxlciPh56FYtjDZJJpVBDKybDtR5XNj68XL5zQ7IzqYns2zO
Kv7nlP3wPtWseBvURtQIRlKrrrY0esfnUkh12Xt1imxXmpCbrPaC26msaHlE/1LgOLlJw2oqSe+b
YlEZ03D4Kiiql2+fQ2F5kOc6X3b0iMCrSR+C3qUm4x4OdwZ1WofSEgkrtN0mMj5TsZ3Yc8WfVTas
BXhkj6MjeO2czN44tvmrknTUIY34G2CnpgGtjfzNb6PV4as1z5dFYbIMBuZFPJryQKp6LPpK3VoB
dEVCewN/ZJnVuaL2/XSiCupIeLVtMHKhxTb9VYCHuHIIID/MDx0stT4TD8XiEIkLLDt0nWqb1jKv
vO67W2ZVnoyHb0Jjy4MVrYCTOtFcSpXZGmCv7Tsgne9QyvFZrWxjKNdO0SuxlBHQSH3GahtRRQM9
BT8RR90f5Z1Y3+lWf/XJ4S2tQhE33tm8yD9mMbSVov4T1iWnclTSdIsjvCPVTmzNhvqyK/cBBfrS
y17jaw3z6KTAo0mwJPerfXIpXXiUWW/Q8WqisXHXm4cPvneHYq7AM8J4X3jOklKO/J+EKCq/UNtB
pHaVS4jxAfTccQQwNw/H08ZkKW5MhGphXkVbiQhHN4DKUgyaJOqB8LQeOvavS8DoCRXxjb73sSLo
Xi9VlqZ6ghLovqdJFuJTJVedsPhgBENJhDz+YIvZLBGS5ZsqNLgKnAPz8p/lzh5lQuI8ZAodhHTg
1wFSfwTUAO0r1q6Pv6+vUxaNiLFqU/Na4D/Z9P3sdCHew/JyiG05BPsQ+sZA4pUdK8Js390FraRc
jCzxrMQ2AfAQCkbsLgdsUo6Q8btUlsgVilgO9t1I0VeJ7Y9BC9SpqcAq5cCgw+kw2BIfn0u1sKba
M5ATq/dJMTxpIDlx0+g9L32RvOI0aZpuIGZ+D5eu7GZATk6OWr/J8jg8frXq1pZ9C8Ny3ny6uvwG
Y0j7QrbIikkxdFvZFSQ5Ljb0l99lSpl1GXrKS839tz8gbIAngG5P11CuLvJSFmqOrEr/Que3EVMc
iehf6FZS4q5bkVWHMuHzTyM48mYJAShoje91JSL+5xKPaRHO0yBKQb8vuPKIRHcQUTrYvQthWW6w
K8FOn9aEqvu20GdPEtStJM7yuvKwUpJGkGjyRw3WeIe2M71/90fzzHa3lZEJU+h5oNb3GnpJMkaf
U274RgFv9+5elYVGVtfQ13Td50EuAzqX/3E42tj6BWrgmxTIqqTZ09lCgvOlT0R0OziF1JIdz8A7
H7GXtrESV4VXVn6OgdojlldL101Q3Mv7dUjcfhkSxeNq3pragwEDY/uCpDoBfi3ZkSbdt75jHj0R
7JU9r3o/as29UtOI/TgkTb1H1sqj+iIKOE213pVli5BFeBeXOd974OLU5ezHRnpz5Gkr50bijTm+
0NF8dcb8T9FcrilWoYwM8R0Ym4pYWF6sKH8AzcFFvJzX13sgqZhan5wCJlsoINiz8GUQ6PAfeghQ
3C+Hp/oN13AJe6MpQYKckPBePwlwTWyfS+arjv/Zes0SqS60tESUXHf0ocYd3r0r0nLTGDpyiRAU
tVzh3JIHVuAqQSXnQVaXtTBBhEHmOBNXXBY5bTY2s8PbhJ+9tFduQRBGm6KCzDJfxByIZ5BYx/iO
gFQSf5HZsx3cIRHSYGtXEbwtNHZBX4aMCWXd1QvgR0HsXvX+keNsaO57C5gpELm8rMPKEBgE+BiE
OfGQu5K4zS5cY20/cOAX/WrK4xAl4B6fSrnh+P4HxuJtwDLgJuWY1od9nXv43Nt4YnDZbXrzcq8H
46ONv39FP2rIp9o6FDlNjb9hTIGsylEajUMXD59RVyQVh0bnxRug8trNIqY7wHBsyOxBljuj67RR
XEZ6WoCgu9E+UdsAJiBXKdeioDeTt/lJlpaz1gyOjUxGRm+z2CzlWkyk+qU135spkJN8hb8db+ok
W1QVO2bdpe35PUgV+PBpPywQc0LWG8dV0UOKk93JK3hkytCO+CTKMG6fGc5SlGEheDOtXVEZQI9N
262H9rtTw2v1+KdqwUqIY+r+7ASx0NPzTI15S8JA7cMNdFxWEqJPuqQ2Ny2+p0I0HBHzQ/9Xjd+T
hy+8U55w6GzU/xGZbzjFWQY2w896wZE5cK7rTfFbKuR6PcxFj728slkymt58LLwSQYWFWcGnxz7u
5V8owep+WR283AXbIEfzqWI1/zSKphHQKd/26ozP0Z6ARmoFrwkGNfc+FFc4DIagK9jvnVEoenXA
zbgyXpODt8/nZVO+FPcxtco3xmVFxFop6gKmhWEJMtRAuh8j5VDHtq/NwXFF5kgNMK6tFyLk3Fqt
zAzNUN8WpshMbZJ2dmt17XN2df5P+yX/ZvWEd4vKkhJPQPaXNQZM5X5qhxAJanWRxajEe83RWvnR
4Ow2/hkJenjFdDh/LTg3KGe6kx57/fy/ocYgWiO2iZyRICSGrx6jCLGKm2Kw6RnhFbktxjJ9ao9I
VtxZeftQd9shDxtQr9lIiGzlARUMq9yGog6OF/5KucVClXUVa8bjJHBrdh5W/8JSlYSXeOHBY9+X
/9pDP6/LbnJLYkMJhBw4KWFR3+O+SkFEPEKNc0ztQWSiFb2WWTOFylIkpbfyDVJR8YG6zmFKkZLB
6ACab4agKSkXm6NeVErHGl3FwaR7xtTOBI+QzBFuPGbA1f4oO6FGFMf6MLih5b3XbTXiAE5OyyEX
/hGgoW3NXjUFSYuLOGzMDyxKfarFvexQKK/Dm1kalHBjH4zEYlTCVctuLa56hTHkD/u46XW75mgn
Fd21PXViCS6sWjz7Y8nuwRK3wyCYLf6JOpNcGljVwdr45YejTsKw5n9/D8tgRyyqlb3N5ljM5eNx
6DRbU2FikJi3IxkjM5hRlCU+9Hrj+ilX+aB/BTO3syzNiJIUW1hDXQ8Kgude18MtLG7dSCHe33LL
DALSq1S2EBdR+x+SXt+2DCGW1fd5l55VpRYlAAwpMOFdZpzVMUMb28FH8sSujQrQ87pYx2E9EqNf
zCxp7zzdHXqOoJtGKmRyOduAC+L8w8eQySaU3tcryPRNiLYyLeWghIRdH/18Iuji4RqZ0ssRaY3B
6O/e0wAChqicWYV34h09kNwKs7wQajaHSDk88jX5gTq1yxUQERCROMYmONrbZmLBaRgdtATf6+g1
T7odisTZbBdIRj6z/joBGzE2MoNwXRI6D2V4WO8RYOdloQH/xfXYFgpvXsCUWfP/xnI40sp2P2Rm
rxJ/x+KuOyLes+LFMjb2bo19LiHTkufx26sG5Ony+VZ5PdwnIRcTMztxoPV0ELNg3OOAdXrcGmki
/R1VpjltUnrR4cXpj/lIqneyCcXuRAzO2BicmOPlCdaPTPwPiix2rC9PUC/0EOcqEhMeynJMy2+o
8mC3gRV23A90W6Wryr/+45+nUUU6N4JopxldGW+2M53kp1aexhylvPIB7NTcWfQNGUhuY76c9YbS
UFumLWMDogCRgPekJZTQydKfW/TIbFnFgSNk8EF8KdmGU3AKECN0GSC1A4VeOgpx6dW52tek1hpg
tD8qGEhchkD/NXfhp1jrTN9EOBBmiC40aX37kIptg1iSao0bqMg/9QvYco3/tr7YxbVhmx8aSzoT
Gg7Y12ftDCusL8kf0wzpm6oc9PG2p1XO10148suOXJ4c5K0wlNRDuToJ5R7sFJbwXW2jIN8j69+h
RdrLLk0/GDuvpDrtmqIfH7kCm50VrLWsUomcLILbo29lg9RcORoVTJQh89mbzey26gc07QBiJlNf
tdEnx+SgxkoVjz0AMbjW6U7i3EcWh8uAi55LhUXZIcpAEenEqG1x3MnKQCzk1hdORw+DTaN/VqmH
GKMOLdogqLLgPk9eCcL4FRqr/JiJzf4325vbNe3s6j/YN52bpG1AWxjaGrfal6ao+M66KvKtd7+V
q6qkBcxKciOVI7c/+6Xcdtrtne1IMWOIJpCBTvc5PrJq0RCa2a6KAAb4VBMPlog0JkMLNeDle8oW
EYZi4StgiO1YoXb0xKgvUP3tVkh9nHIccaL+j8fawv4mb/C0RVpUaIHHHqRr0R0SSMy9EQp9BsLF
KtVwnnRjXw+zDAIm+5gL5fFnYprCjzU19fV+R9z6j9d7FN6Fc/kqH4pgFmzLy2ir5tF4YGj5uyYu
uI/8YedAZW+Z/0cWlELF9RSWAYW7nyVBKe0zLNHEN+22jqhjqzE+eF28UtWoMLsvP8PxGVfpe14S
CcBI0R47/GlwuCtW0N9cEGtjN2QsCV751OmmiVanymExnfgfspnZl5/irUHmEa/AfiU/hfTRK2W4
YN673tkBizyJvk65qWs74PEuIhlVK1duSJNv+wcOwrRA62h4QEWJoS9FbabV2wzWM3EMNx5PgAwL
In+PXr65bJC30dqadd89lz2Ia/s8sP2pXyQsJj8zGe/HqpowNZSmaSrAb2K4pbcN+15Vd8qOJugE
GtEZ/1nXH3xcSMTCWRylZyNPStFS1LyPJ0kfa2bnvwuBKDIqJKQX5SupKwIr7I5xICaAU5Y3Cl/a
aWTuOG5HBzQLdRWN2+0JuO8AKlHg0ZHEqh/PRmunU2umv6vRhCfD0CA9GPiRu+YIYqIRVg6EB7n3
/yEQYJw36ARI0GhZgHX18lp5cYxZHJk4fJ+TfexQJLR2J5pCSYVFuWkv9XomPlgJOtRVF+KE5zVM
Nuivuo2gRlgo7pOEka6tKvfQGdd/EQpZ0hG2Np4HIfdAZ10BNb7Zkb8Fw0BhUh3Z/gJSqDvBHJ3o
7VEXWGdl8jY5+eph8s+CEg3Y8EAoazyTOaIKISZWazAToILaJ9ZGQISKIhtynzvM1mwREaaWqIKA
nrXTn5it0NSHOcRF29FznjNw/4Qj/9qrQevarXbk7iz4HOdaYENJZgtBOxlaxhRYcTD08qOeJ1Ii
mIuvFoO129AuWenPH2jdIq/6hJvaHx5TPe1tsb1nr22jOVt/YqvVQ2TUI+bO7d6pkueHJLVIHoLw
5UaPCov+VmA912i8dUUtT9oghwQiWwgEs0qi0JJ9tc+S3VarvypYBNf3iSiyew/KQcLKMCmwQBwc
ijjbw0M5+HxslEJFYWSPpz7EFVfwILUhkNv6BkZvQJshva+fwVwtqhe9SLSMCTWHi9ObpWoID7eZ
bIqsNwt2M45cmypJKxXwIaJ80KTiK+YUKIb9DxAE3QAfRgopqcIeifZCgAkSpfw1tjlCGF88TAJy
52RbvRpic4ETbjVVd3h8KZn+s5sDZtAjKAAiNm//W6ZpcaC+gt+nRDmXF/EozOd/PSfIitmQgyDZ
iOb/HxC4GnMLo4GzVceo2uwdHADEChREwGbOguojGgePZ49rkgUIbCGNGXt2RvLju+WS3HPoizIs
SYRqpdRurnC8EUyWx2Ctts4YYMw+ejV3cYJfZ6uE/yn9OZS2fQ4XBbZWijuWgYm5LMb1i3n4GE28
kD7rB7yODQ59xbmDl+3c5pnR43u2+ByjpEKT8LBoWcqRWYbFBxRZDuc9X+X/YNAXbRO4IE4b/NLH
jbM8JG15ZWm0+HXbs+LzoXF64mkC2aWVXQnsljaL3+yh1YNGMaKsFeGTkot8mHaA+BGg+vPMsyhz
FjjFNkSWhP7mjGcsI/dKvys15xg7dRlBXCsH8uou/RWLw1B5yUGYS7O0t9C4qXHvRBC7HxHQbm6l
ThNppQ/9dp84r3opinTKVC3lMMLzqxA+BuwAQ6+T3uNYyEpshwGQLZSGyhOzL+oq2HnrAG0ZnIxt
oSb/Xf4a9vuhI3jTi/8pGxP7a1ojRgbp/krhYA38yaa4n54Sj5mD67nIKVc973UeaU0VL5xfvUFS
bo2V94AJRSBNz2iNGpB3kvfRasSbPrJD0SoGI6js/nsI4Ka+I7uVGC8ZBrkVGDoZo6cIZ3eldm3l
5oPqwIOdqT4TqEzfIcGOBxSJEZVQccwDOuEFuG5CpZqFeR7TxgzFnYaXh4NIp24r2wnARTMWUF7y
xhWIyKpoaWv9VFbl2pPsqyTFGwN+sfL80Z+gyEoEj1SvVmg3H0AoTn4T9fqCf2HEaw5aTBlYiy/w
/H+MJxD+8riIU0I38E+QdaRteKl63e1bvSZOSyu0jvOcGcfgMsjRMh3Rm/uNwnj7YUBsGz3q+iDN
RB7GeWDlCLsbstDByzV9rEjr1+bnW3Je367sPU6L4qgIr42cvskG1Rq/7iBMLelhWtRR1BVH2Yx5
uN7HRozrVvkHgGXfsDBLMwCrRp/iqu4eyi7yclQGDq4MdkRgec4UmV94CaKAQtZW/HX8Qm8RNCmN
riYH64FTeGx0HiyUxwWNMsL1X4wg5pRTYLhPEBt3b7kLvZBtO9IZ4K20Pwrdm0sWhgiOpNNkjV1m
7u3cQ3z8lD8PyeOZI/ZJ3M2wcgnMHa/g4JYeug2Yv0wPfVDBvOY9Q+9OSLav5UQj20Az3kwjSfWC
VGY3b68KOaW8u1MzMH53Md3fsGGGvfqUL+Pptqu/M8IZd9moHnmYsx+iDhrXRzrTPNmu1dBnOrnF
mEeR4RzoLA8qXkNO5Ba/tdDjnlf9VKaMyQlEg0FhkvKFyBaDqhhWUPwZvcnkAVz9VrUCKOs74ZV/
zdN547grX3bCjOiPSBmx4oQatxbOJj2Xjg4Zy9I3Wly0iIeeRt7+6M8n6jET7TIytKZxEcMB6+nd
hxvuEzqiXD8Z9DY8C89WY7xPYIKGX3f31P99ErKhuoW9lLBqBuCuMUVDUPI5t0gZEHD4bQoM956t
221+/Fm91NmQMCqZo+2gkOdRpM3K4CWRgY+4lYwneE6Sefe819/FzxIeKtlYO6a28xMfOa+wO0jd
pHwbK7y5zLnt4zUxCYc4hB0C4DMl7EhjwoYeUBFnhmmWiTM4hUqIhBUTlOthI2qO/JDVQ2fI+jlQ
Luw3YqccL0nl9YA7o6amqcWB9I2GfYPDEXU+2bQWNYOaIN/mzvWJVJTSJz4VSi4i6J6umuk3i6h+
6Of3OfXOxG5TDbBLwoOHCxd0KdPAGucfoZPKbvkdKvx3MRI7fwDAd447JIlvKXEmzOX8pddTg3VU
WZk8UOASpLNAF9dcKSZE8KN62dD6/by91LVl9lJi5et6p4eYJutwygyDKsXqxdfq1ERs3YkbOPLU
ul+NwclqT4p7jt0dCeKeL+57Q7QR86lFKfJ0fSOWV60d3UMTNSkeNxG9tR9NTHv1iO3g5yUWFA3N
vdWyOdsSGbxneAZdMq2zi/GMzO0DCnHb2ixjcaTLrDftvm4NV/A80bhv3DfUy4V2jbHWrESlG3SW
S0lPAUpUr0Tj1yoUefVXhWj+Lv+vK81LEZlziQJ1aVUE9bsiHlAaGLLu+teTSYViMjE7YwqBr22H
xOzF5/X1qFRauvRPz6CVuVLPiPspVE8dA2XMK3P7WIZeH2vU6tc1GLLkPp4IwkwXUMtQRkpylwrI
AKWp97rMID4wuN+ZCD6vh1fJoOPymrNPzF+hT3f3SPIljmC9/pKVXblo1smuxP3kmEb5oNCVAamC
/8NOYJByJEB51DhpMPNCHF0NqMieq9vAzw+NjiQbEG8lGyWGGvpOKiQO8McVklu1VTxPul4LbrwC
ByATEvKgVN8PDLoP3Lp/dnw7eJCdZFLeF5/Pwui7Z+DJqsBoEA3sKzfr8ajLbjtkE/P0tEdWStM4
ncel7oLRdyveAb23DAOVJ3yzjrt5+i8AX33v6aR0sYQ2BEJdE9FxvB2cN9SuMCgAUrU6/xQdUOnf
+RSbFeOsnU3SB2moTV8nSlFOsjF4ic3jajGEEZ5f2BMWOEsWpPDS2yRXImmUJM3XtGXf9zl13Ljw
PvGYjQrLuC3ZZRlA/YUcu8POzAuLJ7EUefTMFTOe1+cUTjDnJUJv5EA59zoMpMvhUGyCNcCfhvCH
bfqQpA+I8wXy61EN9ewGzuLF3o9sMOTM347b9IMSvkET8nCoopKzEjHUIJhNoSWdxVNbsbAGjsr0
DFGwIFeaxFT/qvQkN38SmVnLptjsz4RLS57QvFb3DTxpAvIkrGhFZFrv0xACVJKwsaR6EAnPF9YP
iQk03nMzkiHS4Gt83/Gkrn+lYyjhnj5gBysJY/E/Q7gIGqCz73VVFEG7RLxTPWJEKmOm6Y/xke9B
VkiNxxM5WgaUPrJBphY1NHE0RdvhBIb6ADeMBxY1ikyb9KtBAgbUfTDMnKqD1IzauD4h4Oo3zUUF
2jEULNlJVMw0g8HB7TXWzp48XXkZxhi4uIjLlvnEmr3U2Kyj2pSAWBd/UtkgkPiCQS9MNXr/0qGh
MfHDF1nGErjNJZN76iJs9mkr4TYMHe9pqJRhEcTGe3i9qwRGAMIjHD9Tawh/eIMsMrn+c/jxkaBk
ZSIsJJVa7yJtWYcicYfLbBgY2PXFcxYILusa4sVlGXRk7Zn+fT4/u9vzn56Ae8+O1qgfw2MRPswp
DNCLOfmTzA5NvFdWZLwxUIyErI00CN+jNlcWrTT7qexYOBELgmA9vHDDJamcnHkdvXzXxrRp0S3T
CKJHCvEslt5P/Fw5kYA0PvIDaz4fRgy6TeWMfJi2IESb2IP2XKa3kHRSfnuY7ygYVFkv/4TKnNOs
Go9lUYFRgIyvAOyvizJymGsIgdYCUf0bEA73IoFXngdh+U5j57kx9m1M96+Br9E8qtlSpx/lM3LB
KIGM3zAvcZtqCvINBX57BG3NC81gT2DfetWM5aR2fFyiO8b2jsqSw1/zf6AVSyKCGce2j9vpXaHh
pcO92XiapHMb4f6sNbAqiFTIu9KIcCZqcMKrO19uA6S2RiMEuqcre+V+2CaJEYej8FHNGGkRdl/7
V1w/vSs+qjMk3T2ITFeV69zc0kVd91DvyosQyxytLTQuUUePvfY0BwSjgv3vpYiJUmhnjAU1B7aQ
4ZnLCpRZrqvyLma/t2jbdb0UsAfLxWfPhAEkKlJ4gT8HOV2Xq5GsDAOl8VMw8THvBCjRrQ1GjNrw
/e9NhXE3bj/TFQH8LWRhiYyyaZqVcFpK8Vr2bwjaqb6N2k/VhBKG5yU56CeZ+C5upXzXiLzWd6Dl
ExPXPi/dbRR9Fml5H9Rlna+e8Y9NLJ3GtLwp16ZfQRihci/1f4v/UhhmqgHBDy8vVTAGFcYY26e8
u6mx2utKhWOCVOFj04Mntc/p8BXy4uHU1CympnNJt0HpxcPlTd7GtuXXer7k2+YDWNL+71lFEAk8
znb5YsHcb4Dmf8ARkEJNj8hpfuLfVQVIXmDDSblhXHt1Zyo5K6oMmPVRP9S+HjiF/O+jcutQ15Y6
3l5Dm3F8ekeMecZBk8g74q4On/eF8L98/qhlKiRqxBph32jQCPRpEgVqE64+A3kCkOwb9yURTe7K
loAJz90lvH5DqUuZYpMVsYQVQ/uLHXcrK4WbgROemjCmK0oeiVQdv0K/tQbBRRFioPK51sO9pb2K
Se995hi/+pDJAVPSOm+RN9RAr53w6/u1cH+13vy7kNymcBQrB0itS3oFhXoKfEaE+XSBfYC9kik9
/6vpxkfnNMSJd/AmHu9TbirXGqCS95RGeblfIUrpETGfQeETYr4U9hP+IfdsZE/sDS+YLayqL/bq
5KpqrvBX5461GXlTMesov3uq/6wRVGNGidDR512TFl9G/rCpg4/PV02sfTwGCTtwbMohoQuNp0G4
/bRpQDOa1XsBL5OLBketkZYGrzjekczGmXU1M9nIinR0ZZgScGsiaxLSsDiuewW2hAwNEXkgi+sk
PZ7FnwlebIuyJEyR2Bl0J61uti8D8R2Odv0yc8qqGD0z9W3e826soCdwNzXuAsaiPpedhQyveKox
+yZnvVA95PFl2HqgvnAjOqwgkXeLopJqNQpMytTMy8HnIJCZsWframlHwX2x/c6xIbR/tVWVYZwJ
GZ80ZE6cW+tb2soZqrS/KpmFz//g1YbPjrcx5qVkuOzqneduGoY1UygxynJtcYiUR96Wv/REL4+I
H/Ktxso0/tyTwGwyBC5C4EQV+AJeWdQh/ZlxVa7+B26LRhMr064wFArbLP+rTFn0XhoXrnZU3Vgr
IV3a8VW1x5XYP1+7+vBo8dkMlv3oOzAXqRggDHqva4SUnHK2nM1+rqdSOdVBcn4CH8agdoi/x/3U
8//3sBRf58BMRb4sAcWFbMkAnHyisXiwM8sVzSzuDUVGr2QGXGCQxlgO73IoAApZ3UDsmbVm/hHg
Shj8jEBNOw5PQS1PaEjqAv5EoUtp0+3roHI/utGqvneY9bkoBc8MNo3/lKqAvk4A/0dBu3Ovgr6G
k+al0vVj/EEDT1gKH0hF9tzre9dukXIAWpeWPF44b3bg/Tx+eBGZmYsmiCrkfunAbXeMSiTsWQaD
G54M6ar0Dd3z5wQ46xZ74rq4M/G/BUcnbFM5FinxQGO+vMRJC0D+oJl3n2jMyH89lCMMlavaxPAa
Q1jF4k0N0I/JqQqquyjRWQihsNMBo5GFO6uZFchpz0LsWa0dp7Z2OC/ZgAHlNKjl5Dull/g3jcn1
7SYqY0yYQkmFJpPPkiO7V8+wJeR1lED46INFpiT5/QJ/6KyinUgaagMcm6mBHtdlbdvEn9Xxd9zs
6ypHu9d3qZOXAa35xoKHA6jwl9PCOBz9Lcnp0IXJnGZqk3cnkPqzldnkqAVSIffdUKWox221abks
0G2seXvPgZxL3EbT81LPH8jyFlxu7WKp40li1dtkEbDesWF1IXhIWhbw1QR0grsop/8AFnS1dT0E
QbWygdCpMWPd4nTBz91B07Avaio+SwjYoPHAZT5QJRPDnFRNwUBqoOZ2qtVemjhSZ02N4z9UpYB1
gd7cHsltZ68WsDZ6MMRsipJ+wTRpqjzFZIEPuc55OIqzuAej2iwKWMQSSHL121NmpVg6dTjcUh9G
C08ruBDQIgNwJLKrFl3zSgN0VTpNFJJnvRl1tCfEgYPy7gklX25Tj+1mAthddH7QNMlyC6dIkmn0
UIxswddno5nMjLrWDy/eu6KKu39tHJ6fRZpwtF6AKwljpvauVxWry7S3RE45JvKJbGG1FktBGiIC
D/pu3b/ieeAdpIBo9ngh1B6RCnPJoeiqHpjCoglGzEvpbFYtpOVVDSa288Lf7uX3NUTD1nDSitw7
U59dTbIPZ9/waOjKH4jtuUPaN+0BYoEpefFKYJ/rnZQbfQXBZgA1lg6Kf3oCemrrMU/1xp43z56L
z6JqUHagWZOQnx31ee8RVjiNz7qm+Rs726Q8sDQSzJOzMly8Uvo8pbjJIvHtx/0EXPW/pscsYCva
7BddfkeMy2DLjWRg7HXR4yaUgdlUw5DUJ8sEgPzG3ryqYGhoQLshx6+acV6vcY7bDybMw1Kj0hcT
eWoAGdFIqtkL4xe9Mj4ooDfF5Wl9vZa4aDMZT/P4Glxh10SghzJSQYzuUieULn9Ob1u6171aHA0Q
Ydbor/0T8iKmZv+9yOyctSvjqKH1cLCNGR7ha+8BvUy2rxDr2xutCd7B48lS+qELRaJppamwxgbV
Xn0yzFt5QWC4jQBlz0lA3C5TEYz6Dhbw5ZfwdgrIKzKJWj8zJXJ4P5DB2MU5yqZaMfhtBx2OVrXB
zrlQE7oGLdaJd28F9q51tBHPC3iB9SyeRflv/US6/gay/dbVv5/WUReo/b8Ln/Ipt+Mf28ZUtg3G
68z1OGhjHWn4BiPByi9Js4vt3B1rguyyPdSDlxBim2Tz5kx8KX34IsjgmM0QEqIzFVy7g/a+39Ef
NmCgyDiPa7yWAUC7rFJ64R33kp+0VaLv+Vs28DhrYbsEnUleIpui51OdWeGvGMpfYTWCfKESeXNA
CtMxouUlYHswaWCEkrhMVXnLIrcXTcue+LrtRkuuDSqR/fUelckpc4XP49JDgAVvOzILAc8GfQX4
qe1z5KxkMkPI2l5zjnlhTfMRMTdQNZreSrim9R3UUA955QyWiCtEgvWB+Y1xvfH34RcLkeTNQzwb
XXRRABpiBWnzNk9ladX1bHZaG+jyjRU79kS6FbDBhLfEKDZShn9OTl4rWSTgFSinVtroc8sPhbDJ
zfZGg2+48XeUK1sDMPta2IV8v3zerPB1LXUQRWzRosRLI2/QvgUinx/U3LzWXCrjmSApxVzQqVcf
4Bg4IhciwjC6dIqegOcL1KPupxBa5QURfmwz4S7cHlpe4nle0QxBIowAnuU3zl1BXKvFWhmKgD5b
91BYywhVX97rILS/uf2fXuKnpmdoCYP3fHb/ns38tM9ie+H8IZu+kWgM+fIpvHOjlzQ2uTrc1FR8
8f2gyUuSQanbN6E4p04/CGhQSLwPliHPdN0SEYHerBHa4C6lXTBZ8Va+EdPVl34LNedZLhqF/oRY
GyRnZNNqy9BsmmohfPiCH7jbDff47KMpdTCQqiLrIcfcPgcGoIGPCegEbi+8PSlIPEetmUvkZa7Y
IX/K0zIr9JePe5pOciLsDE89RSKUAKhVoe7fPD56ykDmtDnGwOV47OKtIKzplvxFig+uyUoz8gfq
c05i2Zrh4objlNZDSkhZapPK6zhDjCIkywqj1RfoPxTEeLxkigOvckDwEAD8A2CUY/gyh3cY3xzh
daBFa3ehX39vRWufwDPjQDtkIWZ9r3ggg8A/rfFIwI85/0X+srcYc3/2OEU3OLmYhF7Kb6Ao5D9K
g31+y53ATZzF1fdb9YCPWnN4hIyITCXpP7ExKiBKy24VFNzwwYO1NG/MhE1XEeA7iUV494H1fPWr
dDDYGmOgF9eq45CojooEJ+DsKGcnHhZGgEBjDcaVpm3dT8jrR49xWAW+cDpJ6IZ6E1mW9DRvLVYq
pYJeChSLxy2clLDdxbF83Ss9Hmm1UgiVq+/lThMOGnZ1mCW1QY3kgFeo4+sWWcmCX6yW/0x5SuNp
61TDXqbWRe8U7Ij7h0hQIpAOh3spx3mjyulGs1dWLg+nR8r2ssEJFKcAjczFWOWgPers8lpIeXSm
3BHrHBn1PFHQldY48XFSLq1Xib1Koe3F0I4nFFIEJxDyJI/PzAc6JDvaz1i4hYj7IpbY+KcO6hFS
SNkZOeLmrSeZmIEuWqoyib2cMue5s3OcLjHWEpa+Jnnr8mlEmxRFeOuGndmrD658Pd3Enf3chM6o
dC/rszUP8dg83vMym1r/ngdqiJrbNAlPppTUgIjzSGhvxKYPy79rcl1dLa3HuLqItgimJ33tFS8W
ZnsfHyCYdK83iqAeehsIxpx6AcYewQLOEJ3w90qOuXW9cHW0Yxw8Z8yTyDPV0exB+5Lhob4QgpvF
b6P5f1eDeaRw9b0gFWW5rLiQJuXVfVBbdNtNdtrZGYosHYcNrmzjnDmQtu72RAAb1SdJ+UafepLQ
xbm9FVMaX5wFGiauoMyJ/i0ECbjpFoMO0SNkM/6s0vm/dwEVqnEjhT541u0y7ygk2bNlrcSSxw2v
wYEKfhVE7Psyfw1knKj+GShb4ZH7pBLhpJGjhKqxewOM6VBuLsUDCdeZMB+nYI3tipeWZOYHwg+L
/YVHeiB1eISwOcvXRMS6KCzY55LT32X8PZxdzFS/5EiRm78mCeDfaJCwbzGaUKpRR5BHR3L6myhW
xcbbJ3uXm3pSEH/o/NkjzdLoT9VG6q/hpZjhULYNidn7/Fhu83HCsLFBt9NUMkfLPBh1DqFtkEeX
P/zi0OaiAk24zojMaDXtEfi5+QLLnk8O1GJmSOLecAbclbhWZxRybvYUal8ex3N9jHNZx1PrJF3o
TWt8eMnYkp5hGeYP0bGV/TRtK4he8Jc8EsYwwCjidwUqkbmBiNuYwMLnEuVIxLR+0Glw4GpswnQY
SMrzJyHv25fIiOS9Mdgcu8GlR05RwAAsCWqC94cBS5DT2AbP+WkmmZb7Jv08+OwYdhPB9PLpg+fX
EWfxFhNpkW5l0ehX0tZ3Y/RfG24OPxpi5Ukn1XBkIVdWgzL5ysNZmnP12GoQDUFcledJXWpHBSkL
AaZbldQA/QaqPXVFeZiY45qCtwYhTX4lHkd0+2mojuQUUb0UB8afyhFHYLNnFovqWl241NaIAfVI
trY82EPKLHfjccJSz8xOHotEE6MbHA3MsQxZtSsb3+LfaMmRf/U3dmNeuyTJaVYMLe46/OJdjcVq
m7JkidqBpvilODdb35+XfT2Ow+Nl7IIWm4xCm2Qqz76+X3eB6xxT4FBpZ2rbZJEXuAMvtA26mthH
By+F0Gr+oSXq4iUei/LeRw+gY+P2OIQXJctW5FxYkr/CQjosZZXrH9aogebapcb6GqTxK7N/VEB7
A7xkuD/1+5kJBRnCRtU0j2XhWzp5ltbCr1P+QgNDDxzddMmamaHD5ztH3V6RxtP1+Fh0PTX10IYJ
Ov5v/jIysJhvyPuKnIrS+HCdwODt7inbiB4BBzQKgY6U2fcYCx3/HtjQNZsp2wVaxYFWmUCYU9CD
nMnb9rrgLEEEj5LXUR5M34WwE8qLiDVW+Xg3UJ+/YKBfA32xGIazZCu7bh/lkZcWV2taGR/Fi5D0
nE7xRQsP7dVrL/iFdyqpQEWyts4yLHOvU9K5DEhJ5L2LDpHk97mVtLMmxEQL1Gan1cQimcNNjpuE
CDIVDHPyVUERhglv2pVto/XQoMCsVY58HrAS8bzi7nyPvgiJMFVOaC83/Cym55HPrlXHv+a+p9sA
5aSlv7/2N0b0c5P62g9gI8DTHpmwuHUMkHkeI0QZCy+df0sHIkgbMokWMIrW4UpKuLKyINlRVCSF
p30uOphoN4eZcYyjjLca+kZ3s7E+QZ/DyTo0qUhKFl530fOvf3yJzJXP5lNPy7JERo2Op4MjBqy5
/9XuMkejYOP259XmhklGmpkhO03KC9o3+EKCG+kXhwfgTK0ZuiJ2VbI98WvJSnhmYxfxTMio4OzM
8IlxZ8riMQX/0KPahQD0QxWD6NEuuwcH/fjP/sGhi7wAMIbMXFG34CJZaDcaX6t2BMaAnkGYKmZ+
bGA9OR8BWztI2cw+sqc1irWaR04Rq+C9eI08YnXkjC+IDyk2aqleOUeSnE3wgNU46eBHsr+L+z/E
29IUEP1Uo6feytgsXZ4oXpPNydGsrFPq8jmSJ1qSQ76WJIzZwDd7SzUGIhsQTvnAfxC9cwZ/FeEM
PlNYHNgW0QRfVLybhF1l2sJmOz/ql9XKKUlZWzg/ihxOxdEOyoWrY43y4+oCXh0XlcYDXwNcPHpU
UfZnQlUs5JGmUryw3lhF9IFXhgyxee6nJjIySbFGbQIzb57qe4oUmGzglgm5sMbNkriYbeUGjVQa
TfIOo7FV0xsEPZYD7M03gqsVbe2F7zCwl6cch7r4BNWQUXFG94ZhdF04NklTTXyfzw4r2qrhY4Ky
F5vC3jL6m+DYH2mdIgffS3/Hn0h3yNTc+VQ5fwFlbLetr8BMqNsR/8MBH8QX742GaiWylsMYtgue
I0pOS44/YlIchu3VYhOp8xdWz46801zzym252n72Jtm6kXRWLD0tLw1Ncs2jIyyzUs8IOySTfL0W
p3lseAuG0cOcfU71BuAb6ooOrV6LA2ZU22NDOBkDBMkgaxEIgh1gJgzdjXWTWTAGOe639jZ9rBIL
CaAiSPzgVa8WlOS5jD2JbGml4ZO0Qe9rvrihAfyqlQAdWLwC0pT34nQX07UXAS/dcYddqtX7oV2z
FxSCq6wh5ZDhwwQNFYaNw5Tbgj1cx6MU1Yrit53qRrnsMA/Uyxa7J+hbcdUWqfDcyiazmxE7Hhxb
tFFFyTJ6a0Z/WGOesLRcu+cnwCg6J8aIOCU0PGOEx/p/V3cV87pyW+gGtC4nrf4QypKH7G1Alhiq
vDPfDKYi0V9tlWRrYoEG5jiQT+Gid+eCahSiuBccr/0IPdyv2emdHqv2OvpPM0jUWaP3BbgtT7BQ
84Mgjsmwth02xBEQBTWD9d6MXDI8Y3K6m06kthho5hRGPUUWLFAqd+X5BNVzdGTd5kRv9UMNR1EO
RQpvrMiEsAdaUr5Ofl1OfXgYX2Finy0chISsb7cymdnnIBU6/ykLWAdb8/McR+x+Tx8HSHgIldOt
oce3/cs4evUD9NnM6azoCtXcDAtFXHZAfs14nDcTKbJs36TceMdjY0k/mpXbwVUszB3Q7+GT4A5s
LHQOgrycllveUarrKfBezXWRjlceLVMGlbFk6NH3BIOkCxsirRY53d0jdu0yOLOdQSDDMU/2tJWe
QqdxD/HE4IwNC8I3WUU7Jj0PNX5vfm/AnVnHZSvVmuWRevl9qR7JLydQqQpTRqaWQZMBeSRcHxvi
5ViQnSmt1pmZUlxGPKI+m5czqk038bHZnRn3Ger6UZBLKfTqZRfMu7kwPbYaJRuCTinrApwAB7So
hk15+eXhYBE9xBVWhyucabgD7SO84MykHqfdgLt6gE8Eb3jf8gbaeq1Y43hgTxBRDtm6lwW7iNtM
nYtJXygjNh9nsN+7AUT4QDrIdGtD/RhkeaY9sauwtmowpUcge2ZUIGdQW0Sk/FFDcE2L07qHuYCv
/49/Ajl5B1sRtlGRu7OUVOHU0D0XJV7GCeYvuInBr7r31Hy2e5TllTR1rjvZuGNPolQdZ8djvesb
uF/kXyJQMVLA1soOmSZsHwemv8ZdIQQ/ApmtUy/2jxvd5S1uEoemHg5UGE6mSTcHaiBgwASITTHE
EFC8eJUSxXn1/JjKm0uFSk0UE7IZldhg/t+xQWj4EMg14GfXHCj/07vOk9LVdkoiul1s4ewsKEv9
3FAE8waAH9d/hATOnIE7HyG/2Rnoi4MxclDQrwJa1xs/n8TXIahhvfmpkZdryZW/NpNENHvbYH4H
ViOwu9soNbkRkPFAI78T+l7l98HIo6WyjO6rnihQPmw75C0rYlbmTGSMJUjyRzk1UWHRjbVasRax
FCgS1ZuYyRHP48I/CfHv/DWBZwEqMwnZTfpLdmMLCRwPJgtLOzKztDkk7Mm++qEvBlAdat2H3AZp
bwE4BGusYxQKKrCEXzeBgmA4/Ns1b1feSRR6F+cSB/f2jqkYjQnShT93HEO/pbMWOZjxLGxIBPng
VZ1Kx4uaNt6mSSpv0/ah6rhxfhszkyzMduO95cDgJDSyPUYGSli5pJgpDNzAnnEH4SvuCFqK21xt
IWmot/uV2bQAjNOCc1IH8RBbvJs8kN663KKFje+3ZRec914XuZ280tGgmep2LkpFlHA64HlmUnJc
2340vNmfUf0NmLVxXUz3pUq6Yp1al3tXJ8wwif+8CnO/65lExEoVsdRh4Eh7IbaRxi9Bd9BXMPAV
JleoBydqGBD7s4u/0Xo3ay89iUUuwWnJ6cfD3v974+tjtJ2WCgjenQiFaPUJXeA8Myb+q7AI+6r8
qeHRcEzKjWBUq4ZAV187eft2XDqC9ZokABQOtvGj+0xz+/ZsjrCgsKwobOg5bHOwlMGFmptiY8js
3JcprbzqbfxUjyvpoev9YPjG8h735AyZ10eq/OyOzeDmUUBM3/HLmUKuR84YWtlGzMl8ozFMfhXc
VxOdsdxhppzIFygAyQzJPZJWiQoouCDG0MW6mz02SIVThiy0YiWRITuwZyqfhlxpWbA4/Ty64te+
faTN/sC889VJqusiPmatyD7Be7BDVWW21OEaSCieN9TXgpXn2WdLiBZ9z6yKmyZnZR2oQ6XPu1Qv
kaM71LeKCGLutwLJk8j/TniQeN69/Gk8TXus20k1n492LuijkYZ3ZxhAheoDEvYXwOELBpFeefsa
lbp7UdLrXAIVO7ewW6dz6ECWokL/qMCBU7eK+fcMO883iTwvvRRyb8LI2SYr45M0iaKg+0NKpzht
VuDWA++bh1xfO63jNtIjGE1m9Y6XbiCzd6l3Z76im1ZFO1ZgCku2W+Rbp5AuMuC4zNRJwoP34l+y
mcYJ4aPF3h6kDYkBUvIBwtsyDb4xQCk+AAZXKADZinTSfqt/KXvEKxvbnJjEEDVEMGqqSyYev58d
qGcBMbId/TXhRL8ADNwCMmLpSiqc1hUVEQ30ECTrmAW2PuOu17tAaaOHTws3UhbzSTtSimp19jdP
LzHR4EAxY8WsIk3hGYWEpdOd+Hf1zpf4qad/M0GkJEdVxgia+JYCsU5cIHpCGTr7hWbf8XlPEHem
oNhzsHEqkKK1w2dcMW+asQvzrtNuFlFbNrulvdRFHqwglIHJyvLltw8taiJhJfK28OR0IDMALO2w
ZXpYUExzxA9ySHRJBUZk40yZtolk7vkwXd0X5FCWurn2FGOFJ3nIBQLMdnl56vSigCSItuDyjiqa
NFS4H0Fc1Z+z+2kKQCcogAwIpvdItLvkZYblN4TfeH2sLg0ilsStlLA8Ed9A+7k4l4QESdkk1z2H
nej2SC+aNS2P2cgjFUdA/n0ZLnI21Rx9LzvQDaxXTkCJufE/lIUGsf5jBqzfUtVwmzmuHZ9fGyCv
fmapezPeaUis3JjzUsWPzMujWzYk/8CLSsj5PIqcyURb+20uaSWWMJ6ZGojedF+wLS8xTp/hm4+a
L72mSt302xMtviptSVREk5miFW/kvxMLxThU+0y2+rRC1HLK3OhowjefYrOoDQ79PvqJZN9GpMDI
Rco3lLgJ0LGbAWX9OqUeUVsKs+37JpJoulBVgwH4j0De46kiCQggnrW9o9eKVJ3DYEvHYr5BJ0xj
oOkdQe2toyZssIkJ3ZdMbHn6HxDna+VVgJC1JBSTaJ9L0BwVh1EJ+si8AVtFLk5OQQTEOOG1LvkS
k3s/xVH+DnSVKO5bXu5o1ehAKRJkgX3N3iKnXCrOyPIN7u+bOycPnahePTq+R+MBUi3qvf6PZ4Wa
hQ06jOd/G6MndXsGy5Er3OKOOP72WsVo6eopp5v0PLo+TPv8MH8QHXjGuacqYbzQ5GDIdXwRnYJr
z+5U/DDZxneBvRBqIn5gr/A2N5knWx7LouGkFNQmuLEqxjFjYsLL8r1ODwknJxReAvakluF+Eox0
7uWqrQ1RdI5iWIsJzp6RlL59ONKatKXnaTqK0Fb/hEC+5gVyqA+CU+8LktlRD9+Orq67OgTVNcQU
5hB1um04BvZxt2usE2Ukenw+1mY1u0nXOhaalgAW+4VSDB3YeVjA4wxNagt1GqEXcGwGqr8dU0Pn
tLwfUg6aIms/zckMt8wNv/MY5D6uKz6mftFlfd5ab4fzTIi3F60DovpnzzLDWCx16fFRS6nSJZfx
/wDjrz97PUZTrZ/4pwY11gX6JEE2zohsSUHnpSzcLuokxSoyZOiyJP01vRVsyE9qFJt+rBVNqqdK
RUViog6+rr+6qmptfhIyIo221U/cZAn+448stT2ts7pUMZl1hS6/p6lkPycPDsmcoAfak3hpsRyk
nb3oXRgI6w9ylGGTEaq/pDg4M/YfmXxa8qKd//zTG2/e+6g9ULGYFL4L6CdOrG5MeJVkqeqtiQKR
1byoV2N1HD0Wx3Q9l0zgcdYX0+GPBblPy1UZwhZG+pil3prCu7U3rmSMwat093SJomEAdyB2vqaE
iBekX8M6R1N3WKDtMITXEYKw7HZt3DKmjUxOWHNKsxvj1FtBtAwtYj6cjvcZzaew4IvBePNJel3g
AERk9iq5uyWbNEAC7Sjul0yVOXKN1gp+plHT9aN0HmxWFi2B5Zy0CkwoNqf/s4eg6+uuc5FW4eeb
emetyJSSbMtZnXEqVV7Gq8D3R0tz/8dN89q2prC1fMaq/Bw7ansZ82u9OpcF7VHv6+7tH+axy1OP
PS4n9iWd2aGceg/0KQowWF/EwP2EX9FTzGTavx6MdXOdidbMKCBs4nD7ePyicUSxjTodi3gw+mcx
xxomhDBIybY3n7mHsBZHo5lmAQCfFx/lqCAACqTXMBEMXAj1WuFdeBw7Xs5psfZhxFRVfe5W3Du7
35isbQMlgGq9cIwWFwoXIPlqgFWYdbl0iKgGmjbONSJPnAfu1LCVmvIBULpKFF6SJ+HR0mwGvikc
RfkeUCYmcR/9Pl1gSBsr5JdMHzGORNNf0vIt3C1pB5ui7MeFSEe2L/dzrkuxHwQIS4wceK1KvQSd
y25NgeW+RJfbG7v0QmxOyPW8UWVzQn0briP6IyMaJl4Hi2+xXeqpQAwKTivhcL1TuHXMIRcGKcRi
7I+IzOa/i69yEnBhrjinHVuRdw9hWq0T6rGU/2GECJYHYNNQPlp4WnbyS1dDMnIe+BnCXCsbwJXr
Zzkap4C+Bcy3P4B8BVbOJIFqDvZxVYXptFtPV+936CvWOp0KCFnIE+GDwGn2SR75b27XhWIISzpt
Xm8n9bWLvAAryGdT5qmPrC8D0cxojDy9BGOwslq0HfMop52GO9bqNq9nhgBO1zTFbnt2TtbIrKO5
2pocTYY1CIxdOvhwwMV3/+iiR2zYonwngsTc5IVW5clC4jIser4UR1YEeseoRiYJUODSNJrnsOOK
LRTgLI9UtuMdGLKhqQuR9ylorODBZpI2XIXj0iPAwe0DFOnE3vPtg4WaKIBq1MjKN+q7AeVhmXLo
evdgHTyr+iy481xIsSyc/2mKugob+RnX67dKPdd1hrKPo4FwTEGlddo22u+YiDvzkO2nCRuCzlPs
YSJVxdSRjt/tKmguE1ej1+bI3nZ4PenxA3SFzi1KPdoLzDI1IQPZDApLcChNnsJPR9lFZIQsJPhg
ocxbSu/afb7hipEF0FBfFMk4j6BiiBPv/al2fSdkPxUr5Sugn0Kk/hZInaCNcUUo8wXv5VNsHRvz
iHETqS9qNH/PRkqD3cN+RDS9PsmSCqcG+ixggl7ajHTl07px8hsxwLbU+25BntyRtLIg1D/7N7vJ
wplwLS0OIa9TgTOJN+s8t5Bv10dkSJfRC7Lbn5gma9dkp8EzFbJG0EAsC0LzXl7f7Hmy2QD4/3xa
DZ6qOLtEKOAnv0blio7gYedwMp7A9rTGm8Jb9wfNvetOdoyaKcVMsK0j+bLr/RLSDgdAo14wbgk/
JTDQdcmNIAX2XjzzI3FILe0WgZCBOBsgClg3nyVHqBrlYzjAng6lQLEgPHYBYwBGrGEy70csV2wK
sdAhwerpiCIV/cI74X3Iu5yJOQ8Duth9rRRKqGjwmySjTc2EilokSaJJND0srzYpyzD/Kb9Bjc0I
88Pf+ZZN4gbeR9oWMvTGjYgxygnqAGGbpRUX5xoC5IZ5Lmybhl1FK0NFassJDPtwYp7IQjnLwAkw
qFUOrPv3Y3TtF2wqNRCIbt/TLbSWvdYPVHDhMl91UINkhmIhL7RPabozY43sJk7YFZX4EhKtLe/T
bWRGvgOw3ctQ9EF5MW1qEp14842KTxyD8ERfqpUdKx0mJHnUQ73iYsanAH39ljHcea+0VqxvUQYY
iI/ZpECN4p3/jdYckCFGNdnRJ+v+QLY0Ut/y02SlpSI0rKMDRAkxBgN6DhPttolq7znhDeUv5/+R
asT6k/P7N3BbXZSRfeFPRYKY4ygBW8p3EjYmjLkGX21Anmt+t9a5LStosiRe7QxarKlsvhd5VoQb
fgcs89soSVYcMKAVFy2l5gZDN2rKvSpKZIpX3xkMHV+rj1p0IxVbN2nlEVsi+gpZsGKFeruBSQkp
TtGgT9vmhOQs1nz5Dw3+9n0YQWmrxfIdFDoQKpcWN2R12/452+6UajwR/RTbfixXRfMUubvMHcpZ
V9UWXj2YdyJ+mH6d2ADhKFM5Qdaq9XxBiYEyvyfBNAorqYmI56r/fBD+xO909ERhZzK6VW0meQBL
4ZJzXDhMNXblc5MTK+ClFhBV0/iXjCfCT8vmhQlG3Wp4oGZXYhV5hvBPd4lCbggVLBwjGGtgonOl
16byTFwn+PRJM3jCMCgHNUcxlsKKxOBCWwGFW4X/VK7+MZnSnnMh3vDDgtVy1bE0DmRoR9Vu0fPw
58OYNmhMded63bF7dK/RjsOPV1gSbsx0Bsro9RsmrCmuYAZBwLbLMLWWq5F6nzG/IqhpFQoCgKG8
9k4Upj9TnGh+O9swbHZEZqAo82Y11D79P57manLvFYOFdXK9xRPbR3UmBuxCqBfmDuCP/NP4bsUy
ZSKKy7kfwgs4RRpqvt1Z7A/g7cPuygAwnG1PBsq8ZtlxO3wK6Tl6NSXSSEE5M1gneqgHOBYdHgua
0AyovV9+siX6KKUM+B2Ud4F2/TbEm6D5sQ8TTl5IWDLbSz4D5LciW68ci2hpwZq6oZmwZQX4cPWf
cj1tol5TYlVKGUNULSfEUjI4ENKwCm1xBA4BrIBUva0dJFuNPML1eNRds0isnbOccjNUSFFrNzFp
xa8f4N3L67YsDa3xpLHsT5z5IL+t3uAk58ZkkaPxRA6XpIJlPJ05QXOUY7hLaedMKha85mZdFSus
dG67zkuohIQRtZ0XZzSgnzKr7wkTrXqvpy7ZaqbCXfrt4Hbl2qxkEKmxYRuUjOxrxjMQq9kKL8Wg
W0CcxlaOn5hnco7Y2YchddQGHBuXSU5RObuGLAi36CfhDtQA/+BUp6CUlGNSIshmUyvBScU8R005
NrXyno7HS8VjB3rpyM6FKL9rq2JPwUgfOslYup5ncd/WF1g9JV6yyIgLjqkqL4ZM8RkrTXAbTUhT
BIpOANEzQbxRIbXo9nHt6GLUUpBcDt+UmHtfYYIr1rexWRj4ZB41jkGLzSrIaxCHxWkx8YDOEAZE
Gx2xas94NcfuiLHtwjp1Tb3y5/Y5mZ7MFsXl3ftd637zpFRh3dl/F0scLsRVyrfcbgB8WhOyaRd/
gRZlIw8Mx9OmGy7lT2R1IOgKiZ1H6s/lw0eVuzDBJNTs7LdQCMwK+381Ubgc3CK8Kb6l+jb60w2/
Bb4NItzbGRl1ngFsWdBbgL/tpHBFpWcHQu39ECydqmwYcA/AdpKF0gflINlukGwHJ7ydSTxDpKCd
zKCN65j7U9OoDLndF5L8TdZMXibR21QXJnELhGWfkY+synO3c3kTdRuvFL9YwA1CT6EvfRhAxZgo
xXqjLddujmGhdSjJBvFCk36+6GeYKqawtGmoKtq6O0ptubljxbCmR4oXR5cYz8PYtjMSs+uQEh6+
Twvs/3sndeIw1l2sViIThKmm3odQj9DpjGkxn64Q3uWwMIbXA5+zBWOBiwAbvzBttqqIOFr9dZkq
KFuOgFBi2KUvp5YVcqW2U2ceK5FSy/PIEMSEFaQkqj5q8sq3pSfRz4SqzFpzqshZRACfBw33K9is
H/j3Uyi8c1T4kLp7vecKQq+gwq8/cJCZv3cD0d8Rhi+vusQkR5vVhALUZF0R0GpdhhpuMaTNPZEQ
8q/ymJzfVn3iNUrzyVflMjvH03dq84tfvm++yrgEMWwNXp/5HpZjUJQvuGCke6kCmd0qERrTk6TZ
cR67+0npTTZ3CHNA0D1vUizhpTp2FvVoTP3eVJeUlYsWDSvJwcP/Pdm4OPx5Z1fp4tZqsFSGiLZU
vmgr87ljrcGbZ8mO9mK9F3vDcfE2JlNjL9GRcrvb69UIzKomx4okvjqZ0X9Bw45oLQ5FgOOaEp/g
PhXp6VpIqZ0GTCsuip8loYqGOWMkeRtGhpyxbzOAcSBuezXgCsexVe6O/NBsVU4XF2i9GxzCgAxE
xkRzCX6K5Lhctl+W6xLYwVrWpdLYD3tlGlWlBbdpS/TbrMlhD89+ZuVgvWetaIxQkL9ktAlV2ALe
enat2o2Bc923+givaDygqDc3IzHjs/fRYXVqOi0wu0GmWLzAzDu7Mu5+OqLd7NzRzWTg0/P6FAd5
RBdnSqNY6a3QX7TifaEMsoLUltujNEb3/wQBWl2x1QwZ9/CKrXo5sQA6UGCHtLjlxcVnPbczRtYq
i3qiUP/PmbV2xqbhU+gWAfJPrtNaGkIaMkmvKwor3Wv8xsXObkYzO5CWadUXkhCH3jubFP3+XXkx
FEVGMrzKwXzWr3EtoFwGci2sgXXLIg3IqY2LfJp/YIiISFCb/UFfvUWXCq5O51J3uL/nWumFO3Ac
AAT6YB33HjfcIX3GZM8X1PtkqF3A9X+XbKWlwdKV6ogSmBDQuRo/fJOh1wSlnk0C2jTuWDj7q3jA
yVdHU4tVMVwBlaSI2MqWSLo+e3yc8Uf2tiI8joaE5G6boIKxras/aPRIrmxYJNSGCR2X9QB2VMQB
XnY5DZanigPlG3q68VE8aYoPhrRAi6qZ6h/zahkD2J74AEY0Lo1xizLdcLELSZ+7HjcbkxHTNXjD
cUiqaUF4ZOFApOCCtcGrsuIX1mXShkO22xgStFIgF63Y2miKfSGE7m9P+4hPMulUFV/Yw1qEfWOa
VYXnQ9rRnWeSOzA/2AE1Jf+ips86xhHlOGQua5e0Htcih2vk3fO1aLZM2R884LlFuw2YTapgw+wb
qd65DGwAaJhnyh8sWGZBzmDV3mP724TIC9H6s1kC2xd1cuViXzPufp5ChlJS7IgaI9QBnHdD8fcp
51FbWjiNIjqK8ginqa4k8cV387g71LQjWpkS/pwvy7lecFBlXDlsEEE1O8F1twSAYuQQg6XA2ff3
oETygqisMj5IrSnUrgDKVK2NxnnpY317PUJyCJpjjiab5+qkjIFSNRZTX/MxnyFc9PVfeVljvLU7
V0I6jCSuYMtnu8NsgYKtVqgpjyo4cERG7gLscFJlkNMU1IrIyThhu5d2/XoYFGfBEojAtKbRHyG5
CAVJSBoKM1KCey6lAWsgyTeloWOYhRKDW8NSiozBkW9q5l5tB7v4vAtkljCyWRRbBpOQrSmZTw1M
WLj7ACpSQUx3PpwrTCBeiC5z/iGpujv5FR6rEHSC1ga4mwndhr/c5fhPwv8Sr7Fh3D3iZlGSHhhf
DYPjEPGpiVJIQhhC2xnD43SsLqKbg/aVbzG91Ppe9wnP58SY+ycuPptAPZoGjDvoQYOBbcXqor+4
/zBDdEsrNsOMVSmTO0Ja/BNoPDalYfe0nF39VvBbYmfGC2sxSN8ITkZMV5e6oNeayURaS9SNpDw2
uOIzc30bG+J/hgTXhUVwjxfEOqSIKaoERxnvFuJbDQh6TDN4yUvF2u0sMJ9icfhSbY+yearFQmYK
j2ICby6kOXlsrwrORjwzlvOp0z9uu5iy2R1RFuoMuiRNVF51Bn2PKZvyZXwnD4dnZ5/LgmqfPhCG
JFRERFj2/yxbjiSNtRY/5s8rxiwnsoHp8z9WwXG9Wy/mMIQBHUnkk1oBt6HMwMGIDbjt1KEZcygZ
1WGKJb/muLEOeqVDPwvQjmWkdanFwzeAFNDlB8V3OdWqhMtGVsP8l1LFNaLAk6X+VCf89HMtFH6V
Q/9AO6XEYHw1oTzpDpNZD/dPmjJVRZyevLdC0vK+vwrA+skbXIBgxEMU/ER3FjNjqyuhOvN+ejtA
nnrzijplgCJRNoQpLKPuKM3QPAaEG66pywAJCKXKIdOMc9GdzJstI68lBcw5jba4MFN/KEiw4yNN
Ti3MM6HbMt2yj0Us5GeMIFgLk+pHp0GRdAwJH5clYlsocGN427PzebF6leOUTMLsAqBXBkx7u0KW
QHhw1CdWoANvmeyv6j3XlruOZPk5VG+NmOizWcv5Su8BpVCz0aM6P9PozpbwDuz8KKUOl4n7dMWM
7Cm1wwIMVdDSBCuf86xzYml4ea0zVVuOWW4M03HPcX1Nsgym1auK3JmTwezqDtyaZ+jbqjUOFkaz
vfyEmHxDJr5JPz+ImvfnziiJGOHw39BV0X6gU3yckYuHyIz+Gr0I0zdgbSYPnwaY+H2wTE94HGj8
aP8RjkCSVoyKVidMMq3vmj9jUrJIj2RzVLPM0OB4KvF6tEaJst8LBM1sfG9IsPme9+7FOd6LuqX/
6YkixLtw8oMxNBDzetycsuxzAnMiB40XpnXnkcKrA466umHWTCePZKBBzzDMSg2GN3Ks4vQfCTN8
LlQe7u7hR3fyuCjindpQLSxD19dXzGWRJY7uVTil+4G5T+g+PQ+3Xd4DbkUPsRLo7rxPvYFXU1d+
8J6+mrwpf95gahpCSsTpIBzoQvwLCxs360HhJiIyQh1wsHxMkswoeSHm1Zi0BOQvlrFNNpPOY7mM
qVk/J9Rp442bbcOP5MlL+yLtTnzBarmZjvf9aTyS9+izB0J3Nlr+b8pZfSExHZUe+0sfi9fM1Q1N
c6lhi5IzMb0HDilE7Sh/eNpsmaXBfI9hr0h01k9nk4k4djgQ5a6Zv9P9y1ISBobSlnkX74dj0Uup
pzRPqDrX72IfHktkI0RlXVyucnwBUJyU5dDeUiZ6zHwekvf8ZMjVgsxZCXYDpZ3c9LsEq0mfOa1r
u3JP9lXrIDygUD5o6EyFmHThkA+eibSH0yeZUkx+uLGpnxLwrrU6J6G7OBnLN+OuAPU63asIxUb9
fTHT5671YYRXMnnNQAfJXQ5aV3n9qfW7RWvr+EXq921APPcfEKGjTivUERF+2E2uEgIp9fd3r6Hq
yqdPyCMsfsMdWXzDb58TarGF7xMwYfAFj5rNEeFSYpEvEALZehPFtxOwvJQpxX+7F1p7uB6WzpO9
Jfd6epU1LdL5wIHJ2g6ECM38fsCoa/4PPIwuMh8FEJmMJYRDAt6zUQP4CSFHhj19e71MpMhN+vYT
iD8JkOFrivQbrhBVXmHrYytLLL4mXj4O3MDBTFAzFYIjk7FP4TWoNxZG8KfSK1NC8ZTVdEk69Yfm
M8KTXC92JY+OmyePVH9RaEBjxSZoqQIV4IMKG5xT8bqSo1U0kVbxNgwwd0FnLcTCax+/jXlmGvGr
nintztd4kWIQCJaZXN3w49vhI7uEvdGNJ9v01cHhhS0gPzVQeIiuzpQYqCc8uxtyRh7nBz2onkWw
xTkHEWoHyFLSQdjsimt/MdqZ10mF8iSqcs8mq8WYcCXsJ8qVScrpBH/AWat+zZpjQgNM1nKys0qn
Bp9y7ynDQ7OLGU3sJOVfxApe+gcu8SPBIJ7d9SFnnAq7U0dsHrC5itNwSuD9wLFnqrJ1czgk5sR2
Y6cGY747IAFR/X0MnGAuIoKM51P7edw2IzrLpaFFT5lGd3Ws4/oPZ5oiFqOcKlJpakVkLbIt4n25
D0lth/6vbY/mnJ6o3kJGuuVnoXjzr4SRpIzYPlW03A+RcSTSs+fU4dbs0mrhLySxPfpCZk9qGxXq
UdIbnzl1eSSiKI4MkMRW7BYqS2yPqvcDYyxIOJ8E+aZNmGcjgPKEnX5/sPTo9waRi35C35HAxb1G
Q0ItRuJxS+9gBLqXqCa4jeLWDkpy3BkOCiKNjbJ+u6JNtEpBC3ShjH9rVcKE09IVNPV29pGCIp6u
6CXCDDGKG6aMZY0FLKaaSipK3qYpXja8EGp+nOks8m8xpJ3XJ2yhAsAa5ThDzOZZJ34C7iVaBrBm
cufQV1sFaM3uZ8I4kTuhb7x4Jl86uBw9GDbA/mdsxveBFZUQiEiXQZlY9Xh36Qn3jUTEkYNgVndb
WUgNOW4pnnK5pcee5DhXwK5jXIpE68yfzTVRK4A8HUUG/mbqjeeaH7B5OHx/44vxyGuKsICJtwkr
b1jGQvoldoFkOt54Qo/3wIlSbpduvFZ3Hte/OWqIhbBU/xfAF/tvg5JSJdXRXukQ3aOGnV6dHTHI
2XG4m/loPQqG6RRedcgCslFDSKMzjRtWvA6Cozs+61dvc/jTdQHz1WCIl5HVVOOseUu/tS/3+qEE
aI2V342vJSgXl3cDj5+G5dOz5tUBaAK9sqcPpFoFHqgZ2D9QzHQqUa8gDC5gXx2S+3/1HyG07fTU
vSl1dY2sPNbCyJ+P4TE4VtcOEreKfdNRHUjGL8ao51R3JqGssHZNot8jJs2JhnaPoNcITcfWdHFR
EPdlwYNjAVfnW6RnVQjSmN9dOS3x5mdcqf7tKZ+71jbbAQqmkmObjZlhObM55Fys0+xi7is1dKfk
uzlGVwMmbbSKDjac02WLsuA4eiXHg59iLJ3XeZ6s5V3qaUycnRWq3m79txteAdiX7fXlvBRdpacd
Pc4YX8YUtISjethJSuB2IyldZ+Hwr9Bm5FH3rlPUL5ckjjkh3bbMXbGSPr5tHrfzbHpCsohf/k5f
KvXBsus2Rxz02Eo6wcHMivHRqsKBtwSsbcF7CgSn9QDOha3882zol+XWVP//t0JxoEGdwrKPe1m/
ttGsbf15d62985C5h5QT3su56A84q63ZiwVE8Ywhg2AUAwrze7fZs9hkCkg28NAw/xU/ugmK6LU+
zeMhqdp7zaQUjuu8QQoAQjW3a5eDtHxXgvRlsU4nLvrsDhE72ALqPNq1e7bUANt/apSE78/I8yDp
+IUL9P+jeOFxFu7DqqPrL3vFH2KUV9DMChcbo5kGLaOHdcuxrER8z2DSfk0jyDxyP10wx8If6f1j
/a+m13ezGhOiGERpbCAnuLRCyQxFCEp56zwWVsGmeU57f8HZVSMqosvw6mFRuP0Girvp7AR9FByZ
pXhO46sayeof25QCeRLguCD1shuIewuZP5MjaQhstU0BL4/Hl5IMU4pbAftvXA3hekKnlqgB/he/
taLdJcDSsQE8AYD+4Y4Ot2OD6FE5rDNRyfJqVe7OE0tB/rFakkBOflMQJqupR/WHjXmifcs7vnJS
CZAftTW4AhKh4kx7+vuM+l+6j0nLRvo3SBKVW5M0/pWW6a98Rf+Irbl1Xu/IrCGd2hVMte0ih+ob
+FPTp/WBQe791vpJZU67S/8FOdeXz3xyxyDQqJ8oYYj3B2jD6ShGbewqy2AsW1n85ID40gFPnC9y
FdbK9oHxnTPEqfSEmjyh9wHlw3SlkksmTceJ3aLIrj66SuoOTyiaDOI5f8tBJBbj6x/szTLehyZw
g+8FoExlKdq0isgThwR3UIwnvUPXDlF+36NW3sIPI7/z6EE8+PXyF19LpXp3D9k2Hij+y8d+MAS1
9s6mg7orc4XLd1bRP14Ts0uFNdq8kzA6VoW7Mkqxy0/CQNFt4ELKlZGYuAvGB/QoUo8Aqiv/MfrU
ji+XnR/JL4DBto0nDmYNngt+cD0PbfQE7QjNEyMVjuWq4XoEhJrvopVykpqmBwP2TTRxVXjhtuH0
/t3qDIgJby2nX6mUHD7n9u9EUsNu+l5UV37CJjGCS2wLX8oWTHKNq6lApyCYnAPtYfVxpsZ/s3ES
DajiC8FbSczkuLdvwPkUCsWWvCoZVadwpGFuozzyuo/1AwPjQOrrn9USBUBp2LxnfZgecdZ8CgGf
LZT2k8bslRPDGWYF8U3qJPx0Qu/aimHz9O+7LlKCw7xEr2Cuy1lFg50m3qZjOyBfvG+JjRucLeGR
QZ0gMJpEbbop0ZTBThgCEyRvtHYKmIk7J/2chCJImcQGz8tNVXaCGBAgNTBqgX2CYXovGK/LtDjM
UXKxPDkZGx9DzvVBd3GebbuFjKDnCaCHzMwIRnjK75abtq+4CCiWhQDU/P0WeP1D6lktBw3D9KXL
z2z+uwJfWUcpHKNAY9nlH8lWsau8egIpCkSIA2v7iVLUx7E11dAOJiiIN26Lef3fY0qiiA8cfPzV
H8Q8p6nVYakm/zzErigMjQ96AUtQZx6blm1s5dLRtjc+TjJAh/b3ffgW82V0kWdakzKUzBHjT6HJ
c8zKLEY9DOUhyuk8hzAmxnoD7LrZd03AEjGpu1BYsgxQknCjHviwfUQ/DhT7YCaJNpNvxEW+wClD
QtQ86OmVn6nu1m3lzFSq4M+xK6YLp0eo1kCgV/HCvKUsefNmDfkwErBNrd3oQIdL/BscEjehCR6M
Z4OAYnMqDu4g7tXZ3niCie6Mi/K51KzgJiFGqUJXDXFFnZEtLsWdoHG3lY/hpjlKI7JjUTwLvQvU
scm6GbMFS9IvtgccO/F5/5hrSdN/yMO/Qy2T4KwWtQElfuxY74fwJD/jOuwX7Z+iFsw7YpyWjy/o
H+siAq9v5e7u/W0Gmq49KD6l9r16kMHIeMIJ3b+SDb4/mgdRMyRvkpT1tZWVW3QPZppYvcWB3XAG
UoGo5HE/HcKR1BjcPZzvtL8SwG26dISC6913gzm42xYSdEr2InkG/a9d/4lIiORVx6I1D2ms4J7B
l8O7KkkbfRUhLc75Jrh218ds+ooApqCbPzqIp+B7Uu6QBuxGRboKY3Q+ZiQTBKdoYtJU8RZyLe4X
Dh+v1Mi55JcJ3iXcBj9GE3qaGzYy/vpqFieNJPTpQjy0APNaJ9Jn1V9OFtiaJIUfOfriQsMp0z6G
Rlqq26qRQISjRKvczUEt9D1QTmZWEQ5b5xM1v9KqHpUietj3KN+Kvql1oDHdfslV8hUm2xxUhuYp
fb7DmC2Ui8TCidAH8YcJR2K0UnHanrForvpHbyCbNUiqFqbN0wDF3HupaOhBOcST8yAUtZpIDp1w
+7O51Xq5VVZoMNuzStSsR2dksjTLjBu9EhF68yLSw7Y4AsJs/VX7KQuDg3Fpspg8lPDs6mQYg38A
uuiIvcEZSf9hNAH1b8T40cnZylTcd7Bm69vujCJV/lzG+llYZfSXihhkoZw6rIj/ptxQtd3mV8ZF
A+uKP/qjDLTT1sJPd6dPHYUw/mj9HmZkbZQUkfkZlcl66/ooGUvKVR+taJKlsYWugHhfXi5mdjxl
OQ+49LPY0e3nXUgmvo6GfSqqLgi2ygIItt2+mVUJvGZEwBabKFUrb3pFgRzjwsDNU+dlMQjMFtpt
wYgwm9n4WUDwZCsqerROLXFUSE0efvRCOr1LrBv5lcBdoBjpN88S9TewEC/s0ALVyf1DZynu8Gki
6mrxsMNvtUYfctSW0AvzXKwzF5LrOWiPseTcxDDu1gpTCxYiznOZQ+5fjNWnz5e2UWts64UXdSa7
TluEMVOhn5RjwM4skUBD03JqA08Su1c5HrOUObw+Nwf1FKNZFyiHX70jvvD8VFeNbMOGFFcdYx0b
wQJ1j8oOXhwNmnYpWbsTnxXugQDimf7lsmape4i3sEfUeVbQsiW0RFrCxnkkvvIiEf/S0VR3RimI
UbydiRJ7vi2iBsDSSP27T5ba2n6wPTR1U1p5I0XgwhRls9LUy9bJWi49gO/1szM2vagLYsL5+ZVK
3II2vBrdBEnlXItH9Yn5rWri3GQx1JCk65QitaX3A/vyryfVlFI6LeJl7dhNqDKfMTkzEBUAaDau
KR7uN0u7pZiRoMG4E/aeoFlyyifGqpcO1PBHYhq02S+jhUTMVjF2G1+w7W/kMkUBteGcYItrh6K6
KQQfoaxKMAUKfs0JG/FPEb3xpwsygfFC9BwpNKAmDXL4hn2a6pY30Jf/6CE1Dtabo5Y4wuv4foff
zjlpaDrsrMMT/MmzNSAochIL5wHxn5Ym/bvqXiabQZtT2Xqlsmf8Q1Zag4QucDKYyx+k0juIXGl3
Px2fP1/8b4Uy94Gldnq0B3mjGp6+GefdhB4o7iWtzHAYyMlw1QtVaMNBt6KtM/Whl29a62XyqqgH
5QrLNN+EwXHOfFqkQ7unTqi8A7/J5hw3zon8MXZvK0vGrRw18FKd9k/EI1XEMmtNfSmtCfRcwYFO
3gQ/kR0GFf74KQc8QoUTaPSZBf0X7CIOtG8hHRTQ+bQwgK7oYPSEjteJZkEyjUOZB7VLaWEMi/tA
z4pKuPYHhkz/ZEPjTKVDP01ETN225vO/JunCISy8bQXRYD+afrlSKO8lWZ0v1iDGiIBYxTd5REha
b3gRJfYey6DH9GvolkZwihF6aV+bIo55tOnyVHar1SReUcCLXINw53lyfSqvnyFngCO9w7paGZ0J
XPlwR1XzuXKigk//OnChTxArNsq4f4vZ68ib0ePepMVbJ0lr+7wdgfXdZlHWOJws761zNLxFEBR8
8cFtvOMbEYw/kRh/hYx0K308RAVqLG9zUqfIb1beEsH6brrZq1oq5KRUQLrIDEzjCAOWamT3xxq8
Mmm0H4DqUwhI9/7jhD5vHDYUcWDBmNAJ4qDE+KY6oeIL4V2SowRQ0p7W2osyV+o8LbrYC+LN2F4R
tlQaTwC6DAwKhxb3Kf137qvbMgB3AuryxLTGXahi3e9JpX37CEKIsJYXLzonZNIHa/xqGxekljTq
nEbUL7/BbdFHBuv3Ftb92L9GwLogKXxBaO2J0I8oaNvpPeRN6eoRuz6ph3+5mdP4zYnvNOfnFw6A
R/XSO72cd0V3V5bZ43ZJvf9KDgs6fM+yiAeztTE8dXZiC+gNbFfI5hGUjUh7R6y3YrdrEeivc1vL
CE2/zI8gW8seKEaFpj57qr3K3nPX5CSemOEph42JCn3OwZil4TLprai3hYDRXhvmSYPXRoa82wkh
FLSZVcLJtlJXXT/y16BmHLkZpggDNWCV+HxnZlnSF/lggjS1n2TR4v3Safj91YGeZAnjusAT49xf
VJMIzAWzuRXyhdjFSvkIrKKBQZZ31bT1678Wi7gzg6PlmN6eR6MUDX7J0874hPDFGCCrFAevoU/R
gX1rBlGZ+BbaimSSWb36wcoRhY38UJqafilG+97Z8p4FsUY0ifrVrZ49QyJ+btBROISxcqMsoiU8
XuL7HK6bK9vHqahvtKw3V7swUNqi3RWfsVgpJkfBb8D0WWFD4xOZMR3rIeZUFTiVHFkxUnFxEkXe
GjrzaIsnWCiPAjV+YmxtHoAFEOnEc02rIuPhiQ9872xpoSc0WA/jmlEKdlwabVFs+12Trx7ki4ct
ykF7ESy7LyT9ZpQ0PWlFq8OZnyd2/yOFCMkIV5GQy5rtr3WIzu3gzeQBVwd851YHZLLywoEdBiof
oTbQk5UILJQDusdNePMrH5SMBi67kl9Vp99NgVvccblyCztbWnGyZGZHJiehMoq2DtXvspUKBKw1
JvaPUccW942UYlGJGpBfnKCNA/rvVK6m19+c1nSwwp4j1cgK+AJA96c36Va0SeTdcHwTouGYPGz5
HZFInjXBFkYNRTacySRToeb0HXhOBK5mIgrB5wZyY0sYXUB3hFYFJIk0Kp/bckSX5zgkXy3+kvvJ
g373NdiDxm5RHMEb9BdWuu8u9ZcVcHoUeTi00VEWadljWES8Nx4QPyJoLq5m89DnvkaFPyEHgK/C
y5RI6LX+9+ozdSF/Pk3cnQEcv/FVhT3pLyXx0GNARLz+HuWiiO0HfeXhvEe2XuEr8nmbPmvAEOIB
getkdswx2h0/JQ+CZuA0NU0+Vkm2UlmSnlFmwvTSI70I2wWIdu3lbjvGqWyt3dZd10gkJPrxt7VQ
0n5eSfmNnx0RXwFMjHXRMGLuTOX16RBK4pbEPqYftYPUyB6I98qDNmfrJoDg+Ovet5qSO1Cwi5Em
Ba0k4lQMHxP5IbU3jGoIIdRSnSf1SUZs50YlVxlYkWCfd+G1VfwIp6Erf8aZERBnVMRD2PPIsNBE
gRZzL+OdkJZidGH1sTWyvXuDiMKcvlYAGQOCbBifHg0DKvoYRlSdLQVNHz1sMqrcQVBrIWPKj2uy
GATYj2gKTYyMh/YQBdWgTM/rGyOB7MH9VjZdNN6HBs83AmFxA/YJkbR09yKbu8k4FcR6kk+T+Pns
1Z5uOS+ykp3aD8YdJcVIlvuBehGm2tsXKkDstZjDUG/c9phn0+LnKX9xr4qfgi87sV+LYS7fYtF1
d2kJ74sQtIO4ODNK+JpGoZ8OxNNbM6yq2q/Gd3YmjOWBLan4X9MblDO6QO8ozf87ZqAHjZCg43JX
0AW2oITxN6Dh4KrDgZhMM1CXTUE0DSCZGfHozg1QiofZXst0md8L3jzWQnhFH3pQx05oYUrdI4VF
CrnWRgsJSriGyjKbiO/LD0GJlMUXUqB012jpf7kidPlMQkt0eOodTjT76aHUHcrcqXbdbAtdipzw
KKYYm7Jedd1v3EuMtQbybIhZtpiTMdR/QPkTIUjeO94OVXfI3nSDjIHwDq443XAQrCDoCIsYksXo
3OxuPzRguECPl3EYm01nm51ftDBbWKMoaOhvv07wKk6uB3GBKwsQtdqoBA5o3UOaJ/Ea90+4LHxL
iD4y7/5XuDKYVek67k9dBkpXkIRqUs39y3QbiMiqw2CCngAnwC5re88GP9O3aji785IeBcPpFeeX
IGq9j40/g8iBZhVIIxFX/JJmU7Pi2ocjmu1VuuZzRGbCxJfmK4zODYwdAUSAPgqDp2dvqvE2HuYb
aewHDFPkH4SS7AQwYpavSpUAmLyA4iMLtcmkkQOyZuPB7H32SRmUOtLv60u5aGl6rdTvhle7TmI9
gRk7SKa4AiDmz0G5ENJ4Dj0D5s2lE38wcKiftFjRpwdYQKeIUW4Lb1MqpYvWY1U3J0G0CzYuIJk1
bcI2FjWKYAWRVwfmKHZ64e8etW0LIRkJzWQOVUPXFbn5veTJK+PgruxSHa1jHBgTJ2/wpzL4vSfd
+o37wryDVi6ufE9yXyFq5WFedZz5poGDtigVOq45+mn8WLok6vYfKRsKa3Qkt5IjOOUZiT3RxzCQ
zVuveRb7iA4lT0bVfVPdDK27+eb16fvG5bkFrRg8l4aYo1sclI4ovphVEZXad2pMRu4NmMjedfyV
fR9+CTp3A5A5C4fz8wGZzl8opCWZE8FD4MdfR+r5TpUSX/WvENfbBl5X0qszDWmuZGMRFecWtQzd
gQZfAd2iQsa4e9e8ttohEX4lixhJBa994q7jyEZqlS6A/e15xDD82C/wmxeyjNCte6Ah5QRA6IB0
p0c538a4uLSxk8NUEo/APzMfUbOd67zTt7SmUsPj/dLGIzJPYSCIN9t4Xzp1ESKq5ru7Oxgomv9h
LvxfCuDA0yn6K8xzzYgaG0X8bJ0s5r7QU1d1RzYr+1t6FTtqRftS3RfZE3V+7BMfeDPQas/nSYDV
CpSvjxixM6dxS4kO62JXwsweWIlukPg0GNpTbqnrf9amxTQBs3d/Z5jd0cMPqnJ9O4M7xmvQ3ieG
bpLYfM/o+yUE1Bm25AZ/F42IeqmDIxIGXdLfI7Z35QYwDfaq8bLiXz7lOsYb+yhqYj1P45lPT4j9
Z6mx+WXFaR52lqBLvwjmywltPQXEqh+/djHZnH35xeF9UA9lun9wq41J7UHSf8jp/DNZEH/DamWO
5W0KrunGffOYGfAEgrNBfLgiJPcTQ1p5VH3BBgOD8VGTpX2In1Doqa2BnG+H3g1peBf5CZCsSJp2
/UQhN5m0s+ZOK7zvlU0wkIsU0zhtYI7sWFtC1GaN9B3mQyGaev7jJlzrPvcjJSiC4zSRTwB4tS6q
unLKPm/tatCyU1y4P2sKkVYrVxROWwl01Nz8mOWyarXiELNSwfhMt4Q7NW/D244UXwWkS6RRtgHu
Uy+sN5EB34XA9eR7Z93cDPifSvL8qWzHtwwBXbdwR64W8+F4RUA3RKMYRkfM4CGa3kRRDR8WYWul
Xs+y3MZxQQX7VvTvV64eQMjW1nYZNEanfnaR6hMvc0v9Ty/pyYizKaW7QdLIRFCyXDVIlpl2SJRJ
zMCOEsZVSUnMKkGQW60uKCYrWq+mM8JcBctZDOj8p8vqjPHVvYzmMKaNrJJDthL/w219V2hNgk0B
QekqXlr95JwGRj/pNkUlEBw2MhDoIaXeHgexXBAwz0KSVjaGhmROpDzr4ZXglY2eJnMdHgyutVJD
bWj5ZcjgXe430qL7yZWDz5US26eIG5U23Fn2gtpgWDHOKPJ4LQZ8drPru9lgHlxpsAHI9y3r6qWV
mzaLDdcTsVh/8GgaYpP8VqIAh3eCwLM9xsMP/aGLZ5erzw+FNPLdQgkkZLjFR3de5sTmomHIXB4z
0aq3QEMRtADbahoXWx7NHxRNQsl/D/GXZ+0Uq1xShhxA2fJH9oXxOdufm95oah/46fYLPyuawhOq
/aVarqkVj49lcKaHdW4areJnptcENTPoNpqcXg526QmrTWP/0oXr06vFeI4reVvzzSi84vR4A0q/
4+DL8MFh5jLjWKVZ4y0okPIRcElw9Vi50USxs0xjDEAB5mXjlwoevwgiY/cyoK+pFbpWlxeK7X5h
qSnY2ySobEa1dkR/JK7X+JG7lkQe/N4QDaEXrOflQ8puCeq6FTjTVgQFt9KiEz95AQpKx+ipELR/
Phd3sy4ThufkzCvFrcRA3ii6vPqu2e4GwGbmLhvVdnH3pZnbgLgOQQ8GeHSzFyEbeFVksZDAM0/N
QdZrIauvRP+8tPrWEnGV7oVg2GgmGLWK+4cXOgyTmMg2GgSE1nZABSqtOPm0Ho2wiIDek/5YG1VB
lyqcqteFGOe/ZvbK2vNif5XCyVFaiAkzsP5hNPss7EAhNutWfTqiuqVuqEi0dceS5EFpAl65b+4x
4OO4hCuzdj6CYv0FaA6VEciwuICQR3f9f3Wss6ix+xwfBILZdaswDbTAOSxhk0WjJpnBngwXznEh
GxzPEEUM+kMmudQurAGuxQxj0yPTIobVqbUk8Oinfo5MmFF3JbyXruMYCpluvVMbtXSSLbw2J0IK
UiFS+ksS/uDvRdtWYMK3wWO3p2vV4uvpl3htf+6waCdkIBngjqwYV7XX2qFWULk1JJaoarIQ4+OM
eTs7xbV15wsdP8zCI23zhXojzOcxjI5NFx9fLvCnKK/XcbdfMs8/u6UR8LybVuo2mI1/TDWvgKbY
RPFkJzf7BSsRTgjbJsETG+pBeLrKFEXixngbqsTxB9NBm4xDsQc89hc5C+YqJRbeVTY1UbDvGaJs
VRlsIMBrPCc+ECIEUWdZOOcCsXsZ/JnuhdEe6FkyQznrp0LROBpPwxarXv9Pn71H5Dvx82k5h7Sh
TESem7NBEpbFuGbZ8GEMWT0oJxgAiP/kfK3N2+rVNkj/EqBOoXu+1ZXHPZgMy+ss/LYYotHksN8d
bDfbrf6Z4miH4w11W3Cctz8baLnmWpZybcek5iOrtBDM/uHERPcDWbcsXb+hpE+djxyeHjhXYWLp
7T9XBiSgNMSg/seI5pFsELKbskMq/XU1z5ZF98PUs3nK0dq413WH2BiV/b4yjAcp/JCScdah2mna
WKGSich0Qza+7BNn8TnFjRwdz05q9uJEEGzXo0+c1ktFGXt3CoWkDBi4riadAn4+zorfnsxsgwDX
9/KtnN+INij8G8Du0GakxMfrJCwfxqBBjbzFSYOlzQtxJMX/vYffq8FBGtLrspSpDdRT18UJVFRW
1KVo5/KwmaKduLPnmo+1vmYcY3e1pd3wHGoc+Jcc9uGJ8rqlU6CP31Wz3u9d02i1mD4mcQtNITis
e1t1d9YyuujMkI1kVq2oilbkizADS1EGjy8w0DBM1JBF7pVCNxjLFgWTdsyQ+xc0vqUOolP6JMQm
bbjW1BYL6NZF3yXdnObl5czHAPoW/s8zzNYRbcBxLQf+cCz+r3umSs59LCUI3OQek2DsRScixOQ5
Yxpo3Fqu0ah997t72+dPL9teKFwTorxGJg8JJLbvwOws9iFEnpj/jneWnS/FD8DADf7pWvEWJVqL
lssuD8zUgyQ79C2/WrYUuGAO3vbceJiPAuaISNjbSk0IRfH/FCP/E0wK+8usj7oWq/tKYL0aYp18
1qXkmLBbWMCkNhsnlWwEp9TnkIvsIQ59kcTf8eUexgKBWyeZLd6MiaH5LMiHErktYl4k2k3bhU1J
3CUYfYB6va4oXmSQoLyEhF4lj7LEpAQdlqBCc3Hv3Xb0B2b22ZNDIE9FThwOpL39Ql7vLBysBOyM
sKdIHCvPqDS0zOwEa9lYa8WbqJ+pEEyMePCP9NVleBnW9yfp7cJQdaVbRfMhJ5Pc/D/40ecqJpwI
i0tLH0emUI2gaRHBNNwtfptR2DHePPcbr4G4NOo2TiiIG+0C1VgBWRm4vJzAxP5pPA4b7XuelNH4
DB5GU77+X+J+og5wEQHj8CJTP2R6AhGvEAtYgF1I6GUCMP8qkutcX5SPLtalnuMuXftwo2SUTBpx
dOSoJVx/Z2/6b1OdjcleRZAc2hYIgOy0dMLDaPOix5dZKmJJbhaO3/SLkbn3OnP/8biniczuet5w
NSzQHeIjzcJa4ZTVsviWBUBEgTGKyRm0gn5SQ57/+zeh0CCcPN7LXNJnsKbbL+iFuQA1lw2yIRy7
J78MvImozAeTy+xTvf0blOCR4mLdjMC8rM/TJMmFYsxr+RWml/Z+kW0AT+go/trqmpLu5dEu5Uuu
r84wadxNnXq4dB0dSrd6/rtW3LmdLVjbTZnNHawFua9EQ7+I2oMzy6joKbFHx5SZm7DOQzHPdbu7
NSmjnwXj8lR7g6joYa0/O4oL+I1PDOSRrmdtfHnj1SHJs22Xe2I95eyYY0n1AQS0QgtFBWm/Ez+G
CG3IVk5JzLk5NEZOb0Qmxpt/2hX+d8+T7ZqZ+v9b+MpSP9LFoJNUU8W+K+AFeISJCrjOT7Is27cZ
I2zaCEcaQC4ZPRyJr6FVBznchdTopmOlw+XjvEyfbIoqWOsOg7UV2+/P7JE6B84uSdOzYv3M5BaP
vd4TOA7DPTXCK/z9UT+gc1AschwCtX118MDEXggVM9WpZYL/xeP1FG7IKhKL7cxcguOpXDfABXwv
xR6hJd7gRXWNr6sIvuC9ai3DRxvmUbHoxnP/bBL/6Pogaz8V9VJsvzupFl0BBr5oRvM5zIH2HVOg
5lL9dyvvLptm3YyMRvgVO6Km7g+d3/x/cxbzN1RG9GEVTBVlW7DVmymeMVBlFvyeiMd+b+Fbr4n3
x7DbDONJLBdS2FpVi5m+yPNmuo/EEt45auAiRJ5RoZ2yh81olIOKsjJ1685yYK/a4ph2DCwVAvrK
8Lys52PE3UuenLT87WG8+TNVCa/4iIw7I5kEBpgGwmIvhATZc4eXF/uPcFgiR0H7r0Q6ivoCBwsG
QZE7FsMsuH27AnWB9o9v3sVinGA3aeer9EfRuTFt6QXjT1RXoUr7fPcSesByk+d26YdP6vUedPhx
2T9qIOYV5b1TDjrwF/1gNvBlUbudzPQ/mQUOFzUsMP6RlZpUwE9F7x7H0wy3xI0+BoFyK5qZwOYv
Hgt/AjQ/QmezO/JNqEZclVnUD6lV03qDo5Ny8wh+xjt3X1HeTaHe+Nz8tJYJicWG65g29SRYvLWd
HrmT+iOXItYrEb8nBpjaM7UAydGQlTvHMqjG3vbY9YauAkq+GIgdqAHTmAsWm6WhPnLJE7Lvp3UB
u9pHtvxAZwZGYy4xjgCvppptnph+fMf/9CNiO81B0klOlOsMZ/pDlcrCP9pDCG5MFm5TCs1kSdkp
yCe9B3D+LPv244z+msQvb0RssVQUlLu2mRO/WcXGYze0dtOfBEajieEYo9vCuL4MUr18V2QwUcRf
3RE6VIX7up9/B6J2QU64QjGTmwTmkoApyETkArKsjxy6jh5xYZYxXp10D2Pn7gcAYvN4XBZsZGwl
mfqfQkZEym9kvW4rE7weq2ux4SmbFL3hYjMPkZf4SPDyXQBs+1PAq1tXjbNFNA36TtVp0QSIOvRj
dWyqFmHVe1hZ/OKmEBrGFV1PyPVFOPCp09ALz7SstXIdQg/SslfyePfrTzFcRbQOe0QMrO1Er2Wd
DQ6KVmO7bstXJlq/3WCSD2sMwKaCGO3XTUvyVoNElbde3B2n0yD5Wc2wYAwO+v0dFvmUQlWo5Imp
YFD3dzOCXEy12WV+B0WhQkTiQNGGGw/YKfR6zu8bUVDNoPRponNOBcG+hjt89E2CN71kByFz+7Ph
qAB31tmP/ZkExZbCGZnAChnnVxOmCfG93s2H25WI9RzOfyCsVAQJtbZRlp0PvIUf0ciCrDgqXc78
k1JZvGwurLz5NwlTWF6RmxWYli9aysy5ZKOkkmDkaAUYiditXhEVqgBGWcXajO+gNqc6xuCKPxn5
ZhxZo7PXErt/gF1p4IsGAm/LFhbpxGevwBSkTmmQp+vjMMEAsEbiwki5yrNI20VG0YL0GJfAFpY4
licsj4RhgMPnBfQD1l/gf1GXHTtrGWhAH+7yCYyqhOjDk8knw1b3zVFKAqWGzfsV+AiC6M8M61ZK
hfO14fJgkIAQXxw7hoKraPygPI6Sth2L9zwbpJ2a7oB/AjzPrsSmYYgsmtCVKZUlhZScc9oT9x5P
UC72ArXbmlSzaoJnKgHCaPc6ITOktie9WErtX8GEmw/GIlx9ukvdsI1SjwJW5ta/b1GCIw6aER3B
bAaUi0kBrMFLO9eWfpZ8Tj2kmZP3PppDkEmaAI9tCKQZ/pn2I3YIIPhukaw1A56vuHO1aNJFTcCK
WqHrRQekM8bzathaCUIh3kyCVIPvbcrQ/rzag3wUlfTCD1kwNcliDb/b/DKi7PGSty8CHAaW1vOw
LRowFE7xrAj1znjJ5GVEr85Uo8z3JpVpDUxgnh8vE/nmPg1H6/Vje2S/V3dMfkDClY3rHgNyd2pW
MWFt0bbWskF43HZ+BYyGv8shNhPdEGxnzshcExwNq8dSGGOUSYHHY/WqKQYu7KcslzIH9s/FL46M
jN7pJJH/07QtQ+itVo45354JpVSewB2504Ki9BtUx+O1Uqin3Vwp3HveMLxSGZjXXe2WEgGHDH84
D+3Z+aC8FyECfM/P0hfZBfcKdZdOMFboV8ihgtIqLTDv/F4jzjqyMqMZJQQLBtVrtvB/+QaXy0Fd
UqWrIrCb7HI+D8qaKcJm6HKQfPwZRYVWx4ks9yd9LhasZ8ZrvzzvGxVEAJv4YIwM4iIqOR7n2rz4
UMWD8hDPzQCW4/kSO7pJp1oewrwvmC/FEyuoLc1wXPmsUozSgZa3Oap6SPMGMENVQme9TwHwl7Yi
7jauy2ieveSbaMR2tO33bnpzrdVEMhhZcUl2ibTBdx8V0MWScNSBwYvx1DtZwDdbpLkjlr5ZHTIt
22CZf4D/ufja6rBVWqSxv2m0p52/EbC/ojIeHF0E25rAuNFENmCYg9ofn1vn6006gaF2fBZWOCjC
f/dZ2arGQgVlR1p0+kfa0ylHAMyWz5nGtm7xQGhpdrEAvntgqYz9NXgc67OiqSJ+bqpE8qi2Zrqo
1OHcM+wXlKCTzlUoOYZCm0JZZW0QkbR7eYZnqLcKZDK5CHYmv84UqyeZ+Yv6ipkakN5QRSJz6Qia
Kl6Yxjx6I2ueldi0Ww6VC84F1ny2hnltW1O++k0YHCQ3+fHQkTIXVVQGb+UXk5at66pNHXv0kDME
T8XuPOdIMlk44ygiK/KgR+w2ciBa0UsJE2PtvR12aE1Q9F004iwcTjXbV1tJwMU8KbWEXPKAWCk/
yYhzD9242Wn8TB6AUIwGBqssBXYX58CCHY9I/rHdpTZ4X4aRE0M6ZJ9JeHdsQCriQE5iyMoG14gd
OYdnZ9hZKGYfCMU/c2w3a5zdFotdS6Jz/hYSydtsAVfPMAyG5JtXeCsH4joho74XL/6OOeYDCspQ
qIBnUK8htjFf+eVlHTKWEW9NqS4MZ4T1d+4/YfBhRC9uW2Ug++j7hI6qX5o1oipsomSx5aKKrIRw
UVxza97t4nrekIb3akx++DuXLpFhkySkic3wCMqnQnP6pBqAfCxKRcbqs8H7fb5kJxkStXQn8qt0
1y7FVv6v6AU3NQO7BXTcUIqT7S9NWnyL1ZKfP8CkuW0kRwcG2QQ446l8nJ0zpsJWLldtXyyBO6hw
YctaXSV0sSu+10k3opYCqadnwyEhkt3xZp9I67ubyMPk50QDYOPWPZchm53TX/3OsULFauuoK4NA
9/xk7i5ISDEHNxwiYtSuCLGmXcJPyl1hLT7eGlf40i7rpWPmudx2OMtmXNq38GglbLf80vLWbg+b
7vONeUc3v0xBf2uL61QuZF5wsG57z/6i8UuB4b6T/PftZSoXh28g3dEcZaf0Qhv9YQ+EtJ89GZbq
mRr3BiSPfiTltcc1WoanLqKBaV21gNrjfR+G/lD3j45r+9TPdLxkkUhJ8B2ZADogMCfYF/U0RXCK
k6lzQp8KMSJUHw27e9jO30Kt7W5UyHcFE67qblalVG2OAShwFf/AlOB1veTIMrC68fH428VA4oyU
QKtR+NPV5llzVjllCvyBB+nZUhkSxS0+TgjrNsYLKpmkc2RjmRahWb1hoC4YGw+lef2J27vbjEgH
fXANiuGjR/nmIJ+7uuEzBXzvgzySACHr+zK7CR8FaXJ0CuB82fMFh5vMaVdiRe9VWMhDR/Mycr4J
c96XK+X227kCJYXAEX9jLaFW+DJnu0guXszwz6uUj5nyXDT3C0M5J6p4605g/sGost0nnHs5l3xS
Gobdns36qJgNjcoB78nlbIkH/IbAAYAXLZISjuljNL1yHj5tDjOO5PsUk2ZWEpR+skNYViPz4NM6
2/GJuTT5E1GtSl3yWmYhjZUJs7GAhUwljMzNGjXy41qwmRS7b/1d1h6s/Mxm/CbaCQjvoG+w8j1A
J0t6sqEsUz9NYO5xrXLUsF4g07LCy2EFJlf/WZnjDde13yHF3ueaI146VQ5M5Ngywpkxkt1fMuZL
MbwjfryjJ9fL4a5K3KDwSxsCRNE4gZ45aGwqijr74b5Wqx39Y2dyl/PD8ZZXy0r2Ml0tc6TmswZr
95g5b3iAZMR52f9CX2iAwogGTnDQpRwwslRyso7X7YmOoLQA+MMJDBgo7HVdqiGN4i2Qn3VfKuBr
tZr984L9YtFk1z65RWBWhIRN4cRaV1i+aK2U6yk0zSWS/2KZ6iZD0bPj7aBIynx6WaEcotG3ceXK
EvnLTCA25Bce5SPRDM1BpuuEf4t4RHws8J4TctjuZhX29Z+1Ahyxb6EOYJjcVjlwQGhSaTfF7BgM
62DAxABhCMu9gPLcUjDwEWFdiAiv5cWSEKT+vzAorGikWkC3ighEolEsArloQI5Z4PjmcuXdh0yP
kIDPJ7npSmKpBJ+tznA7RGPd294YquXXcXuq7e6JF4UaxOo5f1XE6FEb47Id63+Q6taXkhxsHCGU
nX3vt4diVHr2ymYWpSttV84qcb4/PPvYwsMm7edWhcGaw039lthoXDOiq+/tw8BU7JCfXdoC9oqY
pC93jcO9xeZSyKq7gaCjXJeIon4AOQbb8keaYK98ZWP7bi3oRn+SqRgiXFbNVTFZi3zHrLLdZu3i
8JGVxicMKfcQC7yo/Ey0X6wqN2xwiOqjJkYiwVkQHfTHvNZtTBxsOIyfJuPmGU0emzZIFvuqJt+9
Az+rzUOYJ/Xuj6aqGygQc8j7aYu+7TLFNO6Z+BBJeXZya2Lzkgfq3l8cgBl/vdAMjFCVZ7dSoi2P
w2LmdLQVatOL15tF5vA7TA2L+O7lHveceh+byuuC/IOplmmv2mZjnTG/rJQW79P132vvqytP1lID
zkeDGzfBjoD814rt2M8ZzkjAjrgjnTHnZMzt6rGEocrZ4OuPfCvhq1SCcagt8AWUpNcAgVmvkIP2
H1pGvFsDZKqr3UOLmaXfmP/8MiWFLR5qtvKV1oeJtQE0ELZGP9hUvC1AZzwZDch00eTuCgd+TjP2
kJnVE9HHH0rgziCTyZmkSD4lwSerqulWq6Mtp4ARbLkWJ6px3RQqZhZlaSikEBGjZTJRlOiQCoTE
ZgPrSTF7TavivGCIvC98bgGPK9XLiM3SVg8u3BElIeOJ4co2yRU1LP2A+2C3Zo3XlLvmkI1Duxdf
0wcd3yRQPnzFkCr6aNBkCkvfufgZugWAxT41jQkckd+sTCBV7v6xjNyPpp2lxXIZU75z2PMT7vKg
NcFQGP+/iW+oFCzRC0CTYfOqYydYSdS6ex9LYgrtleUX7Q61nZEAHSW7v7Z/kVOG+AJchDEqCusR
OweIhc0gefuL7SG7IWVB2GredZbjGButNI5JX1n+tSAwCKtAQrtUvBKZkOJO9ndKuzZKMX/udjEx
Hcfq9nrjPcwjpcZW/YN93sz7l+4lsqTd9gu8KhaLYyoXYnoiHd6qLqIIp4guG4z72hLoTDNBzlVC
Y2p5KUENnJL/voDdz9guC5xyn9nlqSNxw/NzVQeVQyoBqyyQHTYqWTQWTVVXp9YuHgJN5xUgiMPr
oaG5C+AcGdjdCnlUCEgnC3jdYgcLaJtQlmPROzVVPEGzcwBn7VAxyZkUsZ0ZExOriqteKyngZzEJ
eb3W7DtGK62jg+4XtTbrzXlFkX+ROH6tXo6qwe4WdpEM22th1PlBXPttZIEH/kjPenZQ6wBFaQJk
dZNSyRl2X5OBX8j9R9r3v1TPoCWQE9J5VDd30OZT40m7iguzRcc9TTXBOmD7HUPS2e7WOALsxOeU
758QLjyhHruEIATDQIzBcXmC2VAgIxl27H5aIO+aEPTKAWsXRtt+CK8a5Qa6IEXTV14puo5AFSWU
XXhvgzl0FeJajIQ9bqNMmFTpNcVMT+8cZP+EtRzQ8p12DFILiMfGHH6kQVK2l9Vq0QyjKXNYV8pB
CfUClMEZSHqgHE/qESu3LCXszZQUkomcQ4uy79Axu88Egq320YS87/90y509w85GbtlpwBXZ//1u
DxUMgvpU6BUnvGN5kNN8yraCRHSceDl1Xd//89Gw+h1soSPve4nw51ACiB1xehwGGy3exYSvplBq
/MWHF3+QBzAa+F73gkENSWFgkelWfyv/knO8K9dXFxmaVDoe67dSI1okbIQ/c5scUpW3yIdfmhxY
Kk4u6paJeuhj3tYE8mkdVKhufPdYmVIV94nIKDfrcuuSsFhtc28ntyA+tsyXu+q1vJIuuuPjjxdO
0Xav1UILeyxCItIMLCD4k6qpOxwIkd1jz5OMaMJ3gVoZT0gtlyEMDshoII5RWWSarIxX7aeaM2I+
ls4wGdxLtMetZQdMLOkSAfumP8MPUZiBVHSIRvvKGpvA6LBCNZimGGcbUL4M7qgWbRHS9Wq66cao
MopgYLlLFwf/XT9VZD2Q8IEIt8IYlFvmRcANB1eNPYqveUK0iRsaQi6/hpAK2M7hrqXjYNgFyh+V
75Z2CVJMaYZ/d+gACBvuZ5wVX4MbwExQ2PsITODsOOfINf48QyOaygPnO+xPUimfVwQ+/M6NI8CX
PCcuudjGzZFFe94WH6TtndQgpOGXePXhodYfJW5Hq+htTd+iJO4Zdi/wqgOLAgOTWHhMIC4qEW4X
J2GdbMZEtcZ5AOTyI8vLO1LJSofJ9BTip+ZoJ5x5sKIv2CcC4TQZ6AO+MXB5ZDE2QnY1EGiGu6/o
Jz1o/Y6XBIuUZ2G7x1jSsIvnxjUENg2eLRFIoHp5mYg8NfJ1z1Sig3ZeJ/Xc+IdomkpqYYK+D38f
Ihs45o7chizMcZyOfbTOJwGsS/MZGI3E+BaTaDiAB9O0YJcM2hHWc/PKaRZOJy4Y6reE7ZGm/AUV
WBS44+lG1qHVuGluUgJxQOD5bN2eKrN5zyItHiEVpQeMFSSxibtKStPVv+2H3mQDtI/RTVNYqPQx
K+8qqrVR4l2Yh5BQJv4TLE4pNOp812KsY9IGZSb2hCFLWWH3oXoY31qtPxQkZXQDp59jAj/dXt4n
Uh67GNMM0eXOen4ZfNY0Hrje+Cpcfk+3m3oFsLvUTNcmZJfEGIo2foAEtf3TiMHF5C3xEIx0wSsB
YVYd/c/Yw/SpuxW1152/44OGgZswnsZexr4MXkfVL1XmcdSM9ulnIg2jNF8eThgGyp3MpNAGOR9A
cwdm82EJkjWQeWywDOda+lWG5Oqr3CTI3pNETuK9yo6pOB5N4RDaVSVjmcCQlYEiSRW9081Inr+6
HTQOLC+4wwHYut5WRPWcfnIPPlw+lf3eo/UIWuZLDCmNBnhC6vk4yfeF+6bCMJKEyYRiO2pRcYtx
8FnAuac7XjKm/x4d2bEPRvHU0k1Ch45wxIDatJgt0BGEPw0+kenFK5P/c6KV1MRmd5OMONgbXfCH
hsOV1nJFAfLgbNBRCstsqW6Mvk2B9ZcyEEPfw8rBJvC319k9WMJtf0zgeASwl7narI/GzM0iqEqo
+OFnE2fn/spI5BYrmKN/2S4zThPdJXbIY7jYc9Rd2h9RZKJVQbFzpj8DjXS9g9+Jy4pn+1Phwiir
BtEAmT4EaRNizEnSkiJyV6a5qXyp01cGNXYYUP/mV6nScod3jCy1O/B6zbRD0HGqMAnSebokunkn
qYriySS7Hl03IFmLzUbf592D9KtvPLFTZXbFZj5kXtNcrtIfqfEkkewNa/+0KRGpeagoKkqHYKc6
EAzfcepfH+0kVl1E9hZnIqFqPaCgPv3DT921xUrLtRmFdn/LkAOhCBdXoAC8c6vCxwpSnrDPl/Rt
LFP83U6EDa6db8Y4JGmMbg1oUktyXw4+1CzYeruk2al3jQozOIKX3i4UjqcF7lBgbLbCd/NgsQPg
D/Eo4CM/sUSncXfqmZiH36EyPAUj1Sb6oICSUdQ0emFrNdEPB+U7ISXtGGtS/OzN9+RFl+7dnUN9
+rM0jb851+39O78hrjEwnypUzLlSac8gwP7AiZxxJVg5/N8mYmFBRx0NXmHRW5XX2wy1ZhKAJn6O
ul1VKmUP77cb2PSPtlVmZqGdmGSq94FCTOqj329nSi3WJwMXXkaBGzsl12D5Qu4oS0ujhwfLotza
gCOTOLJgpsvJzyjcLZ30NMvKpNuNc2D4PQylASmpb+Yr5FR/O7ZMxcGoZLPRbEXpyv2V3rOpWoyE
g7l7I73zPV81hTqSzyixJ26Dmm6tUw0yea4qGjFsCVNILrbpven+bFd8rOzrGVKVebpF2HDbWtRH
yB8xI8QHQIHWT+SciLrbziMacxiUuXSRygBpBl6T5ywcF2DC3XdaJb4CMJ4CJz2Lw2vJAl0qNDZq
qq6joEol7OUgepENyCLk/QBIYJWg7K6fE6NH2N3ARoFM/gGLx5mhwJ1Q5nPE/pD3zq9JrMGcHTo8
CgP97lSbY9uOc/hChGxO2Fs9gjbfm4WZzzZA3CJcgKJdGNFILkBs5j8yFugT7tSib02SMB5fXwEZ
R1+vpPz060f11D2PPLCt8W2PsEIMPRcnE+m+aoF4slkqdF4Vt3BWUZgkmkYkOnWwToVzFi0EUjEc
iJskfIAVyOElZQkPCrkVkJ5v2OgcXFEqyhE/Qhsta+/Hfx2QM8t7RirZ8PCEE4qd0DhJlxXCGRls
gLhdQIBOOD2e+2/GpJk5b1NhHwo5zmncNEBnd7UoxNEiNVLTvAeRTa/jEfWTKspqSOEUQ/21NSCO
TBOTeO9iLMG3QhXOM2kdvMx58/RwgbGzelUZEL6cqllGXgAkf6UVFXIIWFiqLNOJbPmPgJmX9QH5
DizInc5azxdL4lLe56wHj8zt9KgLk7pKvu8ftfpOcg5IZU1sFuHO02UMa1OvHvTnfQDKpmftm888
Jku3foThZP7Z4e6YEYdsq4+1VUJlD2lPAhf3tC8WGnfJnSehzJGT0logkBuO2MIjcCoe6EgoC58V
oHIH4wpDWyLNE1fAzOHeAgBOx43BPv18nrmlmCor0aUAXpdhA5q69QLO9z3gK3Xjmj2jXgMm10c5
+8bWj1cUE9aTa3VlaebwBIFLZdDtvZpEHSi7alkYpPPbliNkfaBy5oPXX0Unz4QtgNcYboTv7ICe
Z/BnYPjho0qEUR1diFg0pkgQqulsUOKm2CN+4yUW9ZViDLvFnyn0gl5niG0FEmMOV8bShGlciZH2
V5vWrSu24ELcf8M40TH1dFIhndBk0qhJkmRuNyDAwyOPKguIyl8Jx28KSkFJ4K3Y1giMXYiIc8T0
a8fdCmTbZZ+rWtHCs+G5kTCR8/c3UIhALHeU2ETbpI+EX1ZKQM1RciLfBGEze1qKGsmESizAlY/i
zjIXo7MVlqO4NsrHujKUNoPTEEh1XP5L58YAUJMGNTKsb5wLoRXCV7TgJOCb/+M2e4w9l+l+Mt52
xod2O58bFmLHuBROHHoR7kPB1TVgB0ADKuY+1fe2pISebqW7+I7tEp0DWCarPHhriX1t6LsCOb3e
WmRjmjwuAAPUEZQv2gVPkF07El7qTSTkCDwLWN+B2+tuxq/OBgp+0YjJo6d+NO+/SsUqUx24nq/6
ecjMLcL0kSoacfhky8H+G3b0FzHZq8IpjjbIe2IdH/N0eFDr75LCXkKj3Inr0i3RDEE1rDr9w2HA
LI/KMkKQXYMNBSU2cBlpQ0bTvJllQ/bTbplEtBAUAch9oPPseh+d+7Y2yUz8DkTT4N+d69Rls5sQ
JnlR/jtvpRmJu7i0CGd0qIcUchrJ5JhKqXSv7/F1ycO2chHNnTEtpsYkmjfsRs+5dSGrOh9aWZ8w
Rd2t/J/e1RJAAz+cwC1OCvLQ78Q8nMvX4/g7WPqwgJcyzHyurlp+wdmwl0H2netAub95jpPy5cEH
05DBtWkfBbSMi2qZGsFp8yxyWwr5oKa+321Pt0WlCTE0ow/wzmoKwUD2FQH7smaFuPhuWNA1sN4z
T3zUNr1s535SLo6JP+TOZMPHbIRDBlIZA8PvI1eZcvRrevAxgzvL07da3nku8mVmHCCDEPmz6wiX
4MKk0ySESrLXh1gWvkyr3kEt4cyLoS1ILajVB/9mKJr10NHMLIYI/cpJxbVKgsRT+pC0mvenH208
hEd+JAgGqzMvFlvUuQnHxgYg/Teo3X7ZJEdAYZ88EaTN5uN/3bcNWGQDHz0CA2On6z6GVfipi1hW
LnPBJsLPIJvIgZpzK7EdCsr0N0zeV8dJ219ftim9Fd0Sqt62UhAHHEyYDMl1eJePQmdziiWNuJeX
llANbMdcZcOGHvxbplCE+xV1AidEXTmnzglJtfhFdG0bmkyDcJvJrJsywRseMWyE0oORkVdSmJS8
27c0aFfXB6J0U/DIQ/0f45OEXfH9/RtPmTv0UVy9OMhpwdKvSC1PNexYyX7mH2ahi2w/jHoJDJKQ
34oBJ+rfiue1uScegrvG5VbXyKgvEYv3ZqHwxaA4ESis3Wx4OCMtMJPta0P9rGlDqf+qY+N6GdWI
ZsHAl//iAFzkES0zGQa58NKiQqvDjtsU34gTcivvEEv7IsCyfrrnc5nmTThOlBO5erqzYN7AI6r3
zlgS9U9pBI4+Gz2nWK+kQH1agTNd7pMdxZTZLWG8Xa9QN1DD0fyQGVkc7GdvNhDBLXMuDEWOirth
EoY/RGGOmlhB4B6NBFh5dvssYCkMxap85uf67G3XwyU3ij3xiWSJdme8yMkaRj2hIq3WnLLdtb5j
httM8tf4KmAIiEFiuzb27OMaipc+2zUmYkGIHb5wNdmZMEHxnliUcy4c7XLSgL/v/7TIKyp3gngV
nzYAQI336gHv1OYKlc2NB0vjHwuht8Bwahh0VAMzlTrTIiI6CHnxeFrl2ohGm4ZO/tltqjb6JcOF
SmyD0wPtUI5Lepme+28hAN7213S8mb7XddeVOHuDU7XZc6faRpyvH7jNp06URIISX7Ra/M6f+9Jz
iono+UqkFmOB3UtLx3PkqDGmunbC568RXZjV6m+U8urAwf5qYt75Sx/g2Jvt4d9+B6JYtsxMxdtr
s3rJHAruTBTnK2PmE17HblpBW/Jm+odcE1NdWX38D52sR3nRPE9hG8+1GjI7YFHE4pKsKWBVD18h
q0eqXm12xGpqVCESPejdKhn+5AzfT/fNhL2Zt0ivr4f4kVfUV+6GwsJXgciIT8sbEeJ2OjHKb2/o
E0QqzNe1HcZppRzkr1E/YjJsXAZxxog1UAJOJqOwuNbXQnqlFjvhx50oA+/LIEXzqih0fLixhlBf
tBe3BiOfmrQXBPCkQwjYUd48sdwvoqPGtrVvWGhXM6jz95Kv9cLdqtB7k3yjAhQjWfHQEKup7i40
xEzMN6HB3IJCVR/69p9MNDUt0i5Ou+UpcTT5MWQSOsgt0mpRHo1OH+id5ohNvgnzNrOu1bOjTD0M
NJShJw4a1rBhdCv5rhS9ybSCw8ircRl9zD7oHE2gLBkafLf0kXZxMv7uh3LQpdvx3ael3z/MgbBj
T/f8s+XeeBbKByYU7UxThlnBLRgeiyemEZ2ec9BTlxjkOebmhTQG3wHeM7HErY40ihL3QcHJ9fV1
r704k6Uspi8v2LVC0NYdD/knPwHdQH10zWyONhjkPAVhPtHbCHR74MfzCoTpG57TS46SWwHY1+oE
nGHJsHDU9XSWu2fw0y+OJqwHD0/9orxLkdcGR4mZG5mp/Oo+m8crb8gXH66Sa151U/oK1LSm7L9t
lr06cukQ1ji2yDl3Lsf2l4ezuC4dby4JoNliKoEeEjI5v3BK0SKu8VcfjH6HiviajXOfwgJfbjPl
7fJ1VFo0qOnGaXqWswIEifGo+oux0B4uLJqUpk4iuKZy2PlJ8hMEftZxtp1b4UpBD/Q8oBl3meEF
M+QvSXn2vc7rMSzfDMHp5dlUJSAp966H2wEoBm3HAWSgLLF8zTB9BCjZzobwG5fni/IiKJH0lRyq
nj36WUwWB3HkF/n18BbJ2RbBUWVctGXPKh1FOG7BzDmgYrTGvLf/AxEqCg4xBPXzb4CL464XMgdT
/s/qgDpjRvoEzf4wVXXed5AXBj8jv/NwOw1GJ2Fzp766Zb8irZnrVYi5e8cky2FbZ5ZybhlyxQe9
GnK4/BXgJW4fiWWctUKRVgyhetgFB3XsL1D0mOmFempZc1QddHdLSHLoRCr6+p04s6udRlDu5Q1C
dQ9ezloB8t32Zjx1AwnGaqCu/4drXyCLztpukk8AIXhjvBALJvEGSGCiUI0wF2cQIAiem2wAoAEn
vL4vt6KtWL608zqX6AgE7RhpGwWX7P2XYXvNL6lBQ+udoo3WNpGgMWeRILiAIgrAe5UmChy/3qdE
xhrw5jHpduU5Mp0+gyWjqoABWE8G834EyXzF+9/pjK2m7LTa8VTHe9E81O+GE0qOmOLb+nPe8fso
KCeqkA8NjcO9d5qt6CLqES1KkINvvgh66PmvDpQX6BsXQfpf5eyFWzRwK/lJ00iyNQ8XGv3T5DqC
PWHZhKkEfBsPRM82qv8r4/fdp2WqHhEt+EHu1o4j/SLEJiz/7NJUhMHQtIaC6Lg8alUq8SYM3ikt
bvDO63OCe4tZ9lt2m4qYklOScerwaHHtVj+Yz3jcAZ5UOo5H9mnfzfD8AQv+OVVzGSo39vb+j9ka
7TZkPH0CZD5jM9827nVOEPyATlCybZCZdFdk8dJezG5dYQRIa82KULXQ4ufjmVhsleGoHHHQ9FaA
vEh8L1u6TDOw0c6iRf/yup9C/46gAx0bfnoIpLzujQNa4F0a4TMFqYmRytN70qGwEv7W2lqRyCCW
97auzHajMxlwN4J1mjXcvy++DAWg8cjkwjvZBXM/ZT5fy3fo/udhwZKomZ7UvrSIW8/8iY/v4hAL
Ah1WDQyB9pYK3SkvtDC9FoF8vX4yBR82RSaLPOEDR/iMEm9WIdasGirP9Ot6OyBLNxoQVLOjTHef
O5XDHs/INmwGF/hLWAUxa+JSJNducAJrHfc6hk0O2Lbt1FcnieqI38TURGQzBlekNqb64Z+Xz1fF
XutvMSjaqgeqbahwvAtEGx9uTAq+8O1vIZnnqQBjmK1y/vhVaNL1k0nSD0xWsUke3+cAbYXsvi0M
/LA7UtNs/r7Tc+sIYtIZ68whXkrTl08LMh8u8eDVWnbl9waqC/rpKYo2i9Q0h8e/UUfZEJ/WoAM0
Gz05cqw5+yEUYzhQ8Jw6RtD47+rr1L05a2wYB/TnkeXLer9+s3z0gUwPtGwdIMW650VE46fcdfHJ
/ht2lR7d2vi7vHVzC2dbk73zoPsqlYEEd9TJbFbs34z/KyFjH8hifQtyO3PAqvNZqT5P82KX5Ovf
r8kFXwjVMcYsD7fuCAFLOimLdIcijjsTTUjhrXmUq27KODrcxzPMoYUopLTDUeMWibtzWXsF3deD
oJDZHcQ/VjDreTzgnCc5hbIRACriBibrVEA8opps7ROQdEOqCknyJHcv6NqZHHcFNAcxznvl6BNq
ZPfP+Cg0eoD2/IqIBOUd6gzDlJDlQe3+0CiVkaoYBh8Fh9a/jNOrXPWLZ7Q87D278Cia7VaLdeCr
rPPvN9wSRUmc+wMtJEIXDE6oaeNiKTuC3c+gOTz07UhEKGzEn/ju6k5lwWceYvB6Zw7ZBmCIXN50
O4Bs5Y9s6uMt5Y/khoMHp/XnzFC0EIr11KWwH69xxmJT5lb3/KGw8pwbf2OfvdQIlJ4pmAndOyG5
UwAC639m7c0OIQjRZNtBYnElqSFuEnGoWQwwIW+g75jw4hiN0k0lKxG8KLdLmBSFriIf1NgDyvUo
MVzrQ3qPKYWDfwaOUyBt31/lpZuuwPeHipG22y3Gweu0D+fr73K3122sjE6fKkhenKGX33xyXRTX
CWudezO4r4FfwLO0NPoqC7pTi64Ry6BYvrMRnKZrqshGZS3trEMZcjRBIbXBZHal1G1tbyfOZRNl
wkkpuyoIymL6XPPDqKkeiWm4D2EFoiDO9sMjAjXtZ3gYkmI1PFJChhWHcGhnftb7K5TY1CVnDj5Q
ybkx372aYqUR25vioYtNsMF1p3TvgMHMHUKLIhPfaVdevk2RWnsMoaFemTRnXNftXRasV5XxiT+y
6NndQ8aIBAgfxjBRjdqE65dlHKh+WydukUkgUfLM/W0LQiNhxSmJcdHp/TPD4Wl5bC/rcJJb+p5A
rLIMhw3YiXRSzY6FHovyF1MHxLzIJfSf4xhtD3ATxtk93QS/98F1zprsQNDLrBqRZJDaLktFdE9b
N+1x+GyRv9XdIjIjMewb2Q2lKN/J/XgxEe/TcOBJl3SfOkfPqdi235HlwT428SEXf59lmSe5LQQw
9qIdrfKTB8QIHnWFS2fDqg5DP2d8w5PJoN8G5WmUdctWb5f8B4DXNN4WNr8pDhuPuJ5LGnS/DQx7
aWsxptRX9okCNv3Tz/WUMtJZBf584sXvBbVbQZAWvV58N9p5OwpVxXaaqSGXqgxKk+kv7XCSokvi
iaZjP3aLf1HPWC1Iw/0F0tuZwO9xL4PlzClybHkDbLKIfXNmonBwrJxIy/hqjoBCKhxaI1JWUQLS
xvJczXfR11IyR1WcCO1I7BwfKwo6nszmI9xAz8Hr2wAKcfhuRY/agpKS0+qXUxhc0nuQm/uS41VP
hueSfwFxu9yKj9SNRMc9gkTcyqXQuHtGoMSebdClLw9pXwKb34ALvzVmwCUPsNT2UPIxr+W9j0B4
Eu8pr15uoqBxg7p7HBt8bUhWFnL/EcVvpY2CAUe4UPUeNU3C1xtIdqB8eNcKgcBy9fnRp+hIx/t/
B+kznLieWkxJ7Mt4qz0k3E4tZzurG8CFDBb0csVh+CM3c0Vg7nlmc9fKgHoduPIRwe8li74sCgWw
NtTaSNACN1o3+afknpsMYJyRQc5Ox12HHEFvdajyQ3DyAWAdXksnx03nDv8RjXD45XrRFTD99hYU
+7cdCJotTWXXGn3rFJTA15ogbs4QK9QustIiZkUxkmViUCbr+i9hMSQWElpmuNhJdOIzvwudrxNc
Ys+yFZkRmAfmcXoQxMEwsLy1pCrvcjMh18c+PEtOKzBwv87pT3OahKaSDC2u7hjizn2/BAqgf0j9
K2XVPUW5RUBYHwk5UPxIvRK7kYTTac3bG/f8wSH6LZ3v88Wsa8sAwJftk9VQ4lgsltUkIAsXL13w
42AbwJQ+kCsOqetWiqHNPSSPTOOkh/T8J+3JfFaQ06JwTRdOLho2jyy3/KyuqiFJS45LCgpk7kGJ
51KuT1+llkej52EPb/v+gh3JHdEAJstvVoDZ2/A8jJ5XHJ2T77vDzQSC/RFi+JdWFRsNqJJYcUUf
8Oc2ULAJB6LWrB3mt5uSigMYccTVky5OmtQPbdM2jdCk3UA3AmCjvgnQK1N3PylJqOPZP+Bix5at
lOQ7hGhvplLa9VV695+2U1aDcppUkmOYYwiDtxLtUfTs3AJCZMMHEra8vXkzsUWQBPqf8sTp7K6+
jRkV89b3YI5u/3xvkkmgsWCVdX+NTUnKKhW0o5wM3gfyK4RH8LWXaotLO/UYBS0ntwfKuAODE5Hz
VDPpTMjBNMrkbbWuOpjHIi/CiWw5NmCaFXusK6aoLxrczzkUDR2u1wGf6Q1TmZ3/42jJg71mPyxc
8CIG8kOjBgdZxEYPkkBel3/FeE9rOYeuV0LwPBdTGe431y1kWvN+SyCPLXb4ebvhE4QzVoO3EynX
Yiy9hGCKYtejdm0RwrqbcxooyP+pcBNGPxRDHqayMAhSADAmyx41Ja42hUvddiLvDNS7BzFYOCL9
ajLGn8Z7rafcqdqgAjhvxvUn9EhrcEaLCpvJ0QCLAhlr5cdshFGS9rquVoxTDrb03MwyylqOrT9T
9RDzznYdpkTV0oYo5qyr4UXEvYJK0JuIFY+nEduNkEvXm67eNzOQ1k0c8jsVF5k81cT4I8RfJ7Qk
2qMSnKL7WmBEMex3c3lDf2MxUtTAxows3YGm0DxtPOmgYOmV/KGuKvdpAALnT+lR0FUFvfWyiKRD
y74vA7DQfeMF80yltYhu6lT0NNBNtnqtlYRZDYPLnp9f+T7h7sAJDTYKqJKIzE8tPQ2Exaj9WkU4
8daCaDzuCxekShL3T6zxHNqeToG81cdLNBMBoDvDDkmIJZjgLTvMVT6U5GZvsOzxNKbQA8kP0mte
nr3yarINl5YugxMQS6IQwsH4GG4PUsbQvyzDK0K1RWtUgA4TLJluCx26V7WHUhw6xKteZNwxe5PP
eWDR/I5nKGJnJIkQYqw0l+QFggGi39hOEOjoY//PdR8/oGg3YZ1DwGxYpk4dOMp5PT6Npi5tUKca
HauTfMMdR/Q15+NsuwzHH59Fj43fC3NZ4put7JV5d2RJvqp0cuc7Xr8OM/gpvjCbSNaS04ulgJck
amOI2KFrCpaK/2Dza8poyhLyOF5QKj5qEXnUv/HEZK3itsFXXJ5ZXhLaSFcqPw1Blb6oj5NOhCQQ
o6mxpb1JJeqzPgKN67W+41afdK/CItH+99F93mmYmnVSuOgBq8YYRNnZGlgXir0fjazx4MrQZLVc
ky0H7lQKWHxtgnbIX698lG5Gm2gzRZZrtCXRoDhUecwsBy4tb05Yl36eEvQaiVPG+PLy1Ncc5qul
ZcEUCJPoYvbHyVNOoxrTRajwmDdtUJTPkd0n/yf/22c7gPYJtuXeolcTnUiN/7RIP8MI+ANEN2T9
RMaq8b4wfR122SwW9yUxbORU2KPXSTKfvXdmshxlzxlIzX8gqU2gTIn741RenIRsFeCGcfx9yFT5
EP4w6NBWm6clOwJ6rd/9Rr0zB7dSgd23OHHw+syVf+IGu0/RkTJLzrhuV1MYtAiplJaa/DpCzBRc
+SuCFeoFaXL64MvHl3Wc+JigqlTl7p9CjuzKetd6vT7KacXV793YafHAWQy14FZ3sRcpUeMTAu/X
OXB6utC5D43t0iGeNh0K0ej44vzV91S8ymFKmNYlz5XIJ3k8SvT/eh6+fTHe9kHT7RtnKUk795qr
/HvYrfZbNsTklGUh9rMJnqu0s8LNefMI34qnoMFrnrlFryWp/dsUaYt8UueXqDbX3PaaM0xSiju5
ut5do5mRrYodKq6fdWO47fQpcWTL7h0TyxEiGX5BzyagC6RGPeWS8jH6rE3hgmMNKHHGZ8gxbXox
juqWi5HWI4gUYtwImfALzCBUFQ1JjJn4VKZ9en5zDMMeyuoqb0F9i9HXJx9TxapdkwTWOcpxkKue
26RtvpQYTFDAQK9/1Wj/1Wbq7w8nfXmxiwlhzW5RDOtb4XUTMJdvZG3wesStLOr96+ScpSeFvzUv
4PE8INlRf2CU/qewPt9XQnPpZHQHuNqxOW/fw4vEKTyf53RTdV16lnb0OQcYoF85r62HnTW9uKd2
y/qofHilrHBcUZQ7/QLzbmXsspK27O4iz3ZuWMj6rj1aCFMcg0ceVDiPZnnqan9hrkYM3vZK6RHK
AgJ3mC87UUMUQUoouPQNI8bowiJLELXp0kdZZjV3mBt1GRkhxgJ0x7UYrEXy+yBzM+zFzCty+1rh
UnURtQxP5CPxmJ9EsdGus01ujLyANZ8CaKXxF44MEcaHZb8Fs4InPDDzMxtSOMvcbwXMrtrwQy7l
EtCypkBemMNyObtyPb14bQvPG6hZ4UZS+cDYnQKctO1t1HlI5twLk3efY0TZIdVltj8veQjmPRK9
sA1+eCvizFQoZtsNqeJhfgaR0AX3gikvWRSakBB9qWuKNYWiOHGl6bJQ3EGt2wt2HSwrpmj3l6fs
j1QvnEh7LWUuNPym/5AyXIz4CQQgTmDG0egmqedzARkILvzFbKLUVxMKpaHkOCCW3022hZ+/lEZU
vunReMUDTOOizPiSDNCKZg49QUVe1IHRjtVqmdZTyVbIZ4iwWvB4v7XbieheY4PlLLGetC1vcwEw
U3Lcsu2GHzqoXp27IgAwOc30OelD/61Pi61YCNRM+YTE+sx988ve6UDShpQrko3Owo/wHDgaHk36
v2rX2bqYocIzIKZBVcFI+UbZVcqshXJT+0f88oL2U7u+iX7fkCgnf48R/CtbHDMov1L2cH8+cEvL
1dwbgrnX5lXDv0oK050NTcr5GaRYYFWERHbHPZlYjX8gPIrPvVk+WzENQ69t+9DiMQZM3L5cjOuj
zqzulfJGW+Bn/h8f6CwO4anACdTMuPavM3lk5VlC4Wsv8AMv02KTwOOYoMEPFQ3gQHX0JIlu0a5+
p0AsLxTwAputPIHoNhVwmWt69gqaIuZEC2XUqMSB3RIzk8wUKZYdUWkRaaqCDt4UdlJ3GbARtatM
jUjAwGAxQ9G5ja4RcNrp68INYNLzCjyEMVVAIs+xlh8ghxrX64qBnJvH4xslvICSPLyPSx2KVyxE
KOfYFL25EtrLQSAiOziyrCgNAFu9x3NIyrbEC9FjUS6Ifpe+6D50LdefqAPL95h+hgUE0AQeed5T
TlH3hH5W97jZ6FX+FacMZb11WnIgwvOcJUShHg00TB/n8XuYVeoBsKWUK+z9I4RTl+/PeBcabf4O
KyOIZQ8T4u0CuGJrVJKLvi22yy9OJ2Mdlj4oUqNegKRRZ86vEPeniFQM8Xw/cSdAHnKXII3sJScE
1gRNtJXv5/Nd6SpBFC+qSLGMbZUl6Qty11sRfjYU3eq/eQbuhn24R4DB6wQ1JiB/WuqF5Hjn6rIg
6l4fWJ8qHZAwMA5Cy4HVT8H4350+GdRw+G1R3e7BkYLtH/+1sRZx8HtObOCSCY9Kv8cjB7+x24Rp
6U19oNmJGTBmyfWDPGZm6iTIdDkit+u3hr67a90XoA41hfaX1s2Sw2GQ2TUSD+TB4K4m5YCOLm8L
HSSkSgJI2eu2HsrA5szw2RRaWGtvOKL6nY1gcGcj7m8sDkTpBRs3+LCNF4KensIk3jca9EV9GOdy
B7rMlLyN8EKV68tH3FzM1zJXqOhWLe89r2hfpeo9iEhILhXA3g5oYuCpiur3jyNhY5mR70f0VrVC
CF3PGp8HnRFNS6KOiKF14dMNAS6ofFsTJ0XEeJIsiVLPpf/3AUmebzxJOGJbZMeDZpI2DbrvqQRg
wcBeWGDrfrASNoyNmRog1oQxxxJXRdnvrfKdH5eSrAqLaPPbi8FaQ5OyfNkR7ofASDLZ4PBbt3Qn
byuEC+w90rDW8+QmWsW6MVf6rgPQFIIFItVODmDPMRMtwkmms9EKvXSgykCwKPEy83VGSH7tJFZm
JjJwvMQ9jmi75jIM18EjZgdQYzL/woDUG36yfxXo6x+gYEZ/oPDudQRZZopLp5mkwsQJHZeEUrpb
yV7pqDWuCic9UJH3lHnqOx1PytkRgjwiorV0WIkWLhQdQp+mKLXSk+HWhMWKAKtnSBdSJpIcfxmw
XCoOzjYHkp0nn67rIl6nCL8GZCnX7q/HXQwzxrI0ML7U6W4JWmVfdO6CQluBbr/tXpjEo1HtMpwm
XpTlH44p4IW1jA0Yp+VZs0v7tPLOHZaAldLMnmzGAnXlfDzEphX1U30pu1+Q+ruh9bq01fu8rGkl
ac8P6Kn6O+zsdOrdCNP5HB24/A4fPoVqV49ZatevImKeUd3QW4ht1A3t/0r+ZyjQ0wh0LOtwUL8M
ypZa7sh+mXIa69LZkoZm+QfuFe4Ut8NDbtvFlNFAo4zm1HyCxm9j/xeBodymTaZaLxGEXqZPom8R
8fqRMx2vb8yxVEhqdBE7x7CFP+cfWqnJFFybEh2auNz+5TpdJYMU6WE78GVBori9+eF5mIViEF5S
uBgSCV7QX7XaeU+6B4uNDJ8PyzlQYzvDhnOK8oUHVOEcnlsmmGsullmjU3Klm/sUkbHWfzcJYjfA
WqcS9UbF5m7JQOqMVREgWkXvCFeWlYZ22TltmmrYmmHLHieOk2lLiKiJh2q0WN1YhxnnnBnIKNko
aoLrtQpzW1rbG4r9FMGvXHVe+V4+wvhY8teRjn8wkhz92oIz9N3zug0nf5YVsARX9QIJIjvSc1g8
YAjMcmfELn/5q/+OKoi0twdNqAS96ZJdOGjUtUWWL8RUYknizNNbxVGhET8kbS5N89eAxtmxXIDp
Fq4niFQC1bfQCARGIFmirHffzpdpbMvFO158ZlqvNr9dnBM8H6FZnnw2giIwkPE2VSn0JLbU46Zn
jOFtEXCrEoQ0+5YEzROXm4L2tt5dZ3rjdrKMMtw9c92qPHkONUnloKrrRocoascfVldwCKD+2SFN
/xkyGDIuapynyWR2Ho7WsYr8TurSvQspgGnwFfhUg3G1ntnFH9RISUvKx+qEU+K4tglzrbd1JGiO
iqDS9qwPeDDNq6398ttdXRdJcf1ZyEPTMwNKD2Jg8MC4gokBqy6PIzBTJmMS61vJiEH2di6N+lu/
CpGNLjyCZ0nvVUXdVhSE3LKiPJxX9/thMaSQPOKYRCHv0ayvcG7bpGl5K64iDaEyMS5OSpUz5Jrj
iX+NL6/z+KbntdGhQYrpKuCio9+Bi85myXoABapVn0S6RNNGFby+Rl2Xq5XoEOQgV3X6WkYEEnDc
gF5zr3fRB7ClyI0qQFh1E/E2MIp3XVum5zuj4MtAw2JHPe0ZmyA79yYPKo1oZF9g3xFSjyVxA5oj
zaUtbcOL8bUqpORChwxA+Fk+QXEXUkq0YFoq0Nu5Yr4e+OgF6lj1cVpL76YNUTIIJGlBRcP6RiVu
MEI0q67rVMQTeXIoGzuS3gb3NBi9hFOOUR26C23AfdtJ67HRoMspbVUnPOhkwBq4daXvxKZ7glJu
n/M76e3ha3XgEZKq0EajhhW+uaU05tEUeYoL7lecUlQpiDdxA43Oz7IFgiA27oeIlX2DnHxw67I/
0TUQsBcVtFCJMFGu4RcRwpPT/eqzWQiQO7uWM3wwY9m1tlQXWd3zzuciRn1+z1a/SGCRo3MgHK4r
UGbA3jJ9YWijoP+rWnGzXLDdFUTLdG1NEPkz9/bywcK+FXUVDEZETgncomBiQC7WGSrRCqfCMaqt
8HM7O5S9rVXHWwP5PilztKE7LrGO+BuRvrODGvLy7/xalTl55SinFhbOlY6CuXsrfDkC0LqTxwy0
u7QJ6jId46EPUTRFl1QpLPCZJYR7pviK63VlNIp51FvJH1aS8bnoqpPlPsDxV/YoMNXUNIalT9Vr
tR9VTtxV3dawT2PeEZZm2f2ZEePuUYtNC/iv1d2XPpZkrKlLYZ2MejsZ4cirKtLGLlOuBp5Y4BFe
xfNeqIK7bxiM/cc7bKke14DZWoc1HriYhPDLioG2MgCx2hK7uFJRF0KwUjI+5iRxN7JD+c7WWHI4
CwB3gfBL5gzScgg6MURFPNEkBbCXKFS2vfl3j+l+U4amvq0K4kW3/DWmVzimC8ZKdoQnxyCgVEzB
eI4mdPo6pib4K/t2x5D/zk6X5J9W9EPDqxoqvW6w07+uy6cNGWcu3sWXHo02BakqQ2w96GLwAgdq
XZDSVFrv06FbeYAuzgB0zDdtBnKzmI7/kto1kLd70lFHH/0qTt49mLAidxdPqPve/ylpK1dV7yK1
cYQBpOoVeo0IhCXupPXkSaco5XbkFmz99MQrd2sAlNWj445STGzpQ9UwFjuAFR8uyDkE4LQTn1ZK
eOloFwJFUhVMz4eKmfMOEDras3N1ZremqxHAM18sZvYhPZ+KD9Nt2zTmyeP0Ki2k2sV5S7u3GhC/
UNN4U8h8qm8P5hjavCTSKN6n4afKmzjWSYhEn61sx/vYduAFfEyion4WE93h/BdPMteEo1EKFzok
dd8kQTQKB5YyUI25SYWsxnAA87GM5c96yQwycb5pknkdm7rr9fdlOUdAcwOrctufW3imrrcLJx+3
9YSDCrcfQZS9JPc/ywH5NCGjbXNuoCYB6ntWuTtLS6nC6qMsmH2Ep8NaqrCGPgnU91mFfaHZnwaa
HVacxPdFCu/HF++g+z1JdA60mmb2QfEk7psGlccL2cEFSzj55CheYDWxFtCV8Q8mUod8Tz5OIIlx
m5l3bc8QJx+i/OkPB8E/vjdObkfLnO8B7LYJbPv4YNEfayXN6As51MQTi+sfZNXoSYgIUVfvln3S
jhw1cMwYztt77ym/rmaFeA47uyB7jW+mzhMHFjScYAfAveVQwons/hTHQCk5EsZ53iSaaIDDTaZ4
znz1VbUpIS1D4EujyHLDZ2PZh0tPUqz3uCaqx/9Kxh+4sqQU7DGO9dL8PMK7I+/zG27cU2YsiAx3
+lOSFWVKKY/Ytg+gU3nFnvKuBHaaJdTFIWjuqVEjGynIw1/a3865wEQLqBZfU+2NEfVpmYHStIqB
AcF2KZF5I46QM6SGGwOKYQWKRQfSYjTsousjJ78sli1utSBiq1aemW7XiEktVCByHAZuRrPBh8YV
LYFnZMgqGbrqNRdCpAySUGjhHtGobFIehDI6N2AEXe+KXPeanB7QRS/Y2GNKqiLYPM04ynlL+BWG
ZAqT2al9jD1b5Znm5/uVeYEqIyMXeOMXICwakrUp0Y8vhzWG4MYPLbydVMQYLzJ4Vd1LwX6kgXlF
MZCK99MbWm3sfEHTkA/asZ3rtLBiCK0eJ3TpocsUkrBoD5sgAWVBSFQDtoEhejIUQzUVf+1LxSk1
PFzm4pAGiRA6Ygf+KYR37t140xRTZhvgknJvn9M4P0Te00AVH9WfUIczpuVbGyeDuOAzh5VmF2BD
/09j5B77EgkpyGTlv+a2RrASzTy0yro7OE/16V/vthDy7bi5cq/Hhep2Xj3zy8lTVhmGcJkGfUb2
YffELHtYOn0O2bODeEb+QI9cV/h8eNldimvyEQts8sgAazOETeqv5OLYehM05gEAVyqFH3BMPUwD
Vu7xWHmCJI/tktuoLJn28FunFGOQ/s/AkB/ZfdyIIYti3IsUZ/YCokTy0x9wQ1Ab3ZhPVn/TLgqt
bho/4SwF7XrQrXuQ/k01arv7xf1+JP8pGHiEIpKiNs1UfUrEtvy8DomkMSQA9OUVimbG9LtjvHvI
VNgp15CPlmTRwwqZvdQTG737z+EKQhIY+MSXRBve2W6AuG8fxW0zu/aM6tZtcF54/sXmNFrrNv0w
TbZ46LzunSJ1FiKVoutkUW2LCbchpBROOTvCQ4gaRGH2A6zW/NiZ+vI19ZWCUGIhaHrbfnwSns9R
LEKQTCKRjRMa520HjI7gvPXt8eilsIEODmHCZhXxjXdQgfqWKzIy9Sa8HoSODIlDNYtq978CQz24
jSAFdkp8ghX4iUsTJ+VLVs7SREw3hz10+JPufWmh941Kuo6LtPMLTnbFfV+tI8r0yDnCIM6gNHYT
Ac5Zk9dqpzW3K5VBpYHyFInjFlXTYTAtC12W1UIu+HII5j88nPM3/w6Eh2wB5TzkGwYpHk9kQHF0
6Mzp4aRYAlNemFzaRF3GqIKNJc6+xnHujEI90BFk4jl3OBQD0MFwnBtqz5MBgj/rK+idtolRRV/v
Ymz0soJ4MjU7uOC2EBDJCiW4u7HabIiTXSQpcFPPbQL8ZKWq0wQKOOmFN7+mHFbZQqkZBkwe2kYY
EtLOx+sPQJI7poKrkBB4jk7EDZ92KlEomVe4x702XkL5dRFXIOC7JrOM7UsBf1bSlv+IxFUi3GhH
aM16xJ/prLC2lMAYWhZUqqctoZ9t+ZW66yZj3CJUW9vuzoBZeG4/bIlv1dWWBgsHQyjFeJvlhb/D
PItU5jQ8RKPmdTXcgrMWigHcsCqFOYyldo118957RtBocPSlTC0+E2qr4MJy/tjcHRzv8yeDewTZ
u5aaB/2nys8HssGhZbzi9aX6lb0cTt/gJslZex+rGYOULQ5bFDolBZcW2mWyMiHGr22D8rhnUxfN
QPDVpNKOeu402u9WZfaLMtwXle9bMw6RDnvb2z+zX3RLZf2IHlsfBBUkycLuXjc/ii5HsiTTxWzB
cni2eP6r3lFGYwjJW9qGDYRKvFIYuUpfYJLzFLlLU9mBnMsjUzt3mSTteO8vWKxNr9IzrhA3Xva9
jc7NVDFAarYjBhnuOub3NErUb27go3xabnoPmdpsW2FBssLgSvcg33MQgYC2WFM3HZ1xtgbGMRfx
+g673Bpa001jXH+EniAReAjWJ34aPfnn+BHT/ruJ+W2JBtjBgAaY4JFLTjLl8ET6GjX25ymAknon
MYxZ+XDOCwn3oa/zzv4jWr16IgVelpTgc955+9itqna2nv2AyMMQkopXU4A/+vno6uO68FhrBsqT
EZPAFzt3NUmohvbXe94cI1LT65n2akP8Yy3ggP1vXhmr4CO/sBNLr8zNBubLIFniw4zfvQGar8rK
Hb4BPuGeP/lUOkuyaqdm5IhM/OMx/f2f6t4j+9F8RXlxk3kCvwnqLja7B5zaskhO227Fd5Skjg62
XL4qxjy9Z7a/XLi71ngh9nan1bjz7TRl310I3z89lP+HvF5tUPz9bHJtyxTeEE+3VaIs+5zJ4QZR
qSl7F190fhKH5B9MF765+hvYpZ/qfpqAkFAEvA+CM8O0feMppGCl6YUOUmhHppA8jE2ufZrVwNAj
seiN60TFJ/hRVgxtm8DTAb2Q/WMWwP2T66Mpp+lt2HtbrYtcIi12piqh/7gY9y1pC+TNsdCoEKSu
FsC8CwSVokX6/wbKnDXFdpEgJ4VVOvqODkTwQlJCMOZECnY22XM4J4S/Pq/5U2gV/P1fS61bqLPa
A4+vws+u4UHj4lNnI3KpsSshAlqo6N9WpxgXQbgo6n97cJSj0pK/43/wVUdsW3JZjpZqkdZeA5x1
lCsn/1VJ42rp08WOBzTWm8vFz6sClio6sZ+/n4HPKJQz/S/P1ndH2YbsuVTZzs8GADa9Pm6Y1eKJ
qoBjk9rhsWhUWWK5etMZTNrEQEYMvnNDvrTRCpKEuIFevn71ofU1d1BPAeQY2WNUcpopY2FUDCap
EZpBAlqAYj3UW2XIP/zhUvO+aDMVsJjbM1LTGERV3LJcPVvBQc2gieJIP9QgXjClUun1uhXMvZlD
h7nPLIB/DwE9Nyldwz5VSDBYHUGXm+/NFPtWRfmDRZh7I4RG/xUAQoD6W1wDo/BZRqDQwPXuVtth
Yfp87GlsiVBDWX17x+o6ve1FuvYIf42OI35WyxFNy99kxXrRhDhCNN16+NxRzzyM4yWSlV6RvT+1
4dTyZn+t/a6UCoCQAuq132/Qfu1BnKWZTn5lXDJhPNdFr5OUQgbE5gPPlMgTvt12LAM7NxqGNxAZ
LaZtmB+ooTYg3DnEf4qTlyYFwQO8/7NboYfuRH8+dgGPj1cu2XYI9h1waiGH6EphKy52wex05v/v
BoEyFTwwKnf+2c1Zsb0srAyUa1ltA16Ou9MN2eJYw/sgdG3tEfJ2Vx5DMEkYqcL8puQkljjHBC3w
8LgQAf2gwN5G8DDVe5MDZjD13hS4p96Cew9q2KPuOLgfHYHfE3eeXPLYnCP9QhC9SESeScNZO4DV
RkWxnrMkTjeSIWQag/TR7IajYvnh2fioM0bKHXlTctBsGhRp/j6Zm+rl0PZvMO6aTqeZsAXyCBFY
EKEyT8mnYJR6DSi90Gjra/Jv/gxFspwglg20zHfM90H7BNcqcoGNPshBHWK1DU6+ZiIMORPBDMmf
lyBcOwwv3rPxhYr7vd4Lh9TR6V4wT7QJjueQn7BtmrWozb4b7D9aeGp18n/Gc9RsQ/M1dsm+RFqg
SqsZDeqGEouSUcOaCkXaQ84NJAZGKgrElC6jQeckpewMTVn0ifyfw2SZD132SzoDs+DV2k4EpDhU
lviGWLMT3MBM0MxyZLNi6cvsoQfSDWYr+UAzxNZnBwGV16akF7MfYXH97CBWgeGOKekrdSggrA4Y
CfJ02SqsfD84RL3P3/dblDlPYFlqYbD0ng4ywxSByqURX+gp7nr6xgBp2xc53EofWoF6FTdUG3hk
FKkC1TzbKGdL5izEn4TIL1M+UujBPxtxyMTz4ypQbCl53nNnFcF24QQwc4x1l35lKcG6iPfP2xTS
sklcRtPl3AfxEgQ54ANNTo1Dfi6KjLFwGdYNQJ2DzdkcwDy4cvn2NSJVJbC61eeUe/SJ8i+FbHGk
g7E63H4k2LPkuq0DI59JFrtGtH0W+xyUST5mG6U4LjlkxDkSvBO9K9D0ap05DPMG6oqeFhBMnZIE
vwIjQyuazdyGQBFKlZkDcPiocFSLovu7HaxgcURJm+waHn80zS5sVmHykOOalVY71RYIDqg6/6vq
JR86JDU2x24G7Y6FxTPWJfZlF8XhKyhlJnzUxVFLTlaK8tc5BMffT0eS8jY5e0Se+LQ/jso6OZrG
ar9K/zpx2gbB1CjsYZ2ei8BKLB5FdVaVGSWb1fvJsIkYuk3h8/kTXMcYwIEI6YfiDyDQxIGRXTJc
6gkUiR2R+4mX/slDEc0k5jG6gL84mW5lG/gZzeSEGS9EjU3cw4A1zfeHb9V5oovfQ7FzqPop6bQR
CMOJb+QCybcQjdCiIbme3SdqqiI0c3+/EmU5XO92WIVRtkmgxFBktIF/38VieeCnvUcaBNWRAIZo
gm0Jb1UXk0KPtnoVhuuNlzrgdSf7DtWStFy2pcWV8amluu3kQUXRA+EyN3hAx5qqxWucln39MORh
V5Wv5zwQPBxDG8w98kXiPrf0f7Sy9imNYLaBsjarW1Hjq12pqayHTLkkUFKLFFsCH6OMDEgHoO99
hbfv3qsk1uz6lIUNPvXP6axu6wylVjutd+CEAn/5k5IxgIACcMbxBltwieclXz9UP/2k141Ko8s8
ZrQNsuIDNkaUXbLy/2boRgXUU5ax+njZ6+BF/gEoZzuzaJVInofuzHOXFlVbqf01qwpA/ablKpin
M7Ai1Zf9wGwCZip/gIHo/maNc50CF9TsvAq6LWj+riBLnGs4i+ORrbW2m11e5vJZRJztFwQ+Ie4z
6LAzogcTC48mmgLSh8oaq1MrACIHD7Y/6vn/jUoYY7xegh6cCXiL1Hn3VsVXDx/M1lVc/J/0LPOC
RnN7JJiDY/nLC6U/+AgjdY8Mwg1We+c8NU9M8hZE2FygR35pwfprdpkTgVqJLJaV8jwUgpaIQpuJ
60rByuyTfl6CY05oKq4CvHLWXwM8baeCBHiteEIelAWViqoZl1fiphxGB7AJXMrbxu/UJGHsr3+P
vl0HVSxIcnxeRs7AGyvaKc5mpXlTg9RJbMPHfR4X5unC3TwhvTJ2T/gjYIxlemtSaPbeHH4fCzPn
Nezx4PW+4e8ztZmWm5GEdLx/eA6hTtjyrwn8mxz3lWtU2GyGGssglek6mnXgypREKcetYvzvczbZ
vSLsvbEGVIWmm2/o+aJy7N6sKDImHJYpYKxm0PTR1FODZLuTADlc2tjP1o8Umsq5zresEOL6ePw9
nAXn/sSGt8SQ805PKe0+utxZp3dWTUJaY6rBfTnpKN/Z4wtBtEL2/wHCgCwySPWJaH6nwRgPxmY7
QAr9Wwne6KgojUFKQVpDEankT51lL94Tb6cIsdS2LHqSR9gD5ps7EuWW4SDiV18pmFjaMRdsn0LB
rbQJ2URq3mxoPcjrpZDkdM7xUw8D5NromsRz9bVfnXIKoGp+RR5rONbH6NNOJOj2ORv2Fw5ck9XN
Ql5zbDZLZ1HTSUMINpflT14acLWsmhI6Sl54WY1KMF5c7FFzSIwQ5LGTmWDTf8j3ADKTGsqbEGIZ
oLSzVzD2KZwdZW//Vj1MsaBTxsUy7MQcftsD+ALhIFQYkIdXlA9zE1oKZK3oDx5BlNoMd5esGlXj
c3O5oIdHkPHEadCbaczMtzckdtnlPIXYMaae1bqwMNY9hFBOFVCwFPHb+PeSheWmVmy7TYYjEfVV
duChTXyP95+T+d7NIxjW+G2AzpzlbiWMaz/PCp8stRMl/QcyE0hTSvGu15fi0lMlm+jxylZJLKbz
F+81U/taEYzitqg/7sX2SUgB+SIZU0ur57dlnGKnXnA/aOTjBVhFqJRRa7CEppm8urP6Rz5obbAM
fi0PT2Pj/eZ/kP9KuC8vH8vzOXE7gY4xSBb4pho+sMg0OICBxalNq7QH4nO40rCMGIIu8/ObiicV
9bgLSotzzMwF7bAPRZDnEn9PDsYYgGTvz7yhgVq7ONGfy5i4vqZSVwU5rkdWUrOvUzTfmpjkSIUl
maazJ8zVinra6eDlzhbnzsMiQQHvC8fKuaAD8C5FSPr/aOcoPGWsJP+ao1YVJy6vDnVjjPXtgU3z
o9kP/lRvrqgLJr0937sX4A5oGuQFS5pauz7vahFg2Rv8cWDCbbdB4NeiKV44E9sGpxsI/8nIVcbf
u/83+Q0gpl77chBbzhqC3KDXus38FcYq8CAeN/ISx0o4UPbJnwepMbGejb/GsZ43ydxlMTzp+tIN
Sn8L5fv0wvQuyczxPupscBY25gqj/21Q57rUFn7ypP8VD//mwXBr/HJgw/iqZsMbYiy3JWD40nUq
um+pbe/GoKEwfemmEXq5wh28m0KnQRu9Cz9wtXZh2WB8tsefp5D9+3w+TaaNUcFc6Xiio58wVBPc
Tn5PKoTLvgbUXr50Dx/oXtvHJjCjAvrbZmw1dP2mRBX8GhDM9vo3YnLOxSxCdpfXywhh7OYGpD11
299jXwqJHOFJ6SBBbiltPcW8WwiTVgrHu4oY7/BaboLe2rXo0gPvlMa9CeuSe/TTCzswQk0NKGWl
pL1MCsOusuMs0B8D9q1dD9Kx4coksicMCCPbDR6RmSFHV8y6/eiCG6hp3LYgurmpNU4Ri4NK3Pnw
xywui8k14M9dOLCG4ClKZjiBTraUqxBc8kwCcEPaFtkmOothQPvhNL8HlGHsi9SnGvLUgNGyLCyq
Sf3FYVp1/xSwo5qfDbbBFm+hJo/3MGJQXIL/8xSLWoLIBSs6RcZmzvogR2eN/V6jHCZYtFdgOkP7
HEFdDF/CkAJBcIPFxz4el3VIizhn7dtb8EkK8VLskxKxjQjzDI3bREp3ShfLi9/7rk0Ys+2VD3t4
CdvqWCLv3DCAU/4IaEsE52z3dutHT1nW89d91HrfQbqgIffo5WxACjkRdMQIFU0+v3ZD66bkQ8FS
Ux9rpHSP2YhgxKpoemdmyYoXdckeuCg5BM/1u1wPkEYuOhG8pqgHWfP+QBGtlgKcXOdEojKYZjuE
ogC+fKu4BIAthODpYN3o+kdgQY6rKKlIv4G2EvyOELGa+s49IJORtS8gyBp8r9+YlKeq/AbS9Pzw
kxKFOlfkyuNMgPahSMEO24op2XQf1/rCE+EqA8BCPWYKxT5LVbkk0HROJ10m+DlXqe3w6AjJvAFP
Ep+ECJQq2QAjjelAqvyeilcNwgv1H7X6xVhwbNo5pVUpIuTdFVOvHJ91IMD96Ovk4Y1hBBbKtVQo
ARNhVrEiYtNvTlp7KchH/FzSWkTXnYLJgVksoq9AacSAElhddTei33ef0PxSFxtGhHAdfE+KsjYj
7CemSK/WnpNM66Di1ZLwSvzGZpxvaM2S/E9M4T0PsLZgIY+XZAxwz/S1tJY+p47+GHQKJBeCzOAr
x+RlXCQjl7cIOEcjshrSalfKt2NLu0GkSs8hjGLebvEQOR/9rYgugHQ4qH2r2EHnOgOrRJQ+CAi3
iRdCEDW0HXSlYVyi52pm4dEIbWRl/aiMnTwau6vxUD5YX5WCKu6rHuRSxYRINGfjd/0Ai8L6nnwR
dQ+TgKBuHEFdXHAvZveBfwIfe5VwRN0tZ4O0eFtgstNcjGf7rGq35krDL+bhwv/r61SFzruL71jh
hWILfO35SpuzGuycTJEUOtaSvDGwNB2Yn3xJiK1ZZuwOKlLCANb7WEVIPrhXpj6Rh75xFq300Bpp
KJU2qL5USurzYcQ/YK/v1yxOt/V/d0EEXODrUHi0V4mbV3E+H0m3s+blp+DS3IK/O0LMvLM0PZd+
zPqOYV31ohUARsJJD4SL+enH9vJGQrbrbB3RBNh5oUd93WOSizsv3fDHoPTCaQU5PeHycmp/HW1b
QFWYqf/1MwGS+JfeALYWMtJ9vRyRn8i49wQHzTD4bKenmWhZsbMCSX04fy4CZPZNFElPXWQME2Gv
c6M0UaEgl/FbeQyAoBmoMJN9m0pRji5vvrwfYtt5VwUWyFRl0Ieb3yYJ+d0Phqoon5eJNCWghAO1
PNR8lGK9x++PXHmjYS+iX1bf8mTA2wEWR3ClOuuhUtpSZmoNGWzgOLCDB2/vkGpXX6hEOxMrnDMZ
2FlYLW+tupHv++DSuCOE7acaz43mfzZSz6585ev3Ggm7CAz2KW3P/Jdl0SnlGUqWMUuxXpGf1EY/
JNZ9Qu1ETsev5FUsMiL+dKhxUFtKN15YW+0zGRmw3LyH6Hri1XpJ9PO1c1QQpfj4fbTT5axqlLmR
qLxYOH3I6CvIRPtDCcue/RbxRK7B5mOc5A00rIZsAUvdxi/yc3PjPdwGeRqmp9hX95lxkdA5X8TC
22+xCsRDpqz4KT/CVTd2Xz/PSXoSh9oPvm8oIDo/OfnviRxovAOpZVn5ceqEuzK87bAlvC8crCAP
B2bbaeERWiHpZXXekCCMTM7HUQmB8UDBfvzNzvPZbonVSkgp2YQ1CcfUTXrC0pbITl77pEz08P9z
4JUXubk8rYfJGIdQOMknDTWVBkwQ2JuuiYZtnAxa5hPIQuHMEoo9+fdFVdVqHBNaOvyi4NleGXzz
qDYYkLGbpkQoUGNdwimdO6GPqd/IPrjHBzAOkuVxgOHBOLFuH8m798Msek9K0HefBZWkcwkAP3gE
CumzU9Qd8fL6nnxwGqDme7A0G+J9jY6imSQHHxcsKMTtcX7VUSBpYQqQ0hzt9k/cY3TmhDt7u+Ab
ldiCkMMZopkLdKRH3QTj4hXK552vAg5DN+Qj8CTHJeAJvnrfgJdZeIB4NQH1HAo4Yapeo0mhyVUx
pA+6aT6O+vbMPg0QY5lFxbasQtimE9rhaymcam4ib2CnViemuePaZ8M0rMNXPE6T4UdLioCOKVT8
lA8SkNV4ixXFeBNyoAis1epYTTxj6/RVZ9LwJ3/2LuY+fOZozcQyuHATiKFu5zK59yBg6Ef1pGCF
GPYiPua5iVKOGPVuBmkCirnkzWdylVDApvRja2UjpCPbxfudeuiCX+t7SiOSOGnX5/YHczi4AA5f
DQW3jEhXJ18v9tRpSGNOtTsZBvkPgxvXlBrFymf5UumdXSBpPIE100rQAPMFcdR6kFNAwjK5pWmp
4xPMWNfLREyCmqjHhkE+Pn4yQbJTqg/TjVUbFvcE3AUd5dTjgzW3jTD/mk5XvH2tlRiR5qI5AOoM
GkekLougCUzxOLfxsLKt6IY0gu6hxUJvg2ng97ZCUyt7zGcF+GN8AlcHqD2fn03KPTS1krxb+l+H
V7yP4sRq524OrTY0oY0AU4MVEwTq4OkCm7r5UGo8lYWseGVu3TcPH+TpInglGxIBhMmPFqeKyfbs
udth2BonHWAte7I0BDkCgpZL27ZdSaRxMWdIi/gRcjqu7tx/CGwuXSBBXOzIpplU9VU/qD4CvZPr
fsFYc6C8GRejM7uA9/Dku7CX29/iqIZQoMFH5pmNln1PblghaJB9UgELrlFvgy8bjFiV/VS7S+vh
0emQV2J9n0+2cVPe+tgUDc4So4/2d3V0tsHQSVJSodGvMpv8V5iIy3+pty02CPxRtk7f+I6GEvmN
uMFxUZcA/fh+J2fPfecWpOlHphPmx26phfKeqMCKVIe9b7a7tPThs7yJ8av29FcQvWTycGrOk/lI
N3ucOpxovKThwkRE+bR2mtPfN3mJ4T7vXeokPX5YfuY28/57fFINplfQKtwleLEOW2il5hAimtg6
E6T7wUGPXjIMT6UfLVZ8U5cpAb4w+laGMw86kRF3rPejKPZHCbYs17lxjmxy5vAssGMU4dOdukCv
oIKB480nTf/hiTZigPeb6ivOvHzI9njbZgFUKYXsM0cBaeK64/PisKzXG+WmNelMylVXD5xteSih
oByyJOBNXeAFq4QUEQ62U9ODhSa5JuUTtb3AT62erh3TtO8SyrP9zmOnh7xiGsOHDWtWuRteQTPa
5QOsG0miIbq7ebWhmF8ch+avG383H8GizNz+hJC51FXjXEcvqF1RmH60Io7LyRdAvTP2W+LhxwBn
Hgcml5dE2gjSivecxQyM+SE3huVvdBYaCq3oTn8M9tj2YXhKFdAJf5GogENktCVGsGaCCkH0bohU
FudgWHCLwexadi7lmtju5nLgunDyrHST1F0tHmZ1XiS1StDER5Xq9SA6X43ql9MVhbz0xZlQOBxv
+BTMdXhziJtsp4t2SzLqnfPLjaSKjNHQ5aMd5CYdMfDkYS/dRgjbOshAjcmEvNUo7rMyPVzGhbqQ
sYFrMHBdwYS+K9Cj6ud1rV7Jb/35phpCmUTilOYUyjx5kkgAPFKt367J4pYJ5JELlyAPMxFS4GIS
cFugF7U7Et73B4KifWAlnZep1P1Zha3eXtCfuhTOzPngxDKgwevI7hMm5GkTiW1WegJNjuCNNSPd
QCL27Odd3Bzk8MPMSPpAysqvbPKVVAQeS5y3gfRJ8kBPSRmZ8pBdafKa1qpVMXoIPBwWqjVSYbPZ
K3G5+IVjLaw2hJJDbEmDKqBqJVRzBYgoVB0fvbD9uKdULhuAcInsrBgTidVyIU3i772oj6pWF99w
kMEKgIYXwgLIifTe8cOLymn5WAoyclq3AkAR7Daf6YLodrqWgqJnEE8kLN/cOB0T0CxJGcpN3SU0
GJybRDH7Xj84ygjv6gvrPJ92BI3Q/VMuFIih6QFfthS744rJc2s+Tc+QeY2LwFBJsdx9Scjcn6CS
SQFIYocFzaTyePvLHue21gX6BMMiRDss8aY6II+R1Y4cqacQwCF2gPchLX0r0GycPcUqiYqYhi56
iHA3OePdplh61iOIUoEATGW5QsmdspCnfzGw6vqV07/C803j3ttagvsG3Qk0qmA+Ef4jhdyHL43O
k8bAOWZhUaxfLwlu8/Zm+Y1WKeSIvj1jHRo9hd70Gsz/Ccr8GQHoFUSLSE8QA38JXZzZOgVBpMn3
GqBcsdts6h9aV5gbaKJnUc9jfhLzKo+NN9HdEax3sn6lLM1eNO/9WRhPxFt1tCuWp6W7SvdNKgRk
hsP5UUW66Wx9p5fqRHdeDq9el2hk9Jsoqs+dbus1S1/YMEDQRqH+dvNd56tnHMkW5clHb7YhKzeo
pUZUX05bQ8BhAredXIOQLjTsRnwKZ8wu7yGoUT+GN/G4TO8YzDi443b+BRJxN1Ik5qx0PNmElQln
NsUzZSZTYfLpYk4Aouig7Tfu7paM8AFzULKLkb3T8w8n8tGTbKpfBHEZG5svmNW09f63GEVEe2WO
Azy2u40+J3Fc2fr95/RBSVAUqIV+Xy4ZDjyRjaDYMrqgMss3k9EJAww1q8EfI47Nzm1ysYkYDI/Z
iev1sTH4JvIkfGgqZCRJkbTFcdzMZ1vUW0SBLi3YyuSsgXWSQ2dYqKiB8CxwSZe/J7eEvus/pPzM
xPFSopBpSLHxomKnPu/4shFnOnRUOQDWItG1yR5M8SDQtg22wCcBUY2txNKwmSxpXtD6rD6JtVUG
eZDBHh7C1zbHSzBZN9Va3MZqZrUhTYmpN9SYwnf+FJB+2Bzw3VxuLWtPGAbq6NVGJdNiRM8Yrf2V
d8/WQe26TqSbWh8SE/64+mTMno+J/6PnE6fFuuidHOHg/6jsdiUtasq3tyrTysbmzmIqoV+0r30v
mcoZnBfyE1YuZEFxaicxoLI0eu7jNmjwAoZn7CZ2ncgb6/ocJUPJj0KgJpY9A4i8gZFPp8fDFA+w
YWlXUBmA3yJiM1F/8eoCYbPJSQzrm0dPEHxE1tcV12mEueJUOrOHpZHqXPJljhrWZCfDYg5YcOVa
7TNbP1hAxMwtCJcaphv6ua2rBsEWfs0fOjLMRWnY9zOboCGRN8aZdUv2mBGNRlDhjkcNNSTBwCNb
5IiBSlwRNvQZd73ZNsze/HrpINEmHyNF8qT9Dpt9h3XCnseyKqrxnsNXvqr5P9rNMlZUsgjGQuAu
La6fKT6Jl60Hy/Oc0ArAUcMSQ4YNRIYdBrZ/FK2lV7V+fHdNk/11EUD3LV5i/3wdMtK9t7yTHmnP
iV6gy5glFKRJALBTpdLy4MkQ8rkB/qD5NZDjv9crbZXhwHhRHUEdc6e1OGkQUsQz77Vj97bPt9F8
C5Zxjdl62Gs5lAevMtFQT2x17RCpPC0mwMXL08Ho7LLTk3clcB7SBo+T07Eu/bC1dZi4j4P0Maho
Y3L/nXZoFMM3N3aEOGEW0JizVES1HoouPTtSv67u6dxxZSVTcHXHQ43nTSCs8o54So4E4+7b31Yg
rQ0SYGTFYGkJfbF/4iyBbkEpHiZgNI91XwzpPinxXePtVdYeRgB9MgswJfj8eHV/iqc2FFQi3VgC
sfaETWrlZdwtYoEArNzg3PfT3m12xyxPvys9mV9p4EcwqVIALu0R/dT9+gb9M/EazHM6YjdUSa7U
UqlK2J1KYRnOl9v+VMENqhBWp9P9DaAOTIBX/nQli3kmZmqYX3T49Z1ZHFKOramhA6E3BcV9smox
fB2QiLwgoJx2WrYdpzGzS0GQ6tEDQK8ZN0dPtVaKA1eNzJqYV9CXnzD+FggZdViNp79tOuLKoHZR
/67b+u2KveqKAwpqJZS/3kMRsGcCI3h23jVECxr0kKeZ9q4AFAJ4f41n7IES92k0bi+wPh8l7FYX
OIRnUDc6xTm1nzgxOSWbdBClLRTCPIi21hgWBzoaGcCZrs8z9Jjtg8QXtNN8w7XJye9A6IYZtU0y
okRxsp3oI9wWG0yPwz2tqwZEW6GEkQHYl549kdRq8Zf6ah26SDpLtOBf4WJCMpXi2gTdFcleZDRD
YqAuUQco87aPMXLGjYCLEz/Burxg/pWwL+2Rd8dZhhvQHYXL6yfoXWr26mrLin0jdT6VlVKv/P2q
2pkUxYzez7b5EtekVi0DwLYZBxjWbQDExkr6fTPOKNvMLv0JMh+desnQTmFHDS6zDX7/2ro2w4oI
qnLzgpuHiq6mMWCEXBcyoSFSqgSmpmes+kfDdKK20oWfdjK4wZqxxT3S1vplxIztVkL0VvMmKuWw
R2tNwvt5NlKXDpStxEf4m4ojCdUUV0BEQW9e57NbhPJQeSMkBpGleSiyHrBq11H1DC5qeQLktQdI
diNe199xQ6UrX5BgoeByAfaULkdmJVDPCM9BnIuAW9GBhnJsjXvfxk3/NUybI3wr0t8Ak+2Cotr/
1FBunjOoV1yie0WqSkK/01wI0GP23azvrfDBetlk+RBH0G+4GbFmv8BJmCsxNhZHbvISX2mBL7jp
QDFVVULq99JW4cG8kz5A+gYMnOyXjcAMHwaU2sHD2ErCfr5sYjh2CqM6C6i1Hi/woK2efZTwsNmB
gu1CNNg+uofWABceelqO4tRHSt+bpoflocrOR46oA0tyDQjl9UvvAqlB1GigP2CYfkEuk1f5soTr
VlzwyVA2v9fIG+GmmKPGVxZiAZrpBJYO+Z4fdU2WYv7WD0hchZm4aEmcACUBS3VZOVfiedy1XBCs
KAoAYWjO9MocvSzFJaumL1o1G1C0IhIU1h1wU4EFMwPGjIl2rzckAlCZpBhacnwhiuIql84lFPoj
przQJmrAMiTSrzR5O2vM/gWzMNbbL9Tzf/O6VtQBnfrD40uNALrOJ6Tv3/Yv5SDkcU7eb3O4sRs/
Uk8upDbAzlH9+7PSjF3LRupFcubirDHK8QPjERlRzt0xyDKV8UcpUyS+E+4UchmIivl51cE27jhp
h5OD+Lhk3EEL73I3B+IjRYRlTzZZQ1CviHH/NhhL15Bya5VdhTgo5sDjhc49xlBu6RnTfD563oS0
t/K691MWIQrAoaSAIxQiXJKvUZ8Dp87xMb8lUAlcU7nSpfDKh9MOR16ky+Fwxv1SCF3KObO5B7+k
IpFoC3vgqgvqsproklTh/X9NXNjuBrjlUp9qfQDMV8iLqhm7g8tiWqVU9ykGE2GkP72D20TUggE1
lbRp2yEnmpFnWJnytQQGZ0CMpOW7ucm3O6HfQNZvvIJOrv6b0eW+THaZ4suE3tVBBb68FGITaPHV
rOzw6YN3jZgoQ4ktKPuhu18biEZILKKjL4DhjO5t8ojsjVsJBgnDpLu2FgUT8PLhdsxkj/5tPsy7
KA5q+j7bws+EG4WNpSumjVRGvhFIr275qi/NV7HSdAWCfVfqT2lUgQ8yaw7cGn6AgZY9fMcP25jH
MgpHsE3KgxCU5JQpX5893Swk5ULbAPJSLZSFcKhTfKIvMHKelXA1c4EYzz98UcMP9I4lfLeu3Fb9
CFQBwrWDH23Ikep83LlkcrZOa2xrdKF7YSJr3f2p3XQxFFZzGKnaGO1660SHiPpJV8SIbnAbXOb1
9AwIQAxi1BgcznvjMuBozb1MB8Ob/hFOmlcN46DfCRcrrrl4w5XQDtrFtZBf5h6Nhfpav2JN+Dh9
OTyw0l2dL+TlWJfUepPwsUGqWCE8HMK7uQUpUx7QRHj5B1cjq2jhJIb3jJ88Hacad5e2HKvloU7I
+Xb98rKfmqfRdWKrBI0lXfQJun+0f8fFLDJeq2t0JQoWq5VS9hPkWgTT6IiyeJFnwvI7hpf16l17
uKkJ/11R7Lxh+Co5pmNcvJuJ/hnjOHgvJuE0poZsE49oLR6uFUshPb/OwdhBPf5KajNCeUPC/MVo
wV9axuukXy6xxu7ZQ+qToNpw8t0ttr6tj7+y5Kjmf83BOVdZ7CD/GoKpFMfHd2J7oyJ/tQ7/Ddhp
jVSGsaBcaA1Nn/4dF5iJ2vJ9SpOywcrsK1VB+G5FyLr0dXmzwSeAvJb07WnZtRiUFX4w1YgFHWso
to0eWyMndnRj2iNX4zLDQYN+AAZqQjJdZwSsP1xgZ80/ETV/DRLlSGP0ZxDaAbm4nQDQWrwSKQUh
+pXhZQFNzI0I0rhw6axqw9Go1gwXRSbL9BXUvelj3ISmI8w08V8Q02BNUU98T5eMAXwvSRJOkc4o
czTuPBJeB+fC0lmxI4M5em5cyOYY8UyiyByH1DTtVQupM0FLt67lZfUoYZzDxLpHmu0pEsY62ZX6
5244dvqNUwsKeEWoDhmrA3CpT0Df49MFnpRGJrs7HRr4e5AOxq3m2XwSDdQmWNy5YQQ9UetX3E1f
Ob1SuANXcPp64T+TZzYvgXcrBKvkOPaUMfURceiJMaFFpoVQtFs6aAdR4yPYeJOdan/hJg+jqoMV
bu9VN+8X/owFTvLZIQ203otZ5VzwST0SSbTbmoS4OKEioApBMSzshPJQTcbllGEsQ7HzdB9TLhzj
Lm00MAFZxDdSUNXIamlX6z6t8/gvBZSfniLKG35VFM+8WZAP7lbUpsqQOKWQX9NR6I4IB5stQpNC
m/lwZvzvXbJ1KhsE6fUQp/GpzfvJChObsvLQGs88tZKLrY/qoYNnDJcn5SP/ieP/kRzSt9jqjlXf
+KhZInFEPZEdCBryxoK3a8I+9FEjAmuXV6+8XryDE/BRJTZvK76TEWTlVQXa+DQwbFydJqAJ/qBV
kTeM7kwj4eaQMLZIUN7gIH10oz3eaMAlGSn/U2TLbBdxJVUpbNRDXULGno+w28nsMGymMTVKQ95K
/U5XM3e+JyWlKV847zF8x863ls6oALstYqDRe0x6deTFtepIPljPixGZoFciuSXu6klEoltwPbwm
9vIOm/4V3+QISTbZ+lZ5N3Do5SbZ8PO9VAfgJ7KDD1ulyHVLNSNW/2ThYqtj1IJagF/rbqsShjfi
R55edkFyHSA/hwKhdytNLBXyvR2HaqYrwFLZQvmrmw3Hh1ZPvH57ygHgqDpSfgD36Mf8ZTK2n/YH
E1Wygo0OL1KCvdMZaMOskLVxnjpLHRi2CZPw01wOqnKv+gWZIqNItlW8oZmTpStCHL5oFh+AzaeI
RZ3/66PqtJR93sgH7/VjfJISLb0umZnYKf715EUyvGCTIHpa8co1yFkJ8xvPS4Lp0x2Rx3sUOX6l
bR7XBqPmQN0ADCoL+o+WVktjKQ3FWD7aUxmpyRA4yArkPBghNXg+8zXto5p+NdIJMzmJu4YclgYi
FAJmu5Q9AXwYekfm3mb/K2ZiAzIX6xYJmRzrxRpUTRELAisasTU2Q18iSsOD1oF35OlOKxZfybsy
yDk+Lip+Zd4bbWLxYITPH7+gSiM1sbIMUvyneQUa4+1wYPIBOyey5DdWUBytZ08OQaF+ACcCkr6P
m2NsWzWq1t4ehZdm1f+Popz5Y0t6NVZ4qxC+6lJt2VicoFNAHJJ3hQNWAQxn+p7J85v+BLXwl1Ul
GHhvJaKC/toRR2ESeYAxJF0ATMdGtJJUUqF9hkYHU+10Ow1+KcTsmK5PkotBIWpGwlLmPWo5s6S8
6qRAv+dRMU+pMt8ZPnrN64684R444RlLABBuoDy7NWaDwMlZ8FMsU1oCBcmW74iWxuI2QzBChOUx
o0t2nBHShJYC2r8k3IMNOz9zPNcjJOMqhQ3S6LeaIYz7GYI1Qcnk+ZRv8JDQiK5CVr1PmHpweASY
B/mvnZfPMVGSlXRn7nTFWLfGOczoXJMt2qw2uxxY4cpzGAoPAvG4W81GrIaQFdBXlF/RmyAA1FTz
2PGuJ75pG4C25agotIavNGa4dKe+USNbP30EOXZm5BnZUaSWlgvPfRvPORpAd/x9npdiViAlDzam
iRocxWZqCDXRQzNtCCQv41KPSjv6r9WetVJOsm/LscTeJXr1vVw6/N7M2/s/ViBDXGLDvF9wr33D
h6TFWDqa6KHFvMTDCB1LEAWuILVAb00lHIa+K6Hjw2dK+9VF061CZ7/G3s5zhkVCycp9VeogpUUG
CZCoBgEdWKI/ZTZBlcaRQocSKiV1jFnLPRSdODa1a686D3N7OO5cpicHZdPL9a+ft9ys5xBl1jgT
LlBbswg06sVyeang5kIuC6Mjl12go4fXZZPOkwVYn8FpfhYTFzZfu4wOb43ujt1Xsi+wJCYSqjWi
kEtXS/iYdzZAMISaPSNDCFIuiK1NylEQadGe4vmfVa4fC1VsM1Ev0Uog/9Iy/NjWOAf+BTGjMbFg
uVm97spMfEaaREBuTZB2ogp/QA8z8608qQjlhe0E9ELEnuqZCt2OB/OX4NPo/y8P/gM7aO9XFzAR
P1p+GaoXoMNQQwMEErlUQhSJAD8jzxGlWrYLUtT7+uFn9ca9PvSL0gepgMeuN4agTNKn+N5A59Mn
AdfJfXjk6C4HEuGHFb+2oKFYBZERIJF1oyd/S1v9CEKPDkX3eUi9WycAWYjOCszOYn/nC7CLGw0r
lK1HGSDyOBdKTW7LueAZSB9EzQv8NxrlwycDMzzey8WHC3Z0BLlZZXV69OjMMweLQ3CJ4vuYn/d8
l6qYY0HVfvupbbtGjJmtMFULZkkA5RZ2zMNBccH+RwZSaASMUX6czp61Z7MeWLxHAhAh0f+/WSpx
16kt4ydUk69B6/Zr8f14Pwlb5iJRvVYTsRgXYHmVbMbBJtcKLLvoiYre+YX5nEe1+gdRup/t0IxW
v6TO1UiA3rYR1JEHNobwQGuML2jYm7RmMEqU8/bEY1x4zW8xNE/9Eb4DUfo6fapzBQfsGNtslYqC
oEU3/a+03oD09Gy34uqIyvdnPnf3R0ywYx92+8kcc8xWIJuKjBiBGxBjxLSq9+aHNYwuYkxFnIsN
lNfiupPd+Okev97aH7IuDAAiR9TeOCL0TjRij0Rh4arQpy8dx2cYFp+3JEQPHSJqcgDKifGWqlEw
9yw+mbRNgkUE4egkDl3QpO55NJw2Jvd31qUZrLKfiiY6KbE8hUqzaEQ5SwBowKzyUzT14vO4lspE
OXZPRKI8GB5yG6AWYtrMeU0nEerQ5XLnfuDTryJE1oNyMcbXV0jxLH0EciEkX1eM3GQu3H5pHmgK
8KcgY0k9hxoNSgk8OXR9hCoC3zKQWw3AEe5yEZiBXsrWbqR6Aum6FWphE9wP63V/awxtaSwdxW6V
LqrW8bE+al7vhGZOCRZmPfenW/zm6MONLbNCwI4SOq56NQsdhgw1z96nqwuX3zk6gp+ES1zFxHT7
t7fS6BPJt9WsFZf5y1ky5w0/zW/boHATei7s9EyM0fOb+Xg7DESQxVpD8XtJUd/efp+QjPwP3Xnq
XSE3L95VhXVOgiM6q0k6eNmiq2fLmqFoaB0KnRrJxRqqzXGsvXkai8NCGFJCHTKtYce2+DBNlvLe
2rYMKDixBb7SoazXtnFrljmdYj8gpgekm66/7Iw21VsDYPaAC4X3GcQ1QFjhpGuTXjT2jf/Z8hg3
lcDbXezdVSGF+q/swiJk3WHGGoFeZFB07Pom1HhLZ1vfuqKpCw3t9p9VSXml+meTznI7uV36RQwo
1JUpBdlYoO4zYDoObgZZArTDNLLPGIHRhF3jc2lDB8pBh0d9lirp4YRYJq2M6cjuIC9bB+U3X/Rs
U051G7wqPGfgRCaHeR24hkwzhdY1Lo2FDZRhq8UtLbfpxQEcLzZ/e84nlkqt+batQNnpUUZqwJyU
GZNuFh3gBwq7rY+5oXHYNOdYwB7D4XRea37eHj3QOb7YrT5Q7OnXdoMxEBS5S0lmmUURqTtqysZU
7ZkGaD6a3sJSqHLKBKdSYo1LR/3a2mBRPToKefQqNSyRLVfgK5YD33NYIBZK+fdsusret33P2vEX
XEkl/PVoFsdUWuOpXQkpeMnYcymNAP3UUGIwpZ3awkxwY6B7eDC4H/qiWV1VIN096s+pG8tifjLC
62qks9RhtyuihcRpD8dEdsv7CvBvSaHLdUDFXg5oTI07uDqNafkDGvA0bAwjqQvnkKzzHf9lFkxm
1F+65VzXhqW7kLwOr0wEz1flcCle0FGuHTSluzvOjAx1bszEyfns+OnIw0fDWWbmmSsWpNNhFEl3
HsxdoEHlQKgHUVK0XR5LU3BK59ornaZmGKXMk8hBphqNT+SPXHCRT1Z27WpulYb4G7WWVdYcUBUE
yrYv4R9HhOSLSGIXVXqK/R2nUtfMrOOEpwpKiX5N6ecjMHvg/Bh+D9z6TyKLDhfqkG9bZsgfkAsX
YTRdqLd7GkjEHuANJPvyQvJs4cAsFEZ4PQmGf4c0Op53pHjHDmz23BBcVLjwuabVq7GWouuOB5WQ
1M8b7xfsVVuHUiUMgXWVkJKZDcXTzM0K21CoLzpMZDpm4vPl2Lr1vlWECAyuzyMTb5+7qNRoCWSP
eRMDSMZni6kODaRtomKa4QWNCSH3Tfa9dUXJpvqICwAsTEQQDQVrYGdnOtpglLhDAMcz9pAbwM+K
9kojNB2viy4VC6fhK1RS6aFxyqjNbfzEocRi/mbkBRtrjWToyH8LDtV7yJJiaBanmVHb84H6OFw2
0QDApGMvRB+hR20uZsiqdHMzNk7VEk7zqeKrAn9nOefBMzCxZgCP6wQfh76ZHgMty1Gs0Hd7nk7A
eD3LPVYGA2ELH2pkDH1ezRzQUDvk4w3L3xK2l6NFmaHFz5gu6d4tOcPYCDgaIvPP6UNTAcpVH0R8
S1s7WdOX2Gs2RSHw4V07zsZibR51h9uHdWUuonz5vALdEG65t9knjz3oJG53iVeaP4avQQSqtSFD
dYJjfB/beuRS02k+QNcWLK51pny3c+iYmm+vOpGgeojO4SSaVOMtvartRm8yiDA+EbTNU1rVHizp
pRwbcAxyoGlPY64kVxnqZ9oMYRIYc/qe5eyXMiXUllDdj20KLmZAv4mKjpO01/EKazcjyBjVJCmh
GDABxbwqJAarpKNKYcrJT/mVpITKOt/SqQrMt7c9pW9hSuzcZe8VSAfdhYLf+KRONcdqAUzA41Zp
zhlGuJGCZyhFmuO1QfkhKeSiuezhrQteRwyUIsUKfSLcc6ClS3B6oBa1/Bhx9gu9V73WB8ESLtDx
OYl2C1Ka7joHg7mBzgEwWDR8zqmZrV0gELYKWxLSAia3bdneNLK7rcR/9g23ipxIrKkbZkjVyesX
KMLsc/blVKCsJMuxZ7rEpC4wIv3CKIsGOuj5zeXxRwwMSQ3HjWDPGgr8UM8JnuiTL07LcoYar1pq
VYqJIoGBo6NTv8oAUlSP/zzUh+wD9z0EuwRa+Jwz9WlWe2S4bNY26mtC/DbeXhSYYoJa8wt97ztY
rDKg2ucujly2dc60lJEAab+QhUqPHgRJURb8rsSGHlMLrcQLUGhow6IIj776g0wF//2JWgPvJgf3
sy/yGy55Qglq0B78dvbgt4MfLHbSUS/TJwdHUR9td6wPG6X221zgx+kmt+4dTp6K5HWQ33QT84E+
UIghCSMp1FEUlXufwYiN1aAalLBDf2GOKVcB07NNobynPH259A095Cgu9CJ4zqglPVkQeIJb9LSN
VK5VVaNY8eQizdKrCRzMvc3ZblvQff3OM0LWEgS/Uz5AzpHOJkqcNf+kAibTwfpMfHyM1FsdAyFr
oeFsqc9bj4wikfjQtpKiioRDZ/Qk2VeU+2f0hI8FofVpYsbbFp4OimzFSv5lB4OlVOfexkkDnk6W
e7NtMQK4q6JeqwVw87gMJI9mcBsHdIr6is3ayeKnhf5BeLSGNhrG6dg9cHvNx3TZboq4pvt3qhYx
YG0825sAUWuo++oF5XrOwPSUaZhHY8OFAOzE+tFoM+PeiBHFU7EnXisqtSbHlFDTNgHRMMIiLN4L
qw08ZtNWPRvMjATbZuCDmUzskx/51rHYYMrii+a6CQtdN+V4CQOXXXFt/jR9HiKwVz+JAbxzIxrw
Kums95o/AOSpSzYjTDH0ZuapuMziQFvFem/FvlvEgoUzzZTBTSau6AiIjMC67nNA0XT9NL8dyNkl
BN6JQU9IGqwYeQQiUqsfylCsKOd4QhCxvmmde2HcJiYrWjRxBLH7CyRZD/uQAliCQl31uSRmLB3s
++3HAnSlX0Nz4jdKY4lxlcNDM+I/LY9TT9Qa9fGVGSUPhCMELLynLD1Q0Rf9DzyHXnhAwZsLeCIa
0D6bjfjr1ygK1N5vRjkmZgk/6hLciWLmTI20buDIRa/SdW6FstvsXOdXDoG+V0UTMHFW/VsoxwiK
JIS1r+I7ycZycFpypiwy/DSosUostijHPOJEymgaLENbibv4HR8tVMNK7ktRADgs9RaGlhlPESuF
4TpcW1IMLwdmCmcmlfymhf+hCSGPCA7uYAMS21m9z3FhPs4wqhnB1sxYjc7JwBQ94g5v+H/sI5YG
n89mJe/TSljnZKXxEa4ot8amGouLG8WRItt4bR5W3kkbfUM9rxQPDXYZjWE0+snh9nqfwAQvawRJ
pHW+YMoTZcBGSpPm/L7CdZgTAjkQMXjCrrQKheEPI6/g5mhXggq1fmjK2I3izmgKtOLAS/GX4DDu
vP2W3rHXklhEIqNCWcyp8C349wQtDrFp+/yy3Jy6w/mnNR/ddtdAaEeZ7D2cp2AFCo8stD6a/8wp
DM9wKva0HhZb5KbKGztz3nNeZSYZfOlLtL8NBBWBn2jXvlkiF6i5MJiz3CaX
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
