// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Thu Jun 13 16:19:18 2024
// Host        : chipdev2.physik.uni-wuppertal.de running 64-bit unknown
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sim_netlist.v
// Design      : mopshub_readout_bd_gig_ethernet_pcs_pma_0_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xczu9eg-ffvb1156-2-e
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_10
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_11
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_12
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_13
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_22
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_25
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_26
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_27
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_28
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_29
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_3
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_30
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_4
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_5
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_6
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_7
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_8
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_9
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gte4_drp_arb
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_channel
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_22 bit_synchronizer_drprst_inst
       (.drpclk_in(drpclk_in),
        .drprst_in_sync(drprst_in_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gte4_drp_arb gtwizard_ultrascale_v1_7_9_gte4_drp_arb_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_23 reset_synchronizer_resetin_rx_inst
       (.drpclk_in(drpclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_24 reset_synchronizer_resetin_tx_inst
       (.RESET_IN(RESET_IN),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .drpclk_in(drpclk_in));
endmodule

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_freq_counter
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_31 reset_synchronizer_testclk_rst_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_tx
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_freq_counter U_TXOUTCLK_FREQ_COUNTER
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_25 bit_synchronizer_cplllock_inst
       (.Q({\cpll_cal_state_reg_n_0_[30] ,\cpll_cal_state_reg_n_0_[0] }),
        .USER_CPLLLOCK_OUT_reg(mask_user_in_reg_n_0),
        .cal_on_tx_reset_in_sync(cal_on_tx_reset_in_sync),
        .\cpll_cal_state_reg[0] (bit_synchronizer_cplllock_inst_n_1),
        .drpclk_in(drpclk_in),
        .i_in_out_reg_0(bit_synchronizer_cplllock_inst_n_0),
        .in0(in0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_26 bit_synchronizer_txoutclksel_inst0
       (.D(bit_synchronizer_txoutclksel_inst0_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[0] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_27 bit_synchronizer_txoutclksel_inst1
       (.D(bit_synchronizer_txoutclksel_inst1_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[1] (mask_user_in_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_28 bit_synchronizer_txoutclksel_inst2
       (.D(bit_synchronizer_txoutclksel_inst2_n_0),
        .drpclk_in(drpclk_in),
        .\non_pcie_txoutclksel.GTHE4_TXOUTCLKSEL_OUT_reg[2] (mask_user_in_reg_n_0),
        .txoutclksel_int(txoutclksel_int));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_29 bit_synchronizer_txprgdivresetdone_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_30 bit_synchronizer_txprogdivreset_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_delay_powergood
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gtwiz_reset
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_4 bit_synchronizer_gtpowergood_inst
       (.E(bit_synchronizer_gtpowergood_inst_n_0),
        .\FSM_sequential_sm_reset_all_reg[0] (\FSM_sequential_sm_reset_all[2]_i_3_n_0 ),
        .\FSM_sequential_sm_reset_all_reg[0]_0 (\FSM_sequential_sm_reset_all[2]_i_4_n_0 ),
        .Q(sm_reset_all),
        .drpclk_in(drpclk_in),
        .gtpowergood_out(gtpowergood_out));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_5 bit_synchronizer_gtwiz_reset_rx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_6 bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst
       (.D(sm_reset_rx__0),
        .\FSM_sequential_sm_reset_rx[2]_i_3 (sm_reset_rx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_dly(gtwiz_reset_rx_datapath_dly),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .p_0_in11_out__0(p_0_in11_out__0),
        .sm_reset_rx_pll_timer_sat(sm_reset_rx_pll_timer_sat),
        .sm_reset_rx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_rx_pll_and_datapath_dly_inst_n_2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_7 bit_synchronizer_gtwiz_reset_tx_datapath_dly_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_8 bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst
       (.D(sm_reset_tx__0[1:0]),
        .\FSM_sequential_sm_reset_tx[2]_i_3 (sm_reset_tx_pll_timer_clr_reg_n_0),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_dly(gtwiz_reset_tx_datapath_dly),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .sm_reset_tx_pll_timer_sat(sm_reset_tx_pll_timer_sat),
        .sm_reset_tx_pll_timer_sat_reg(bit_synchronizer_gtwiz_reset_tx_pll_and_datapath_dly_inst_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_9 bit_synchronizer_gtwiz_reset_userclk_rx_active_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_10 bit_synchronizer_gtwiz_reset_userclk_tx_active_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_11 bit_synchronizer_plllock_rx_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_12 bit_synchronizer_plllock_tx_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_13 bit_synchronizer_rxcdrlock_inst
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer reset_synchronizer_gtwiz_reset_all_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_all_in(gtwiz_reset_all_in),
        .gtwiz_reset_all_sync(gtwiz_reset_all_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_14 reset_synchronizer_gtwiz_reset_rx_any_inst
       (.\FSM_sequential_sm_reset_rx_reg[1] (reset_synchronizer_gtwiz_reset_rx_any_inst_n_1),
        .Q(sm_reset_rx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_rx_int ),
        .gtwiz_reset_rx_any_sync(gtwiz_reset_rx_any_sync),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0),
        .rst_in_out_reg_1(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_15 reset_synchronizer_gtwiz_reset_rx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_rx_datapath_in(gtwiz_reset_rx_datapath_in),
        .in0(gtwiz_reset_rx_datapath_sync),
        .rst_in_out_reg_0(gtwiz_reset_rx_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_16 reset_synchronizer_gtwiz_reset_rx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_rx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_rx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_17 reset_synchronizer_gtwiz_reset_tx_any_inst
       (.\FSM_sequential_sm_reset_tx_reg[1] (reset_synchronizer_gtwiz_reset_tx_any_inst_n_1),
        .Q(sm_reset_tx),
        .drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_pllreset_tx_int ),
        .gtwiz_reset_tx_any_sync(gtwiz_reset_tx_any_sync),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .rst_in_out_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_18 reset_synchronizer_gtwiz_reset_tx_datapath_inst
       (.drpclk_in(drpclk_in),
        .gtwiz_reset_tx_datapath_in(gtwiz_reset_tx_datapath_in),
        .in0(gtwiz_reset_tx_datapath_sync));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_19 reset_synchronizer_gtwiz_reset_tx_pll_and_datapath_inst
       (.drpclk_in(drpclk_in),
        .in0(gtwiz_reset_tx_pll_and_datapath_sync),
        .rst_in_meta_reg_0(gtwiz_reset_tx_pll_and_datapath_int_reg_n_0));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer reset_synchronizer_rx_done_inst
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_rx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer_20 reset_synchronizer_tx_done_inst
       (.gtwiz_reset_tx_done_out(gtwiz_reset_tx_done_out),
        .rst_in_sync2_reg_0(gtwiz_reset_tx_done_int_reg_n_0),
        .rxusrclk_in(rxusrclk_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_21 reset_synchronizer_txprogdivreset_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_inv_synchronizer_20
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_14
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_15
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_16
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_17
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_18
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_19
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_21
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_23
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_24
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_reset_synchronizer_31
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

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_support inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_block
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gig_ethernet_pcs_pma_v16_2_1 mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_core
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sync_block sync_block_reset_done
       (.data_in(resetdone_i),
        .resetdone(resetdone),
        .userclk2(userclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_transceiver transceiver_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_clocking
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

(* CHECK_LICENSE_TYPE = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt,mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,{}" *) (* DowngradeIPIdentifiedWarnings = "yes" *) (* X_CORE_INFO = "mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top,Vivado 2020.2" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gthe4_channel_wrapper
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_channel channel_inst
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gthe4_channel_wrapper \gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal \gen_gtwizard_gthe4.gen_cpll_cal_gthe4.gen_cpll_cal_inst[0].gen_inst_cpll_cal.gtwizard_ultrascale_v1_7_9_gthe4_cpll_cal_inst 
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gthe4_delay_powergood \gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst 
       (.RXPD(\gen_gtwizard_gthe4.gen_pwrgood_delay_inst[0].delay_powergood_inst_n_1 ),
        .RXRATE(\gen_gtwizard_gthe4.rxratemode_ch_int ),
        .\gen_powergood_delay.intclk_rrst_n_r_reg[4]_0 (\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_57 ),
        .out(gtpowergood_out),
        .rxoutclkpcs_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_7 ),
        .rxpd_in(rxpd_in));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_rxresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.rxresetdone_sync ),
        .rxresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_9 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_bit_synchronizer_3 \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gen_ch_xrd[0].bit_synchronizer_txresetdone_inst 
       (.drpclk_in(drpclk_in),
        .\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync (\gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.txresetdone_sync ),
        .txresetdone_out(\gen_gtwizard_gthe4.gen_channel_container[27].gen_enabled_channel.gthe4_channel_wrapper_inst_n_12 ));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_gtwizard_ultrascale_v1_7_9_gtwiz_reset \gen_gtwizard_gthe4.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst 
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
(* C_TX_USRCLK_FREQUENCY = "62.500000" *) (* C_USER_GTPOWERGOOD_DELAY_EN = "1" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_top
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4 \gen_gtwizard_gthe4_top.mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_gtwizard_gthe4_inst 
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_0
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_1
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
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_2
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_resets
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

(* DowngradeIPIdentifiedWarnings = "yes" *) (* EXAMPLE_SIMULATION = "0" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_support
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_clocking core_clocking_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_resets core_resets_i
       (.independent_clock_bufg(independent_clock_bufg),
        .pma_reset_out(pma_reset_out),
        .reset(reset));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_block pcs_pma_block_i
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_sync_block
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

module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_transceiver
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

  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync SYNC_ASYNC_RESET_GT_RX
       (.gtwiz_reset_rx_done_out(gtwiz_reset_rx_done_out),
        .reset_out(gtwiz_reset_rx_done_out_int),
        .rxuserclk2(rxuserclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_0 SYNC_ASYNC_RESET_RX
       (.SR(SR),
        .gtwiz_reset_rx_done_out_int_reg0(gtwiz_reset_rx_done_out_int_reg0),
        .reset_out(gtwiz_reset_rx_done_out_int),
        .rxuserclk2(rxuserclk2));
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_1 SYNC_ASYNC_RESET_TX
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_gt_i
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mopshub_readout_bd_gig_ethernet_pcs_pma_0_0_reset_sync_2 reclock_encommaalign
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
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 149024)
`pragma protect data_block
NDsx8t/SZpOg6sgE/ijoJqY7/lRC4BffC7lm1M2JOyW1x8ZZvxd0MiSpAtGqd0k2Rx2AwSlA7KWr
PjF0x/SAEBu4WxKXEjpkR9jRVc96yHd2Ox3YzYRzdar57DSq3tdJzF+C57Yyq2F+TIQyn3ePZyFP
KVEbGoKokjVBcJEj6CFgGwYCav/j7OBsTtU52t2h2HqZVv1FsyeP6tOF8Hdo6X12Lx9q7ob6OGFQ
qTD0SK3zCjD2xzVyszySRXHMX+mxl+qlCr8OZmq9NXTlwRxh7K0HdH5FCVQKcbN9LVq5r9Y57V+D
QN7JbAlt/n/AkK6yP/+0hM9kbuu6FDi1Q1RoqhWQVvZTGyqR+QbhBkZP2ERz3EbE+pECN+lWao0E
54WbO4Yn7VBAKYz+1kqtzoDGPp50GinOz8b/I6IDt8YWkHboTxJqsYdv7TWl4uFjw5q5xOcUkA2E
WfKL5bEUVqKGtBzVR2XZj+qfqPaKtz3FguwYpKWzAwV0fQWv1tEh0d9QGpjsGAEKFTism6N5NEVU
WCu9V25EI5GbVw1UB0ThtneK0+i8MreVcuTu6CpmrIls29ea/bFwSpHWbqvhIrW2RmVeBtXrxEV9
hpenPbbF5S1Q41GJtX1Me/aI6ialWPzLkYfT5HdR9UTaT/U9Vf9bslE34IfW1YQEw1/TvtxVB12f
XJhenjldVjiyAkH+ov4CO4f4HgxlBtVriNOtutu5s2IFNsFCr+lfx2TL4R2hgOXvLLA5YLJncBe4
f0xIKT2zTqjR7l5BIvi9KFhXKnhLTcoM+1WWbsQjCYK6pk+baVvElRTltyTc3xsl1LbdiE6uBu/6
l+BZIsdFKP2xAvjSQf0RETDfDRqLqfdC0hgjAFbD/7ee41IGA1IioihU+WF3jyakprKjPrdyPWqR
yxEPvfDiLv5cVsWlhrW2Ij9ngUiubKACNJEjLtQHyACgR2i8kWled6uu5G6k0+eTcrqpbnO9pewE
Umrk7AWwcDmvgB9hBnFTQOouyi2M682aIpQEM3LZiPZuzstJVO+b9V0aBDd+d6j9jAIZAZEAK2ZS
u9R2MAKhcBFOop4Z0kIh5XVu/QjFLybvwzs1UQg8AbXXIYLFDo8JArKCobcD2ZZOUtb8ZYio39I6
a+LgHjbGc6iqWLFOnDfbszhZQ6jy89dxRPIWTeWvFMWIVkyx75Zm+GAx8kf2ZjW4iHRwN8wHsd9l
PH7SkaOi2d0deMybOVjImZFyE2bMgwV5d4R+Eibu+kNVcUsceXSF5RaUsBcghTJGBAvMyTOyRXlT
iKMIBh05XI2RQOxVWJg9VaOAhAxhG3veqL/jKG+EufyVVu57u6XB50cwrLRNVqZTEKxQoaarj3K9
JJWVWao5ZX0zZgctbVlRyoiuI3ogbqYlEYmxh3Yq5SBkzceHKZCSmowHBNhxX+s2S3VQBaCj3lCY
wKxaIh4fo9pFRJFIsrgRDd01HmUM4T7+Sj00SBgUXPsaT3baXFtIwwOHBLs+LK1spqHHa6YzAq4J
4WREMVgT1cCQAa2ZWdL7apL+ccQqUUHFLcJrY6ImheQUS8KTzzP+1+qcJBRPHVm0c+ipN8hIStzr
zW9ccrxW7mmiO6LSfRwQWDcZ4ds4D6Wg4Kjgpf2Gji6yrO5ssvWVQVozJVj6NRNNuq+rm3awYtVs
kI4x9YeKx65qSFlQKeChTqWHF/hfRpN9gJsSu3LqQahETKfLT+7rIlII3AmmL7jMp3WYcKwAgla1
sanyYESqGwvs6v08oqueUnrP77u9vwrTbUA/evyeCQajFUFEIE34stN2qLzJCje/+abF1hPgnMQq
BG7xjIx1kJsVDcidF2FY17TG2Wl7IyCmF4mTcTm2b72Dsyt83zUn8cPEZKcCKXj4NinHcwOcPraG
+xWxZClwpnVg9j9GsY06RWn0ZfJmcOn7JH1KHFzJrVOeF9/9ufsqsq2/8Tf3hkg9q8mk/uBDEGYR
57uD7z8t/d8/6Yycmq9qbIpn3fVUwltU7Uwlt+dimyj6rl3x9T1l9y0rlfQS6HgJzOVGL0Xk2h++
qgyxlp3O3nZ8FHXjgcvO5pRkgzLIdRRel3Jm7amlFaYYahSpl4qLfbrsMYOU/XcjhL+pA2PKHQ8X
HovKAf8oJSi53ayU0KsQ/UPAIar439mz7FtRMGhV/R9kAvm+os6e1vp597ilJPAJ+14ipBpkqX9e
d0qjiznUi6WfsxlZo/pWQWrH99sRRRBWhEPjIHLw8R49KjtCCJCYb/YsdW5tbhECNaCyjZ2sEVcJ
W29+9RzCQbQsJEWRxGO8M1jgIyydv+kOG7GgHM069nOJI41dg1kbR+HyicaAKbzBJgTWygJ0C7aX
ac+Df1w6Y6MyIb1Rl2qXF1gFqmpGo0eTIiYcttc+W9KnOk1Gs4CqDKIsTUHaYmKOAAg7EN0Ymiy+
ep4GhKlQJ/NgAnNytKuD4UMkXxv1HuV0eaEgAOts1Olrz3Z5YS5Nfqxpy3t8CHMwGsQMmO8e1OCj
7cmEL5MhaoslFToIld7K9Km17YxnBFuGMZI438LkzDgWfYU4Dc6mq/GRXhdvl1BkkNXF10giXfcs
DFpyLBe1DmrmIm0KfgujQSfp4TU+es8sH49LCC1YNi1orywEW1+nqLW2sEuyntNfHfIHgEUCHKLU
MRpgYd6fNHAP+y7no/+vhzbGKylSu8KBL4u4/0FluBuSZapd2XIs0DT4emSZg5Mrd4DrELlwXJb2
pyDYcFayJL8sgBM9CJ/cm9vQBVPM3Z+r2XRdnaqmEeN8t8KpS8m3qWX/NSKQsVzca/g/cN8vSOja
Dyf1OdsE3+fWh8t3h0v/6cZ05+I+TMwchxlsZvPVPgufGvAQ0i5zuTTEjYKAMOBMwrD4bh/Pjr3W
LN34yVPDrWAY3qaVK31zknVCkQfLBJkBSw2fA3Bm8G+Qj3sL4cRixCpV/AFWV0ZtHEcXVZkvOToe
AajYwul+gE+BG7oYdFGxZe1Hp6b2hdMPU8ThkSnjwbmzfobZa/XszuYdxulKYP/8cayol3hCRIQc
7ZUJZhMty5gEiNQzWooL71oxRJKQFmTKyrG7ohMS/yUmAkT79mxDKL4V4KQw3lDjS451xL26yLoz
mpgxkNhaDrxfYryNaInRzuGXwBPdM8in3bgCQWnjyBmM2WelL/uWInwnUNI74H85OULB6lZbSyS/
Znzr5MR4Q5ZYH3emm/oXZ+3LSnBslIT4OYCBym2XnGBlMHM2fc2FLVw6EVK7scsFqZUFV+FQOGgl
RenBNBKKZSPQv+tjx9H2ovzkfmVN5Pg9I/v18x3Wu+HYxEhEkcXbH99J9pywU06bO44jqhq6wIFs
IignA7C5plCp77rvmY1tCthsX53jExiEMiv6xwrYXsHjZXVGjyCPjdQ0OfhSKF9Fh0/T5JBzGGHN
eBDA+srbZeYxEpl0EHvwAIw7pHrQUSwgDy3wihoNNwZwgejvlpMaksIizH1avCKkzfwRZ4xiCMqh
E9w1l5aj3O5asgUF569VyCQyemaIMoULNnbimwBavIEjqs1gmyjQyuMHw/cwUrn6zRsIstOEWQh6
X0AgrDxz8hNxLDI8kU+KxHtPRmBm2GunCHKD0Zq6rgLglW50sm269ufm8Xr6Y5o06LvrIrTVbZQo
mKTfpN1SRB+/Bj4nBjx8WJ3D9QwPrfPYDNUXCO3/Y1/6UKhnaamSmhvqArYYwEf3hoRg5vysI3vO
wA/dpv+aPImdXR/3UBGWF9FZHiHXCv7S5gs6fyuf79V6HTnymG/wEivxQnTs3F8ikdppP65WScUV
5Os0KiO1qmcuIKtTyJbVtBuZh/ItcHoVuWjAQi8ggysB/J0c/M8S+vQFxluAg7aJk67tkvYEsjTi
rYIJm2misZmGmAn/93Un5XzfAuU6RjhJpvaJ75SrO6OV8Q9dBnCFUJDU4FE+Bl4QDfIvpEvz9otk
IhcXNFZ63Jqm55PD/+jfkLLb0rnPdZ0PFaIpQc2jDfpO/6Rpl3keVRv6aE4FR2a66LphFM1acj2v
cNgLVPxbb5j4p9adoKtjD7VF+VVZ51DuQItnKckUSQ+qy9XuzEOFhwwWiwmmLPzTpFtroSQCxuKm
bPPwkTqgAJHsPdBN2BQNnvKXZmlJ9meA5486yKkjZAicSJJIlMXfMKeSyMvlzz21EkSurgg5t9Oc
PrddPXFjKdKDdJ+2YmjJCZv03YneSP4AGdFkOGTG9QkZdJFYc1k0yivyyV9VPwOR1XEGkG2WOZJa
QpUutgLS06JUG6QlJTiLJ8A/bmh8kKI8p0ajvCWFJvJuATVvA+gIkuaur10b4bloI1lWKuScrBmE
z2xqrtkTxIq3gyK1WZARkoUtedGKkiZJUH713zFA5+2oObxsRpqubUXjD0JaEJ4nP6rkMltGvWmC
1tnUYkhC3w2e8vb5P3w0+RlWCq2X8xgRFSJ0K5ym8NraXizojj42x1ds7UKEDnzTGadl4b1IB83K
JqDWSlUpKfxnTfN1TL+XPM9jKwctmo+yA3+YJQLKRA4dzqw/Ur9zxRmHX2RVgRgbYgd0Ha41bEWA
XXnjOsBPTB07nPEwF6Y6TjjTrburvgmA0HO5Ca/Bc6DKlhx3RKF07SVDjvUxsAPfVe7Mwu5XVPsm
7Ld6/NDeiiUzHGcnoGdKahPG700BTT6RvUtNri0UA8kG4Vp5n8BdilgBQicuRwHdrf+4ykqGmFPX
d9mfT5BnYxdISuIq9hSaD7hNjEUhcS5VlAwDA3Z2ezhRv/09OZMRbtK7OfIPm9Vhi6OOljSk5bkY
6QgJpZpdzS8Sw0nlrf0WX7cHkMqPZWShM81vQmjckPzePYhQiFfIx5Tmr15KOOy6UUoOvsq2Si2M
7zQZLD6cazXzVEcDEBtWhzK7lH6rUqRirkzRMcbuLy7fDjHXYMgWU78iwkci8SGxYW+zo0UnMCc2
yjKAGswmlUdtBYUNfs4+LKOi7oCiV7BHj6pFgmLUMlwYhAjddY3DVjjQwngl21tPjzHEurvYiK/I
e8Tpyl1P3+J8lyMVFv79POO3ssCMqg3HXSTsEJHHNBQnnVpzvSd3hMH43PxdIl5UIcWlvAUFMc4v
/NLWdAKPive6K5hXSzupDCOJXh5vjq8Gg++iEmqFaY4L9g9NWFf0ZBfZILFMFzA0uDUFJwGMnEGr
832d72wQ1Z4tNmae6lbnOJ2TJ1Bx+1/AQoTL3SDxpQlKXjceS4QAJCgex1VFBXrkMhaJKlSdLkh3
PGEMaNx6x14cJi7pjQy6cVhLwIbnOiIe/eDXgSwaYjDxxQijKFFVCXmkFeT0RWDW+V4T1hHIywbX
EUKGQBiO/1wf+9Fe44IV95xube4jGwA2qjPA3XBaXZct97aVFhsYjhW319bQsFiDFaNjI39ziDCw
gh2eFRIULROpa5RlMnvYjrHr3sjvyIJRfuXyaZrFrakXDMyh9S8gn51OpsdgohuXphLkoRLABadR
rLS3Cd9TEXSNSIX6wqt4EqVBr7KALsF8jO+hzKIdaWFvYoVdGFsaQauppjwm6TfpOrGUGk2SK8kK
y4wql7UXnHBIZI+vrGxrjvVJAvcARx6jE6OeXWKR5wuIpx9goxQkg0nsxQ2dfqO6TBDg1ZbiKNIa
w/bIIjyB4g0APen5brv+XfvKsr9LRF+oA0KJjTRDpxqeKStjedn6Qgg8HDO9gUw29ebMKp9/oB6O
vBU+Gq0Ctijg90sOcB4pjVTpECoYjJr4YfSiQrwPAqkWYNVXqc00NHCMQvs5UDBmPrpnkS+QvLKX
ciN/Vn3QFTevDYvYYLt0Uc95TEAB9QhR7tC8hqeF3gDiJPWFnv7F2wksKym9alYPNsDx4DZIgv23
Gn3rSh4Iuh4qUwfbITG2kK0jXE+hQtZ5f91THUj+pSfYfG2QQqF9wKi9+rJ99QYX2ZMsZqjwyoSS
hVzzUXq8AyaPs1EtnokZVTfrOVrHorTT21oIEvXZkW1c8c2v35YVKi7CLijnl4cbQFWN/hcEAFiZ
X2KDDDZ7Kq0iiVfXV33iAAewMjN0za6zJ3LNuAakmTdQZao1cbiJwyl2WuY8w/gLXGkBhrrNSNH7
sW9Me8609jvmt45JQISnToJLqcniUJjez9wlgLCm+6AA82hb24QSA2RcyeCNaJBSN/BBJIp9wWQQ
rlv2XB4NkJ+gvYWNHMAg7PGfRSKgx2n1UYbC535be3JSQbGqssmOPWKX83PZKKA957wSViTV9U3W
EKKc4SSiOuMtD0qwIhB7lIOTxNE8r8nKDAYfrvpgcLnXi1RvDdyphvh+Q4kqUw261WC5dkm7PAIu
23+jCFTzVUdukNtFf409PKn6aPXANCOa++4xWP/RBXRIilQrLnd5O82avtSrY5+VQkGz/xWr8Rgf
PmpSZ3UU+DYPh0HlVFGBHc23RqAHN4PtUZaEwnOmHNteqRooJWzyQKBYN6wJAg8BoPqPYbYkecfF
Nc6uSQsoN9ijOqsPsHSCPfpxuj6EH7mpCH86aOWOTCbHOZMl1S+qe0zG0S0z3wrE4ol9kPOR3ZbP
wF+UaVhRQnKg+5DAo4pdwfOBkNziQ3qfwtS1Rqj3TN+gLNkSTGiz/YKcg+x5nJsYAyEzpc92iGLm
1RSmy8zJ8XXqjX/eOrx+yInMipICOPjGAoia5Ww8pN4cmxpFT+jH4FgVfrS5HYqdZWdQciSjogCT
/30BMd4hUkqCP30f+8rK9HsPUzQuy3cmfne80KB4Y5YanVRYVolti4qD7UQK8wlbuKNOOyHDeoBS
nRVZ/6mrJ//pDbZX7agP6WWd0I2gUVMv/D6zCQeDrfEy5GEwlqHdvLo9686zLvEHbNgfZPZkT9AW
5WJJoqh6Ue+cK/1SnpNCtta7X97EZjIAt6c8RrRg+2EszOg6ovppYAMCxCHORdO1ohweW77AIPSP
l5eUVA22ci+2gsXS0lfsPPyXQCb80NMGGzFCabfFtlBW+S3yboiAvnMTUALOBblQ/3COWOUFBKLj
kq9cA2cV5psLJS9PSAdMIDREu5i01Hn0ZdMA8fky7f/aMXlc2GXyN6BxehuOJNa7OSNCyJArI7L0
5YpzA8U+AB3B7NxMAeQ/lsRmaQkinbNv/d3se7K3LKpHvA9I6dAr97dvKNjQqnz/q/6i2Ba5NzM6
YduthmCGK3byBXDSb4UBNCU00j7B007If+0dkzb1AI33Uy/zh/uf77dVlM0o8A6uH0rNWEUv4Oxe
7Ra/RsKyFgJoHc7DiIru51kx36cBS1ZYJyr5hthmO6uB3yJ1xbn+/xS4MOOm5AX6U20mVrPj7iFn
J73T+cg5W8yuQUXzcr8W4Y9UGvtF+0wXulVsvujv0VTIRJTjKzRW1NFBISX74yEpdV8q67vQncYY
O7Fv2qfcz1iVHrZP7m3R3VGCuBPfSlm1Zguu6Z+aF5AT/bYmsspi1D+aHUoUECzCbvksDaovEfLf
HutPtxIjiLSz9bxjX72oHsbxa38tMSd9ccimEtobjmg6yR/1rJWPQC2oiCoktxrHSra38l9ljlqd
Acju5qQ3GT/rD5AEL9DjnPcayrsyi4Gqzllk59y1NaMkRdlRoC00co3lOchRVOk/HRmYh78FFX53
EiwyIhZ30XXsgoDntIK4oNODgicA9R3JjpvlA9aJgqT1is82SXLOHff21VCjKGku78b9DMoXWXZF
hOmTO1mcMBuIzAyAxCB4cys1U8WFiOzO+9cBqazIBtrAll4RAnjXr1gYmQ/7FBX+qpAVB1+Hd2Ne
Qh5lDmolvl3Gr9C5YTq/+hyCGyFd2g7IUu+PGNJ9AYBnX4Jo+UWz7AsyLMTq6MDolROUneuRH52J
PjmBv3r4bc7K5Id2S9ILAPr/wfvpdBiVZgINIGbphtCMO1KnqW5uR/xHOIe+NfrhBUvRq2RkIEdg
JCGLFdabDDpha1biT1lOmk+iDlkwQ90B9XCPAu2cIW0DWBYE1ThnJ0Rfq1qrEviCUkDrBjorOxgS
i7KR/R8dI376NDyFJ70PP/Fq37QnOiAOQ1wAGU6lsU30J35kJwjWlPIPcVGuEH+HZzJc1Xf5a+o1
KE6uyXzOQzc7YUeiaIbKbFKrnX6neseYKPeB5osA8jKOjosQr/R8NwteaX77GDZ5F2N8aEYl2PV2
ChM+3N7ZnmwSKIUPHacBWF1qwI/IiWmotuEwypIABmLFBZEO6fCevJgngwK9aXBhPSIFWZosWqU7
Gx65V1x5prtqyrp4jEXwsO7ih6NNIn7c7XhnXytKonyNEY4Lb7nTU2oQetfy4z4zhY54Yel2yYL5
swEBusscQ+VJyaiBMJlLjlnE4fx21L29YHasJJt8cGkDRikJ0sZuteQn11vwZ69l+c/6hDgn6Rpn
Hw8HOknWj+Gz+KigYOUL8VS5/qT6HSIef2kGDotdbInctfYjC+Shh9Mm1WEfrkt68PunAUBwo2Sd
dL/zsiP41wq0gk+yedLfPe/K2qWVrUcUYJGuInx4lvp4vtUHn1I9Jxwiduicke4pQxCNdc6dBUGu
pYSecuiiUAtK+k357CSUv9/gnx20d2pXBWa6+QCcW26OQhUs1+NniMD3TtS0LWIs1EDNNceaN83k
m+jwAGptg41nhapyZYjUajzEqiAT+m7G8BlYikJ1iGO4uNKOKVL/Zkfc0P1CaFmIbigcp1Nknkch
LgwmJXR3ZesZZV/TVY/fXQJ+8i+YcXU3x0vaUkMeGJD8jTbW+/ByWfz6Cok6puF/4i54V5RZ5kVp
FxycD2iH1qf1TRDQ+UO3ixkagWmwweEIroBM542D53dAN9mKbrlDNN99T4zRxErWoJLqkUmip6EM
mVjXIWoPzG09f0AY3smQ3xqnbS0CVVLLCFNth30D5fFd92PWwdkcpB3BJJt3YVaEUwvjCh7ChbRJ
Y/TcySV6P9PNN4WPp9sjvaAYi++utBZdpKeJdm4NCrN/nA+P9roHuv6iJYhrzLtB0CaIdRm9MHcN
+damj2fODBRWCEHOrV9LNq+ryqrygBoUDB6eOFymgdPksSulGzHBOSyt1UWI5Lp8svVvtNqkmAQf
zK/AcllCyNcVVnwt7pdLX7XJotF72SWY+A8wCskGH0Yh/mCpGCqRPjWDLinBtGEjSUvD7dRVFiP1
FfTX6kAzfCh+qbwThdLBGubM098mdG0yLevRwrs2pcXJwe1GlS+EFJRUTnNIwg+CjTATHzxQsf+x
DanHgeAYw0NWicbflPH4m2yaNIZR4O3FNQkbUSZL2vX8eqowvFXjtnLzEbO/zeW821/SMN+ieRqs
7NDBTYf0459ZoCJCaxnc1y2wN3W4numeShYfPgDImPifpvV+pDUVKXBAZ+nqdoC3j3GNV24GYU6i
ijRWzeeBnVQRh1lGxKiDmFZMUmHOjwJPEAAjXzPypGFKx1LfayF28gOqVq9a/Dj6vmbK0IbwKOx+
40wRrD3N6dKpr1XXgcdsJn9OxwzRsuPzbHUff8XsFyL3sBiQjKsnNaFtmzf3JuLrth+tOcMcdgfs
QNoLb/HjCMOR6wSwISasvWJy3FxVmKGGIEoo7XDcX+6lclN2t0K85UOcc0TLbdmQjD5sQBt8zw4n
id56LAVe5ylSWDYp5j6Haa49ujGDXB1GXxqB02dGcsUimLvxg6HfOLwEcMzkl2u8rc6wuSxRuCu9
nQ67DD5Q7o5R9bkxloZCT5Yuhte6vgt+mLSDuizLifpArTFD5zc8+JdfxMfPTatJb+E6u/CXtM4O
5ustujWZNHe9aEnydx2rs/vqbr+T9f62AdjrYtMsTR06stqERpkE3NvRbiYK0n3YzTu7sojPgiLa
p+mXU3A0z2GBUMylrV41m4SdDpMJHEJTymLqKd4fHSQ7enu7C701YpbWx2w72sl8CDN4wImlcjRf
MMTtBFmuyTv050Cxlpmqfi8x02/chgCZKTLyePo1+sEJFg9+vfqDFx2q+SEXqPas5Ut8o00eW15X
cmcTdNDAY1MfxqLxGcCmZ2Hxci/T/ppkm3zJGgv6IP8x3LLmGM2VNtFJ79A2xbeWXCiJbEAXkAhZ
lppZOAX9szptKZpJ2xhklvj4GMDDv1mLf1z0uHJc/KsGZ8HuwPTORPC/y/QHdl/wELL579hkJngJ
9v7L1kLR4sXoVn3ActOwwTaS8hl7k+TnPB1dxxZR9LURclS2ndpF2XGZdrdhyzpi4I56v0J61lDi
WqOG5gSn1mleYpdKVzMKaikGsWhrgckrMQFAJkKR/FVwOR+IUSvrxPeXhXGEukCUCU4/OTWasp5Z
SF8P2BPiKrrxeaWVbpFg85Q5GEbbWHxdHFTV9h0IgvDATVSz3n1hxZ65s1c+G7Z/MnO80kODR4kq
57gD91tWBCjgPbCpI0RYNm5JU+KW7Rs2VWNlOLsvjXAqxSs6qSNH/ayQu1h4v9CwNFxKHriGabb7
Jje9yxT6A+nOrPSc3KqjXlRP9jBOQXoRkRFv4ne7b5RJg5w8wB1ElyB9uEb+Rmshno9uzG2YNF96
cB0xOm6cbYHE1Ury+zCHC1TKF4v8IfjelfN7Xjta+VmdmRKflpdy71cBreW9nQRRd/WgHqrivAZh
Sse9VomG6kmcpkoewJ/3ASxYTtDnrNTg6Vu74hKGSlFmabgIICyglvGVV4rKUGJh/tSy6EfUAs6l
0z0RfLm1JNrMMyiQvJgiVdWu6mS5oHbLV53m/9TKXpmdXfk8peirDmm7aIJtpWopONu82D3ZD1dE
M2yBnmMZk0CyWz6AHUd6IE00DZLG4J2ev5aZ3TIsF51Xdg6OL2TG8VgmTsEbuHYc09k2g8KvKgCz
9I94su7q/FXWR5AqBDwkL7VolthfvY2A9njF9EZhaiLljXLw9dGmCMVzHUaIFsTy2/PfVbiUKWzn
9rhw3aJsWGQtS6C2BGuKucnXKZ4CyTw93npPpxG1c0IAew6DFBp79pFhFQ+/N3eIqPPZRuTmG/a3
6No2FRZ+TJla+0O5ceF14cyyJFOsCjHh0mlb0Zn5JUYfaQ7bANBhGZzJxrfzqmnyg0fcacIsD/lm
YIwR9UXfv+IAyPL4YBt/qI4isvnW2Y8YxUzkV0UL7d2qx1wwLMcJxzbvARaTxVpYxcxob//MZc8x
Tw1hlVE2Af5a1b58byyadV3eLhtSbNdgrWG0BV0/HkvbaZB5pJc3cNiK6mCibDpccLd+fW50GFF7
KAEdr9x3CB7E7klWzejEVSuEqYz45lsLdKGleyPEspwbQ5UwxqC0nIor13fCU5cOe7rSC8jEwJZ5
qJOq49XPd+j9DTCCGn6702pCbISVVTblrDtQJIFpPxBLpjWqeHZ1gJpwgkkAtTlWGYCBiRVEyMh6
xHUqcmxzatI+ihNb934x6yJx7ygY9Ff1a1P7HDoZkBbG04gLSdvu3vG6DmtWo3Cb6NPj2O1BEI7e
9poKwwN4ldc+fUdUZb5SkD5T9VWSqcPf37EDLmsdAJZEOLk2dKS+prTVh26M7ULxQV2SmaDxRRXu
sfCfp3DhvYvnB+TfF5lAHYHbCuy2kKpIdQjlZok93mCjOXAq8TLYDyI02r8MjKt+GCMJdDLmwPG2
hkhbJqsL6EVoIz/viaNz6b9jfadG7zeAm+2Zkbw9CkgHe9ENYxa2lVdnUGHS7eUPaA4K0/uaFvUH
flFGeMEqeMo9C8dn1B1N/ZlNzWu5IS2TAblD/YyqXrflDdANmmki/QdfjcHoAKvHfP/f1IthhkeC
9glT0aYlB5/B5CfMpF67BkE9NVD0FkSazxIOLwu/O2TMUvTBYwLYNexTHlPQL6E0zzGsXSLyda6i
U8Smrp1VmtAN4GKI3xb9yoQYWOcrnoUuM51/ij9cdm2UYdtFOF60ObWnM4aE7wtHmA0NTAyv5J8t
vtHbc4vNbjkWfBgQG5MFNf/mARo58aX2oU7MKwUQKFKnxdkA9pvCpp8rLgxe/BhD81061dweyRX8
6fZ62TTvS8yeCIsZ7mMiN0PsuhvyfMlA4Tngb8LRuJcZac5wf+8FL+IKwBkIiI9P0T45KsjheK7m
UTJ2cSUm7ROz32NhD1sYJx3YCtp0nHLL8HvkaeNlu3vrcqkMxkKmgfPLKVosI7Avr1dCLS96H/JE
QKhJQtjWqOHD5yXzW9/QU+RSPOQziD2g15S9JT3oAJskNEEbd23evxoUconzVykoDbYxwWHvuiS9
Y0WcvY72onKIAfQUjks1P9OdtqY3yP3d4w58uKDXVEj+lQ/qz/OnEOfVpMaNgH2atTdgEv5bM8wD
Rm/w/zJ/4+Xn/svxpsc1bBndTA0PtcFaOI/FGwhuWOAvoV4cvwmtvO1jcFh1a5ZTVdFBJtHjHb9M
kh/33JUxIKb1PYxZrCCOGL3VfAyUvmh9vVA++fGcAO4Lemnoz+MxUqHI9aeMTxyFdWlSasC5/IBm
X4+js9WccdcHPBe6jS0RpjdBuB39LKCfNAkOMRDJEHKVBfAm/Te9VOAReEGed2T5Xr5U1qsGWeIq
DYrkLz5p9k3b9P1TrDmMDxUbueOe2kQBympBwO4xV4Th3ob5ScqMEKj54YXV63GYr/Q/BVSukqG1
dR81eiFFnJzdmEZ+nbKutNa0WReyz4dtGYTNHyLNtaLb1xbp+fF4LjVJkxZWpSh/wumPvuJYPu8H
fZ7XCAM7YeXlgNHBBMFygHS/+uev7sRDVxv+rVW0eFC3T7XSl8jCZ1Sb09XM/zfcC5wLVF2nIPTk
ozFSYSPyn4B4FL8PPoQHBH1GqlkkC/XTgsn2p0nuAdmtnmzbGmy7Vy4i2x1SimxL9GgX6QwwHeAG
sb/jdd+TFSCl75ZkwYFeeQ/eWPTPZATFovT7PjXpzJs/irS5nDi5oCI/wu7auylovUdsW0RTvitw
m5pyfOkj7C5yrfaFar+Rip/DaBG8DTsug57TzEf2r0E7DseW0MvfiSXuCJlzAtffkMMM/dx907KW
Yi1RXh/jK6EXaRGF3Kbpnhe6iYxN5A67fT68RZnNhD6O0kGNKCEUfOa75V5HltZdAVsPVzxNgtm1
wBXEQM/cYLwaqhVp7gj9B5GVDCGLT7XOQpQ7Ny1aRa2ATcgXQT1weCu3M2QmamrvK52U587cZSUS
coyqeo3i9pRjSWf8zQpPk80F2dtHeObw1E9x/FUCPgiFnqdTTP87bCtcbVWhZe6QuWR7OdU+Kz9g
NzzBrCQsgc92ODZscC0ggpi4s3G8bhMn0H1uw2Uf3Xdv++cYbOZCYv5AvpSuVPIQnzS4FVmrydsN
FDUZwGI4W4vez+Oimbeg5QLOC8d5rLK3srK7r7K5id2Vvr760JONfZOBglFSe0EXL6TVit7K2sRB
7kAkkmaPLdIQN5STHVENNZnpT8ftlyk/ktuoGiLQKgWS7cQ9weKoo0Yi2NlWLhU4yIdTK5PZm3bw
QWTBdpoXN7WcoI39WpnvGiwtyoojqsu6A7TjRCCxFR8uo1oQahhyq1YaM69GlHVySYTsb9O0Ia3B
ROjUXgJss1msjU5eJegyEKjnDXA8pIo5F2FzzjqaHePEOm7lPNHReK3LE5TwX8ngG51mAClZHomN
VGFh3CEH3Ij3B64ufqJQ4bzZ2fqX/npN6P/6p40lw1CmVS/tP8sw+NL6cUN9mDjuG3N+zyezhHZa
GlsJ1spfPMlC1fe/ji09CzPBqJs7PffFN5AqtslcfA26Q1N3h67kamyF3oDqpwSEqVWeOqitBMCg
FH5A4FhfTQ5c6acou6TXy9xRDOjK1jxdp3uZCZLMyf0nF6c7nXvlxggiUsZMdvzBd31A85NmeCoa
vfsNWa29BkK/gR/DYRhTrpzcoOUPC8p7EYjUE2y7PCcUz7yK2+AOslaFklJUI/mnWRWT8wj0jdgO
szh65DgxsP56HIm76lnuYOBzITdOrAM9RfOfVkaNWVfo/L0xNHtiAETSTSmLolcBweGK6p5v233H
+mP+U20MLxZf2VeujVIQxbi2ekZi91gn7JvdOoTeF0GBoEe4DZAaXBkBMV8JyMEIMRswZsbi3GVF
xY2HZcmmHnnjTwdiIJzf+dbOqnVht8eUFbUlAmgaQB0xbTmX86izLEL6zT/y2jgaFDdJMDHszNG0
J8T9JO3FZNqu+49WG9XL56uTgzh7PfLpXa7ioGIWZY7gCOrmduAekBharxWbgqWTTFAlCsUC+alE
jl696ciUsuow9k3HtEIbAWiQhVpHJUmh1TSxaV2AwY8rlqt0FsTlv1igygbXo/QBr4RTBG/pQYw/
ZRPIEncB02ZzFE1dJzBKfn7C1pk1Jt4fXT/HTAyiMJc0r1JVzrs+V5F3FUeYxZqFMv9dnPHQpp/1
q7N+Gck69lADP7CCXC4RlPmQW4pRJN5sqVzpxSXOrEVyAdf7Nf4h2+RV1TNKtbwxUzQOEfZVScDS
TDOkF/SsxXxOpAo3U3rQ0QTXcXMyTtDpLk4KrAJORjFcEK9qH+Oj2BL/XAk0nmKTl5kuQPd7ukBY
Hh5JLehvla+niwroSmYm+5SyUPlOHqU3TR9xYGZCJKxaK3eV1P2PSl0kdEgPmM3cED6QP0qpQE2H
ESs0EATY72HkN450Ee4zbd75CU121Q18E4pIIVU0RSu3rQ8Q3LtHMhSdauSWzKKf9wtK9ecInfxt
WXkknm5zt7r43gsUYVh+MjdPf3ZdRtrE66+dK2/UaZsQ96X6mWtlCk+vO6bNADSz8NbECVhqF33p
16QjklTjPFzFxmh+Vhz6BjsIhdLINrH0TTv+k0wpzPbxwG4I+RQrivbdqZWyGBlX7gTxapn769DI
iGBjlRwkRR9h5BeiqkrvgFv10pExo8gcg0vCsCeQ5fLxJdG4cIWsHsUGNE7s2rGP8I/p+r1OtYxe
bocCNHIqCgulEgpqn2EmpzGjCQPTYtrSDZrvqcj6hWRH1GYq/3dDAmgpXCafC13WI9vF+hJYf700
kdb95PX0lCJlZWkaGnzxmxOTD/xnN90mDCxLDPGuftOgettBjHhFjOYBYHV78gPJFVDNDzxU+BE2
u7Q3eheZ9pxY5ZdJn9ZJkdSEamp90k/uMHIwLiWJd+9UEEi70XG3u7xqxmhoFIl21cZ9OgrLRgjk
lIA954V+DgMCps9cTeF0zmA9U+HXyikbsmRH6l6aGgsV2c906sUUyu2lvcNvD8+HKxL1uY6eG3kR
pd4FBWhoPcYOAUBko1GwAqPSEOZF+LtAn8HQh1AvTGeq7RHizpLMXRttBiJ08UJdspz+KtOenv5g
78kTfg0U+wwCtBGkBwsYXqgSJ1LJbiGjBW2ntCFy/cT4UbG3xs6geRhw1MAnjHyhPrUkjKJLMiUx
CiomhBbdYmKVitlSi5GHzTBnsmXNEswFdhnrmaDCYZJiFyQhuAiFHlyK5hW9LsQX4w1ulrsVScHt
s6pvVSqmriiMgEpB/8NbNzoUQoIjBTkKZiEqrRhtjCv34CDHKI/AsOznIDRc71zS3IM9n1YJXSr5
CcZ6L1X80rVwvuZbWyUMQxQv0V+ARPYoUZmT8RJc4QDYbCB5sKGNu2/7FWEe9gMhVCu9gvM4FXmN
1qPXVVjgMZLgUKgU/di08WiSk40aOdk1WnBg+IDM0pe4HKzCdvf3zg+lufrIH/Dz2OPG5RPkmZKl
tAF2ZinHoVBnEQU2z6SJUCPyCZxt41m/S+lE8uvdOURKDB172cTTXpDS2varw0RC+EfYdxlJAmXN
7hjoRZQe5ivJEXZ21C5oODLHvl6Ag3DO4wZ3hgQQsVHdc0gPt7doHxIZ8XqNbXcEzBJ/8eTcS2gq
pJ5LPs+67uijpCIRbRvp8J8Pl/sBNbjX7+i+er6rALPB5wu46G31WFRL1BQpLcot5YPd1caJBZ3C
4cWKdhXevzeKRSlBIC2/5cuGJxW8MOwhxmCcbrrfEhu2RESXVOViHaxXo8vLAaVn7T5LANCUvcvj
qN2DWLKqxcuQyXbBfunSYHpxv+YYUJiA7+duDcD6M6D3gJ3v6dmxQGuBFkd+p6eodIx3OWB48dni
s9gEHYFY4QQ4V4MBr9yGFxFqcM5AL0+Ilx1soVIFTUTlgX1/tMgfbPVNQGNaX5HUwOE/wgHuRwDk
8hPwYmPjSHk8zHZtwM1Nul9uzBBTTvFWKuvhrmBBnEsgHrKWKpJpBjD+bWrq8q7/KjbdK6kMHwWx
co6ZWLwCUEePaV5fK9gjKinJKmYRl319ic7uBnxZ5VS6tFQL5DjkVKfKIeOoVfnDZ87ARh/4YjYB
ZDPb3XGn0fqIfOxyjnx9ZJaAgwzoFmm2f9d2zTL6uFJvbAzRHAuKvP+edcjlKLl2U8FPmDbmplum
js97SUin2JRD9Q6NOu051zAvPeK3lRNWNko3I/Zc7v6uGVt1DhEyj8Hz8NtkyqIuf/n83Fx8n6pG
l3CBX/DgjBeE0bNdLBHnO6Eenh+hDM9VvWxt6fnrZqUXoM6XElPP5pKNfGaGgdXR5y7XOr+I2CPl
N9b8zS6RIBPBPr4XPcze/BjBXitEak0DwENJyN1kuMTXfwL2ouZlmDqzaLp6jVoUsKQfk756fQGJ
GxsMSsA7XRpOTkmdv3d6BgjZ1WwDqh3kRjz7vJnfk+2iJhfQtOXrWEZFE4Fl3qHasHIEGAxazLqX
OFa5ACv4I7P0p7ZuMqJFfJWXM0YkCfES3b1RBPnUEM5fBRCnofPQ0F5h0OVGAIBaeOwNn8IHLrG8
/vON7dvITyBUz1IUtSkQ/f9K2kHg91y40zDN8ysJ0bKn8mhdK+Oqn9jYrGg4t7vXcnGkpSTwC+xc
ulGbe5P5QIsp/vD1vxHhQwWzkPN/PrMydZ/SRidgfP3zFzr66FRuMkzeVF2N0Hzq9gH/mQOMDvh+
eTkg8DPfx3/hiUdLKvwm5ZzyIpfqrasS+FA2qnxbclneSCDRxZ+I4RKADOZ7YEE7dZgctmosqaDH
P5WYx+77CnVa4QE96/gtTo05OUBBkRsXVSITjYgD1y1H841E11NIJ8Lg3ENyazJQYFJbznSRYKg2
peCgQVd6Vbov0GD8IvNuCjSDl8Bew74Zvtr9pFc95/RRE939v6E1SJ2c6qyGlfysRBfLAtjmcxFq
NUJnld1OVYo3lK8QYjpNtqBAJOYKrkYmFux7JoArtzVQjZSfjOKW/52n2BNzq56VUVe8PNorTXz0
SHH2z8egZ6goLan4S6p9qpdDW3a+LYVdSig/wpX0UgDGc6kEZgGgvU/UbxlSUZ9IV027zNXhVBiV
G0g/MCC0Qh9x5Jb+sKK05zHmS1b8nwGkxZm1Bv7SyZKGYNzCxxCDQwvPi5kjR07Wr/j7n5dRMJIC
Pzdu/DYYZXf30JZOhKYGkdFoe03xyX69LhNXhw1pgwGzuk2vPV7AnOo8mjl4s+NTGdr3Ej1g1S9Q
p8JQgCYya4WAZ+i3AWM+j26ApT7J6EmCyZ7b8g4BJG6c0eobHJ6ON+xUjXF+s5Jvr+7aYuJUPlG2
9jWWip510xfHJU7lt/B2MXhkFkhWTdUt9h7n5CcY02o4hEDcCOrIFlEW+yrz6SfVwEFrU60bwmKP
VC+vDlryxOuI9U+PWbHaIN40TUpGXiyRg7Xw1VifNJXWxkZeE4eGCz+8p9MMH1Zjy8u5s5iaysfH
DW/iNT+fyRJ+jC3ObfEcjR/0qkEKt/m7a1rzSkKCp3wScjCePaY9lNXThEISofJUXJL1Xv6wBloX
qGNxIX7ZHKLap2CeTvflwkg4mQ3Va50zaYIxIvQpkatCg19Mf5SHDbAYHK13hCIZGcJ4FDPflVZT
pkjAQxuEiCfzb5n8kndtPmxX7koJjB3hzhgsS87UpP3CUmFIXGJ/BJyn4S/Lmh1mYXW4wGv53cuf
7ngNm4cVWRGRDppdle6yFcX36JMDXYWDxuSGrDC45hyL8ka0tRyvhCO0ax8RkdL/hIseXJ9bNq72
/bQqZeU4fQHgz1jeIewVUL9iCSrxTIZUtfcWoEoblXqY2jQdSfjHHEu1axwdgTYQrXVoRPwJxdF8
tyLwp7tluZbjcw2eXfuzJYn6cs2v1VcjEqalxxIbAhsj/1up9nHa2Jd4nzo17iYMT1F+EzGswG0z
sZPC/g7GWfEoa9K+y7XLI+4BJzYAoXTJkqfRb64jdWVyxrEL5lllx1H6moXHdD7Nv5Bhlkwb1kOo
+q+bZeVY5Mp4Qp9kyBTfcbun9GSmeE6NhW3yo7LjoeV4U20OCNkSKGGJj+RpM3Gqr+7Sudh6CW1k
5kX6SC2WZVxamNgB7jrdrQguf3Y2LVQJXUW/pV89JhbkysMPaQVn59EberF1/pP6tE0bp/vlcmOS
vP+J8KqmFz3XOcT7fZ+RQxyLXF33VHn4GXSlTNMqjvw+DiTblc9i6ILUibInLlgYmjO6GNUuDwAI
+DTpzaHq1rXz3mj1nTd01o+89x0nosyuEI5tX4XeBcM6r6X16aCMKJd8FPobNjdC2aAMOpSKIbUH
guwwtduZE8OkfEuLBCObJW1VRmQv/QeT/O/OtEj9s8ex6cNyYtyLWBTy3M/o243BFHR4oRaIXxLz
iA6W9ugqUj/s+p7Wxzt5qPI+NHhcoSfSdjxuvLfKtGL0NqUzHrVDRK2m1opLn/VxHz7ZXo8H4oEa
sz4o8Br9AetU5qHspWD61QoIfF7w7vrO5sj9T9kY3MzXtuSd/NgwxrNtXhSAC9NYmHu1ehMPNSui
aTF+pn0C9vVa0+XiGwLZwRzd8Dxi90Gfm+q56KZYQp4UAA+1gBhJsBkNQD2ySkhchKsdqbN5DrYi
IuA3Xw9mJkSouQ0IvQ8UX6ADp4ZpiWLO5g7Z2J237hAzto8WKOQYp+fxhXh5vRAR695oayFWJRPF
yMbkHMR/OrUwGQO4qech/WniNnHxdeV2Ui05MRNDexFeXlSgEK6uN8xre90b+dcjInLsrv92ZSQ8
SqAHTCaDpEVy7w7mZKafe8J4RB53gb/0EBWWlyS+IydMQBddqiFNWUIn9fXddLQ4zKGtZ5J3hqNs
iwd5e0u/WIDjNkzsqTK3cvwy/8YXHlIhzVWrAfCYsqOdlqPyGLBeKvyiVvkdq/VOAd9PTGHiMcGK
MyyuyFcPY9eqmDH/VY4ecCkF+Qgt1qZaxFHHwzZMbjGOp/qJeeMt//Df4Vnjfgp2wyOA4g7t57Tg
MBfSyj/Y+GH9zhZBveagPc2mgP9wJzoEHp/DNgaTND3rEZbTDDcXJ4vLJlEoOytgZHKccs/P6IJu
qB5AyLtr2w+kFRtvwtnTokFZZDB1Hl3bF4wcQlNTBzBPOqlPpbwKv9L585VS4p/jD7c/YRRIzTwC
Br2CnzDbf5iUrxAl1C6RCl1QQfhKtSk7BfCP1RKqL5qmIRIEOYpv1fvcLWhmEZvyndNXhvsz0yyz
YJuBKp06n/Qj94tjgdoSjHtBGdhCA5MTB3gO32Jy61JCidK+nVQam0CZefq9YW+gCmloOwnD4ri/
QbMa9DEH7lDydMOJpmoflw+x63WZfGNo845DVDChbRIUDcDnv3h87YbcjPOOSz+Kkr/FLg1p+Tgp
B1XXumJzSLwqfk8+mPRv65EQynQWwE/pHSDCmmAiXaS0tnHWgttMou18letCoyE9Xw4b0a2kKS72
ENWv4gaG4zMMutDVUoG4vPP22zYP3wVF3ezXUtdPRSfTAPeQUYigotXbikzsVhBfn6VHO6lepLGC
GigiGYKbp/6Duzm9aHQvtpVliztv0Y9lbKwsGIjw9BWhGbeZ7EEndJFhqizPCc/SN1K680PRfoVB
HGTRVaVt1NuyiJB+F2nytByxNk8PVNElCAj7bAGoVL46k7qm7HLsSfJyeH2ZSAdfX35qJlmCp4ja
Py088k8aefbUJ9P0Bb9/lV0j+zI49C9IzcQPXL2BWmOn8X3zrUmloeqbU0LRWrQYYoO2S1X62PiK
O2yVcC5EY8iv5fn2j89tmVfFSUybxEFF/6B1uuSkEtUbgCcvyOCvOkIZILjjkCdOqTy6YR5tf8kB
2xIRbz8mLk3JpF6P8SDViAqKMh+QNr+iTsq0/2myg5tKSIpEWHYw2e+7MwzfLSNeKkMz5YNQydkH
Jemk/tM44nSRrHIvZ1ilXD/f0RaAFOX98tsLUod8FcWFGoGKmmNfBFtLIJfnFpUpJIx5qrCXEsHI
onhQQ7+rgF203gJP/l04ZDc54+k5Yea5sQi+hiN17YZbl7SkxeEXxOOlvT5fnO6oqwkHknD9UdbH
EmjZoXtJIG5Ew9msWmYvvV+qKfuydG802gceClHfUqXtFRpLp0ldRH4u3XBWzaSu7cvVbGPvTij6
N9m4PUSPZOd9RGZsBWLLEbD/UtDCAFMVayr/oyvrA5ZQIlxBaAHul9hEdnswP3nZwhYRD/PvB9yZ
hcX34R0rM7cn7zPC9lUB1hkatvJwQslQusO9kcmbGUl+mV3AFFpqS2wUphl/o4T/uX3qUq9XWWR0
+JCH/CIVAMaZYG3UAMv959GJffVX3nQiq2pZ2PPefo+CBiH5SfH3ijbD4EjG9NUTfxq+1aUY36ij
pUCNCp38KCeH+5dpK6LjD4jEAh2/AnMSHMGIDhHfU2abDFx2mK5SBhEDhI0jpGL3oqseY/WkLw8L
tqT3Y3zoXV8ZtIkP/ofc1YmyXI0iqAyxoAnlN4Nx0n02+hyyxadK/gB1Mjjvv7mAaCoO87KbKKjG
UkcaD7VA3OST7sUIC6E4EDIYqZuBCVFh3CbFYHWkByUn0NVrRYokA6aDop+YEZhcwh72LW5GMYI0
qy65CHvFLJNrcxBf81DYQ+8JLM11dj/G1kQLJBExc8ZxfbxObU3CgzjMLY4tFZx4HLIeDVtMYYXH
52K5ezg/SPymf/4lzdTUUdcwRdmDbPKcilWEEPUMJkneBRGTZJoIIau2iNoebcjrtFyiM+GJgNRf
xWC0o3hXBxKtW0pIN16M/bPLvto1QkfB53xXMyuhD4snB/MZfDFGGRqTWEdzQUon3oCHkQDSQ0H9
PQOplJQ52TbtNknJFGkkp1GSEDSOlbY146rdv13qsEwfH3UKmDOYkJKAsefGeVXcZIBYKXrkTycP
uuS1R9TiwTWNEGNRTyfmz9zMFDcIulXfdFwtqWf3ntnOPJumDOja/AIpPouCR5g7mOh/lMFIdDBt
JEUi5rzz7ZJFHK4MWVS2NtgiZR9Pp1H526yld+0pEqqPb6m+Ze4A2lPacJa0BdIglDANjT3dFPKG
Im+Zmx22/Hs1oXXBlFMjJjZT+AJgYMqQd4oRYXTPPQio2M2v4qHWVUVBb7PdrwVpP/47+HRW4+m1
uQFn93k6GaHwLYmK7BkwU09XdFRedUSYZGL1kaaOSGcqGs2kL+ukCO/ZshBBC+cbmXHtmOaDuQbw
xZpVbS14uC5AOfWmFMqo+WYD4QqkKb5CVZSbmP8tBEL6/3y/oU91GuuRCMEpD03PZbVDafag+GEm
yGLMoTmzyXu1UiTqcnhqCVswFsomMvPDnpWOKaW9FSPyIF/Iozn6tUU6mSOqCHUucjWeewpzUnKh
KpRp1CYg+6xKyvvJpWpejNkWmhmkf5if+X3WKqoAbq4uPZNtbdfIK2EsXnqX2YEtWJgUiMsIvX1L
czxW85kPkjMXHDmQ7LABaRKu3ttxDzhJESMirmQMgGVDF9MmPXJbyaZk0NkOqiBILAiIm8NmQbz7
lHp9KNJfXTbieok1sWMlfyITr2gr0yyOEwgLIHk2iHjnYOs3Oe7wT7NsWsjAPlMV+/TRncOBWN8l
QQEktyYiiLN36SWzZUE8SXXyd/3mNRAvWG3X3tcVyzThEdx7YwINXEUfNHq0rGul6vc6HkLYsacp
Y9xqIMFhX07Ega3lsF+TIZcuIfSZ41jGJwDVRbNPkSspkRhIOPGa70qWNnoVXEsGUfkUJF1jX7uf
YaV+u9hCD3RO3eUj4ospgOh/hglulObwe8BXsB2T5KwZkobjqLaKyreJKOiKVeVW3TGsknvyz7Tg
pSVyhNsV6/MQAHBeXM/JvzWBnr5y5Gb3ROdfBUHwCt+injZHuVLmqEXQTprcuS1Oh3dfggSNNSRE
wqcjSiOorJhjs+A4cXOXH1zirs/zOpWXQPj8U/QBfIlYv7vt4NVYCZa+NaU2TwCQQ8/yXJlXzKRX
jHH01T9DQJqMSAqRXmcDOjt8D2Oh/sTb078yBfZpa9IcPKuKjrxN1PeSvL9Xld1X84wcsPpLhHJA
m0KDUbXXUH7mUZLeX1/k+I5m+AzT7/Tf6Zikwqc06UmV8wa+vq4pHGxg5iNLC2zptHNiuLVCk9Je
GOG3BSNaikZfX4SApD7Tut0g5fYakkAcg+3PVGnpRlq08PcMALYixj4bmhF6/d/aN5gKi5s5zxGB
ane8kKmQ/xttFASs9F3JfBBTnNROTK6c8Ptj0gdm7ulr36j6HL7ILKzK9MSHcZIw4WEXXSlZC5fU
cYIoIdGYxxr9WwrKeTCtW1P0B0d+v3lO8hxSeujOXym1fnjOmSdj8C4cySgihGWFHOiyc5A4ev4F
C7aUxp93eiWfKcHcNmN5Q/LUouaqPmGocOD8TTWRiyZ5W9zoqlwleeYRVloxOsCv6SPUn83rELBd
eRkwLwM7WP+uBlo4iFZ+EdsJjHbbBHDFhG32afSLvFfOKLdkwvi44JR/E46sUguY9/yYpvd2uqpP
sGC+z3Xb0rueg1bTVr6G8eK6+Klg8N8g97SEgW3fGX3tQ3ifzLKjTdSH9itv7oHg83gzHhqTh7eC
o2ug2+s3SwlMTlPQqwf/wCGHPdXPSMAeHSF2vtbXr8/a4uc+fmG4Ta0QcqQYVlrEM3AcdxG96nnQ
laVUihf0mRb7OdpQoSpSp1mKqmYED7q8OCCqgPYU3SeW3WoKDzX42aaYcDx1b98Q5xiB4AdZuRzH
WLHO2m7nlG1cLB0KjqkeYbEKvaUjgntxOUGlT96JZ8wg9kCmYQEFsf77pAbg0Yiq81WXbC2fBgMD
9qaX8DpEQMVpvQHJUWSQjdNkRABS7gh1XfWSIuBII3nya0PMD6lVsZBWfdhiJ6ftyR6KR2dsRawU
QvRczRsk1MiepBenSh4lq4TD4NqSyeFr5ZiGcvJl4m0vCieoDiNQ1YqdWv/7O1pWf7v9ovebaGZA
AlSQALQH1XfGH6hgB9CykhDS9kASjmlfya/aK9Kfs6md6vmz1WvFYmte7zTCXMq/9SRxW6nOlx/l
pMmHyLseQSUoOdEPrQ74BQjP6Eu5OgXUOjQPjt/MfRwy1l27t+08sCcEvmKtDiAA6tkOAKG7XTTB
0luVJ5XeEe5MOmDEs5IY5N/B6KHgvoXXVmgkSo/S7OlWKA0X0TzZd0qdAkAA8EW2NbTqKiUo2OKf
2I6bhT3K9umYpZhvhbAfndDcGMfp7D8Uvp4q1zljN6fDDdwW767DreZgaPntIzI4VJH7ZacQzq5E
vSssy/MTLbKJsqKEZLMxxrn13PTawOcjqPmYHX1fOVFfYwhnR9ZJ4PJztPayheAkRTEycItApKNV
tJD+/nSjOpW4La8l8SWRCQcI4RuuBLghBKbcExwCCDn4Ruzo0aA6pZoZW7eLP+Mbqa8T8mBbhd6I
ceppDJeKkTsFUblU0ooqE4v/trzXFwSIW0V+oD4YfV3hHtXQB2h42WlNtI+Diy5OoLwjCnK5X8Nn
PmJrwcCx/9MN4uldG1iXNv9qxTSl8VHfo+tuECX5s2kKT3kIKbPL6c3wp2rC7qiIGbBsPpVD1Ad2
Ot9EzWG1getXWDFA7vjCmJmryKcNuywI9nJGGfjUXq6LKmTZKBe7XlAGqtbSBJdB5JU+5c3cRqCj
XiYxG5KkSyS9T2g6pIeiENNij9+AOlLkaq3nYGBeFZY1KuCHQwrN+fpkwAzr0onKrrty1OMpjtSa
e8I1h59cah5rthFIZ6uQKrlaQZDNw+RG+/n2CcWefYTNWaPCmOfjipYYjAaIspqPh4Vwen/lEeQp
VH69lciTs/jd0J6FxwErtV69Yf4+uL73w0D+AXwJGgrla5CNOqZS6lYWDApP/c0h6trfTssIzo1q
p4ZY24RwWb5TS+nfo3yQqGm+fgvpslQY6aZcNPvKNLpp7NprGOJEFP3DH7SvQVZY1+p2wwAK1Th2
/PzuMEpVeOMAf4NMqj21WznMT8bkogtjLSLtkk9HadNuqGWYe3N1Vldv/UNGL8WFrtfmM+hSCCjO
d9vQSu8uOBENuYzANRsDQzKL8R+iHRvv29WdtjqDV4TRANzYHYstZCSiPiaddaHLFm3qjyQxxMDN
rLI341Aj83j0J6PbK4S4Vcms60ZDGWwSZT+81oELv0qzxhwYHhS76krWeJ9gvilsk0AYayEohAP/
RV+MpEaDg45Bg3ObbIINtlfniGYuinekyrZ+ebMkDgSyblbyekQz5SUUq9WgWv5t1lekDKEs5/na
WruXgz21DAeG4fx37eEzAIKMXkgbTmav3+jh6zAzrsRwxR1Bmsdq0+uuKqjA4PPfWr8SGotnkPzn
XDNernMD9zesE0m4cuKrNK/Sd4ADow7j0bGjIiZGwCUoI+wOkD9s9SoFU5nPftaoGDAqqS35Euid
r6/JzTEk4Cub2vzrTait5oj0H1KRxabDD/coMZQTXSGSwrTG6YsQUE4NoCbXQ0wFmbA9h67oKoXG
Nrey13NUFxe+W7snHqvD+wRRPXrMO4TR+hG/4ZSmIJoOPgsWMQus+nA8HWgREA71h+xdqzPwMF1J
Qk8Yp+FCnmnfn0HFDe36w4VpMNdTaZWUsSDZVZhk6UZGFkLtgHH3mUpAjy807ddwyVmn47v2QJvo
9DgBpE2kUpHZU+nNPM7R3C/vewXYlAt7Qze9TbHejZq3xhwgi7Wbd2I8eVbECwar+O3tr1D3dbJ0
saCL7qDI/121sOvcGfWNtpM0gMtbfiUSWLI4nhkvGmVf2oYIniJaNkrgF+P+B3WHhQbuW6c9l20m
zgKFwGKoEzkzNE4Ug17EpGsEpmDlTFLDEyYIEcFyshAxqJylu1rbCQXSQGJ5BuhPIkh8SqolPE75
YNn8AxUR6I7WERJqBgYW/Y/7Iv6vfB3EmVWy3lteXlEguu+jRhfZ2zMkD3rXZamz/T8pVjXsS/Y7
NKvNDUphy1O5/l2RpnTbA6BQXKqmXIW5rqoNyfQ/OUCAw3/k1r4W3hvmYwskh4HFWIUCnUR70kC6
U1sIf833HBfKgvB9e0cLeaWHzkeWs5yDsgdREdx/zx99heF8TPlSGLMiW1onaKQpOfwTUvZYqOAY
Wlc5wT8AZTFFwoWQfCnczwMwOZZFqmguXeKl+kGpt+CarfOVGKbfTtuTXXcg16jc4ZkT1pg4Fo1d
D39+X1eyC0DDvFv92x4UWa2v5lrV9zOHkPphDklSfV5+7J/px0eOu3+33OjTycg2iOeWxRWD89Pw
9pQb7hSxEoshevBgCq0UJArZRX0rK/pB7wSj39UIzaI9tiyyl3b+4b7t5a15q+ybulGYPAUbA0HK
zXqZubowpBRXQ5oWEOnDlM8tQzBcXevOppI4+EcE1d/IwTWDlguPeFDL3fUGnYzL7ffjok/0g3Is
xQXRu6pCsLaHy+RD6ycwodqwqPPGT9WOXdOUjruDZzCY6pkksK8+WUnvBXQmavvr/yzsy+WjUjNT
awuCYw3zyrxWbWOuDTbngPKbjSwFXKxMpthzcMRNHt8CJMTmGEO29SIT6hnCcYF+dLkLIYUh20FG
eeKMGhVE2sOdewuNw+vx2IBeS1hSIHntOfeanXj2BC3ngHtgp39prg3EAMWka8dyApNVCmCl1B1v
fxNMf1j6JPpMAqwjl71mGK99vfAdWPwuHmN9gjvU00DTy3ly5/2JTvTxwD5hKN8xX/GQHjfOO7zX
VUwPAOfBFuT5n6MKPOmaKcQ5/E1tSbFXp3sFHUpo8BIeQp9KPz/BW7MR5DBnRBgGQxwHU52St+cZ
N8k68g1v4zw41vkXWJ+oHYS3p1iykbJYYdPBffzJkNnW5ZO6iRAJTWjgYIEJiaPVRNlYqiQj/hto
OYOjS3YjFhIFSHrNcok6NY3VSsspnQ+W4rFX+JHCRfzrLDS86/D0NZadbZia+idyHXR0l2CrQbUk
j36VB4TAEygyZKi5+sfFx0GWxjV6kGIeykw8SLxk2qUc7R/R89FYQZ5C2YCM/pqePZKRMp9UUUmF
qHjlw9mtjIl5sPde/dRKQAlA4Y3DdmgQYG6k6O7LW4vIqFATQzDtRooHZ5/oWT4U31H2b7F5JfBU
f4KUT1O4wBxVlovRFF1Vd5ODHE3fGkHni0838jheGb8mJo1qIm6eUefbCmDbyWT3cpkP8ikBa+Nz
707ZtpnBX48+bgwtukOShW+AobRgUk/ZElQ5Dm7x+LThyfn1pCSWBtMKZK3mCphtcxwL7nl6tGy8
ptYWov2r8Al8jSaPT2tP3oAHD80iV5N/RRT096leNaykZ9sqAJFLehNLvovbucI+e2l7yiHIc15q
QcMzAhVkM1Mik1m8CWFSJOzLWX3ivhwlnCkydQPTy7ZOY1Y+cW1voOcZXTuth5qPUJoHHhuRbyeg
mu/u8IQQJ9YY9caXi8vxmYNSN4mhcZuPKEgdR3yz3pMF0sjI3/3T30OR7S1rpwsa49QljkyC0/f0
8VBymTYOKvq2VB4PC4MFu6IVrXm/YHOfZqW7TGEzY+BzRFRD10TTZj81rMvefmEj/TpVpEXTR68j
o2t73HXe2reu6WsW/kTEWXSwAqtcHYhvEAY02glppydT+kxHb35jtukgHWJKdtVPe1FJUqfEwqb7
uQsXi/nRDileMjLYPacU8qnaH8Qn46w7LvfPj8B4CkHlzyFREuYwhMMmG3qhAe4MHB44BJgrkKgI
/lUIvE9f6nArZB4Us7YMHPA7kBJ+dRhIlB09/KIQOY5SJE4aa5qBaXQshnePbslBEF/+3mYC4F5A
q/IMcqjVSuzqhfukImqgTcDVD9qK81FtSiCYmIjTrPUeTCq4/FNt8R/jvNiarBRMFr34GQu65V/e
1urkuIkQuUSDL655iM6dKNpKDDGmqqUZCAxz6sftxhPsVu9j4JmiAQJPR+a/RzVEf/cqH7NYyeHb
P2ZUPfDjvi8TT2ln9sVXYb9wIUD3ZJHYjBoD1n98vux9sDtNd1GQE/KE8kJRMbXoJ1H4OZGjIE0E
p4udI5z+W1iXhlJLbwyT3YvyoQ9wBPOt2iTv59jRKNEmSLyxHIznCXjvu6xhr9/LLQEPFI+vHT4D
u7z/ioCqit5T5YtjHXHFejDwOaoDt897WIzkh7tyTXB5W8TIJWVBadqG6kIGdZw4dx+l4P3+2xft
2HfYrWineMNk8UbngYtCyQGV+KooGO/VsYw/6gBjEexsmXtf6mVWst7GNkemGte6gj24Ht394RWk
eOxA1kT0VULQk090WUtNbAwP9fuimVpV0GasiN4TwHhfUrWG+i4naAeD4Yxj3JNBLlw1j0LtwlAm
jfbTn2t9O9rcavrKrfJescWMD0OYMfZ+zk1nzeQ1KmEJllDEoyKSzdH3AYrUDr802RiIhiZds6OR
jptva9YkroLnww28bhmIhIchGvbLmXH/1wNjm2fz9ahhDsUm+L+i7caGSHqHhV9o5TlAbt9Yx1te
HjwGSkuF3kK+zKXmjuDWUWc5723VWjY/uSrQxqGyIxeToSwJNVTU5nhd2tTWp6g0/7Vh8Nj+k9Rp
kYx5Qw3Ng37+6zvajB5/5ohsN4zxZJw4J6EQb8KIzgiWb6Z8GSDshgt9RUAR/H44PkxjsyfNeHKI
l6BfGGW9cWHyoJ9gJet/crmvK0NzUak7XXtYVW7PqMPzdb5U7l66D646lIrbEvldkPE/3gQEcwc1
YuhVWkv8A/ESWbxVYAe/PwIC1ddUsxgPBkwcUcIk3agskHFTsuisJJS7oFsM2LQgWYYWkql6rVzI
ND8whah4fR6Ke6zB/kNSdQCKD1b+dpFnZOa8sO/EXSI7M49en1I1Ga+AT8ZNxIPPjF+K2nROEgFa
0RZvf9vnozKrcYK0h3CnsQ8y+NfeTY6Xrtx0oL63HHRSxV+06CgclHwDXVEqIJNwDvo9VEWJUQgH
EKdwQlMZipRMcU8+hgEtq6ed/JmsMXW1iA9Qjr55NfT35TR80Ou3/a3dkn2yhnGoB9LHhhhKnyYb
lBVAZa7VY3tnr1YedI8TQm1FXJWA16/kDYDfeJRU1Ae07lree2N677UY0Zhq9gjyoij62kQJaHJC
NC7cYYdiH+26kjpVFl5cEIksweaBN6Ce2rivxgGPm3w3//3nNNq/HddEniuc8Kp2HRFHU/t6i5JV
YsP2dD5BYiLhe4Ozc1cddK44BN0P5IcfQMt9kJuYdjYyUlfGFo0ot73PP6Qgc0fKzs3IvMkAYP3P
wnv11emn7qjLYCejnkp5TufCcq9NbdDetXtQDloJ82PJkmD3zkY7tBKirXltdlMc3zbmw/+DTdtB
nIx87WallNvcGAs17OPov+6ocOSTLOnhGPtsccQNRddBJjUTozXiHTOjMNCXTcBgZqbZwJZCaivY
09kvXsHQSs6sT8bimnYNG7swmMAjszRGNDudZUYXoE/D99Shf7y/Ygg60dJtDz8M88f+O+jj8bGN
8uSK9lxefJlKThM9UWXmbBqZnXeaWA9acOXfrGsFiG2VL8YDuAilyp1DC/Lb2Yb9tepS3bfHszGF
RsU6U/ICq2yaMWRam2AVx2z949aWnnrFaNe864zbP/HZFbhp168edHOoUxzmil6o9U/wkvpkI3cL
jOAgriaoV7rkKZ/zhuiudLoLkRSrCHnPunhgHSZ4/klWpvEQ/VTAeEECDLBRRdZtOc7eNIOHrpqo
s5ojDqzl/asF9+dcYIcDMLe/H94sKsl7Pz2wAeuTqfqVOLck5badKj6qp++lZrca5dX5PAECyJ7o
jrjYGkk6PJfgvlUPFNFpVfSxeZbXk3a/gNl7xC5kYs0rihl0gldd4ny3CAZtIK62wvhx2gqQ2iwv
0837UM3NePOL5JJ0D1H8PvXQhUdrk0Eccw3Gi8Ni4rBXgppxzi7fifHBZqyjwo5IJVJveNiDpKWo
DHl42qIeR3X7s/Noe0v3xsqfvR7GM7mVLV6tEJ1yhYokYh1HrDf6DAFY6eockH2Rew1IO7/TDEaP
jRS0ZwEooAheLvNX13AUD7Z3iCsnLfn4xPlPAhLvV+vOd0x4Or6pseQPWNcFjntS9tQ/mKdbTqoB
qYFUU/LB1a5wayB8KwBEfaIZMVP3i7FXRqDdt3YdL2kAIxuTWpEFjpfBztsWSVNEZDERTlCatDrj
d1CzGPs8nm2sixTCQCBX6yn48XvV/AxUiGdr0iwtsTEj0bF7++aCNNdIUY9oYKeujv2zKyxk/4uc
Gnc6NWrT6DILY7zSvjBNeCwMyLVLBAVcCFUF09KlsLC5kwaOtqZo0rr/1OLL4jlzmFdkJcWjOI7F
vsxdt08kaQ2/77pI1pxK6DtRQjTc7ni7WUAktFEeaU4Jnkv8/VVxmtYaNCvlicmLaWZciv+1nEWH
kVuha7wsrTr7RLxYD4rdd2FgJ5T3ZoU7E++DLcv7RZ+2MiDFnuRmPnH6qTI4lcVSOMtLLlckpI/Y
MIDt5POINr6AAyplDOFVgosZGLPoK0fawGUT5f7zWsZoYh4fo4cCLJjY1HBu/cOgcXtaY5zCAmn2
57fHBdHHjZpJV2e2qU+AQoMiEEs3ZXZc7g4zDdtJFUsxzGu4hfGgiq3yed+T16QBjSkqe8LrcG3f
CzvQxrZv0JchVRMdYwwWgqeifksMyBvHcbCv9iP16iMhl2SgG/3hZQi993THJr+bCQUBRH7d4R9D
/n4EQ6Bwct7CyAIgKFgoJpKBk+xtjcrsQ8xtjJ+1N/ZTNqsxOkb80WdeIQ9r/6aOH15OK3qu6qox
TW0UDbM9oLG0fA9GjWjl0iTtwJZPaRvA4b7wT432wy7Pio+6R/yyoF7JmRTqqvOmFsHrY8ptm0qQ
AfPNRh9/ZcB85sLYHaeODWpCizf9iuzRRkMH0ToSincAAcPl/Z5AEir7FuzreUnuf1EccNyvBdAy
oFT9+BG6bO8FoPOljoZMRn7NLb3rj+H5fUUaeWVmySZdISK/jwSI3vPO9eILem2faWphYqViLjaT
W1KSWvKee+jvHA105iNM3OCLcAodfVEW9xSzpywkPbOBssl4gY+uyZwXn9NNEenDRIrZU0DXUbrD
/frI2/mXufH6YVbEsnsEemEegvQLMpuLSG9rsv3mT+Se8bJb7toogbl7mtp53+pBKvVvvq4unP53
EFHJm1U8Yh2QXEKB+Uv0bdnMJ28sUgA0Bf2wCCTQenN4efyTJIpvZg1OuJgEGB8eE+LnQzc9VHLn
rtgsyJ0H8PXTQjO/R52aPVND7oO0I4eI33PC31gfm2PNkFqdueDzviU78ipI/Lox9IOVUl8ClW98
1rFOSfzfgsn34I7xCc0Vbfxh+GS+jmCpvtXV54rkqomp2oQomoKEYWQkNpTOBYms03MXbUB1ZZyh
dJ7SrbWF8dkb2h5C+5Oqqknt4SnXHejLW701CVfKBHms11eiQAHhaCqraOaBE+jG8k8HSOSUxvcz
5vvkWQ0K/CWAQsEwQAP81iU3xUPmhMqrl3DO+iV5XMEIAFcfFDuZZqFCd+/KdUbOn/jVKAgS0FXP
RO6HuYpciSMigMDHkY9dGuzYjVUA7kbbviJczS2XsZSKxhvkOXbX0qc6unIr8DISJqSo3SeeW93+
f0AMaqdCO5iMsruaCPkNz2bwr2m6rU/gxF5NKkDHXbn5a2xE5SYyp/egtTEu5s3dEs0CbWF9mlJh
lm6d2fq+nw2ywWg1GvPduMYY8bAe3/lcaSNi1HdGWVwDlu7EgMjsK2PUrhGAhIevrC+gQsamZekz
/AT8GxQ/S8cZRX6KBX/n82bCDTBVFehpShKgiSDNWYBVaP4JDh9RKBvW7EqKXXw+aY4mG5rCejbw
oB6Yqpf7iTOQelMNpggnc1dJIjv9dGz+0Bz4CtbCu5A3h0imnAPjYCUCVVkbCAXTW21yhynHeiHG
D7fv1pKcowARYNxzfAZzO/hGY2PgmxFthlF+2+93iPYlnMORt6+P7otNvzY1ZeqtiOHW/suROrlL
PCvr6B24xeL3oGI/Eu5I0VJho6x/36ko4qSkCmmK+r2oqWZOUcNFe/oHiin79QgCA0BtkjZsXX4K
R9C7bMtk5zdDD9ik+HLmtbrc4ZM2ACh/NzTfOShlzpA/VHKtqB2mxHMTk9yZcgfG2oRRqLQTN+IG
I5zF4PuTyRAe3KTVvKAIWhg4BkC60fO3y8Ts4pS43r9Mrq9si1XcRkyGCuBZUAU0Avj1iFfe/He/
PqtOGNlRmqpYxP3aU1/j0EiwPfSMxFtDEORurZSm6pAWS+V2cYd+KRHFrraEsenaCRGwSiySn4uF
ErgHLvg81MuOv2EVSqUnUM6BLQ+vx1iF/+GDE/4SdnEkbBH0md2v8iURuUYHQ2qtZzOMHhEgL0bO
kUbLfbvjvmxp6103Dp1ZjrdQdvSu58o7KkmDmK2TNnJBXHX/+kKmqXIewD25OBPbQiUMri+kkrUg
jTdoszPFI1OfnN+rUdqWTgN9LCPdZemhMv6ZtGnML+pTQi82BBTTLe5ixaDO6Vn7qTvCAMx98YCB
2aBNuJwsYyfOWaLpyfJIpoEBI/ONKT64M2Wz5BxrI587E4L6oDg9JyFSDeiYicccRdr6sRzmraR7
x3VO+DO5iyH5oluOxLI9laSKOzHQQC2ucE0ULh95+swl9Yi3T8INmE9DxuJshrozZcmAd2quFa0X
5aOYZry5/4HFaIKGbioMJlHUL+3si0Yp9R+zQEQX9TkMcNg6dkrwF8XZj5W0ZBBD+3nNsBgnEZl5
3CeIBv7cwOFNSBmeJHJ75crDzaTCAQSX/cZQliJFBuplRG4KytQZXK8nz42sBbCbal1LQPtbxZ1t
gANCEHxbzWhoXPLo9eQe9qBFKkyCsRLEeWp93Lb//IiZJXYezS5o8OJAGSDckiOI97qSGM7aTea1
L8qJqYu7Zi+4Tj36d9PmV00nhKfmdR39Aq1V1T1m0UT6gpDrM/b8aJ7d8uSLdgXPpQYs6jLpU1FI
6yxmdBy20U2WlxYoNEr3VIfZS30Stbup5c4ZIdlqyhqMcM8qO6+M8lp5gm9Ki2VxKc+S70ZCu48P
hCY1nm3Yvf7uKn6D6P8QqO4ddWEAMBL1g2hEIVIIokYp9lBmUffBSCp4z1vu99fo6JsRxPIHHkNV
dgQcOflEL9xq8M+oCworgbASWn5QBccqS7aioG9TvQP48ZKlh3lrCMkJ3zq5JH1FPgO6xae+mfwl
/92SyT/6hG6FckkhHIso1H27p6iUMz1y29BPvf5bUXBHNFKWSGdpjlr1tDBd7FxRBMHCEWo51Lua
fq+3fEkA3u1Hxf48XX6XbUMxGaeJGRS+JtVoVnBN2RR04jX4PIkIQjgz54ZlFxAz3tDgIal3o+yn
hj1NRBi9E7AC/WXneoPY+UJt1b+VJc45NrmC2J/oO/4gs1qTWv7E8BYPHSoNZha1LX5WFvHFvRC8
jA8KewzsuJdJDCvvBMUDbNODarVIQ98A6rOUIrWqDNM9DK7okC9NMyOEaiBjyquQM+23K4hYvakr
cmYvQHT+NFAqlLiJX9kwnX4qsuzgnHm5m5NTKqnn9ccmHhJM04JSaleVtIu04OryrdazP3ns71MX
N/kqnqU9ZhTTH43++m7rKGMqyRCpHi9QHUu7cTbW5RDN4CcwYoP9PF7wZ1Y6hPk5Su3Jy+PXaYmE
uc8Daa2EqsNqrTdHOClDRtDGltXvkGSoYalvuhE9xAcE9AeZ9JCZ9djRfuFQenwV8kT7uGE5ClA7
bd7LT4vXcv3bX+xNH5ahwAWN94VWXDoOF94+JAeZYh6F1tMu8jsjjSVVMRdixe5hKf9UyiTCqx4D
2MXLnuaiCfHLNfw5FJ3I36zOb1DtuuaZA0bvUPnOL11IN2TXr8OOKF5euuqppL/tijbivpAhlPy+
r+A/DzztA4D+QfVUDYwT8miAQy7q9G7RGCuhRNWrHxUvGz2KCrLPr7/jHMaeri6A6XfFFeJUBrGP
LDgsQ6Nsro/Gr+XANeFaYmBMvEVe0l2V+3z+1pMH29jgHM/H4f4pDmq1grFRmHw9Vj1hWTQg93Ij
SSDOcfH1Xyy+8qDy9poLK1TK7ZCsUDhnW9i3oktI3T3792h10Z214rrNgHv50glofOrF70jtFKw7
pi9dFwP1q/zz7Q1xr6t5IO2GphjWlrHLACSVwfUFdT6aRglxRyS/F67inqI6YxYC47JJRLIfs1Cy
zUFV+oSJxQwEq+NwNkrOtYIPuKjOq5DnImBmnWboyRLbI0MUpjsd5J+7zen1tUExETyVuFZur7uQ
hLRd1NsaJJCKe4eilRC5lVyGxH8Q/6RE+P8St1Pb54hB9LVm2pIg+Ec46HZfV7vWHerrFIobuB3K
JcWIpyFVDxZAPo48Vv2/oQkwgjaztp3lRL56u41J3xUPYyIio7S4BQiczaE21iII3SXaBR92jMEU
nmEVlPamd3RD1qhFQXm0IdfiBqoYuxwOwPAE0QOkalAgNLylz83k9B9hNazn5KvkHmBen462x3dm
ft5BsBoBeRGIwIadLENlHnVw/bDDTcXnTVouqwUj9CfoAkzo8Uv/14z900LCpx8Rggmx58mX2PPt
+5x2bHrs+kIQQ6zhE1rolDe/tdcT2g91TzZ2plkDYroRqeK0RV2YBcLBuDjtAQtdMmabiRK3XSkW
oTckERl1u833aWi6DSxDq3dpnLhageZBe17piyGUoLtIhWZne3kSNNDGDLt1bHa5XLcVignA5TSr
NT6N0kxNAWuxDRJDlMEnixpYAwfNACqHh0rvNWWiWE58b4D2KQY8FFe1lONBP5oA3hBKM8MJGEvu
YshlWtOQ61Ni2YiV4Sj1TwVVZxq8gs53lmvyChPUSndyRESEzd2DVdpHrZwCqL/Wmaq0SbvogVxa
+hzkkbZp/42pI8NMV0wU+sT3lWlSDflrbSVRGADaMRXs8gdM9+MGBif83LFk+3hnDQT67B6U1NED
Lg88FeH+rwH5IpjLdeSCtjtz6poSCsRr/PIY/ga1OKu3uRPNnw++cpOlKCjv5sq9c68ZALmVv9JZ
nUwE3hbYoYvtHAwHx1qQeumTssEAwWEDwiqlZfIUrrumiuUXs9tUzqFRD612qoJEdcGPidFnsr5V
73nEKYXTNlXWm7Vs0dEnAY+tjxa1NqEJsiCSd4j+d5FRYmOIYq6+Qa/ASl5D/RNKlBFfEbikDJ0U
uOWpL06D/wbUNtC8kK+DYWAGa38IvXQ8uzA8TSTghSedbmOcprdunepcBH5wL2xv092vkYUiDqN2
y5MZRZUQb4QAVuDsO0Zo/TWxy2pxj6b60eM+FCnRsZAZLDPGlS0jjHU9w/uNx8W7N1hwfrpm0Dtt
JBad0Eff2AtOlMRELjTpnx/Zw/Q8kgIu0qjn108B9r0+3Lyee5Ss5S6YyUm1jC0kOYBbgz7vwZjd
gpYIhzZUwpAfnEJyYebQqjPG8Kvzg0R9XCIL+QiLhxJS8rm/IJfMbIdAFFJuG+1SWYJqveaZFMN7
XpWrqJv4IImlbCxvg3VhMREzd3MCo5vP7YZL1Ed9q9sWW+B0OzQr321yvvmAsX8DZR1ssv4jAZVh
sM9STgoJZ8G8BsrGWiCHHVOLy2YAciCF1fdO79OqK6aHT2FABywIBq39lI3JvTs5jJ33pABdKbzS
4e5C+QEgQ8DCxWT6J1F8C3Ew91kcIdg2KKCxa8hn9ttMCoYWEMhpvWpzF/WwaxebMg5SFKRvyvzD
jRZ1ceqKVBoU93qNtXD+Fvpd5BIV+nc/xrPtE8e7nXiqYfvFhcPoX8EZcyH1jbqYANsf7ZTWBw/y
hLwptiYPwsCPV3eX+4e0IyTY6e3C2Z7WdaoFO/wAH+iF1nT2ZP+tiBLpcUKJ9yrEDvcusasRhKOB
uLyO8TSmDM/KGgNgcG2dlGL+aHqMhgY1+cwBmkPAGzF7pkenhtmMacLhXglFBR4a0kn0Z1SjP7xH
VyR/D8TZERvGan+ejANS6rOIM45bOVh4kMWtjBeigWdfk261MW37xa89LIUWKSNG0M5e9ksS3dN0
qR9uBkTOG+nwsDQfyXgexGt8VZ91nxVGN/WkemGSvgBb58v1Hp5w6CKtDShPI8z8fhOhGAUTnoE7
ihXz3fceSDbqWhJEtakFO2aFOH4ISZm/QF/xomvmRilGJk39A9epCIhCG/Neyld9XB2jC5qQKypf
btL+46VGjj6GSm0MV+cz/RgGo88RUULlQtr3xVt1XsHBnV8tPdT5Nyq3YbGHxbOlMtJCNHY2TsGW
PIleLpRlOi/AXAAREShSaGjuYG5uLJDwJlP6Tv9PAFtO7THKw4oxrOO93hbaXP1ALbb5OxfCOBXt
sN30ES9s26RSIiIzpfWRUw/U2n6Fp2ij2QFgklUE7+wgOPQ4WILAuq7A2k26JWSI3L7MObwm2ptO
Co8nM9LO4ulhKmXy8s2vz2xBfYnln7gDA6WocvW5MEZjXKYSRJNDevQdS9lengmouhgcdN2o/6PM
7bBdvXuaPhAsUMCgRBysD9NNKIfjrAAyU06qJF5KkBZFvBGa4Xxdfb85/9C+f1JlFg8KtI4KdRcU
+vDduoiRSw42r43MM95hi3kc/vhdj53TxtEh0kq6buzoIy2+YJTe3wyHTz9TYc2UmO+NC/A0S1+g
do06FntgWZLtE+ghPbsVbBPu/vX2+FhJoMLu/dv4LpmC10Bi7wgT+7NXAMIO63fBasAO6MUdg0Q2
9gKNClIjomDiebDYcR9US3ssVNlPp+R+XaQLoJZUL28BlscEQnwXSzfnM1FF2cYFyCDXdf0LO3BC
afA95uI7eW9YPCmuXMw93J/24l1Eng6VXAitXuMibdfEnMcQrmpPjZQ+4ucsiPIU3U2T50MRiBo/
knxv+a+r/NSR4ipZwEQoiTda+8dKzaXL79qfQo58J0n04oRJ0F1Vty0YHuDw9706rjq483A63IR1
xQK8CK3lGkuMSuVh12Ge8LoyGkEt1rL7E79OfizFNgZDc02ngUK7JsV/Qtcgx4cqoVyp8kStXfqu
3RxQNUNzrVGnoArmku719UrU/vXoOBMbwIzeIfQWax+NuoIhQkSQ+1c4vVbB9FCKeXqMunJXpEHl
6lENdW3jGECLu8X3rvXeSHDLyP4qiFmSErXeBMY5CutDQKFfFi/ZJXZ4sZB7dtKaacAD1yCaBBID
r0cYczhsvVMpGBFA97z54RQoEKOTl5ME5sah5xwJIiLXIg+EX03eupnrRh+5pRXvh7hin8vvTngx
9nxGvBjAFQOBMCcKglrIblGVmaRsdAUwamRLCAD48xyWhuO6x2HC1IxxsV1EHxJ07aoujRDJEvcp
JpdkwcBbmiqjOQGPqGTy9WS59AqnDOtv52nxfhg8y0+Hu7GjEn4WLZ7HdDGlJ5DjXVQ2LPa0J01g
1j/ubsfJBKaodnBw1f5lrRSmNC++aTZ66jF1pn2ZGtAu5Ask+hjnsupqMjA92Mw/sl6C5ZriJT0h
kULGWdjVaGZ/ibCjX1Ku4X5+V1qcmLNn55/T8I8UQgpcC1bIpE451JjztlaCp4Erc73BngoQo6d/
z9Ny2Gb7U6c/p/icIyLTLRjoB9tsPhjzSPJUPSzT10kZl3G27yAPmDUhL7eqUrGvVMo0F/yH6Glc
sYbZnSf19WYfsBBCYr7kFgLnsooHiOLSlYZDZQKXP5/eGtH0Kg4+k3cDfzhGUJ14mz6vNX7QSeAD
nMet2ANiDyozCXX6aYFAjOf0rFyijcqo1KQtY6hmx+FbfSbK86OahpleGmV/9bAW+Rkyo/qT7wG+
23EBP3npjc58Zw+/QJOiCNzV3flQvn07qdUuOdqpHv18sFPdeCRlpximHTpwHnEELFx+9/Z+nhr7
G5x6Hpbn/uSK0CpUsWD/X1Glya9Im+rFFi6sa4kGOcI9Oy/iALQsSzm8BM+BqIye8LkO6rG0GHym
L2QZh6TDS+OVsounq3KvuZo0GPc+KfUpEGTZjklMgaVtAqsPkpSvIdWR6nPqBvtLGND3634a2d7d
SGRzxUxMjk4CDBjRFj5oHtwdm6RIkr6n5CZvdfIgciJajuuqgJV5RWXpbp4eIE3yFZsEnlxj9KWk
xfPOA1jSe09RT/zSjCXRn1uMH9KD+ZJSAbC/OZx4ln7vo//oroHV3To/Mqivejq5KL16iJc5XIyp
R/iYUV+5TwnG4F+VsHGsgEuK/zSz5lgStntcF8U6xRaa2znWklE8yfibK8gXHM5jWKhN6cc1ZTq2
8bJGTA4123C+D8GAchjumAIX9D13H6j8chRjnNedMLZbJj2oIC+l6nOQ6uvbUDSkU9OhCr/gTXC1
Lbz7PgFb/g5E5kb+QfxBsxw+Scva/jMD11FvrzjsP3MEkIj9+XKP5/cSN4lLrdxAqiJ15otU7QMk
GwKg2oQmcYh2zoyuaP29RA8O7jkMMS4ktD8nsO0NcZQvssuAyCJFML7AgR3Irrnm9D3Ik7YtFT//
n51nwnsb9tNkCkN0MeZU7daIDsiJG308XydXwCODSpCLoepzietfaHs1MilPiRxLvZJLDgUalfJ8
3MbGIF4iUiAIaqZZuQKk8KJeahBrjzbaQoUrB8+9uoYeWioehYaTz29W/9BUeRUoghu945j8y1ia
E3hQnfz3LWbM3mfeXv72FTZpYENOAhi40a7HyI0fNrFowNQHEhqZs8aN757EYM73/pNjxheZ+Y3u
nqMJ5cbyMATjZY3oTvAzaca7bmaESGfD10+EOHoZ/ZEoql1yNZv0zG7q8B8mzm7qp3A3jvE7t9eG
5FxHn4HvRHqM2/Z90tW3VxlJVv1hkBm8nImvAaYtrAxdTEGfFb0PTsPnBmtYM8TLO2WHzbdSr4s3
UtgWhBlp8QsNx6u02ulVzQf/zlaIZSJ5TcOSWaD5V+QvH6WzoZBPMlj1jMxeHNRyHGVCvOv33d00
xpSjIwiw5FRy5fqOfdsdou8262/4glLdfGEVDphyremNQ1Koi4G9dRnSq3uAjifzRVUj1L0tYqUA
K++OaC6vyG439qsCKk8mo7ZSkVU014R54NaL6i1+CVelUowpMdaQD+0mdx1jV16i9tWPw/Tdzsee
MAY/coT+HKEOk/qEJsdc17QnNZ5bMvAaqbIpmhrsf+CG+HIeQftv6g76wWFxIQ1QJ5p69+HYiHqv
rNCUdajvTRch6019Ov+Jn13BQKSbgXNTVEscM6ZvNmMfM8CMPUuO3vVLlvzrTYQ2tiflhObDStoB
ccUrFVavzF32lxPilkBRaMSxIXnkMS4RIEzLbBHTxnjSiXlmFFlWk15jaAql90RKv8ATIUfY2pBJ
Dwz5Y+aJtYTUewyk2j4bB+HlU0DV9qPFM54RgyZjUgMux+1QOsJH5fkorqUh15cw2sPA+9E9TA23
SdzC2evK3GDS3kiVhM88V+ZsTx5+AC84fXkq95vzXQnZcird1nUzOC8h1gP+VDUYL77zcwvMej7K
60POVam58ZZs12jiDIk8zrWDe2edATeGvAwaplPQt0UgMGZMwoxrSrI1VbLBkS4ModFKpyYyiJEe
SXExCypRECLTBGMHR774Cgc8vxDId/jQaE2WYlIw1XItFeR4iqKtMgI2vrMpXlu/4DeWWdWyi7P3
gnLYE+r9oJStvafnsqrJtPtWhCTcNXHuZio3eryGqjeqAYxVsNwUQwwXlDi1xorkjmarpZUIVg6x
aURhvpKFq13WPSflWLsYdyOI4SkwI8QeS44L80coqbFxnTF61cFpC7PBw/yVBLqhW4Ir2yj9yMYA
rSIiIe7B7X2bzeoEfIPD6SGYspBgZ5lrRVBYMQGVcLTfE8XpqLzKLtizoo30hHIh5uZ8TzEDTHrp
96dToQsSOhJ+MXcynR/lNTzOmu5nYSNbaXQixaokrSRjmWp6QeRkc8VmyqW9NrVs8vKDVEzDmDU8
0sHBl3lOqxn00Hv31knkzfT3whzSyZzhmce4gzbDveyrZzctvW+dxkXUTpaj7DKkfhRUuZCVWP/h
FKxLFSBIEGQxSizGNp2n9UvZfpmBMASYT3yHkGRd42pu/4iv3MiDoCyU71PUGFd54EOTm4jS2jx+
M0KckkcWMI8neYfzY9ckvK8NtGofEGC48ODtHfPiNlYK6YyxAvsQPQ5QEDo6jhFOxY2pg+JAXx19
RwZYLKoA22I7DEI4RtH3QG++OUDXevxo5JapRwq387ChagNrbEjPSeT5UGk6WGPff/Yu/UAt5r2K
pGOJdWu8UuqazMOGjjiqhsOFxHS3RCMgpG3gnKRV2E9OoWEp7AWjRNB07hNd95zIEukouxXaLZz8
B4Ct8o9rZJOYzsNKgv9NJ8h+oeA+/plNgcBlDDp71qQXezMp+exNpyKltrartTbFifsEbknII1bJ
UCm9dqldCznpvwEq1F4Auxn7DioAFtJ/sAKHOzTdo6VRkgYbjxU+O7dgOUzi0wJCgrJ7yF3bGeIw
Zw0lROdExxJ0NnsOWzkyHi4lD+O7glfu3Uxms0q7nHQDY6F4u0qHzCdbbxZz6dLcwzXLFAaPl6pR
v4/mjLNeUixr6Q+naD9CW0QWJDS9bbpnfTO2ati6TljRvFJb+xCEuMjKyjcovhCoYMiaXFFhN/Jx
ArUMPVxnZdO9YU+FB6gzIYAvCl09RHoCMBCZpzUgKsjBgH5BC6DiKv8Uep1Btl73aVR8rAuYFe+x
8l3JN5ENCz5S0vxBgjCpkcy22tMscNrwSq+BhXOuB/zxgyXqmv2XvzjtVnRVP1EyJ69T+g4IkwSs
3oA2NARoBQmMrJiFUXDwnJlJ2ob5gCuhMN+XnwhaeIr8qVut49a7/1ilJ0fcVyKwye0yD+QE8XNw
zt9DBRgsdy9NdBbS482EqlhZ8RqbnuNrgEaUS9pfoMXrs3qoasRIfx5bseZITNhqCn48ENBgKklr
aRRE0jLzbcWqWjXiAH8U+jIVLtLVcdZiodYNh0HJ0kAbxeflJzk0Ro7m+zUAeY+GMI9Xf3EbhvY7
wDjXMAuStSVQTcq89NanM8+iEjIYLIEDrS1uFBCNKQIDT24fPfWCJ9IJc0OyaSnHyNheG3BEKK84
nxJnL3yfg8itfdPH5AKtusioshOrcx15UuNgN5XMr3N6U4damJUsUHb1YFBEQVdem50PQGdhWSlI
A7V4pbmtwZFM/XjtuMpGOgtywEbl8CGUKxBQhsGb6dmePQQbfcMsBmx4mpqxxd72KOdpUojhk62c
Yu1UvZAVarNdeNfLz1zG2l9wL71iXGSmMUaMGkZyLZuiUJ0nCTFwwKqb3K0csLZyx4i9nJ13JHt5
mcB70rnBZiFpETHCfbbjgYQztgcqnHt7AmbhM9PQdh2rVwGI7KMMVIXX0yzEKDAdqXntxM3gzKnE
SguTnsmQzsfqNZNauVI8Afvx+6Zlc5ZaQZf5mERY72V7aryZLuP6dwK7Hj/N11BWYr/YYpAZ93fn
qz6bZI3uhRmp+E1Te25pIBeqpZHtUCUQRqcK4G2fkxuFVSRVdaaINohFfNk+O2ELZaNN4Wm7uKpb
uo+r7gMfH5pu47fNXyRgT/xiv5ni3pMx4LZRxdPxfyunGhnmL4w56V+WNUxLxxprgnVCKtIQgziv
kullYKuB5z3AtUypX8HIz29Fzo2YxW59hY8FYoKLhI6Ug2odApNzgYfFEpaWx5v6w4sB1W/uDGIC
dY8z2ghagmExc3pWM3DOqIBp/WqPtNndwU89fAT2T4hlgzvObfN7vOhHMs77SZiRYwpiLWSlculv
BNFkCLM7Asn7RPm0ckJrkt9LDFdJG3ksY5LlaC95lcVzDErwUl/9sSUa6UenTNdvZ4mauduAs43S
I/TVNYFePTE8/RgZvZwsmYlLHbmPrCS7N8xKGuej3mvEZEs84eUVJS1QErxF8fR9ss2f1arRa+vp
wTl8bJeBL7XFjOYgJtPeuS8EK9GWSeKEFst6D42uBUqFpv4kM0oSoTZgTPCeWptCdhH3oDvODQgh
hWGo/sQPe6CnRaseZog4mwWcNdro6K8NH4enEO4nig9LCaQMh8zK5lE0yqf9b8mxRZUzF9/ZHbnd
fl+Y7x1AXo/U8r1kaOsUS8bdXj29onn8c0bM+uuAhNhh4lisvl5GGQ/wq3JDAbOWgRqzx9UnSxgU
Z6/2y8yUHrKYmfbFyJJ9AUEZ8V/r89ucJh1mtWhfpm7HVLiyHs6LmRP193qfHmCR4kr5mokb3649
5UFx2jLup6mR4rNVtHaKsGRetU0i5I67XPIpRkX0rPz0YBgG16Hp6IcgHz4l/KsTXDYB3+4iq19M
uBlXyOJL7ShV9lF/oK9/fv+z8+Bf4O9yldcuCpHrNMPAKVn9oNc7AmBtAmsbPn2dtEW4Xsm50Ato
6emccf4y/qYHB+IjfqJi28Urmv/gOY9Sa+89h7kCdHy0Bj5id2IsKk7acxLpk+dSnrnHToKBH5K3
1r3ADhNEVz+tBK5KeJvluUY11oFx6ZHtOxMoc3cqRwiPgVlR1H1tIWijqDJhdvNiAcw3biWEfL5q
lh59s+lLbQBeEllbrxcVOTpZKWTKJ3iHubfGAepzatTImiEO1a8wHlSNlj9LFejvqO2TgwnB/GAN
dpqvtXkM+SF7Tf0//HCIwSer4O9A9rhu3Ya05uw4hQckV6yYLaXHhkAUeWQ8An5x2Vj9Wodp3D6m
QBwLAlmza9hka1yDJYxPJUmsUHhGnS97dWyAr+IrvZzgTO/uOkwZNOMZ7XCj1K2biQox1h86LN9s
s7rAjaPpHDATvOkEvjIv3buRHHhpzTSuXy69VaHiahZQxNFxEhChsxe+MDWsGR49HGu84zWc4H7G
uHSI6dfRDKbc71MNjtgNjsX2VPc7crCR+fzu2jrc4zU8Vu1cmflpS039P4G5ePt0lvhyWk4HeCUa
yLvMSJ7gLrtoW0DEDGThJe1cw8n+cKayRo2Tyu46XFwSgDmk2GKvcGBIdWHMejZKsoAP5c9GkRxQ
njFrBEYc3UJZ/2YTkFwKpXSLaSLUWn2hZRmGUYNcyLDwm5y1vKvkylguUG5xUDHXs9elAWPHARaY
QwGNaFLW0VBgviJ8GiDXi7M37zskVyM1+dSsLjly1u3IngbO9PleJejc/smMWJQYyxmfNJVwtEQE
BS3KWbLEyNpCc4wgUgC0mijgVLDK+ralYLf4Y4K3QJn25P3uGuXOGZ+0fI8MBXvEtRM0hDtsPHIQ
GNgmyKlTM0w3h005vaHIIV23W96yqJcZoSOANLG3FVrO91BWfXMDem/RZBbcLTS4AEENgX6av3nL
Bv5VXMBwTNboxnMN0COIZFAtnvz3N9Z3zTyKvCgY1aQqWvi8oOy9YIJeOmKjP/JHJb3WeYi8Q00p
0kHal+V0kDf6+eXO+dvRv3E/lhXgsJUYDkpxq1AZdjZ7zTadkebb9ciWffukEBlAGZ47+ZqxKUy6
3SxYGN3Nqrwy5/PXEzBG10XUJ7T2dNedfLFDGy47nP92oMDYT40yanfPR/oDLL+bKa5v5EMcq25K
iCpqBftSKJuwyPpKzc3efObVVQRstmbxh2zoI1e/0rXwPPWroGB96K8tt3jC+U3RBGPAqhv4may9
uBcgUkxuCaDX6PSpyEA1Z2TLUfyrTUrVR+5jSeJJ4JZAshvDf+hdG22GATz8JQSCsC8MPFkRORJ4
GYBO+Gy8DLwF6P8p+vl0ERHirH7nvDTa6jUW4mAVfFLLXzA4gNDgxGgj9Srxp05hEdnZHcyMWlyn
ZuiWZXBNZrngS37ocTkLkAegmEEiqUp5OEJmZvurcX0B20gBXMD0N4geGiBYgLWBizGqkaX48z4v
+MnouMhN5US1uG5YNWj10MHlG7ykAYBvw4+WhH59IIeNXgPtRukHd7ZXh0UwbN+VgoYtsGquXCse
tsfaV060/Lzmu0L50bG7aE7klzEUoYtJg402nT3Uq9C02DPT0N44vP0yMFz70HT1KJWN57fxOSOx
flgMlMJv+V280pdmA6Db9Hl3KyAJpZLv9T0sH528RX1jP1sBZL078IVDaNFEw5DGBHKMXG3cyI7+
VSsjQELGsMAnTyifei5NeKhg7XdcuuYG0F0Le36OVPQoFAI/qvu2vnONZPxmDgEhm2v0EJrvpxHe
Zd5izql5OH71uraJaowrheqNObLccGwWaOfaanO9f6AfLBy0+0XZI7gx/ph7/zmtIgjQHM0OvFmx
47SiYidNH++7BUneY1hIBSm3CY7KnKSnI6TDuFhe1YOmTUL/yJvCIYJRAFk9wqmZflEfuXTgtCOf
a0hSt+yrrl2duHo2jJVUvyPBx3t3rpq6KkwrDI+eG3SX+jTNuhBPGlnWZb9zGyGo6mBExE3VKzHw
W6oxOqYBjQH5Qq+ZmSRsPxXdEyahUz+w/SCADzsPnwUcXTcjpHRyzqRKiBCcq+wrP0COH5IKFwr1
8EVTTyuWeUafOf95fNWoFFkOKXsHCFGmwen73sHt0AyrvLGbk9ju9ag57LVFQeZM7WAecrYj2nMB
0k0aKyEp7h/qbsh1rXCZLq9NYAVaGCc7xSsDnJ8CH6lUZBXoQNwF8IpyDnhXMhEWXyqMLG3hnPBa
wpAjpGJcvfIJtfV8l4C7c5k092PmDqCiNv+ymU7ohKA8+vPvkbndpwzA+wqX1S5RFLY2DWnHUZME
o1j7XuYZdpLEmUVH1qNm9F+k3qVdn+2CZxWq7uR9Lw83aoqmXYmza0epD/XlKju4dnXbZCHV2uzu
VAXT+7cvn22dKzXIOuq4xM+znL+YL1TDJQ5+Gc3flfn/PB39qQ5keEFPwsqRx00TGUZ9AtIuBMHU
NFbbQtQvgG1oHLTkZILLs7NoM/RyI8zCfoRMffvJXw2arBDGSp0KLHYSV+ZW375bS5G3c8aqZPQt
VZ9zuFzUSfOPRYsLEqFw9UD2mjTUE3MNE99ylgshkznz4wKqyTizDp6hO3/H12l5jPC/75XYTOil
XOKFA2NO9GVbDZrItpQb7kKLBD+aY1MKlOs2Sus9/ErZ8K6QrEpWDEPFhVidMW1kONflZnwSAzJ0
dh2FtR5hr5oHMxGdpRPOm/1DMGKYBaNbE6+bA7H6CdoQiJrFdKsPm6uQENLf220IpTbauPo163Uf
uzyxy0ndmGOoZVUrxD5N1MPIj6shV2P3lcIi5l48k6Z3X2UbXAewqXhZff4W75zfeaZajsSpJxkV
GD8qpZxEcUg9TT2g2cFxmYblCf51mrVi0qDcl1OddepBivwTL9iypziULojPgmRtL0bgyEbY6kT+
bqkBQmEr5JiEF/Jzsa6b8i2Q/CCB59d8MsHXtrBYoTRobqQheTdfBWNzJBtpjp7z/Ka/66A85u3j
+sRsuGI7hbcpFLNIhCn7Jz7csA5pIU6SYMGA7xKEFVzkozzeE6nrxc0jIS0PqE3TryaZ52fqnz0/
PmM6Atwos+j3ztJqeB/km7+GyDclProvbqiX/SZWVRZdTEVrv8gYcLeCyt2Kb75hWy28flesq25p
oIYH7W5HxBrn+VUdfnVcIMeiTk2K84hVKQUTgjOgwqh75kXwPAW9kqFeEZ6crcK8ykPVQI6riHrE
Zcps4m369oBeqc7KCij1yb8y2M3+8Whc/dqSwNgC8eRRRGAE38BFmPqgZi7xWnI9Z/X6F50VbNLY
RK95A3CzvNBZ923L85tiC58/2sE8zTlVuUop/3VJYZNu/NmgUCLWWZ4Namnx8PNbO6A2JDZFvZL9
wsfE2/7VrLab3bz30sh553IoPdCgZvWK4autGvDQhMbjybsAyKyR0JUr0eIvTD8O1kN2RJmOpEfZ
N/xvvamSRbZvCwQZnzlScuoHjtR1zlTYZiPxN5ENZuvMuCC9MQHhheP9pBTcTI9wbKRwMa88m1mG
QhJNqP+G2SAgs8jzoC56/6gFtFY2KxtCrlCwVOZUtuig0gQERCh8xtWA4ohLyIqXQ1GEWLkrL9jW
IAy8WoMshZbJDITrio+9sl46fG299DPHw107MFZ2Q5H4hbBciFOKHCwt848PhrsgAbP36YQDUeiY
FpXIvA9p5fw0/oOkYDvWRfPLzj6Tu0AqjJPvNY9QpuMan+Xxsq95jFcZM0wENnlVJCCYt3wvDlK/
+ceB9CGjL9Kgi0K1EFggsBkRwq2U/jKkjOHhnvVnl7srx731DG9cmZuKeDmSPl07kQU4zhLClgSW
grt0g6Z0hXWdqu+YJVhDsN+fk9lgbkNOY3xLu6IJ8zMdZRyneWS+XAzquWA4cTKd9OF+m8pXSSBl
HqT+sixPXUWtZ2Od8M6/6FwnaPMvx/dh8hICwu8yJkg7zThA2QT/+SYh6gAgORRgioQBxMrye5bm
wyMK0c9PIblZUZKSg4hyPdi4rPyrLc2mq1zPQglmrV868tNgqSDGsE7euR2LA1D1gjtTY7jbVOyv
MtfnSW8psbNEOXQPGPL89zSryVJxgb5RR4I9lFZ9aR/bQ+wSefSDz5pm3TX5h0un1wEDHZzxCj/M
G7k+8SnVJqIIXf/WyVbizd8HYpwJsdBxHlpRQkQ5URugoDeB+2mGdh4yP/CtTJBcCsnlHgbrlPSr
Izto1RBRm0x7mh+yCmoa0aNXo4e+dhTl1Y4hezXgcuDYr8ltA92hqC6tgZGm1xoSwkQJUbWu9LBR
D0QR2P/3nCjKreOhi7JyOU/8udTLijrZ40txBe7pUSdJWEpA0UzcabpeW3id5KYFoIkLzjGQ62qd
HkNfzHF8KL0zO9ZP/pxlkFD2mgUh/3yJDTzAn01eAoSbyqBZOZ9+1+0xMmICVKJJNAP0sOoN1faM
mk3h0IWnOt+tLwAXz2XK7z81GpPTLwU7HW6klAsmilBqXUswlNsFIPJo2hObj+qg3ty83AomsbMU
KNJBVOc1MND5wlTS6VGFrarCeIfi5lkf/ZMzH3L/npAdnghNNXYza6X4pTVMAo0jKAx3AyCtSY6t
g0AKiuMGCFPvnW7gOKx/BnXuSBqxq1T7X+hLj0Y1eETSGP2zffeS840KeNVq4N5KTb/Vmmxvmg7g
6Ba50JTO8x8umuEvifYKxzNypjiqIjWXXyyhDcf7+3GK1reajLJi9iLRd8oN18+A1/PeEmNTO7dp
Wqxgie9e+xAsWxeOBmrrhORFqGtcRoHyaeozHFtoCsfZxKROZKiNeomsKJo7C5iU89kgrZGWDZHt
RaOelbPUGWxEQLFfaI2M1OhnH5XbJaztTK3JFXN4jnuXWdaSkF6CXRogBTPB8QpHUUWIsTAbH3xZ
Ut6XID4TmQ8U8MrIaLJspriFi5RhQ8qZo+pvIOGCanwcUSSERo0nblod7T9mPV25y8xdgxt40HYl
F7ucZYinqFy02wDdDMnUeCsWwQScBqMqVLjpqcbf3zTR2ZgrMki/P2EqAnXEwNj8qMHNU4pRHihk
MZEyg0j27AShwxPRDwc3Tv5BdfMql5DGqBj/ex3jvEfCWFiqfg4H6aAq//O0CjkcK9a6kefDeTo3
El3ATS9wU6ol0qLpHUFuGSio9eCiRDoAEtRNP7afBSJbbehzzHHTAhj4W+87yLtCh6jGDAe8HJV9
CgvZcU3UDFbo7rO3xTrMYchdvbo7LluMi6Dq28g2DQpFcDcdve3YHkCS1xePhr2ydbdC4E3HJgI4
DVXJoJ01Ab8NPfkzFqIlI8G6/n/uBeovJuW17DG2PtKIPIfsqQa9mS6Mlwjkz9z5VaTh4RUQujo1
YgnfgZGib5gZpxJ9Zby6EGqMq+r9YS91nF5aQaSyhPH/sMyiBZtdaicdsaCVrqbpP1L3fWUA75Tj
NqDaKdfYjNGpCyUGr+Z2RJ1LgiBbjxQGaItkTndpv6kxGMsqQbEP/bHsqCuTzIusdG8w2qdlaSpl
RfuA5s7UGVErMmdwcrK3c2mz8NQ1DWt7ZZ7E5rN2o7TRpeDd9lbbHC9EQ4ZRiwuCGVyQFqF3FeUM
TbLexiAQWzEU5h6hMDX/MnKwHwKe0ghQbZ1jiRWae3G24yDuytqYQxZjEV0vxppFEIriq1c34Odw
c5yVyvk0OWTC1wmI3lwRYrcoLJYE8JsoZCMXY1iMHzOxlwqD35x/DDlLljUo4uABTZE6vmcVtRRL
E3Tik3+UhNoWxKkflhgfXD2xdpCBwkU8tqg796DMctIXsdhVV3jUMxDmZIXloHr9oPHapnoGhewR
bOWQZe93HE6K5w+S/yHPZyVxQgYoynnP/az2BeBEVvPYrLoBAaQ2gEDoW5e2cPC8wCvbAbHqeMwC
++VdRogPI/k+talhEtU8rpAA1+kDy2pwVQyzFk8NS5wuup0WgZejKwROiCYQ/7evYX5hwIcis4CG
hQl4Q0mYW2HzETYjAIprpAlIA5Id0sqyDw0g9Ljg0J4SYPeL0FBVC1laUI0MFc6xTT9lOM1rtArz
pjEZhySijiZwY+g6lrbl2UySO0wTG5adsyogdKmdNNiICwNKMlHvK6A/SQuHOJBrYpXS+xBoQHHp
YvxIwADsXn2T1k7qoGpHo7NHQMGBe//NuozIbe4d4jHMjwjOHjeLS4aleUi49uSaLVoxqdGvKhAS
1OucYeC+MD8l5VKAh+XLxHA0JVWg8WPQF0pvweRbhxHgZcwaOl6c9QkR0m6gcK7aa8MkWi188+X8
D+AwO7iWiC6/REv8qlt12l/nYHN/71aaJgpLbgzfmsKtXqrJ4qXxMLvoE8rwSwwyKJu0rRS9Fa18
C3xAE5eg8yyFZbxZn8Fgn6kWGsgRsyz0K5QcTXy3YxpoMRU3IcBaaRc5UdI4KzuB3Uvc8xpYMvkF
c8AyCEoAo4LmpAiFIluGYDBSTpRRGZuXWEjA82YPhK8mjsFhE7N1QcDrnCiL4oo+ojY6bR69mKg3
kXXVdyuAxgafZUGUcDy3MLLB0pKRXJYqLn0tdacPwvBjnE7DAzz4rweLjf+aZaOghTtV98+eEuYW
MoEgactrGdAR1rM5qG9VPYhYxDBXACrUpU9Ldts5TZ4r7d60OBsMPAOD/ubKG0vQaABy6+mJE0Jk
trh8O6pP+fvnQPsBZcUliRHDS+MHe3mvgyYO8QYW8Zw5VOEAuMY0YxxlxOShYs3UL4ZrGbcxIRJc
nhaC/LT6sMaSuTukAV32JCQtHM30u5Phd37NIhrYLzxGYxZ9A5XCoyvWjBvcKK9Y9wPdbNrYKWNa
wlcLPEFQ2TQ5nrzDTUkrl63F4glFA2TBu+BLnzioo9VnXY9sOBans8WwvLkNDu1buqcehA9+2+7Q
xqMx8WSRt/bmpMbQWduf4D0FRkVxgEn5/z500Ppaw7EeesWCuj4IY5qpmTzhBmF/kNBA94K5xR+k
sFV6fUh9gK2ANaEDlP/P/OdvKAeddPz0+iD5y22bTkziklAmqZJurdOipfjkpE9eNWgBYco5B9jC
QbketzQB2b8/NEsR5vgsLFuxKKfIRZaFLHL9gpZrLqlHF1ERj6oKtZzwY+XxjeuslC/J2uc7teST
kWMAb2cFIxHe+9hv+M0+84cOgQ918BhDPxkxJozy2qSRdZiD5toQEA5kKvrT5yFDgIobr7FJz9l8
B/Id5CctW8BgX1ZNpAKWnTOXeW7vRFNe74jfMksgolZGBaHh2uQJH8gBeSozzexIpSsgv4XTpVwN
EKjSptbsfiRx9A+HeHItj9tpGmdBqrPqby9vCNKK2R+1HKWQdtws6GpYrlILKkLvAf11pAOzDxNt
wWlU+3FeQIFexOHa3CGb8hGqmD5RKs2XBTOiiKOpzHVxixXWk32G05VWxUqC/sP4uNVKBuLmkd2J
l80X5ae0EVKypFHEOs+BFO1G8xx1U2ZVJIROy4Fs9rRlTlEWCmn8TGnbUN6+lMjmW6gJhG7FanyG
gym0dAnPA1IGW8yctIIVxg59NwnEyFXSZeoNS7VlZ+clF+/2Eu27CIpud2erMa85kEKFBrESfoMd
vSFWe8M07pufNdm9q7gu6W7byxXCaU9c75ZTgZ67PC7OMXgOciTv19ZAjHp4+DTwI6I2LIyOGltU
e/XBbyqUgHLU1JD+S1JECBaIhDPuwM0PC9El+sSdMQ6c95iGzJlnELzuOwKMghex2q9oaDC450eO
BpjbygbUDmpTKwyaWPtG/yoW9Srz62KWGhQZ5fZBsFxQvlToXdj3h14ea1zKXB+x4yjo3Jtra/ZD
Ac3x4d47Hp27eHAS3p9YRMo2tYxkq02wIulVYvcSIacE4ouONOyqR7icCa6S7HZ2pyxy2z0GS87R
XIw6r+13z3T2caFSBimx7b8oOwWXihi+c3Jg/60JijnVKOCdpiABo7iRLp4wXUOrxgi8kRp/YK6o
KIuY0Ows417W0G1e1n1oeN1nTqjkcN+NwqxooBORddx/qWn3npv6clZqiE8xowcEoDemzVzTT/UF
OsmPZdpgVppFUkc/Nqe+0aohDYC0BnaHx8++qixNvjveJyEI/SZFr/v9eZ5dfXwvuTaFqyiX4x1d
IUmkqcRppFZaFIl4v++bRunzvnN6AEh+/T0atGm+m89toQ5/D71Zv74Pi5jccSKIGCHf/jON0csC
RaW6Z6mpRt9F4YdPfUb5Wwz38ukkl0F0oX0vC1RSY0jqKJiXrEpsMHeAtPEYtgAWn0tevXc82RNO
7UvBXT8RrQrMdxqHkAPgPQiFM5gQVyqu8jhizagGbhgbTcl+GCTMGRk22+LedHldnHa4AwC7tSpA
FQRdGwoj0u/XK/8dxKJ6aQuq7iht1xB5UpGB58ADyhpstlPt7KHTKE8Wbh5xD6JHqWiqh2p7gKOl
8AjNuk4oM+pEemB0wIzqJW7ctKaECKw4OkvV2Q47Equn6C5bUl8sXebo/pvneixuFkEwE12Vd9mm
Pq/VZeQnFkQ6wT6JSNu2QpPeGgMu/j79AgixMixae0h8KZlYV1gZcEqODs/SrZrNrqQaXbqKiSHm
9y/qJRmlhvInpa/1QiyKLyIYjwcCPlrqRJL7ENJ/jDBjl5jpHEc7pX9GiwAeG2ZQST0ha7eMSmIH
UVrzhjvi/dB4lRthMEn4uDuzYQeEbLnE5xIHQAfHGU5brpZLEseahdZnmtfoS4M654nNLVlCvmnc
IwCM7zPpmCpti9uX+CuNwJ5fJK8ESVEpW6WoyvUp2miVIMGjD0tBLpkXbVUUkUZvp+M7NAqcMybR
nqa5jAL3x0cQZXordN/pzgPEbmrKr4XsVUP01NJFIBKHz4PdgGYTHIfqQM9SUNOXHGwZnsnLJWsS
F2oMKGl5UEVyN5pys0QybzXuyRXLzVqEbesW7CQKe6+OOaOp4RbyeYrnyFM64nrcZbVuNe8DwoZo
5Rjk85vZZGm2bD2vDNdTipybkJoViNCyilDKCC95wsGS+tyqIkYNZLbnqk9GeTvo1lKKPm8a9V7L
5+XSpvlntRTz7c/4jDG1hoH0wSNMCrMtLlhxV6LFd+sSLyYYmk5wecp8cBfi//6Dcc+YEYvMw4B2
nxHxfVgoDvCZshvGMBR73OnqA5/CqCf8vqU59hS9nGF0Hsumya6VzFU50tuVkh/db/j4LKNDVeE8
k2BD+dVPpiBK4CWugWvHfG7NM6zvKKbyc4B9jIMDuJFj7YiJNbSy/ajLAXSQ8UCGwKVuVihPH1BX
hNClLhGHOyus/iEi1rarloJ8MFnORJaNuWLbEOjrhJAJjbV6Tg37s+poFefahvIeoCMzIuI0nDeb
ESBMs9OMKaEti6E6mWsqrmjuJu2OAcsHKIxLGjTyKhgypOtnIV5dhgDLcvC8kUguDoXCkSPVDj5n
T+/fU70KHPF9PlFB/TFsocfsvn+VJaByHRdSs4iztgQQWoGDNVKN9Gui6GiSJ8KFK6CXNhfkO74n
pWkRR50xXYjnheu0ymZi5laQJsA12iMpWMc7/ThA/x88q7Xs3ZVDvbMSb4m0+DcrKC1vQ1c7yLvM
CkdaNibpwWfIJHkgzxb+0LcIqbcrlL5RUQ9LoBHf0j2qhxa3R158LnqDZdvyZAuWy3XKvMlhl1xz
4GnP2/O+StiegZhw3DXTHS6giVnhDFG49AQYQ/9n/dH+uPYzLWRMzDDrhwCkLHZMPp/sJEMHMKRl
iBsstyAPcu6Ze5LlO/QnuxZcKktufP7h+FzTICBRiwZD/dQmmbdHO/L0IQfddpNnf6B/jTseR1di
VHX2xOlNVN80MfyQfBpK/OOJKNvckDPZ/XfweMubs3rSEKJksRvDnSYxIXg5gQkDlTqYcRPZsTuV
8w/tkMCe73lzKYYUTu2se5uQYqbVgOquqw/z24j+PAVwGMlWYdorB4ygeH+ncB7Edk5MFoeFkAf5
xgSclSRye5rogMUhvhQKz7C3YEdR+Av+/xmBt/UOtYp62WkTY+0W4fEFCpnlaQ49nyAMpm2msmO6
B/wevSAt+OZxpNAPIIuR0eJ+GdlKIuB1ON0oB0PGbiK4wrjCOQN4VTzMqyfa59wml1FqcyXTXpNq
7oHm/HhMUNvT751BUo63s50nVseOvTYLQY+xzNjSQGP/407MNHla9m9rCsxQzjEiEVlfV0Etb5hm
rv2kG/ZDv+k1f+r0sbjokY5m0kFoy2NiZ5o4NbVKR60RGGffIlXyhYXpt15nuOVTvaHi0nzYG7ES
wGh/qcD3vIcbFgILcjCQxLJsrF8OkwdChpDiIZkEb2nnWK8+hbg/C+HUwvUc5udkHVZf+VNi23I0
RlMYgSPP1dt2Y/TAdaN/C8DhhOaYM3SdGueOv8Ir9StKBxOXjwWHhcQi0IFeADY8h3/2w/bWypqZ
N60SfwOOaVnXQU5HeY5m58h5q3G++V/iibCHhUqdmIrT60K3rx5bvY3c2OuPhjxxgnrLNEZrTXEM
5HmDALNYJZvmOnp8nX9u5Be2q3GqsHS3e7EUrYiQDdvkXWbSFzTh94hzCbzZ/Bu5Ig/79LF2LK8P
3incgZMWZmVzEJUqNp49W/qtEPydCtKZBRkvHEldd34RalCROs9nhepF8okb4iGopDpjyeRfNBKM
gN+L3+N2Pw86fS6ZphhhaM25NFBea22wmEZ4tjp7yWrf3FgIgTrABJiRcRyQFAz06KOPiCr44AT/
G+aayJ3fyx9/KQDkqgPKkqhdYbhLI9pFSj6MKeT/22hDttchFSyETQABnRJSgCrayUVEuJF5jUqV
eeBwqjq1LRWjepA2ZnD3MZu0KFYWbxehoDUzCn4nJFPF+tmim8A4YSba+YW97AWjvf0CosEV0Zzp
TwSOypnSpT6klBUu71FawswJMrjIdybdB4JAwJu7ipnloGW/an8VH7Ngp7bPixAi4dKGbiUczMpn
G3Ln7kXxeaau1A3VGV6gfSkyAWEZ4E1n5o+sdwFaSQFPsDoJ/P2/9b9x1GIaQtXkBABxTeAJeBp+
7hf7o7r7Dn5jrlx2RfG/YY4QVlzotPjoPjjcPrrLJHzgTgOgzNJtE/rIcfNcpUK0oeWEXU3C4HIY
voDES3OJaMMfiWWBs1jDL5mB+37/j3mTrOm9ACFs/iJrZKYg9pqVTf2BQwnccHW2U3ZD/aFLvo4i
ZsK7DvPqNKCjNqanNIKQ7mpwNcpCizDGCzueSlH0IMIzMfTBgxZjZX0/pcFyh+RXaXuFyQkK4tRc
uEcX73FOlW9ex1DG0pgO+BnaSnnVOK9BnLaRuVgaGH/DVYRWR+MY17dXOFoQIR/dNIVV3fBz2viv
gMEpxvdapm11yS0SILsgWow+Y+nmy+QZvYpc1UUquHiWRr2y0gXzPR+brh9ARfnVD7GZBJ4vLNEx
I1SNRwwAq7XDObVvR8efetOtkHoxJAJwV6pLvJragv+4ADSRLWk79HmHMpZweMuPcutfqREAJc/3
YucuRxbAFuW3UOUAzz1lm7KO9y1JXwx9woknzGDP1jL4kKVRsV7bJ3W8wl/CP61oECL7yqAg7LCv
ZP6G1VdGfgqd88Q64BVZvnKGBkmy+nnqNB0OpQxYRvAAkpyzB8/5mcC7iE3jSZhODp+ZqLaSkcqP
LYcferf3nGys3SP73Rqqjnmtt03BbYkrGLZLvLAA0ZgyazqmcK13hGehgSliMLfxOggktReRCMbv
Eg3LnOMoj5mBRPsHuhmF+ix4wOXl2YbAqLXfExI5AsMuiq7mf4eiaAej+metPeCPh25vGKQtIFxS
DQaCmk/osDG3qSYyewqH7+PZ622H1/ecxAoItzxws1fL+U1CLXmyKprHiXQA8NdQTlT7s1kQWhEG
njWerhlFun2roN1dSsT887n+oOCTO9SR/dIyHLjV/Q+AK3D4H6mjTizdaFbvbRBy7u3R0UNVW3ot
PVoc1s63puNZzYGnTx1k0a7QP+gaErkd5gUEG5RdTfaz9MoYz5PkEwhVee6V5FIab9tFfDopESgc
0FcYRuNnOR00FTrCOcEOZkq20cJE3N1pQbJmtWT1C9hXdWh+doB2etikTFSYfBhmLz7S/1Jc3vDS
nQ42eaAHOYsQ89rXl3OdohSuPyZNjsO3gGoT/NsMXazRKJsM38nBdF+K0o0dLedhzyTgy8cAQxRD
fBYRR8BdL3YGJZcetrcHTqT5ZoE56TNFBowCYQfFqwgQZfQQ6hQ4TluC9+dMuD9UtPN30V0tFSS7
cYqRFzMTr8jJn/6CcneJw63CIgbj3OKv/apDxb/+nBANHajboMaWDZQQ67lBVPWTlOSCCPbf/by+
xfkQ9lQUM3IwINmRwEu6J9HhFyhcMBJT7waunzKUkQD9/glNPEHT6dWc8t6+/7DV2LW9f/Vmi2rY
075aqALRIrTV2V/qBc+Op1XP0n4hT07AFD0Gqn5nP7M5tzLWLxdsafTXKtII/q9MnQ7SIe8TyS1B
n0q0TuU8dZ4lxA9uLVKvSKPxKp/elVxtj9Bfcg1Y3+wgPLhJ51v+DzoSTc8djgYoSakGNB+eHyW+
KREyQqk+YzIAHPxEoGR79ntoCxvwaIphorFzFI3niAj/C+gINAbo6GvKZnLfNYj0cS7krL5RW0BK
xmqhJz0K5l51XoDjpysZS360rksTdAp5nVWLyJRMRvjvQDWOkLXwhj1+dWREZrdW9886NrqiEUEk
Y6F8WAfbUxpwXjkm70EPihHCyixEmxhRiOmhIIfgWndwK0mQ/hcYRB7I1/MA4nWIkZKZCFfqMcip
0JFmbmB2ExPLp3sc9hsDoak2opy2HY+emr/C4vkFPJm92PiuhYZH4YC+WQGwnuQpBCt/RtHyUKHU
nQ4afIBmWBhttH1BqRPUicADZhcw+wEtAMt9H0PkT4VVGrWsuR/6B9p9Xb7Aav59A89nRTEPJ7Py
V91jtL4WKCgOAQdjeWok2FCHlb6YjpH8LekfZSZs9F/ksUOaZlDYA5XBHtx0njW3NqcCgPusFk09
CDx3oPEcrdy5s02pcRnTNUtKeb7JSpt8TLBvvKX6e8NHTZX2OqIqdIjlTLCoMRmtLAVPpBULtljI
WfnpvdfMb/ttqcIRtl+w6ttb8cooRkBgxJzDxF8TMmEGRzNp5Be4KU7FI8cyCu9VUwyhQsAf6XFC
pRxfOoOham0yYEP4Vb3iSJYsCRYZBhZa4YjIMgdTUOMN0iU1BleZ7gM6arnEn5HHB5nQb32UQY5H
JoWyD4nh+ZN8rHZbhpLhpNhxMyJQS7Rw2GrUl+Ygts/gCMm8quSqLwcBWAk5hq/QuckttHKJawwH
5nD6+nO/4FuuH8cCsNKYEk9OTX2r+vNCqZqV5n9oLy95e1JUVMTeb8UcMxOfgtmib3+JXxs8sr0b
LkkiYuOZBH7SwzkB/0H7A2caj+sEVAEwvnB0OwccSwbS4HBBLEYUl7e+sVMKLuBIHjLgDApj+fVb
HNNvEa1vP/Zea39uZ9J8CH9DvUoFL3Pj8Rly1OdIaYX6Vb38v59QaclNHDypqRzCT+pzoqWdDAiC
8UH4Qz1BAWAUznZEqn3xXhwQISqWAYUwpP45lVEc8y2ZXi7hcgRyFvOGZGNSydCbCdVMMmiTpR+/
ZtVQoV67tvCPYHFhIe/nZlCIsbPzpdPLzGJuDhYev0iQvQa1pt1wx1n2/Vwye2O90p68lEiEfYIY
FEN6/nhuD5UsC0K/GKtwT2ho3EM6q/yfEXGGH97j/hI/o7tURML2UeVXSmpccyz2boAEjULjZ5/5
NjRRo3Gu4RPbmCbH4yN4XHkKxAVxNFzSj9AWAfyY1W/blrEDiH6v+pmgJd1FrZOq/dgTWTlYQKvz
3E90P4cV4oQS3OtHSkq3Qhq9ntVvAevXUp/myVmpr+vIV5OBunx7XNPO92TnTrIyGxY4BTYldsLw
rMEzyCr6tpMTv4E0upA232mE0AX5W2YdA+egQ74Q1YMBSNkscZHr/jLQlDlC8R1vjoKljjRVPMoi
H6G1buhiwTcxQkrGYbRM1kjj7VYHfwtpFCdYgvem0erumtoYIWuoCa1pM8vlYmNAJ/k/Vl2e1vEy
Vv+7MnghT2S7PlMXJY8tSAgGTrM9/nV8aOyPZWRkgOy3GHeHds5GWFt6m+nVyYAc91L8krlsnPk2
EivIa5Az5ppsxyzZUtYqxcytzQmfEQnibi8PZEyt4pfltSe7+wd7dFX31vxj/tMYLrMzbEcZgp4A
hNoXnGVjTEKp50tSRBBP2Xs18bbv1jbJa+Kh3kQ1WVLhDmp6UbFJjSWDgSl9BhB2pgJAsh2HKu+l
x3av+hIjOfw4ClefS+nFwGRdjkvo0NT+ATbhG8LSFEBBN+AJOpwOpScWhsVQZVuyXoTVe3dFbmgw
v6sRpXtCPWIIoG17wxHWBnjCoFg2C2DcvO2NunrPTygGJJv03Pmnkz421FocOHpNxYV0Jb6MMEdX
uFzw1fD2nPCnH8/zkymGNb7uAbgCmN674ZKcEUUnTmUJdLTDMDYQ+ujzvPV7BJgBRcheKR/q+F4f
UkX5zKdr771ZiVgg723BJjZl+ASge8lSA0hXoUJc4BWk4PilMmCK0B5RSKQz0dMoW5vMjNY0sdgA
AQL6tea5l36l+IBLXjFnxFYbzArCW7kbqQZG6tI1ZkZsiQnbvFxd05KuACR3Ubd/MLM4gsBn9P4g
8uAi723KqUTAjpeFxwVbdViRarLrglQC+USYmNtITRg2AhtAX0YaUMJtd7F0MmD/bepGLMfqwWoa
FiVFVwYZ4jrAtjldzb9GPWWFtDQ4ETX+2YhoZ1DhPGL9RSOH4HH0C5EkKhAfHNgjINy5vJldvB4u
g2FbLUvqQde9TgYDvjIGYssb1VOsQyyl851gh3++ztI2G8yd+6tHfrkZZuRZPUvRu0AT6wZkgjDP
clW3KbobJKnZlqlODNf9dMHzEfI1lcGOLOwAGBeFkE2NLx+0FVknX2nwT9xZrliX1dDwl/pPsgek
7NcCzk/DQ47b0lTpBUOxKQyyHXD9BWMKdzlZcavyNEO2MXl8jgu+H7Bcel6gKXZCNnq4/gx/V9Qo
U/ELg07fqMWr/CWt650aYNouaSd6DOShcLdQs/ekvGcMuW5p8kNFRnk+12+atTkwOHFwpZ/euDuo
lolop22jBdISHguWZ+c8KDeeibvvGNDKCruel60IMdj9UrXd+/TLNAy1I54/JUDgA1gT2sB4U4UG
eXNmggCRfwiFh1hJg0ucVoEnV37u3JbPIGOcwclMzAB/90K+9l0U5lHMI9rEDWTdjjHca16d61it
ceLKWYkDTtAaSPbqqu2zZ5YaT4PH2t4GdCyX63dsTxSv8PmKRW5ftpAHlWjgkUbhZQTZJjphOFrM
SZciUYnL2DmdCKn12C6vqXkwyzRdwaNJNNB5xz/N48WL3y+nhBMJm6d9nKcmEQgjQklgJOUjIJY4
VJIppSKtiWf73Pl0feLVQ1nxNf+cAEKKoEb2s5abYGD9LgX3ojrPcPnpqfS7SmZPTC0+O/VsxvN/
Ym9GCmWlevwWpP7DJw3EL/JZcMPJ8oyXCZIKOPBN6RHIit2sABCPN1B/ckbHzyhgl2oWEBu0zBKB
MEeREdB0Vaua2389eOpnsfEQjAKXaSEiyHBiGRsxtdZavMDkoVxmbxjS1kQOzmFtMIBL2fgVYn4L
UUB1tO9qUei+lKqSEn07BRLZQhkzV68IkH5JPwXn3d0Ss8f4XAj6o71jQLbO9sYgUe2t5YxJQI4Z
pAgITWA/5xeNu/LXlEO01v5kleyKF0KoRoTPXfMAAoQIUqljRz/m5w5rJTXkQuKbn2t5ds65Bh3P
rGidSl0obfbptoiyPWF4YIozqHKLJNei4Vfo0sqhmNyqGUWfsTwcprs1HCBX1qlAScwzxcFtFOla
rC9v9740y2JWcblMDVa3N747S4meyKnygbPDvmq2A9ePJGyP/kj6KZLS6/9JzS+vivfOPNaO7+su
LBzW5cq1iy4yYhkXnpoAkIYNAS9UOwDOFom44R3ccuE5cGizz5JpfoncIJgnjuN51wrDxFReNwLX
PcqM84GdShqQw5VdWo5RTR0k89u9dG2CWsozz8xxW6HlUXKXHSkv8vtT6yVWJMUx2MRTH/ecpcBL
XJlsVB0BQLj0WfQz3gJDzEShqM/m3IliFJw2yr9tsYiUZPsfOJZuuZAFIeUvT6UDF99xIVMriHcH
5S65QWNuoRayZBVi2aOc4TofwhmZrmcDzbv9yDovxM09Jc5Fsdn7rLb2T0Ui1ukFfkErJyoQ75fv
3M9KT4+NoI2zlZKIV6DGGo29ol3qS8Csu0/1sDPDm1XlH3z9CINScastmRQHsQQRMorwpwmz1tSd
uz4M09tDkG311rds3J/TJo5C5Szu8KJ7RyC5Lf6r/0B1mCqPf/DTCtn6gx7UnrbvvjG1cAeQ0piS
7S9K4yZyPvAKjZtxRNEqy2YOOYZiGo6A4Zck6SEXgsQ8WTiOQ5RN6x50bWzN2WZAyEvbrTSZ3Lyl
uszABDcGiXB+4JxrNUat0RgUlFQM37L1989aRYgvItSnA+VmMCQEU7eIY7JRfyvOSvNUmUX1YVA4
V8gj8v1AWB/biCqfPB8g0zzcls0wDHwaLWNF9CZL1XbCOobKS7ksuxY4wM2hddAp2CkVe/av18Iz
5ar3h7kY/UjQrqTF7K0pX+1dH7TGn64Fb7pM1/n+Ttj+ld4/o8/ra807zJknXHTzKxIe/z6fepk1
TA/XxdFCTUX+YFRiOHJGNiOxQvD3ResaWxgwrmMFIHLi0AK/aGZAnrbPtJQ0ZAEs96gk9/Vhpviz
1PzlJ3x1UKGWJfMDHYkcDnHth6vx3Rvw3ErJSSwbNLyCIojBmiS1XEZfYfdOCITQ1mOSN6rAl5PB
po6sgA6MQ3pqi/ssjqC3lwH0thGDAH/AMhTy8iAYFvTwLc5EX9gdqhIOAJE/hXOqBuKzE+b/xB8D
5g5A/nD5EOqeNzFOpskie3rydM6Wu6gIQa7Bl1kyzTbPJCvHFZimUxNKVRoFo2Oba+UlqpH5HfFw
elx+0jWxkjWZIZmsxYCAx3J8AEpKanBKywA1dCOcvpYB5qFj3zq6lyIYwI+6DgbwjBrc/GeWmmwy
a01FNlE4sYVT5TaJ5AOl8ZPbJoVomIw9H7T8Qa853KGb4qipBAHFlgSTivjHjMrsHkqpgo63L7Wl
jsLpRLWwRyCuBOLC7w96n6pzDHVETFKXXUsVZCeHCWqeyPqcEa2nUSmlYywNR2xz+DvkDS2yVeYN
RQud9yF1B/UYShOeMIccfrTVzXFo8xOeg/AMYSppAwUeo5CtldTwRokt3YGnSV4QNEobhmUBf5b/
Jo9hxctgDhR9lNRDl0mdsxvziNKWRYItrmBxN+CLHnGl8sy9AyffBntcmC7YOc97uFFSyq/UDaSd
2tGwYXr5TjUdYRHe1xAzSyC7yH/WdUEXoemXU796UZqxOBerM4rb78Ti2bEZ5cK3CiVPzSXIBdcr
um5qGvk9nkpQsyT7spN7bqZHdEFBCb5aF2xXCPnTfJ3gBDz8NPol19vLsBmEnasdwDIiwlemE7G0
rCXTQIm+B4U6dv4zeGt2gUZYgxv6sBy63dhJMf2zgu27Nsx44jaJ+STgKrE2L4jtWZIVX0PBxFsQ
nBBOslIBK2HhxMH8HJjhwbcMUQPhkEnZvU32JJ3UrOIII0oJtmQroJaRAzc/AJJ4LgOWI7f4n5bk
lTu6FXkrjDiXsv9vYi+NOJnSkBRTZKSZ0dhsYucHPNzpS7tjwySJSukEGoy3HWMA9qdv7MwckXtX
OSrz9sxQvddazVIwJ79sY9V69C+vAYCCypz5HGmYf8ouvDM9bQhAPto2+9zRCpOW3WQoVBZ1jdNP
X+EKkpAWohMifHjdtZ6Zg08bqIWY4H3PXqwGpzFhNhirH/a9/Oamdfb1GQSkx8xDMvDknd/SEdOX
NRaraIscHxGuR31c73qeSeAOKQB/gYHLiY9X9zrdgzfcT4B+odf/xLA4MhdmGUeSwTXzdchdyq8D
7ysOw0xZN6kWg4RyNIjDMyyf6eRLJ73UdEoO21don7DW8MTJrnhcqqBehQTSaxAD9y7IZ1uZB1fy
uk684FlJP7tXbl1GFLu2tj59HfmRSlLWK76AYZUtOoLc55Yw0EstW2ZTIN2CHdbltm1lC4frq9uA
IBKVdVz3dLAYGcnckzmpbFO1RT35sqR32qgEsfZs+Jm8q4kd6cPc5qZ5gTpr/RAjMvTe8r68vbZm
Tf6jxu/plj1s+nEwaeKuTWYAyYwbc3adAHiyz9rW4kZn38Itts43bJRBEodUn3HVBfYieQtKODUJ
Av6vCGA+cAM3eNO5x70RIkBDewGu0DMNSJjE3rrPN4+/qxgjysd+21z/mRpPWTRboEdxYpWWEC6U
m6Gs/Y7QvgJfsWTur0NBCTsOkrE9/bvmXRoPDyhYk2CmdnrbRZ6q2GNUj+drfBQUziPFH0yT9aTs
NjywYrf/nq/gQUEzEonn59RlANJcYWIoLDuZMiVtU8d39sQP8Dg9HacEXXW5gZfWrwEGO/TB/5Yz
kKc9hNaU0La1N029jP/68GtDO0aaTjgSsRhJn8ejuAzuJvVg4ajxV5G/liC6hV6g+d/vAMVVazNZ
9dbAOgf7moeURTGYvPaeMRoI7bvXEXmzfTEFHu/8RnlGXFOgTgdkBBh4gOGhiz3bR6Az1YSSK4ZQ
GGa/qoIzRQEcm84aSjUKXvbqv7HXdJc94L0iJmjWzact5kO7fbJjHT9CzbqcAcII0/9e+QbQUGFv
MFo4v6pLmcd5om8eWXBqvBroKbjGd9kE2DZegPQ6kDIBTWtMCHiAWwvof2CG0Ipm4EhppAZED6UF
LZwYlrfSs6v6FytTfUdoOhZ6i3a/WiySVFo04tQbuMBQ1kOyyX8cLMrm9cnlQp9ZaV8U+FHb6no+
V3WJlVgP/2vIxHcb9PdfO216PicWnfSc/0Ooeg/Er0/EbREnV5GVorukFmSal2cy631kKL7F5jfB
AwSSJG9AW4KN/p2y5m4L/lXCKxiFr+pvO/5DsWdsKtiMsW25lSxFmZEcUB4ZJnnCZHWxsFEUD20n
T8+G9g2lv3cikCMMJhv5d2cKM7dT4R+4I3Cpw2xd257273l0lAj8H15v4becEzgVKi7J2uqar08J
GfaAGKjRaLBVrJd7Ozs8w/uhZ+p7AM+dwar9iynMa/cSGNOCADp/ELx4Ji/u7tyeCLbAvJCSsS12
orvZwtCaCESNRBsts4aOLtus+4J/uO3xbtwKXEQlsH82MpV9eFIE2j9B8aoNL8jfsUNJiYxKkrdu
c5cNaDQ9L7+VmLawyG1S5+toeCklKNGWdIkgf5sQX63oHqX0dh5MU7DN98ovk8eG3ofmTAOxUgMC
U1bKnBMJKNLeI4vqRRKRa+PtDff7peNHF3JI7stQcSsb6qEG1LYMHio2TxejJ3q5qliJ/2cmntFh
i9uVqZFTOl9l02/5fCXQU/D4UM0Pl/DkqbRPvtMviTYa6oYApKkfDd/CGJHgc2v8uSxDyXJawBeE
foNbCkdVt1kU/QIDKYtYaqUqRbBtlzobPu1/taXG7ahxVY14y/kcOlvSX5f/U7TxPs/Y3OZB+zxq
wxeLnPQLf0QE4DLW7qXzQeedsEKD4oI4T81xIf+GT/jeDihgWueipDYBhCJFtnOWOaOgqee7jHGF
MuC5MO3NwLGAZBWNcuEK9f6epd4qwkXgzX3ZyxsDUDgaG2lXACQe4WmguiE3YZk7N9mjXmgCxw6/
5xYbjb01vQJlPsOAnLbk5AFDtLK4qoz+1oxfqzy6/PUknOyfYTsUWf1Y7ti2Fz9kEQanCGXxj69a
jVNQJZGoa7JzFdPWN7UZPVvPt5ThVTl0VitEmUFJXPIYqAj7RG6h5pnHJzwS07WT7vdOz4Fj10FA
02ZokP+zaMRCxXxegD25G4Kek7WPRe4cWikCdrV/QS8oE2ZbFtrp2BYx+nwBcsTSOYETc3jj3GP+
RvMiEXp9ysMDbmwpN/+2DSx2oXPJyKGSURzvsMBODSkRSI6V8DGF9mQpf37Er21WIWHCy5KsqKgj
BfzWMozAwhuwlVXmq+v2JP1HJj/X5+gNYciOySDc6MA1YoAtPDdbUGylfzMyRCOLaYcedwFzi0Ua
+9nZy/Cej59a1/qzQq5pCxoo+mKmemOCRWDTzV4bARsv0BYEVZYXfjLqvR5j7ey0qkyjB1MEih5v
hHM1qIUw0vBoNrse6QgndMuGL6pIJRp3cdfvbLMy8qrbuxr5t1dKJitthUTGaLlrqQ33GoC0f1el
vlOEKXOYCsuorIlyzxTljMYws2bKXYz5pkP0RScWbOAnQJuoeI09Lh+r+ryukq4BsI6IlpwxwyCX
WTdIVpTP0sJsM50741Zp73DWpQyX/c8m4IGBVCjUZ5JnM8nd3Kp88BI/JivKX0nDoChVl5aeBZUK
Z111zsE0fXjLUdrJdc6T3h7f1zshsur4uApFJ6vNOASd9VDm6e49HOFUbXArXZD70p9XxwARhCHa
2/MWF6hz26QdhGKOgEUB2nrgAbU3UK3oFYE+Dcbipxd2YDbUjjZ8tbKUoZVCj88+SgNykN4A154z
8YhW+hOIVDC5zLjVWpjCx3+tjWRNSGSy40kAFqNYq9kTt5e0lSXEMMI3C6ObH1vdcymOFAYO95++
TXbuPZLG+pXPSwlk6fwu84uZyWADeNwTlkmvSt0Bf9yAc+VBtSbGagE2yml0gl04UdDfNsMXEfCz
H3E7DbIo2EWr55bCa9rbYy9QHa1IClRqLZhA5FUKRXDbJu7fPUx9rHnBDHYH77IAgJXmS8hOhuvf
ztZrdOC8o3OHfyI383RYMXAwlbZ8vCaWd5ve1NQdqU7ki5O/kY4fu642gqS7rKptRiDrYZ5+WN68
tZec0eYtSoLkks4Z2XX5RuL6kjFO74X/+ayyLs8xwicArNp1o5A+9rRb3eFyTokoiUJ/orNzEL91
5N6aMXTY7rm8x+t+0Wme16RAnTtNgojVVZVrjpkVoqiWsPl3wF5oD2t6p1DOq0pW6D10b/xtTHDw
+15oR2ZeQnkQxc/g/LD6ppcSOlyWGSAigLu28uDJDoP7WpmffUb+C5ivMTFYIQaRKzmg4VkRsvCR
QHE+iO7VWXB8ZqaLTSNgpzvp5hyqNnt9SgOM/pabuOWnMKNOVaV4gMEx1cNn+CPYEY5/NXcWnG5T
9ZnVp1ItgKdJyqPlNok7f0sucrajwsKoJIa/m2e93FBXOT94ocKo84u5joAD+uoiUkJk5B7N2c9x
tCJfqvB+aBhQRPVy7r+5gyIr16yHWPZvrwNQOLO0dXKS/s+n6lYqyFOhZiDQLxP4semOGeCTZJ1Q
+b7vsvdV+Bldm17vKTx2Eakn3dsb2lc4DHdJOzxrsmD0K5yY1ye+OstAiuYR5v8dEGMkefd6DiIJ
NXBpzBd0eYhEZdPccImHSndPaDEpsYCykl5xBFj0PWuYRiuSXPHhc6mp/SCA+YxgMo2Q3OYjprjh
zXxq4Klc2cWsMx51NHDuUXkWQt2bmWI8VAQjNtWNLb7guUFP2+HNWRgsudKZ2GltjXQVfJCwLd2q
Hy9/zakQ7Bcmr7uJISMGNySs/bGb7cxAdvVAmSs5iTmKY97hcLqhx8Ynziq/iZFDInAwmfgaazUd
4dT47zyPhnRwXmasP2zWO6TMAcyPhEvk/4b089tDIsYopWk3Dq7D1Y+KqWXjFZlt9Efst36atv3Z
/Pi8CQJYiPoQqQaDfWrpAtYyyfq1IPaWaPN72TBvxxDoKp1XLstadt5nkAyqaHHQz831gNlHYrgw
eiVbwnCGxjIn3Wk+cbg8Cq0LsTKzUsSj/aT+E72yUpmRu9tu5VlK6JtFczuhI+W92YVih5KtYaWK
3eHQCPNUig5oraeLxRNSg9VXvDdauo/BWf4LMatihe1Tae+WHNhcPNhAfyLtBIT0JEqzxA0XOqHg
NCXYJwc9CwzL/NAlDRkGq22HWgGC7oezuUCL15LbG+Xr/QNOLsJQBWX1yEbCLl02SmLKpkVtZ79E
5hhQJB8lIoUJcEWocd/Pvq37C/K14jwakKRsx52ZwCAO+/S4b71jfMK07Obs9hJWMnh0p00hFkuM
J8e46sA7VGUlWvW7hgzpjMoM1wvkw+DIClf5JoOCRegoENWaopESMJ0I7W04ZJGmg0TOOL92XeAC
SrfaMDpjdMPmHZaWS4jP5zLe0Ns/3A6hkRKEjgNSsN51LFiqcaXfkTILs3sxnKQ8BEOrK6xvqlDx
hx7R9QhUFjPfZx0CA1h9DDEVEp/ZVeYMlgvpzGavye/NDDA068ryc+592mLXhewpVsWpHlC+L+nb
M9TlCcRI3VBHWq9QfTo5vJJVUsSLoUgruDBw1V04Ozcp7YIRyjuS5rirsRX+ow82Lt1toBjlsk75
/8DyXcTd/F3eDg96mJSiBkyHFLHCKrkyflWgyZufa619alyT+LCtWmPNz+g6pbTvC5gVoKIhbZTW
ZY/d/bm3VrqZev/ljke+VBW8PHJBv1MxOM92bs+njca8P4ThHCbAdvkkChlvpPKiuPGcsXo1iGPG
grdaoxFgmvCJsqQKL9NODj3mXtRo+3iKAK6I4XeMQX2xHPAFB1RMUu9f4wGRmoCtQRVaceiaV2ZA
QdkhHLCz916KArR+JrXhmSTl3whe1BbpjLX852vigA8tZ+JO7LSwg+94nURznpoUOkfH0jQD27BI
DbrSLMJNEqrt7wyWI2uoQEKoE1bJGm186Ck7NRjNIljnOpsin1oYf1h7qW2xN0P4T4kIrhPCdPRU
Ov86asEpuTLRoZqAmzaDAP27YzQfu8NmWaq9xfkuygQPu/Q1IdWAYcqHLqtx22TXClyeiKa2zDNE
RvQf2StjhctZCWkzBcsyg3rKnOvDAzLHiJuIpT0anbNvHHbjHnr7rE4Gr/RzdyikB+e2YMet6fl6
qXcsX4dKcJrHmtPubbpQpxI6LZuUcefGy2TguD7sf1+jo6wq6bwigyELjTKPDmfNTgTJmeq3tiqx
QHa2MwV1/UzzYuaa9diyuDNaOLU28gwLlx/u9JN2dfMNBhzZZ1DBFvvpeqnKP20Ao4KLF51seM4o
uq0cr8/0B9mYQHJubJWhRuJEzL2ljSPaXihxzmdaSgPod0WJdIFnNfMmNe1P07KVRN+MBdCEWZMB
TQGvx38gJbcvNXoDzKwdnOkePHrtwTcnMTc81Ni8DK0eipBSxP1suDbRcmqXaWwleFwnH9D9GlZj
ApxidSZJVlu4csK1XkWRTTjNio8RMeRtQt06j5BFfUJWXm0fCiTAERlGzkrS/YKQXt1EG7rOjaLn
vJYyUiMCANS9IiVoyOkZP0oC1F2uYWqYnp7I+03uo/ih70pbcQuEjj2sEkqn0ja63x/bIF297smZ
GgzMjO4uClblRSbIGH3Ld0G8uY88ABK8fAwIBgSir+uFeEYjNs0T/RCWnslVZeNggFxPBv0uJq5i
vVGVy+H49+8+0WncBo20NoC7Fwseqf3a3vvrAmgVdCsH2Nm+Y/s3yPBYUzwcZmqYJlYHP4iehxrl
gjNZS2lQzIzstJvws4gFFRp/k3SARG8hhdYLkJhnUa/kJCpLZPv3RGnUSe1NVl2o1naDzidLbLqP
JRFba8qfMt0Yb/kvJg2GusL66LtT1fvzHREwjLx61CV1v9lKoUBD2K3inTSbxu99kRe15UbLyeoE
mdPzih65XzoH1WwbCG7GU2QDoyoyOThVuNtUoa9HPqlYEbqqrq/0/2sIP0ThJQ9dbovOPHRQwCf5
6o9mPpksDfmi+KRsZ/hgwSc8v+YC8yEV9RIkeATxl5ztojb6DiVFtfeYhU+fIdKNQ/BrhKNoge+O
tFqL3YEPO/hMTNzrtXUOnjqORHzCdjkhEKqRIQNhh6VaPXPHX5ugP7Mn6sWPFiC4UJCQP4lH7ZY1
cYjhRCy2Uqk/bZDSfQ10iCTvvYjWqv91m6wnVe66mdxtjl9EidiHV9ddp/G8ftOG89WugwTVF+zL
5PDKVJzcooln695dj3zvDrsb3jiYtjFjeYLQMr9/HLH4vkff7aM6XCUL0q2hE90T4N2mbLRf7Sew
ipX/jXwhsSnolrMv67NNJOyLPXnqsQKyJmrbaeB6/Pm0Y3c/2HBZuWJ0My0nhKdbxHdaXYpEYzI2
lo490mmwZlTSOsaKW9qITwaRg0srH3Vtii11UIg/oNV+h+OxwOKw2n9EcC1bfBltOAxqktBNUfT1
f7aSgshXyB0/DRsgsNtEzzf4alEtc8z4zKlSsRXUPRZDnKofd7JI17gjWMiyZgSw65OtexunGP4e
oUjY3NFdN92LfHvhytBbsdcJsRIlhCgeej8C7nHFXh2IQAjuI7f6cuPmP8+vPh4QMwZnUq1uuPOc
cUX917acWArgn2ekdNjT7hFaxbIuAP0jl2Ag3a/jb/9/WI27oMmLpI/AQWwnBp4reU4Np2cCFQXm
CnrWYoK93uwsiYX8NESrS0r8PA4Xqt8Nv6dEjF4WMIBVnnFw8jfZORT2ifzX+kCNC8M8IohG468g
Wmf6kfuWu/z1zub28fIwVc/PsD0PlW5aNKO5uWebQffRZJ0tL8EpAgnZpxjrxVxNtgvQD6vCbqlw
QUd4tAws0X9v7cesULPyrYQIUI43TPrzsUocGSM5mVy8xEYw0ouhd9KWyFSElhuWgenpQmmYLCjU
m95TeRZjsfBDEixIGKD90JWVnpkggVp0qoFRECV9krtnge5skEF0wUpbNElp7KGyUlAwu3GiGL17
BjpFQvq6WpAb/KGfJqJiGht/v4l3nin/mo+7WeqXnKP26VR3+rcPjCLluGqs+Co3el3cmew8AJMD
oxrTabTA8ozhuit2v4xiF9Xb8+UZCkOK5O/LCoAVuvBNpYq3F7OFLaSJVJbD0TpyEgbwf7k2W9pW
3x+JxIFlsX7oKekB3GJ4Xg+CkBcKMphwpsSGyGCQUKmw47Sy1nGJhR8s2ZH79TRQI9hzQPK0fGZG
xVqmkn4411Xs0WkN2YzM/+k8fgdj3Cnwfsrha1IYrET20iYt/kq4Vac76uxEbAXa2owO9eAb3Z8t
WPkC6qEl7hdSsWaLq918oDeTdc2RGOCHCFHcYgIOysyk3M75btUNN/L6yFaztP3QkbKObOMZD9Mv
4Tm5qu4enXC/WN6m+DzIeJbcwRIZYCdKLHrKBROWhvVDUaD1xGFi1eXxn0BUZc30H8YJlZ/XPSum
KtvJvgaBVNNlhb3sQOF78vy2Vew9fWMQwtEqho0Z3m77bQw8U2eGmdmRODb2JmovE2BgaGqZB7Tg
bHpXeS8HV+K0PRVadQdOD8TgT9aVOGyn2r/suvZqNYEKXRPmaILNr8H8UsJMyKIHe3B/0nJ18Wzv
+9dciqFeQxhnA9vBeYPXMU6FBZpJv4Ef/10bDiQ4YS371KyWTbeJccxfli50x5YTQhWjD2JQou4q
svXRV8V0+Im8Eek4ufQFWEJSp+/1lsxLABKtRtz1uj+zQ+IF1yTglIQvLtO2sjt/tQ511wHSaEIg
4wFx5oVO9G/3Ah98k7b+oDMxznIg2r2inpaA16cQg9W0zISt4fiodZIjmq4UM+qWJD0AIVQREFQs
Oc7daXyN3wC/5KO1brGcCGMeUB0TPhvrQw3sJzDUcY2y8ZKJms3STAuS/Wm3U0Ike0fennvFbV/S
Xdx7DYx0W3xATdiJr7iK45wJk10P+2jDAEWRlPnrkmJZyW0cs4oyrGnAsx62QKsxt29Jyrpgs/Gr
GEccK+og0uboRkk/ypDia7VWDMOCRLsD+LhotaHkoKbd5zmbjMNvSa8q7WaxiFJPiv7ZtTQlKr4e
kKXs0Tjw93JJ+1X7ZaEkj0g9T6vSoq0kOV5UfxGdq5sPgyjuP8MkIb+fi5fzj2z6KHhoylooxUFV
+KMDe+fG28P17z7Su2lqNItlrdJBYoGN4sagGPjhqsiQhK1XKsX9ld9/+O6FNYVtKoEAAglW3tqF
vGNKFHlCDS3KGrlXckggUBmOCYVKU8knzXlsUg4CcqiZp0R+o8VmHwe8jtbDMSA4mt67gPOOMYh9
f/e/YqxQ/99spx123cTvz+jsAPBgpGFdy9yqzbI1aScEqui1JEv65wV4Y4uOaRMQ4TNC8JK5G8iL
duTkUYeMubsTuvhb/MQ97gQl9Asokj6sfo17+xDXiQu+ITNr8ptSusrglepEbuDfExoV4CbM+smc
lcqlXgYvATdPH8ar8/Q4dzh5YtQsLFvN7D/GcC5slyt8+4A6QntfFhbBOTAK++5HBmal1uyEDX8e
m89bk66/4RbGt5M9tCM5g4LD81dVs34iluQ4wowebWWG7eZHMVoNKEt8Ta71+/4aa0p8rGjqBdEt
tdyUn12DlMdVdLd/O8B/2NXTzLi54AteTRG4fVHVsFNrE+02SLck7Mc+yaKNC+DXY7Y3/uOi9BCD
l0b9laC2dqtf8jnG/5nAE3KN9c27qhXZk/dzrN1QEiucZdeOj9GJN26qGNaGbfOagD8aSC6RCy7N
rln4hRLpgIkyBJBm2lbxnq3U+bndb1KKmDTlKRDM3PXvBOmkT71p5J2ZBSZrxbGDGxazC5C+3ld9
rw+BB+zZigjCWRx9pk8kgf/jXKMEHeg+GiEDZeC4pocasRaQooL/C811REVNTqJfveAe4a2YE9Hm
iCK1BXPRxxAmxwRuZ8Vgb3RSKtJid/CIdJpTtecPFXyVTNugdulfBRy+q7Q/Qb4/fLj9PKHbLjDb
O1egKO2yWm6xvDatx+L6/RX8EpEqVCPUpQI+VSAzsWrFYmbkQuZijpiVBWXYE5sXcnWGXlGqcEBz
LLog9g2XyEa2I76CoKoMMOSsQN52c/ejr48SyIM1xLS16H6xFmiRd8Zh5jiP5lIiPGFz232K6F+c
kaNHCFzroYMjeCMIpvQm7/krk5o6XiKQRfZCI6Y1O88tGzYQsYsFDkuP/nO2VENosjv2OFSW2Ma5
6rGbAfzPK7sn6jMRHn2uonheO6EJZldU2i9infpfO1/X9L0q+KzoXvPch4uDG5mfGdH0pxJFXDbs
lxnaGTiVQ49vdMUYbiBU17+42KqaG+ZTAn+3RhQ2rBbG57vIkdDkgPgcFWxme+NjnAh4cIh86lsz
5bEd8voUVosetg4XkkXDa2gYK/r1VznzHT+FRSLDmWvb9dIrYSdIf4WTzZMUv60apJaXObOUGIRO
kkp6HuBAzkSvy1qZeXCyfpbvXfjm0+UwmOcNqPZl6CycQg6ne8QpBTwpoq78omArHQof9eNtH3Up
3W4Og0mVC0UpKPV1nlY2yyogvaLfC9D1tbL8RAdXBh/iXahNMQbHaxTkW2BES6zGWiHEg1zT630Z
iC4ul8cYzyG0TAkUrwtg8qwOOS/klKhgwL6iYl2IqF/xiDfLxDyDOyRv0zZiGSPeGaQAIUjRX2Gn
LIbLLN74YXTNFD+R8KXJKkzQ+BZ/wIRQdOoQpvrYy4ttALwyiRvVEWR3t9oaM5bwfs+NZzBZDUGd
qT+FFCrcaSlYujGhyXrzx5pDGoZGTb873bEZ1CJTmnsK4V1DXbwbN4sGMHmVJVVWNtR8B8+akrLy
qsaupeUywp5CDoqFbRIGUA5mq8z/GyaNiZe7/SB2PYCJxcJvrJtERGAezHWyfB/laDfrkxi2275e
ebbgsxe5ASHGZz3eyXAlRN5VyiYKN9mPHLLtAPGYFCO8/TeRQElzbc7b9h1SiDYeRxLlmOeMrL5x
Cw69nT1/cupovKfT2orBPJmrKessfpl+CFOugZJK4ZVAvxscr4+QB0eu7qMgJuLpyEQyvjsEkd8F
q5s9PrwI9hwNN7a5slvaBw6DBzKuoceVOXbnQd0gTzMekNgQsKUhJK0PxRbSwHfubg826oCEdmj6
/M6ZCXmvUlCrP4c5iWSLVJBWV+bmpZbZnYtq0CJTkscRDIpFf4UBySBxStA4FmwIc4MIGPVEUeKn
7bbtDnDIn501PzKuZthqodKvvJHRz+MSCLTaRNKWlwn3LQB2oD+rM0f2lgCTl4JEBBLCyb4XFGKs
Ae7kggMDY1ern/OfJAZsjU1uSuei7gulvTl30zd7JPWcRV/N7LCnAAsj8L0acu0hmnwZqDh97hI8
9DzTfz2SmcfCvKRnEwa0ua6Eo5cn0bAdHtacJTBmnEmnwq/LHhHhBcNqGFEjOTmwYGuHMt322c6O
HqqanzA5tOTTnwqU0D4hj0dkI7SfOACx+a1W2umb+e0DxJWoFJwWwJCO3aPwsq6rKINReaIg5+2b
sppqYtZh6Pb+tH09baS+tI2iI+714/pxfgvO65ygkmxIZ2fwC6XD9a3dpgHdjHTHKXLWGPAB6Mvy
3lS06W6nskp4JVBaIXACS/yxukfpzTvduiGHoE5o7YdOyUV3sFDSu3I7840LwoJ2gx/TlOhCRyKA
+gMwijcLcvyHG8TaypXwVWMMe2zWHTCW6W/ybB5M/JkAJ15WTgNfks7SLmD1jtVBNXSvHSHWCGyk
IMihIlvUZLCdtCyl5it77g9DDj6mAJHMSZKWGDBubaVhKjjRajcE7jbHBpM573aAOfXA+wnW7irQ
YI6DyepotnbSkL65SoJ+uxRxHI4jvreDt22CxwaYZS5TfUhPpBU3w2NbA4ZbtVMW27xYzRRH23JT
2K+Razxo0Pm2+ttpwm/3Ulv8BsM5SoNOIMZtZL9l/HOmf5LjKapDHIz/QAyGmkGfF//+g5JaYfoA
6gIbtDEEV3dARQDe5eRKT1hp269QoeaOmHDdTZFPJ1n4MO7n6dnfZup28r7uA789vIFC2BDreZZA
msAPeuOI1vTp2CNhkKU046zcri1BQsQzLPfME9i2MNRNqW8HCVNARmp49uLe/JzhtBeARmDnA/Ql
Wt0qHjPJDUDcUMs1uHp/eJx91PLrM9K4wOYEWLzt8202uuA/xjp7jrVK+fd9DUCoOIvsSLEWVZ5O
hMFPKC3S/S8sdmJV6Y91wakAZSrHduruTf9PdmgWL8U6NLf4HmGUyYidW7PeQNDqefnXiJ2kuA8w
ePbFgFVmYyVt4xhxbeQsRGPyoT0asnC2t7iFS1Ar55FdLmwGXiz7PB/KvT7RnVN+mXvIkw50sg4h
oDaIoXaBlVfNqSv5/jP1gpKicBuBu1ZbDhzuLNe9Ijhpy+4gDkwcprfRkRKjCT31u8uxQ+AxcvMQ
2w/K14lKLe6NEu4YUPKW85+UTUDhOAKP5X/A35ytHFV26A1Ie3sjYb+MX8XA2x5OYg+Gczu/sl5h
cHJ/m49WtsCVeL0m+cyVgx5MUaHpx46ousE8kJ141iukRD+T3c0vafwIB5V+ckEveWPDjqUjgulC
keuSaONWFqF6c+3RNR1EKdkqitFuW6VdVo8G5MZ3Z+7Ej1wxZ6H/s4/0G0k8lP8lQnY1dfg1Jres
QZ/W68YivJPfaJqGaRkZNlJ1hVhccKt2APB/zH4gukJuRVVpAugvbHzJ5NCU4UrQO/CB99vVut7R
R31hbNsyRPCqa7sEkiqDR6Up5e4A+cQkzHsu+8FU6vM9pkQULnV3L9cUYNTp+aJE5URX/mYZFjx0
rm7JZigLE94pMiNXs5J9KXZnrIFejTfV2nu66yc4pACedFOVeryS+1tR3l3nQ+oC7aCP9YmBSeBj
EsF1akSTSQeBkncU8youz6YAUBAdly75in2FIlChfHR8wRy+VCDfRregbuzdWY+Mg+hsGNrcG/2R
Thqr+uJXcUf1sKexuxhNboXJZiLdGcMZgubBPYIKQNJishVsiJbSHKmFzt5jSXvDIFk4x4lLljsM
ep7Wr5/6O6ChOgDXh7YMwCmXEszp4Bsf+MQa9JORrR4dbnd0f1jfCMizE0iOkflUuBf9eR7OHxAc
/rHtsQ/XsIhxndi9ckF/pluD0N7ty/q+ldCxKBLF8vRpF0L9OFW9MMHtQ1rH00SVRHCaMMCcNF7p
mWc5e+0f9VOzB9l9CKk/5lB2FLH4vokHbd8Sl8N4G6tL2eCo+8e7CcAqiPVzGDefjJMb0JS2pW77
5ZROnPwFYk/P0RF4895WGEvCZWRjfENbMBhEFYogcmQVe6L1dkayjNj6OOXfa7lYkBsO+wGh9uOl
4ueEXrnB4McAvyBSmILxyeeTtcLAkYYq7cBuKC1avlyXyqGftp7ilWJslgHpoCsZJdQn85+zOSy+
Z5zgMs4Bo2xzqDLOnvnMWcSj2EogQ9o1L6+/q2Zt5StzBNHEYS38Y1GNdaK4S3R84sNZ1d092sWC
woB6NBVEe2v+wDruv98lOTeBaufJAucwlmPsbJZ6P9wQjs0RR34uavPcrd7Sq3xAMcn1R9ke4St8
zWXbbD6sl4YIlt8C5EV55cEXRMQ5vL9tb1rcmdIdWt5YKHLKT6exDdovgRFJkNgZ5UIUyRIMCIJF
M4ovQOFFuNMYzoCJGKzmVWJx8sjEEyKGpnPZUi8PZ03zGeejaZDNiHHif4sUJASDZ6rGSyFZod9D
mXBlazTbDUHlPuGVNaDdgiHdLdyWyLSmOdUwCSM6p14z0GsH5Zfmki0pmVV1iPOUg8c356yHJcoI
1dLHxfmJkypPCqo+/W0F3ENDu3MG9IMvooknw3anruu5P9teXUuTJUYR/1Bmdy/wJWyr62ThCt/2
qlUgKD/cnG5comD7xXinkHk1GBkhjJnxIG/1AKuU9G9VsZH2QNLV3VikDTiH5HSHEeTHoTQ/FvRO
y2gR0MdDeaqbzzq8MqvIYdXDUSIM7tdMytMS+ptSIZm4EaXekASFAZQsnKQaXbE2CMUMIwHAcqDp
EWEIiQYJInCtDhJHFEuojqGO3WAYqTng2wS+KFPwQR4iGz0m/qPEvmkHrxH0huHd65I1DPjKa3oH
pneDMul8iQ6FtnYMl2NHpZls0FfhgvM9GaB8chClIgD21x+IwOsDaMA2VEGh2My9CyTJq14qY5MX
JF6uj5obhwKK2td5pmI2TROIBAt8Tki0wPI3FcKLyFJg8rew7Oc7ncHmP7gCJ8FsDOLQKJKSWl5P
amlRoXHj7e9X44eAsMMuCBdKEAZnGnZWVAfnqF9aDQBNeDBWn5cE0PJtUw1LzgUeY2/fS14zHQbO
8R5yiUG5ejKOp+9V14ExxRLaWx4p5e2F0YRKpX7t3ITQRNSb77cChMt5gPoyGhB5MNKKOpVuKblG
GRNIQHMmD9kVkDdfU9hwzWa64ESG34tlCtOr18o11AOFnXuL87MOTKR3ojbKnf43/atHWhrdewa1
AQBYkzgG6p+q3/PyzGzOlDPGPRjOAEgg2LYQ4CMu1MGB60tomePfHrqRylF4ltGF24vyeC+745dW
CnhcxPYHqESwq2Vgfy4tuQVjMX7JPEN7wO9Y5DhTGC+pHzH7QA+mttO+gQT/BtjEnFpwZj+aMSfG
fap0CrwdWwu2bjUj3BpbXhBrOHkdoKAcDVZNBct/7gVorS5rFhTfK/trINGgvz1G0OMx9AfyOItx
9Ipg0NRmeB8nEkCFWhizdFJ585SuGKJ6w1uaEIWXCjAM4rI5Jfuzqp5v3pSRZv19K8nQscSUOtHD
DhdsjDVI4M51wdHWs+ZR/SyszxoIWmqPqLw33gGIPJejgLFfQbsUnxWI/VTuAkY25B/3eAqyX2JV
yPtiiIDrUd2lrpsZ5ZclZcwJ/FxpzQHK6F+cHb04pCqNhItpF0FzSJE+vd+EZpY36w/nC5ibwvR7
5c+/hgQFqG9wKFCXNOh73B8uzm0/QDxE+HX9aYiuEIi/3NYjCFl13lfugWYne6WGNsa2d5baf/ux
zKfTQDMJgdbltVeiYOo39uAtAAYtWJldHeQ2bXTXnvQm1G94Uo6L8McAEJsB+RMG2Ix5GIrgYLn3
N0oiGbujsJ1sUiZMFIepXEpUFYJ0hyJqXc8JosXO+s1A+aFO14NT/FK0O+9Snp6NvgwbuLfAFE1t
YDWKbkA60djvFeuBw0ntwUwm8zbeN1IWFHUrAm9y5+RKkDs5yopTO6GSp6+wUXc0fUno0t5yxcS/
VpFAu7AWMiy9JEzT6FOSN0mwIYOBMOJC5T66hZGoHfZqqGZQFU0PAv3Eqoqr5qW8/MehlRM3/0YK
JOkhjJa52+2zc4kG40gCwgJC9M/qoru1U1IQ7kUfCbRnrwrE7mSorCdg2gbus8GrUCQ8uocYmfQ6
S2IQkx7rQpCBiH2Z+4wWnUotosgXZ552BHsP3TUtPKQr8zm3DmbZCrGSJjE6uccGAvpE0y3P8oQj
V6+L1XQuFB9cwcXmMa3eQiNWbtjydTaiPjdMhY5Q2fhKKzr3/rF6JbeAdvUB78KcF1kzNNeYTNb1
CEOUh36kTGp/Pro4zf8HhFNU+jojpjmGzWwPNTRc2XuTVMPvpLDm5Pb3Wc5g4BMKMe6AohTPJyZx
Kca5EBQT9qjJ1yuv+fSRPSY8XZiEEnfZgFBmVoXTXEfmRE7eYrmc2xz1S/5U8FW3TaqMHdKvKiBE
Yeq0NzxzwgfNyhKp6w+j35u8b4qcGYMba5k03NMTrxrCQskMpYQIWadjFCj5QjI6G0UYSPSxqG0P
kSqqTh2oRl6tMbjcOWrrzVppFfvEfOCWC44qJdJ0S73FOyDYnZq454wTCMahDQt6cZuHcVbe1D9w
592/1ay4G8OxMT39HC6PDZdEq8CTAPOFWwV+VUtHia5/idIIZw17/mITD68bG8qrBIR5ODC1X+RK
VW0ACodtLP2F9ejCTDokJpProkcJm9iawQgDWKpcnSnS4whRT45Riah/XetAw40sCWyGqEoTH/Wl
yWh94asMxI4VVXLC1rv6C4StRqogwUbhOR7OivS6jGnZGtgsCdLItL0BuO5SQNX06Xrr2mwYuD3j
H3BA25yZ5WHijMGmENksAo8jfblekB+VMPNw9ikADh2GtCneh7g0UBqNbwGllitibg0Evo4P3ARZ
hmpFpaoXpEZuVz8HBVwxyWt93GGVl4ZxD6RWztrXtG2hxGwmd8DtLxonm49uWkdANvjn8z//aDzy
DU1cz2ImPIkHeHOE+qhlD8X6JaM/eVnZO09K5s7a8kAkOYw23cqdoC90nAiLfRnwFmYGXSP/5Lk9
jxT1j9b98NOQRkpJJVukz70D3hDe9m0sZbvel3vqwgx6nEd94BeI+rjW3OBtbo2Ugd/NecHGAdM0
m7MWEeixK5nH0z1Enm78w/wY03Qy9T9YNp3uuBQi5au/bkv+S07RyRkubWk0gAeiMRNIkumopRaa
muaxxviyjb0Si+8snA4H/nzIsm//VO9xke+blYe4/ELGzvpsrE9VxJMGhu3+hv0nP1tc+U1LyfiH
Q18ChFjv1kmlgQTD204tTZyaH4W2jBaotnQojc32e1CG0ZqpM67F3flbLBZmmDh61yvQ7C3trPK3
085TlxtH0gX+KKuUWv3gvbKnmHnKYWQ9IU9eL9l1NmLVe3y9bVJx8ukTS7V9pIZamHpJL7P2jjiT
NB8AhZJwvB4H7oXAzFu/8TOddN+J8LqDDsiMJGwh7UB78W4yacBUoSRGjQIryQ6RG6WXFS1xfpFe
OTlycSOH0e9IikZQD61B885u43RqFl3bDsz9DC3l0cNmCQLdWLS/i4mCtJ7p30iQb9wyi087ZYq1
3T2qCk9sbSdByF+JKom3GdR4JyJKS+akCpZKTnkRuILn09iDBaf03RYhg/ufEoZk/MvWeqaK2epc
tKyQasepeYpoUXoFsppSNgMmJvOjjnwhU65C+FB2MKKfnea24O9Ccbf1tF0A4WIs42WWlWGSZOw5
431HO2Wz9o0ZoIFVMrp0o/9jfqbwlJy8oDqkJnkG3RnQ0i2eCGxAQ7mqkVvMtnJiCGleoyemQRyb
//aJ4APF5vIiR1pl2kqMXPWRD33HBOMW+yAtFUab16G8cFAROKsbST4vXIJkq3/9u9xGUF0IgCfb
Lc7rQ0zfSymjd7bSRMZOxGlxEGWNeNaPA0TKKHGkZY6mLnTDU2ihBcc1D6d1AuPT5VD3iIX80zov
3TDD+bofOscZNe/rGezcGHgWP42/y9oNFjz7g39MMDUjJZI1YqZfhMqvt1Y6bLwHGgbAMRSxWnJF
kPcKN+OB6iqoc/erC215OUZdSg1GkdziIZbSmJVsNRSOhtOfeox4W07lOVnq6ag+oVcok7pdoWeo
Icb/GsSW8+094BVDiAz+8MdbmqeVTt2qOO0dxEDFCY8unwHwwRLEUigaeEp7JEZs4pZYw7EUWHwe
yKYnbBqHVxDu8kbiZIjDW3VcPk7asf84ekpKcAVw4OHM/EQZ16ZmQB6zPa6o4+W8zM9dlHmiVcjm
i5WmU8fkdTfGmi52iVnhiBBs3dNFu1buQX1MrQTppZLMJ1Mv1EDI70rYOaZOg4OX/9kNUh4hPIMZ
EbxeWa0qa3GsuqcBuQPvU1KkkcDUdpQx2PEMtA8ng2QVKQok5qu9ehPmGReJDB8swjs43xCGaedd
RfmCzwEjSzgSaGQG/WV7sjzIgRGUDaNgMgIoK3aNc4ueI29phOjSJo+j9L9di0gFZU0LkNoKohGI
WLXlJUoxyP/PAHK1oU3GsWaCLcJNXLr85F+nPJIJ2sBwnlOiebe9e1Vv7PK4itRzDoj4P+yg/Qy+
xq1G2P3anB7QRO5+gnVwpNnnM9x+TemBcDvVs7Nh2bAdZicGVIkUBVZwITlWO0OnhS7joPFl77mz
6kBpyVSxdVbHF1RgJse9SZqxnYhh/opyd3wqpuSvICHrWt3zNLWcNUVWbnIXBUI9S5GevTO2vOah
3W4lCqk03+rxbuDbuxHQoxgvU5I6WfSgu9vqeK7p4AetJrDvrXuTiv8OqkULED8JOAgYIgROD87n
rss1239ZPin6TotsBb/HC4E8EknpC1EkBYXZIu5BAD17b6MLXbSu4rXRi0QgTpyyZKRMrkVv7ndC
C6kubNpSgoRPJx2ojJKUAifazvdXpJIzG1vhvYTJFYQbH+XTV+8K5mxa8Sov5a4bryhbWTlLgwDv
9rO2DBJYkmLLCZnux11jBx99zTRNyik3Hg3v89x8g2VES2IZyAszpdU4CogBa3Z+X9FbHD2wiaz2
CclC9YM2S8B87HJnFYeBFmHKvXNL12SFj6RyUt6gSGRPMiJHfV28Gp0K/xsWiYOS1YDIVJFxCFeb
mxC0N0ocnOlh7Hl5i/xJslKOHpz+437ndVpg5E+gGrnjOmdSjnUSb7fjZsgb2S8rX2iIN6agxq1y
+E8Qo7/07+YL9CEyCTzbSsmpaBbDb1Ty4iJ4R7+SXX4jhY/dEAgvnOhrHLx6OcukH51olhfaJ9dJ
TJuXRaAUSqZil1Fzey0ksF8e5Kdhblwvv+fVBHFYW4GAHMlY0P+fslFlWzGxpPcSfwNMLZ02IZFk
BQ/d1Ct9WuMC1kRS+db4krw/zMHg44jKah9KC5eDbxWx0EZUYtZXj5fkvbCbUWL4152yx3Mg3mvT
qhqpFkpiO9JytATm9kw4bQVvsKxt4q4gjAXvH5JTFIvuBdDX+ARdzgz9uWqerG2C0g+ERP7F6FDz
FWcJfxXzp+kpwp63Zx4pIRMoDa55kyC5/s9Mg5LI6Fk3iAWcMkWqfUygNNhcaTeCmzG7LtiEMWQ7
vdl+JBewxxd2Rzo1smSkcGXP8xHU67PbSxInjJRgvMbe+iEhnO2RT9GuxppnNC+UKxMfKSs0CfH0
7s4bW1tDnJ5SlTDAVVM3vn8/EduUmYAEWCfyuObbe42CfGoT77pwglnjl3U1PqQZmPUG5BE77WIR
RKDqJqZPMjY2DgtzLYiC/zRD12EKkYLkE9nvO2fZMDKu+WSYGSlZDv+YIQTccAhqYXvKELFY2sub
wy9psZW+DPEUrL5C5tMwE7Pm6Iqlf/8sbFmZYP74ifYYy21bz5leh82I/ALytKbr8SzU3CB92gHA
FS4Hk+6xayRMa5Er0byK1POtwWupwai90ahArDdpONrvcm+o8K9mh+ZWjFvzhUzmlWa86PEX+GQ7
A6EjoTB1HnAtlIE+Avmh4cE4uKnqCvlAStAt2KyO7BbuuN9s5PXrvKEv9nK4xoIYjHRx4zBbidOB
4L2NnCoFtL5eILA4uIhXQ8QVDj7GKbyRW1ndIZF2tRGK9FBFM7GDYJBmUXDThJyKotHLMNj2EnmZ
6KP3NwKF+UzW9+3ud8r1pkFNWGQHg8XK0QxT4jx0lDPzlzv0IuwcDtTLDYHQh6B13ViXqyIeJZJP
xVlGl/MRuFRf6m/EHBapPp2G9y069rZAWfQmJnmOkaLKvuwpVCe3m0JAPrq10fTgar8H/6SimTxj
V0a7z+S4JhqAxcxu6UECaKYnKAZDzp4DUxIfmFbauoqUzjHopYyyNCmL16NFsWnum84n+RTV875n
KIEgDUJgAevNiLWSuldcqRKLshhaM9Ek1jSUFWulkVMIH6mGlvupBhyw98z/xZ9LWYivnTmCuhYK
hHG72xhsOiDfEqjr3Nqp98VLqhCDqnMQJf1o28u7c1oIpdz5mZ36IXC0o8k5QBW37sN8/MyYUxG4
1QBKsTDDHvnMeXRgEFzZeluwxfVK8qOtLCNh1eNfVjCCpSC7MN452p7+iKq1CHxdvrtvpWJhMEgY
Iu3rrv/bSffrivKUYqv4GS94LrPIyjp3hicSuC/1ysJXsi4of5r2EJ7ox3AK/L6rKFNO+de4rRTM
SRnzIpFizg8oMz7I6u8dbWO0C9xQbtgvfTf4dGxPoPRW11SIHW1INhcS/46eltQrsLtfyAszpFvN
vkcQZgFAzIX5YV4Pkyfz2aORs2I5cuU6z3HeDyKT7MZRWDppECQjvpvcAHWzXHwAOiJoJzWMIitb
by+IKXIu8ZEBmtH/xrAnLzmTLzaVeRVM/GCsCsOtlj3yorGO0cfQcTuhFCVNHaR7R/XmmE60xMwh
ifH4MABuIByxGT3RLvB9o77ihdO3EpSBgYWJBnEnmzCU5PzQ3yc5ocMYgVZtJ0xVEwtO1WMTHe9v
Qu8L0OIyD5DdJPf8Dns+XebBOnDdbFta6tXftl0rNKK66kSZFjIdB6EqPWzUYs8lZgXBVvWNebRP
R9SIeBFUeUhri9xogXw6D1UKBhRQpizmxLjHGri+C5GGsJNIBqe9qL7wYhd5kwAMjiosJjP4mInY
GL80j9V4Qiy0e6Wv1eR4eQf0r1acig1A3rw8kyphRh1SsU6E7OCId57RO/8XVLa5xOIqGPzhmb1S
2n1FeOatHPcH3m02uTBcMI9bYrpcrB5atnRn1ZDb9WCgD/s+FqCWzvcaOhT0nJJ0RmNWBnPeoJyT
9IGaXR2SIXGJzFcKUoRzA7k6tGzdCVoBtX4iCGB+EyxfG33Ids+t9CE1aMu19gDDYZzLGI2hja1g
m4VggqlxR/Wefa4NHWSKtwt/yNEuUCLIOlzSS2kyh3yB5xCqhMKdRtKkWKb6oskaVwvLbpGXgFIq
B34jsq0f2mnB5L68e4zCV49uA78P7zigVak1NGa27huFeVIfym2oHJO8ixeeIs4XuqSzvCFLtK1V
7OMGWGrqKWmdtIJhesITm+g5hISXo+0WIFJ3XNfAqX9GmOqJPEaRpMxAjKLv8In05y17ZhLGvF3O
M2lioBGJqiInBttLd7uVYvnmxGfsvqjo+MEr1wKWNqzMleCXwF+KSxFt2O9y3MHVxp02VXWFXyTf
9wl62H7kzai0N2HrWUIScoNfY9V2+UEbF60AISPT2q8BPNM7Wr+r8fVKSasGlibKSwiM7AGWnr4w
mhdrOE9452lM4PbLpuu1tWmlkkXHnNlSEcjW67fb3Fc0F/7d0u5BppVL8mag5oVoYlnEOvniwKiC
AG4tRqkt+d800nnKpBvSk93E4qTt4q7ezLyk3kN34YC3OuPxTt5rVXoNe7vnN/TjZHptDPR4B6sQ
RsIixWyhIT0xHwVOwsdWYeQQ1ngkDqyf1wad+wzEY9Eyj0DWaMoAEVKxx4F2vdfSOn0FNeEeN9Fc
yrxUi0CMevGGWMYLbrtmKcd+Lfwtte371579pbq8ihK+kVxS8xF8nbvGKDyJ2Pb1S4XP5hZGt2Sr
6pQAAnsq8UYo+bBtMbzeiupUiY5DJdiRRFZsrthnlBuMzDuPQI1wyOUGpyvfKdyWccKOxa3uq9V8
zoL320eMOWYb6D+6V9H+9/gOgXgIgIDn6z8WYd/v+fgH1LCejpGveO+2oNyBRiDlrF8JA9IowfuS
l7AwUF+k7vT1mNakZKEKwvvMP5in3IZy6p1D6uu7E0lKZioevWnxPuJBWoPeemX6BruKQmgvCk5/
EV6ap6+IKlicjmaNJLvSLqHfuPPMLqnVURWqteBtMEl6MyVPrSnrz3m+TDn26FAGF2Lhemh+lzic
MqdvLueey6gFrfbjT4WbUFz7lDHxj3gsqLL3HVvGgrfX5R4kZrgBdU/jc6qG63MX7qmW6dYS6nNQ
r6VfkoO/zPcthkVrTIcoMUDFgJPAq43dxl/zWUQLAWaBuPRFTLxAOGhDNzwYgaluZ6K/rhO3fCZ+
crz3YbQnMVlu95ciQL5tZQt5ccGXRr6iM1O7EL0IL2XNwPA91WZhIK65v3kvTf/dGVxk6xL+snS9
O0t1W7+RtT5NrNEWPhstIR1tJu/7Qcjzi56d6io0l7TLU5unsItexz3BkbrPpH+A6FCbdwRY6WNc
jAUxwLnsKiXlTiB2k9Hzko0HPAHfSvgBPuIb6kUCAB4WgnqiQ8xV8llCgMlaIBOL8U0TR0LkU4yp
MzVX9uSG8bwDzGq5BDVcQAwaVOCaArAwz4p3UCqsZWRRlvOcDR6cnU+G93bfwtVGl+OW9rT96LPG
iT13gDYbt665TRgS5cDv5nRkHC1O1+JG/Vt/LG5Qzsgf8FbAJVC6uu18DX++wtKlbz9z8m7k5+Rx
XJs8Vu35o4aszirV8+Hlni8UnVJsGlBSBm0GmtXxoNABZ3p1QoRnw3pAnUJ22lv7WHvr7g4W2vbU
RhZ7HuJdIqxQMK/3mK8LQaj0WM4L1ULhW3gKmhAlffKfxQqkS61VoVtNecClSblX0sa2U/ERCqAz
+28PwyMCbNI2fXSTn6SvYvEfLnZYPSDob+754NL4MlS5V9VLWQuM2Fgt7kzy6Wb0/KBgG0j2PaOf
Czwxw+Y1ExoRVAMMU4vbQjzzAK9JAwWPiqGsDclejRXdS5tD/jSElhW7xnJNsvvCnpO3082hvuLJ
f40sgtEUqVBIXIwoc2PVgzirJqLrka/ks2/X1uZWZDg/4ZLEnG7RzTTVCqMHItCiUaShl2Tjeq0D
RPyO3OJEHtMKqJoePJv+N0+EBloTrgzgVJoeewNsWQFORssGhlHgRlTuIoIpv1xfddNc0fq+ubRJ
000IEvwpMcoYvBZl6H3i8TkO+pMoNAKjYGrxE2cPV+TuE9YHK3SekCnX8Cj7fUD02Y2oW2dJH+uC
7yUh+vKRK0L5kJlafRRyjjjMLiFt/hUzPJZd42ffkeFvwSbpy8JUmGLnYbqxZxF3ImugSrDYhcO8
/JOZedgSCg8BuZ3CRsuoSCa3ZJiaYy1fna1nkuxcSrGzQtpiM7TXWZjofUswv4VEAVmRObT1wal/
h9FkTY2xum2VYgTakm5T+wS2Pi0C5WUkwGGWwaZI2Xq9Mq+Rdi0ffNoTxYwWMlJFmhgZjb8hkySA
do41xim4kL4TtNmiBrRu4JTVrE4Ohhvn2Icq8t1zF9H+6bM1LsqJtl3MkDPSpQjmkk2bXJDbeYay
76K5ofdH05OgWt4v5YbvfMaKkb5W6gLMl6TmWTdTphG+qrNW+jaTE3TyhPKuPq/rovslkpxThUdq
xzXzJagL3BjxdudHXDp6FFXAJ0EPM8nFQgHwCE+67SI0Un5JQfpVao/VoreKAG6bfDYdRywwApYL
i7s578DG+nN/BZkttePnkFI4a3O0OEy00EKsG6Agih0teIkNBD7wC5FExcqUIr7T58gcd9UswBFK
zZ72+rbU3hfLImdZgyxckmjExcVd3Hrhj6MzTLe/6sSO4fLk5Q+TI/0XfsYWRIUysDomyK/kfA5x
EH8rgZN9EFgwGtf44d4U4IpsmxAsEdRLEfnTd8mfXUgAOIxxXfkwO3u5jNQ2NwvJVWEevLfVqjo6
vHBohcrx3JHRevpS3H1odCIJhv8fsMxa1nnYyxyjD566bkiZwJvE7ECsvaSAA5GzDe9B7sIsg6Pa
qoqXYJBm+MtuTXbEq3DSPHA1u1XLKyX8C/hgn/gW1YJHr9TWvC3Pn53BCrM09GqYuVZfFV6VyT2e
53lyNkQQLIoSPV9F7yHBl66y4h74XfWVHD8d1ZtQUKvZ21IZ7Dh2iJDuO/OxW/0tsHZxFcOWf8z8
NmKTR9l2gy9d3dkdvQZjduFu15mdqYi1+IVYcWP5XD+wr8Uh3tqMNmWgoGfceYW/xN+L/YbFV3R3
463vA/sFM4CpnI6G0eGw5OMS0xaYgY7GHSZjBIsHj3vJziVU1I2A4tH4kbHf4IWjpTa8tS54Ouaw
+TZ2Vd40qml+h5FYIUzI+MEvSvtEepRwS4YPOAsQk2F9zljkvHc4m7mSXG+qcOWFaLCHKGsn9Cj5
P5WYQbN3F0BHmhWNbb6lCyIvDeV4ECxzMXg8W2IHUcnAtI6G3OMbXXCQZfQewMrjAZVc78ZnE7KL
JVJ1HmG22LsbpA83YBT6Fv6uPk/VhYOX29ua9r0pfmMjBSJ2cj2oh/8Tfwck3oxhZ6X95xEoNoPc
VfPROPv6TvMpUctYE6zW09WdIUS94ayAV3pPeDL9DkZNpv8orDOkOy+Ww9yBP0N1IZ44zmlWAsE5
udg3pQ0Gm4+YA6HCMwQ6mMHXJ/kz0g1oS5WkbaPno7O3lvcs8w3th7Uz9Vym5IYn6Db9WDXTIp7j
ErGCcuHup9ma7MNWbSknqCt47Y2lghq7pUlp3cpiZxxCXz7F1mliI5aFZJkB7nGVTJU21GgO8F+H
h0XEzB9Fvcz7LsZobLA2A29kDRhRbeQoVsaQHZC49oLQ7dFb5U/EmjLQ1aSI7jV27fVX7I6vYWft
PCksiSamKFeds91hWGd7PrmqupJcwODdRpPOXZt5MOzyqarGnDtSqXtEhjqYDTNjL/w7CISqJa9d
Mmh/bCcVOCSmcZJyKc0EDTc6gsVH+byatCwAy7IvxSpX9tAA5rM2rNy6iQp3AJ+BGg+GhcUswtlv
KVyTOdCwdqkaJ6vsVuxI9THYXzXT2okCXuLGHx8/zdz3K+iSbzr+s3utmSSoD+wfxIwHRZiVgWdr
C47p64cSUMGgRDtBzExTJRkB86k3MPYa0mvPs+BMvW22e7uyIaNREbMtrnE2ljAxjsEKUbP4Gz/z
Js9hQgqQXw2l/W8Of8EN/oIz7/RW+FrvQOELsYzkZSF+Zswna/OOct44AybcNLU7k46pqF7ZFdBR
CbhuQgHqk+D0mtfT1fCvZjOwaEiQ0OuFhzhc6lQvQJH3KTONxjIS5IW5MuX+Z9WKukk6bGfulzNE
mKFXqkEcqb5p3A8fbzC8CVzLVnT/2KcB10S80IElbBf7JH3m28u2crSJP3A0Bu3sJIKGq7ORJHAg
h7m8j9/91TSS/Gzc+U6Wy59DUGiJceG7VcF1OQCjgLje5PzrNunDYiMExC7uAfSm4SsUtoYz8fRc
KMRfgYK98jVTt8v1KazxteohdVRs+pFpuvITVKDtiUgTdWyuQTB13Oz5s+XFWhzDRUvE61hra8G9
coDD+EoyJCTH//Y9TM94RMUFlP8wdidBA++ukUfjwiA55vOjATF/mDzrHIV4M6apFfkpz7A6Euyb
x+1uWN98jSwBZj1/z8ehMvkDW485po3Hxrns/v3NJ7CHE2acDGGgOGQwEZOri1dHhICWvydO6lTk
KKiF9Bcked95eyEIEAmcZsJPGmUTFy3fy0yvWJTo1Xp48oLNE2hnIgK4lhhUvKQ/UwkLmz6fdA3/
k66nrcbOCl3wR+5fMdt26XnWQ1emgd2KqF9HxBJisMT9GVAZyzuo0ZzIHqf8/8ySDQi/nmL3XqdM
Hb+rwyQgtBEMDKCJ7C4Fs3DcWypjybGOxP4ghzyNrjAG7G+7+/ZKK0lhEBCwwqR+5JyycFeMzpe+
MvXxHdhWV7ub1kqVC2n54s0nYPp+949z9PKcNZMcQfkp/1ZWmjsKbTu39RtFksoKmMswwClgbnA0
bcGhe0NBnwVNAGKfBfOl2kCNYO43GJX+GCE2SmMIljaRwMn0Sq2hfAiVWhhwrkfyQTG0db/DVPku
1jmgWSCPXMISKmFHtxf1RDn9EVaeIEWQ6tfXSJz9TDF7sqXwdQ1InBz8p9erdZaBVyuipdJ+A1vo
6FGAgZcf3goXk3Vn2qoIkoaEA442K9EzIM0pNB+z336yXUGfXzHuyNdkxdDR7yc9U5DYWc5CoAcJ
HqSJUVltjnMMBTQvMV42eh6Ce3SWZG/K0dUKfq57j2gcG8qdBolH5s5V2gDQbmiu6vklDY1TUHGQ
tvEQOnItxypdFHIdnywYKNsFRlsUlR3Cb8j7GDREjRsGUOh0xykFCUv08altbK+ttvxX4/oR9oza
ZK1XjI6wck8rwP6CVz1nrGLcNlTRs5ztv96xtzhh5fXcjA89IW9ubkvtq7Ks+uNcHJqPZ5qMSRx4
UTQkKW7VYXdTu6wDdgrPOVcmN+dTgHOT49nx5Mak+4MWt/coZiQLYymeELIbT28P4z/w6zJKArFK
JLs/SdJDHE2Q80A5pbzIxXi/nvz9hNolkgnmSAm6IKMkTSKaTo4qYvepKNjQ13yFKPonVAzp8ARU
TL2ARvWcmvLNBP79VSda6ygvTp+NL/0E8dhN3OPQAPBXmeI92D1hrVEpVcjOB9byR+L2iT7n22GQ
FttqMmvjOZAFYFEV4xA6BQaIUj1ZiMqdyOen92gfwr25Jpx8QCIbRphHjFCDKWZHGuuBxDYoSC75
cKOOALvFURvGAgmUu/SpSl7+MesPQSRZMzN4bPzLa8pVCA6ZYBroWDfl+bRdlPdKSX3FY7YHfugU
29aIfYZP81hQXzi56xs66PoUTYrmfLkXEjfNGa6ZC0HIo6akEd1QCo8fGIekzCYbwRCdyU5WcHj+
NJikem608leQMIHi83neHW0GoUSlxQgdEgV25rhlMEtDLdudHJPbmlSQcI6T7lW/clrsKlb8uUsc
TLvXScdUO2zqfNONXCIuUTmdKDuWzsVsAjd9ZB0Re/P6Q5emPkN99zZSAW+Cq2BHK4Z7qCFDP99k
uccT5M0eTgsk93cA/IzuyRkfi5MtvRW5qthlDu2SWZ9Q/6uxdEUG/DIZDIYFH4YgO+i7y/dCXCmX
nJtOYx8kcmnwfMYY8P2GcNM8/sXM9FNZ/0gdxBblQvHUtppJ6VNEApcVxjw7wWgiSIIfmM5HliW4
i2JoWwme14+JePhVaBRjqPclimmyrFYVJjKr1cWO9C99El1AGPpG5v8bVN7abw2BBINU86mhpnqs
e9RvLwvaXPr10DPaNMSa8+Vjz8oy1/AXC1//CmHB/At5+Zoxn+WsBz8T5z3ppFF0LQ0GuZ8QLLB0
QxoIz9ERAxuxkMLX+mwUQleO8tguIfBsAUe7GNiPWr22CweSItA6lwgzBajjL7MR6ccGssz1YxJr
WdSidSFTJjMX+Cu60DLsccX690yq+BYwIXsgYYsOUAKvkiASqbamkua4nBPJf7GH/qQ2yD4hbrHu
+lcHPj9tAtFXoEz/rm+Zh/PvaInoiToetfu1Vxzbok3UsGqxdh9v/z+EyBMoxbDvAYmOARfNdA4D
uUDzpstOyMUdg13yrNzWShBZCoPkalmZCsnZcwKSY7KnNxP9xC137ReojwBXsjaQvXoo8rKBL2GA
QKTTHREwSkkJhR5GEArGPSfeHxa8sK0WfBvmxhYzUe+yIh1UPCK6H22IyAt4LmZ8Daiii+M1j4Aa
19+ZqfFgu7SSNLDbXC8F+4oUAFRgD3CuN2eH450iSMEvWn9MSPl5tGnDUWvoP1Zaw5M4N/NKfH/N
4oGHHfDEg80AnqaMCJmrOKM8YNdgfUcreT1ZY3YoyRlR6oFH0jbI2nxt9lAPhZA03mKmRZm34J7u
DOtUZZwTZwoHWJ5pJUnm605WS5wx84VFJltQIpOfZNW5TrYj2ReceZak4g7a8rWuwnHkRjHFagzY
an2kmeqTRPGVSOabMijq7Rv4PPtAC3SA20XM7+LslJBmVNuI4mvg66w0NqG+/Edg74rEkn4lhzzi
BivN3x9DxXBSdAnW7HEqkfk5cHit6q2poOEfKXzV8gGFDk8+BY/q59hpZvhQvzEigPSMUP3WhAHj
CYvwEqJuCgygAklktN7TF7pBz14GES65MHaMOswrq09hx5+UJVpvFUqaoaf7bqgMc1/cNnWTSyWd
xmC4pEf39pZMuknPCDPfeFnwF3VyQSuJanXPHHlVV8LNcNPV7u8c9/3vIldx2jjy4mGzU5zWvdpN
lNMKQH01I9DL0Q/RXoPt98V51tgOerh1K9WbWkuViQxGqeVN6ogPQbyJgbJSQyYQ51UtzF4SbBd8
4WoGztn2vgk093fdIy92+UYjrsvLOWOyMTfw1AjzU0SZqT2AtDpm+lb89/2mLiFAY7yfxUEEC7Zm
tT9AMk14wgJwC0oXWPeS8AhAyY2yB9cJK0+8f29HB1AONodv9qKWhobh+zMg7/K/bZxB9+mSkJSZ
CiBWv2B5DL+q9tEnqjeUo9CGmrMHmePFoYHu0HK0ydvLAlHB3Ui6nAtyPMPCta3QaA5yit2VO/z0
rH7n7ERYX/om8FrOaosT7rCg6XSrk0fDhlISPt9/OzMHy7lAyO0clZMrh8B/7uOpycE4j2oYJqEN
y9XlD68JAfSU2tEBV8W3Q3/qBs1IiCv0uDqR1bUVloVR3IPiJGBAIaOTfrCtUi/knoQgTNQaP3Eq
wJNvu9ucYwVzMQ+vgFWikS0HGoMKe10J7vOt1SVpADDgrgyNdCFRblr3PrH/D82qsR9UGcLFjG0J
z8vQr2T0N5MMd0zU6jT97i3SNNx2RpWairf5M9AOitAl/bnLL2aD6EkqcRQEgMyx6XcUzVvCRSCS
nK+cJkgJa4ResKERP+vyCKbcV7FvZRP5SdnNhWSkDRYATZI5a05d8oKN8YwRDNAItBjhzMde782t
Ain2nqniba8BJtI/S/pAQwN9dSLAKDFxJ315CxBipbeA5m84fkj9O23K7eRHsdN4tB5s8Z8wikdB
xWP97v4HgEqiZbHllP4SyX1t2wLZLlluLE9w7S3LoFhBD5uVOmBk5uzXvzrwmJjP2JUwRLD8fSOM
HKIBDEluDLgQWokfda+zT/jvobUff+asze00HkIclwF4cOvHmVDDylcMzIxA7um3+gqz54zZcjp5
uRf9GaLoEDLdViUQmj/rPfugPjmxoTMTG8Iv275zKXqBqe8wCOO1Fns0jLs2yd6CpQqX13Ar61M9
H0xFsOifvWGxeXTZv5qooharKPZWUnIIQxGnXR822SrSEpggHQVeI+f036qNww494qGkxbg0EghI
mLZ1npDMG9Mh66fKULBChch6DsRPSZZoXtW2SryU0ZjGbivAUoK+V4mMfk6t6WhiCc2gUY9ZXsu6
QiQEocq6ooOVY8VD1cF++arAcZc0J8qC8PTDc87BUX+utNZjiSTHh95jI6hArUBxgCBk638Hq9Q3
OIN+vIw6a++zmfoP+xnnBvOEbadlt/RD0jtnB9T4h6VIKcrZXjz4q2ah10jLDKUg8ckaCqD/16jD
VOv9OudvP5LSOcnZlWgP7STt4YOTSnv+PXMzQ/KeOFJ8DcMYi4GBGp2Cjt8fx0/LOiSflj1yMEv/
SWrdrwCZgbHzXOuObIPBtZciBopDX+KUw88o/IgNkJPhoIgLVK1DEUQfdtXzMklQOHf8W4wlA/3J
jfMCITYuuZl9IpV1ju7Kz9FjrYzNyaMpKhdeB3C0OiQ7olXqEXI+b7+2kTMEy4qARVq/AMmnWM5G
HH4+YLpM6A8Tf6kqWG1xpS/96VgRjRDfZiK0regkmRiyGXbDE/9YNTR/xtdxCDo4x6lYPndnidff
g0tqmOsNUxb8H7X+2IqlrcnYbeHWmrTCDe5PAORp3F5b/Has/xiLuCe2zY3b9ogkJv9jL0UGbtmX
csKgw8n8sth7oUwTO4E7dh+FhDOLjoNng4d+t+slrcb3C4Yxe7q7DCf3RRodACiBko5pzdhZC6QV
ue5vxC4zCfQGSsekmOfhehR+eUD09oJfPPUrYdHGdeR3Rk0JgI9gGnQcmeZvOpVgqTiwrlIlmybR
LqrHgc5p8tK+8EsAKNbm1zaniTGKiibW+HaFn7y0n7xbon/rSIINnBNY1Y/DgEnNeAddWYd8gYow
bUKylMUnmQbt2mgK7OmYPNixH35Xl7TVLZztXjU7U+01OTpZgiPqNpij4ksXQg7gL7eZPP+0QQ5r
bcqymovmz1GKQ6581hzLV+r7I7eXPoNKV8B0qq+b/Lnig1aUJGeHQ0tdT1LzBBXO5PrzJVlvISza
dHgMUI2A3M5GYKCR9dmUvdYqURhmdg1L1nVQ5GF2sZED9XtYcUuybzo+7e7g+axAlOvLK5w26jvt
mDmjhhqcEPsgMsAwjwVe4raYUwkDqxV3qyShefmy2Z5u94LMAQ6dA4LrkcBnS8JOJ1e1JoqZ1SzK
25H6mYxxrMihK37UvKryoAr2Q4J3Ls8iRUBca2WjjJTzFgJw+cIrlHlIjQQYjB6jgC+3guL51Dce
aNsXylVt/m9uRfqeDsTkmYWLaUyVCG7ayL9CsSQxtZkXLN6mq5Vzb3+7cwvaxtc5SP3eU46+krKN
HQmUsX5v+9RDJfHgAvipxNljUX7lXGJSqkkBp/a6gSzq7uBapNAFGRuInCsONPYpZQ4d25odZlT5
kS7WNINx/o7Kp2n6lrlacc2Us3vWj0tSkEpooZAOq/TeCn9uwFr89t00e8/7MV7YGaVnt1DVxmfZ
bpm/0Q83gOHjlp/kQMmVL7YDO6rJ2HsFWpl12vNux4Drisk2xmGlRxXUqIkjbxfp8PhPiTtzBWWt
RcT0PVotp+U/c917zdNF6o1Y7vbndh9QcNTO035jBKQM2s+mN4udSUgy30AZhR5/vQyhj10dmVmt
Pkd8Ysh/Bsli39eF6QxHAPcbrNtig91PyPzHQ7/l9y4WVUsUFCzyW8hu/BBpf+jmnrJwVAq0PY01
aTrcqpo92Rh5NMqQ9sSHQt++t8MRy16OWPoRmKcMVsWHNcWsuTKp5kzOmOu+8Zdj2h3Qbu2YAScl
F/KhvsOAXKuUa1MaKaVgBWd3ibt10szo5DnxBkFR/bC3Wj5jPJWOC6DPLhrjD/IsJ5g4aINEIGzf
KkpcVzxydyadmgIsk6NGtM8lYOyMTsz2LH8tAvRgESSKT16lB9Ugt/DKKxSUdjbeGXAPDREqV6YK
jgCCRzjO4DlYARc2PG8h2135au8Mis4EW83ibzowou72atBuPQHXmp6yHD1GCj5wWNjiANnGpDam
0Lhuvg+ybEPc7kNI7yTIENN+zVSXZbmj6vQ9dnl8c9y6RJB89ZBa3Ig/xaBf47a/YUnwXml+59or
NNuAl348m3rSpU3hWgiAOYcV0plsKxGWc1t4yWLfAMXpgSeqUnh4/wsdXhpCohcv9L3+1jA/NLgg
iPVknowbTH371HOtdrYLln143Y7vd8pD4EzvpezJbBhCQNCrXq304p4Ve716dSJe2FLnRJXv7oeH
xik780jCYwWeEJ2XkPf6A2ecEDUBZAQE2Yj1EeEs1iH3MgP7qmCu+usBYFWtUOUL8Ps7/h0htuMX
7BATirxND6hCOzcHPKh8ETm86GvVE4PpHbNxxeu8YF7wf6uAA3okhdM5QZ8lgJ7n99wmYBamP7Fz
uRRC2Bf6HiGwxApVnW/adISEK99X+j4rEpl/WAbuoLw15gY8vgUXtX9R63ovL+PEJjoV8qU3GJQt
6AfiBLMjlEvK6HHu2yg/t43KB+HO6ISQuycA+7ghkKg20OSIHCXBdvDDW3sQW98pt/bA8Kwn2Bhw
DlRSbd61kNwC0JvWELrgjwYtadeY11Eb43qwjlIH5bMDt7u3hGdzBiEq4KfaWMNMtGyR1c/YGUcp
VEAutbzSAsl6+3GjGCVZo0HcBBA5pQpqYpQJZC/lua6LI8070VXgXTKzb1nsMYPlsvXFOX1WHv8G
NWkxvqAbuKLZx1a7a0c5nqtlvRr4yQ6wtSt4cHUwLlcD/JD443skLuwJerfPGaMoDELIU9Wr5OCl
2yw3l032kQgnooZ+v6iqYq3FfTZBO8oRseqTYM3G7pS9wSL3g3eDheHUo7agEbMCsmwwXl9c4Xop
j0I99mwALbs62ekKjzt5v+DSc6N/fohIQ6W92Cr2CwWGLbD3tYJ//3ZLFjf0+F0Ruv0iF8W5ofqI
uWFzYA7rlGgN/Bovu2MkBxriweu3BeOFNr4hX0BzfO6nkfBR0tpulGYPAW5NBWg7QfE6rKxOkVEw
9PxSZHHb//Jgj2Y2avkBUXfeW0VD5K8yiTNbMn3o9ruChpad7sFT6avPFcSxnk/sYspI6gdeDEVw
Ltkvk5HAAdFbjosxTazA8bE98Li1c/eGuejsmYtvSLy6vYug30uC9B/TLfQL5ze8S1+yPFYXVM0W
SF859MtfW95az0YejsIukPM4YRTU3ecLvLRun6coWznq13vHhclk0gvl7ax5Pko+fE9ZxbxyZ7Jd
ZvtDzLTvhzxYsl74fwHPpQSr58WCT97iKaU4uuPtr+DehvJVPGbm4cXJ8n1YlbDRKfjUY10HH80/
Efwhy4KhHDt/UfRXoZBquWzq/g3uYlmpDMIDppFfE7QwWo9AVO65TEnlp9EQ3Pw/PmdjPGVtqOsI
NBXO4TwNkTWwjZ6p/YaXughpVa8IAxlOhQCG/O1yid1eYK82AHMcmEeaPNTVevt/xPYH02ChFJT0
TcWP4IfIwgTOZ06bUJpjD1pA+kr1JLwdxDLTq3T4bhRdik0yjFcnkwzFaCo6RdWEM6dJ77DPNLWq
UC5CuAGUyT0yNpeICimc2+Sl1+f5r8fZrRbPHAAO4nK5YrhQMdIq3BxSGFV2A7blBOCSt04NAqAU
XbHLiKY+8dFtil09t+2uBEw2Mbf4iyEHS0DiCfpgYq+dDE1nCvnT43nUZeaWJXMpPQwzM5X2EYO1
BYsPGp2XesCEzokf5DxKniYPnF9gY5flMk1BzF+ZE+GHl9FkajUqPxz9AQU4Vs3FhGo2DTrwtOWd
bRx6E3voyJPNuHF4xjjyvuo/dpnFdJXbawIjaltyzacKC/qXYMedLfhU9gjnbQhOdZxBWs6GjVsr
mrphKonKVH9LduW08YwKiAklsDnxpNKYVhCRpaP+e/CgeA6OgCnJeaNASRp4uOL0Ys+TxRAzr/fz
8YrUXJlUMiD+0N/jRfU3b8qlxagHyoOwQiTZLtRZCuQZ3D/RmxkvcKVK4zpmvUZf7RHFNmBjUsbS
mQAUKc+FFpDoN6t+Ju2DHEGQKFj0YwR7Zuy++PLTDWC52JFsB5Ow0R9ZgNq0rIWJ+tOvbGk1mKqC
p0H9PuSpThQKuZGqiof0XRQKkqiS/2Zovf3wH0nxax7bNlJ564I0+Y6hwaoyeknDwji9GXWAVln4
DqwCCb5vkqnwCjBOXps14JmwebepaSWuF14EUpXstmuYS3ji55auGVr/zAN6aKkdS3iI75PV8iVm
E0qZKzuT6k3mV24fBxf7FmB+RxykiGvEZ8o0bI1mEHdHIKDdWyi/h3/g9QsXZOnydPX6DWU6IgVV
q/V/K9Y/Ax+JwVcMD8qNnSKMIffNB9P+Lp6eIZU08KI4maen3I3GZnemSxZkBD6rJB5doNxhB8zx
wsL6jPp+CBmD0n7ki++VDRDgPnNSJSG7mVoXdv0exL/6KWF1T2YO5vTKZshWL0xH5W+OcMEq7lBu
zO9HORazBYmxWwBS7NFyZWFWzdOUCSRbqDNaxJmfKlqXQYteNdIfjRM3lTmgEdnWKt0I/fsh8Dbq
q8O7a8L0dya+6FBM8b4B7Y70/iuQP6xKmImYgGSwQgTWeGYYdvPBgtcZ5bBM8jc30z0JAL5u3j4B
d9kDwKcXTRsRczr/OdRnr93jWM2SxhTEX6t3V7tLDq8E5hD9oWolurDPn8JYoEfLswvsWtqHHX5C
p6T52ErTHBSBGSsCElQdcN7ruMyJPWQr8/7tExjHpbnTu+vQLzPpv83Uulq7BNqYGQA1vyukSJAM
j05t9jLbFciWVRYRG1utNdecHMkxGXL0BdeKIZxU+xsCw+PFRndDicj/p1QJNMj+b8y+/1sFCVct
WnY8DtK/MRQRaJ9FMNPnDqkNidK742BM9eO1eaHcMsErwwz2A+yoCukPOeceBmb0wsMLRmnmgW+D
U91ZhasxDtf9Pwgxg0Wxy3ZIVFHeeeNHbWM8bLJaNHEDqyyLvJULvrQm8CJAz+SjryY9cShQdL9t
sWmElC4eSHAvQgk+TM5Ukcc9kclkvG201mXc2K6Fphmwq6H1TPDy+xg9KtOTU+BFKCmJImOEHXeC
LymG5ITnvu31YnkdCXb0PkqckyrdoYHnocy8j0/HhJbprbvpzqE0X9SVUBI8r59Jus3WopZmGva0
0GPT04rN4qbFkD0N6ywjlrmdGjas70q2RDeJng0TxxM9S9AGEDrfAsRSFwfz1hbJFYkoqyk2ElN7
UmduMsBazSwp2KWspNseGp6bNQV6eBeqPIUWGT0KROdLLS4c1Wp2hDDTPF/deqg4Na74pnSds3H+
igRwOvFxsT9s21AMz8/6qxUju5MgDWVsW9E+HsBXTkbNqKmMITcvV9YndyyTdfehRelyU/3nE7aL
Yk5dBud36hA0Fc6NalizDk2IIjTGGrrf0w7ueJep7g6WmNSl2vSpOMMPkYAVJc03wdHo0KGtB7xD
J+xVzZRpExBUhP6Y0BJxoZGP+GUIflOLHixqf7IM383DJq8QnMYjbvJjbc3ewnxLlcqrAB3IbHJn
PGJ65e8Oe6hIlNh8iRyxtrvSoPBuBDASSqP5kpDgHXNLMNyQz34e/jlITEc7fCEcTpAlJI2d6i6u
4caTcW1vW8Fp922HQIqf3M6NLGdtnm9na9ODCD+AA6twGK18BEjmX/eyWMQPVY4ZzxXHOW2N2hYw
7TH8ueT4AScoxlpKW5qqcE1p8X56w+uI7yGO7hCh42cY4iDZDcf3XVDPyc7JfloT9W7znbumxDR0
KtBfGK52/uoqD5LbXYhAsENvN0rfcvkEtWCEbkk7hD5sFAeFDDN/yzHENE/iPt33SLecH9zNCxs0
Wlfk0nws7kd1bn/WelWdsDczH3uz/fQw/ya5Z/zTI2RE2prf6cHCGwA/IYls4kzFvcwKaqTMTqgg
CJxkJBa7399M+A36wvOQqKaQdE23CJNNxK9oiAup5n5Sf+T+J0wbF278lbRidiKSgbJ69jRqxnZK
46zvEnZYo0TOUoSexQ8jr6WZctDp7VNdi+0d4XX6DfZ2+Wcu5L6+/IaSOErgfjxy293+t0VD+SJH
/5LeNCWEuS4TXUIUHb69EtXHM5YDhK8W2DNf1U7uPFdWIhKWRmq3PosdkG2dBF7LEOWe14bnCvpX
ciFS48bG2sNbgYOgJZLiRbRbK7KONgbznVJPUxyzNAwSIsDApE+sx5Qx2SDtlZAk0h7j5EdNpV0A
2gVMzGTyrHp5wKwJODK1aZlc0S2JYxjbVFWvZ8YD2utpLAdGFaZXc+ScdLnhwHAGBVy4PSDq0Qk6
axqNUEmi1VERQ60REfMXiX2gPbjYDsKI7nhBouRCeLQlkElndl+zfvMwLMHl0shkg57OVUdJzAj3
tW96D+LeJisnJGHPN6APPh0zv2OkCZcVNxKuHekLJHBSZ7+pWoesbz0CLnkIcp9BBMBC5/E6kTOw
xOKDQUbmrmPwURUKFqE2md5wQWsFh+Q2vFEczKpqHTrNmL9m1h6O6NljaA98nN2V9JRCG6XphopJ
o99lmUPJs89dVrl6RROiBeUCGxcDbQPS9UZfDvt3WxFe1awjGZY3cUdZSn01OOiMPKloA0/l9pU1
H4qVBoJcH9/5iQR9//twQhhxSAm9u0XKLaiBRAgH32Yz/Wn5GZjPRgyvH76fQQejQJjGc8sNItkg
FVtEZ8tYu6p6WetOulFxVwpNR6+QmH1lzCxynP5OWfcntAJ3aEsaWG2tqDtXWNHA2hXOu3NROBW2
efdOKdcI3HKh8kXnNiSSkkDV95C5QzMfHbEEClPRNezdGqUeU2k/If5RwnGdS9lMEonpHnzzgMTr
UaCYF/1l8+doivaNJZxxye/TotpH82pE96IUV0P2Z02eN+OxnYGYAhJLTDe9YEl5yCZeILhmo/n3
gGOFmGHxlR5K6rki03GWR0NTcvHTANSpRXtL/YzByMQzi3RSk16DTtX7h/LTA4Zf4a5JB1NVSgD6
oFSB2mOHNSA2DQ0jyCibW0YayVOfNyEN301A3wPSEVudNgrVSbKGFwoReLxNUbj4ZWy9P+rs+5wc
44BUZccG3sXkK/tjOKzQlnRMdhziVPgHpiKMjJX2MlhsPSll14W7ub1twyOM7Ym0spwILvhrcKV4
ZRau6OaWWvdN+Qph9VoUmh1Spxm+xvY1yrvCKRP91dYqbe5Mh7wasWsQdfnEe4NAoKGMq5+ZCuwR
zyG49YpGpQgGVg05XCYpUHQq27E3roqdbvJbyYJk3AKdV73vWPQRe8xXcz9keZyWV0PH9Hh/+YIu
/bniem2C5qXDuTNum9xYzNhsKIbCvpG+YLsk1Rge6eJdDtkrL7tnRlOpyGlM7PIAfha2mfHqLW2m
S6BXJVu5fPMdqeaLOYsa5/sdXQus934iMj2Z2N7BpZ++dSCuEf6t/ZUj7zG0Cs6F5JCk3ciRL2Zq
Ny/UYudON3rBPlLuU6FxUfnsXNHHIYCZ02NxRjXO2BnnrjH0BMNyJ4YPMqrsk6nJ0r+S7aXPaxeT
07pRdLDBC/DoozhDNXKIuB4p/KdXRFgmr2jdQrGtnj97AtXAI9pdr7QtRwgQtolFVz/nmn6Hhh9V
BryrLwqBBS0vM066/rWMx3vlbwyK+KUpqy6KTzyXFSPziz2/keXfq3Xn3utHMykCe1J5Qrzv6gfL
n1QpW01FbTIg8d1k4l3X7I+a2whYP2U6RGHoHqBEH4Z0H8Zf3YttoTQEA6fJC1LKLXjRwla5QSve
nNZ+jL2aGCDI3n0icomyKQQE+r4qViVyET2xzQkCUAYABidOfJqZafJnp20BoTD5TVWYEDIkG6bU
xVtgaI3Sjcrae6Tv/srURkB9727MOtI673czkTlH7ueZ5Cc7kytiQqbg3f+sYLhDKcKL/n1nlAKc
dDY9rB0vwIa87AxwoEKd9XimRjy000YA4kupy3+mIfp0zgY/dydczAvDCnvrpjn08kJCb6NPpsac
rSlNYi03TP6sMmNUdugGC0SmwARt3xDTfx3YWXulhgeTduwww9/fjwNiL0a703RNDK0BqQE5Z829
LN81HJp82Kdn7TCsjhHdSDIe+PAuCkHTcVRzLYXCsLdyXWaVeQOEQ48823PldNphGUaGNbUZfZgh
QO5EYJ6yl4ZApEHTTLesryXG5b+GjeCd9qDNw9aRF/mjqxpJja6dmziKzl6FGOwiiagpK6KAxKlj
vV3Z+nl7NAMAZnyCtHoCOSATw5CwLAHtgGtfBLJbrV6G9T6XMioju+zH+c3HLgmh0FTYUh3MQRh6
4p2giePaX1n2kcs6XCyPwjl4Prjt2MBtzOplcrjnTavr4WnxtX5HJCPy7nPXp4M1YUeEYEl4a/6j
hfbb3TtErwdmt3YjI21+eUjkMi/zr6lc2FVzmxIHrYpwQVmWyGyFBUvmKPCWYGpygYlgpjQieo0c
P4dYMEUhoG7/CeYNDvBOp3M6wE9QzLcq1K7XwFUl7hHqGUZ55DB6hz9ywzCsQ7IBvNAJC31Ok3q+
8lrx8FH0ZQqT7e0NXhjjOg6mqW9fByCBhZKGL55IKJbZCgWms7vEAt/thFV3fuq7nVUq2Zfc6RtP
PJEV79bfkM9tEk8f3Jo6BTZN9M7SqA4AuYP9NxYy4mWDxoyc2BRF4CJ6Y8td/7c4RLTzo/RVGbNV
LFnDTb1Sy2PJUaRvI2c6VtbN5iMhiAZwVEhUv+FTjht83kHA8yo1zccFh6Ll/YOO66I95gmciiEt
VcSz5/XrmtAYfZC3duHC0+At3mtKMNf7PRlToboPvknpv5jRbmZqD5OEFA5dwjSpGvX/Ri11l6QV
/jbDAhipd7ri9ZOEqC5Ujy+v/6i7kOgAYyJISZtCdBjtnE9F4gVMRB810uTD/D2vq4KWypHVrQ8Z
hZNVdXdyZfG73g7b3t8dJ28ldpO6ubdM7aJM9gPKWhilRAqO0+OAGuZR7oqt4cae+kasb7xqdam8
+t+SlJKf1E4YFYwUoVFhYMXuDYGJib29uqzQTfY5VqLrNlssv4z67+Jcp1SzPQZTlQv614svf1wU
2nQvcujkaXUq0BHv3UAnRgCY6efIli6u/THuJw2RD/2EQ5PoIfX9IUsrt6SqY64J9S8UnM2a8S19
s6YE6uyasWsC8iuxghBYtOzhVJukbWQhJsPf7b6Vsg/oTqQ6ixKBeM8m87Jj/Hpq7x3CxJqPpJwQ
W2A3Ew6qwdM5jvxUlF3uAqcd3iwI9P9UMlCzgRAtzzQbzFS84BoInFA9h8xeUooD7OuDOj1mb3kh
ycK397IKvqBVUojiLw+sQnhh4r6yB/ZXOKZ75tIx8b3pUFAbtiIw5UhZ+38LjUQBf0PlmUJW8aWK
qW9R0ArXJNgLAYk37p62Si4Pvh6gtbSGT/+okYAqOohxoYoJJYduI+tSQAovjm0pKZ0ZJa0ZXpzJ
/d+EJ3S0QDGsZouQYux4kSURIL0iFRo8KNccOAWSpBqC6MU4HNN73VyKTcU7pwErr54SFm1lws9x
0h/kZpXgOtJyo8lPGtI6ChKnvLpOQtVmUGOcThrGJZO+Y6z0FvowW/QaXOTSK/qB6i4UNEgXBnUK
xiyhdkQja8FUhWcWH9TmFploxmaBiBleFVpwurwmLgJq0YKYvBI5aOTl/Y8DnqsMgTnhnCkpNvW3
GjUiJZnQV3157lesP+Z06Zfc/c2pDQrgj3bRgENaBM+XK/OoK7ibxp1T0cp0rpi7haVw4xfoT7yJ
8+bgKitRgDjIHtfXKHdri1bQBuUhp7mG8Vvgm5eWd5GbGI1V+j49udgOhYXdUGkNZFNceHTHBGXD
iAmab5A7K3Nmzwqh/vsunUx7PIo9z/vl7D1tU1HCiXYkD1gb2UaSVqLT/bv3bUbSdEXbHDtdwARC
Oga2Y22QKEYlDZIIVKEUPJ4hd0QQHqUSZ6nX937kYzgK5vLxRn4hE+Mja9fwD5kkPC7GJEEgDPt0
WLflWNm3EChrhYMWNzlA5OQ79gbT1kxqW0DtccdR7bVgEEr2aYtU5GDezH3QiAQ3sIPzAR8S67ch
Qc5Cqk/LuxTf6jBOv2dnd2PPJrcz6xl7lcHXG+1FLFlWGtVQwIWpZHVX6dPgLtYGQi2D6er1YI74
VhOTRgxeJ6nlZOI8+SVyLTdOUrMVpmr8WsqvGnRJZKJLVG31hIOGPpFAInMLMJ65+wIS9J+oe3GD
dm0HLNnzupAc81UQJQGUq/HB08vhOZQycFKHNKuEk4Jg3xQeyth7XAtlWP6i9/nAxdDQOXJkR8wj
fVniMpJsmr+N7h628QJeW/9EIBUQWjNlYCYkKM9D7BICErbYNlarJFx/DQSElEJKAN7SPAvYmEzY
jwXLba5Zy5r/utD+M+YuDWVwA3t9pYlNKorauAibVSJPRFhWutCxB059MfNZ4f2n5hrLKQtBoeHl
yatvg1KvJ068FO6ADH6lMn6DOGqLPQ80WCkr5WLAcr2fnUaZHHB7uDMYGtj3K6rg70Q16nb3OXfp
I4jZAMYeA7GI1g4B9GBgtYfWdrd6fkjOYTmAPTogBMwAW8lyGIk+/rUF+kXi4dT8vwYsN6OoR92g
gsgtzP1jGkC0xUGKz94hAoKkLbjwkhnYZAEan70qz/vqEbIB/baQs5fB4qBxthl8zNJ3xEsaGFiZ
krxaUvijzUmLBUdlL0EWvVtNsT3M9J2fbC8BQVLE1WcFHHfsOUYsGTNeGguCsWw1iB0xXJDwHzf+
pU6X45SR/6gNAHECv8YVyWY7+UfavTOkLSMX3mZCmUH+PR4TxSnkdygAFjh2OWQHZCq4HW5SvSm9
7AX2jvEEAxQwSPSe+1imhegT7A53jBx8cj+lryssny8Ba8lPjBtjGU2vLVDl+Dc8XlmS0AZXXaOd
DtRQnTHLiLQL0dDkiz5iJEb6D7tY5DNluVDKpx4Gg83b8Uhq3wrUU4uNJK1yexRwJM9GsADvXYfP
WEwjXZBx12IlRVTrUnHdqQMDVfgZqVemVUup45Vr7tGZ8Xtm2MfV6ooqZHDjleH5HRcp/CTk9lKf
L4Mg9Q20vRgza5ELxL5sDFyQcEDkx+Z7dWzmZ/SyrGM38xFWwF8Y0/kqyoLH7K5WDaZeDILVpYD0
yObpcLe8/QEZZB8u0vvXZ9xfnzdyZuVMeabWMOj30g/1Ml/sYUFjJ/pjufwZpSAEs+Xkg42JEzkW
rgZonvgGtghp7CnBMg6aH2nTeavAlfzWfbFdmQXC9Uz9meXQg9Iss+2xBQ/hNn1URxD3aGrFbcnd
/LaXmChHh/6nfAGZNzHX8A6j6uNxyaIWepTQSA9tmsyZ3EUMmcFQ7MWs7IFEtYWBdtMDR6/P6rWJ
mjAlTUi78OPF6ETdg+V51zMn22y7/HrhONLYPXbsxZdMc31nwVnQCmSIU8JXupDZxX8iiN+Fvlf7
Gt8LCIPRiLJybroTjfXiApzVhRpAAjKKDTU+okb+BwHvmRHOL8u/D7q5QLGGx5K8dBtEyEyhgISF
al3DKUahp3eEkmh22oziobikGOw5Yrp3wZmAYurPehTgXbekfgqtypziUOOE9FjGqyLxNqH0BAMg
dghfk+cjZH+BvKQw4IaSe/h3tfegCbwdBJtuitwh0uT6k4ik01ljdu5nw2tZJPsu8B4y5RW6haAe
R8dZgdZXJU8ctG8yLVIcv1wsMUNxpnHzmdBTKUvwNvxvhpwYql9duXvu3aMlhdNHo/MeHtHCz2+m
pU2TGl1KjxhApjeJZyCZ3rw+OKSntHwVRHwLz0pHRXc2lnhv7HdrFNZe9MYMh4sDdve1/h+p3dIm
TC0Iw+FB0oZIRXr1aAtYziNYv5HcH/ZODhkMlB7/UYznOCttTqPJPlKCD37PwzbkyvcerjK6zwU8
hgKExqfqdozqyYM6vVG/VSohFFYWaSK3UAZH0VDnTBxcsoRcWiCPCS7v3VjwgAz8WV2zZirPdlRR
QB3NgN2YFqFDVxKvyIEPCTwGtJTE/hI+rPUN1KvgxazUtusWEi0rgpdy2F70i1uuR8prP1HpuJ1K
JBovET/5b3B8xFvsqMtFPtXakHcgJwgyBnXBEMIfpN24f1eu7idx7gKYtoYvTUT56YDlIn/U9gIt
I4y3vz12nKwQqQ73kK6GHK6jKccn8CxD0ictISaIMYMnytP4lttK/Z3Y7Jn/N/+97rAcWXLzQYUZ
YOm9t+wbYHjFYXRsLd1qmqr0J2C0LWup18120SIgYv+dW4gvbZsqziOGB0oY6+9xdR8OuDsvT3Mw
7K9+F7D4Hldz41Vh4aNlsTHPdpiVh/noFMqa+i0tcm8DASInsQFdmgCBCxgRMGP3VDV9tC7oqmnW
ALCepUL6rVbGgnGLPNXOaWS8G/jLfUyM+xgsmyIfhbiDpxE/4g2t6oz6US3DWZQZTrwJJfXL+bZk
6gANSrPLWFXOCjd02bz9/AdJaJNod3WHTgHNmVsGEQGJVocEEovths+cx8eK1PObAK4VU98jdkTd
Hq6vmnIPzyu/5uP92yHgWWSjEP8TlNo6qvVJ+3hQD33FYI/InQOnhMdtmyNifsFvvQ/YdQEY9pRM
udW869ZMN9QNZjWMbJg2MbxEtsVBNq8fk+ZgtaDGPOVXnJP9h9GS379IJO3M1HOz4ukdoukLEOsO
kU/2JyVqGMspINavik2hclt2UNeHsft3DLn6c7XIYg6UxGo0OMGNdM/Sj6gXeLEvBUxS//U6qNek
++1kXP9TC1qbdqw98jJdle+eBkQRw5sFGpQ78UoXF4m8ZdhKyDCqwgEbeSIn1jJLL18lTc7CCjrW
n8uTcrcbTwoyFDlNuXwpBjN2PVcHDF7BB1DcvcBn3mvIBrFQM9qYPWqH2jeDLl2Z+bN9OqO5Wux5
6KXIOR9+aLEGSitB7yDxLA2ut5BQkJciHe/8JGw4hrdXr9iOjvitW91ZZJMtaIyhzQnJhJ5zDMSV
j0y+vqcZdmg1ijdN6/GkkZuMOzc/Z+fzOpMoGz6QlCcpK20QNPUzeGJHVYiNyQLljv+G8kR87YWW
ozBM31No0JJgFUN/JT2VZraKmy/V/4ShMz4KULChLaLUDI1/EtrNifYauE9yec3mdE3XSIysVZmp
vQELMFE0lIeE3ggGVL0BwJXR5b3KUOcZDlUlMmAnTBWqUNZxRT3mZC1r7npA7shbR26FZsfmH6hq
R29I2fwtetcslzdTo1bkbvc/K0BcCEiCs1NN7JE5veNQ+wyYCLHyR3yovz8mATvo12Nvg2Ephzk5
l/akWapxdtLs6RTUPKGXq6iMFHO+iBmsojwnx9wAMPiopiJWxH9mycEQGpp/yRR5Zs/3pbkA4S4A
S+TXyNT+0noiO0v/bACm07wr/LmkyBh5SQcd5BEORUC54wUrsqR6aVv10jMJA4OrpO6v7OmOFNiR
GXEjm3xwlW3/wRkYe/c60W4q/XqLgEiTunMHPf0PBqUulTWufmKtdQopH6UaigarVLpnXh3oS5mB
OKJ68LqUfSEiFQWgNA69EAvayINxnDGnEEQ07Q/90/Jc/kioaCu7xocsYwpSz4KsB4m49DjlxPjk
qYiAbWVc8Tg+V1o85cCsjXPjhcuzwZZHYeIYA2g8964wa8twGs2S1ecxqkExF0OeBN/Z9tOQTFyv
dycOwJJITaPBee3Cd7ZqIVSPE2Cvt9I7bwE2CgW0q64kUJLRupeAR4+fgtCRYH3KONdykY25IgYk
wxECYshzNdA5OpS4UrQm7mz2iNfuyDQ1Nw4kQhO4Tjt0Z0d4lDNIJ72eGlF15jCYQcXAxQIGNkig
ylEfg7OCiaamOHAjxV0GYsUOWQQ/Emf3qVkdks2wfYYQt9SXYVGlCbfeijoMOpxbOa3CZmiAzg33
JECSMjb6+b3AWrlcDZHDpvuKOSQTZrceM4JefdNREPOsgTmStZM4GvW61ZRO0VZfXJg7s4oZHBBk
iagogqHDdjXz4WJIyqfW6U/aCPRaM7+WWz3y7HLlThXioAGpiic3407uv6RmBTZyHzsfX9N+S2Yj
tCadMeh5Sepjq5H1y0AQOCEcyBfo/ZS3GbtSt9oZ3ggFX5j7v0a5dj44Btz6owGRFYrfjI7lTpMK
51D5WyIySVS1FwvbZMKmT4EGpx8v/RYwwt+YG8Rt4V5WYv/snmBgfSU6oDf1pfaeMU3NGNyQy+Nx
IWTKRKwK8vlSFB+lVUJdAw+LWd2JppE6xrYpn9VB3qI0aopluBytI1+XSkm6oyFYiwZHP11uId80
5XUa8Z1tcJgBUTkpbq7+jzHSotodHO2uOdEkVgWpERXRS8gFqp0EGvPHRHrCeNa/z3owZLrGGdrc
JMtw5pzCN5wZsMKk7O2RMUTh71wN/FO5m2owoEmlr0LkuU6nshxjDlqJUF9DPu9mdM8DI+ddlk+q
Cjsm0T+OwkCFcC6A0khDInyrj37011vnEQm1a25hk/JScnhEZd0E7EGhN5pcf5fa4aNBHoT1U4BM
Ss7szkAop7WDBoxjdDl47DkSLepIQi/MPfEA6rAsgE5JNHuqThdQ0U9ZHIzuiBMT9WKL5rHoW9DI
fAgrZ+uC1bON1PxygaUO2f7O5RC/4hhAubyeubHuFstQ5b7RnVRtkBY+XKnDkmx36TOMUaeMOVjg
E2393ir5kOhaKnSOW8lacRMXUiRq0+RSgk7aSRMNHpJglBc5tbu9ZoXBTC2swkjKdg0RAUJopv82
+cZr9RaipA9YDu6tSar2eUaWtMZgG9udB3Ff65JWyXGgzUhB+ag0eaxZnDXtxO5hk60HfKKug0uI
aEfuXiOOEGLIUFAqG1+88pTcj37tuGQrXkFVGIh++E9ZTjaVhyt8AmzL3botKWoGn8YDfgoOpSEw
vBrMApm0I/gICedrDn8ZnUh8Q2o1cBsrEL+doxIK38cy4htzuYoTEDvFv8gv8+giY8bfZ1mXLx+Z
q9tKyJsNZOxX9R6gfh2ykxg+4XrKIwVx957/j+pdeHSvOwW1QHBsLP7oM6IEPZ6iSc1rReM5Qqr3
AELix/X22l2ZLFUsRKpnPxSZv4VmllPA9iqUAKjC1GeX00pjFFarZP6Z1WmPNdasPt0jYxq+OlCs
okWyQGxItmZxgMJl8du0COPiS4jr40b8bdj4YNxoMDnCpLzx96LWSuzOfwCJDDDynZwq1ad/oLp1
ate99yqh2gBSswRXBKacBKlg4nV+4BXvb1McujTHo8+EtTMqxSmgA9ru+IxScaRNDU0hwEn9IxTK
9uemP4MYI3nSdhhzWroQ8deqFG/dNrsGZ+e+rI88mQIeYDd9en2XFZrkzt9Vb8AThFvGwX4dAUOn
h08EhF7NmlBZh7oj9Q16WxRap6vpu3ehza0YhRGYU3wm3Ukw8bQkepRWpUDLeAKeGW37LfzHAVj+
Ef3wbr+O8ybdys1nRqb9MDns3JmWejjuqVmXgkdMr1QBFGIHjm5pHH4sJVQXWsCxieQPA70npq+o
orFi4l4lHzvSFtQiyOOasCn27gu/0MPPBssDYokzOIkpgjR8mZVt4Goi+/8gz+mL7B1Vlgxaa6v5
shCQcBod66sadPJIShqeqi9E+aROfsVWWdUySq955BhDGUZVPhoB7Y9XnWk0CY+j4ij/hAQzYbhJ
2t1T6tIOS4xRBHAMGOsFvmXUJLeg8CQvdsH52QjEZ83G22LjKM4CleWyLdrmx57A8d/CmbaKZXPz
UjL0mrEFW5QpaeywjdZQFRjkkRnQqNpWSn+Int9hUE+Fi1lNm+it/dwMqcxGuv8zUh+CqbhBCxzC
yRw7zxRcMh7RVhmZvEIdipnGhPgdD7Kd88vyHauw3Dh7QBHehPWu6TPnFyuaFgAYohx7Erh/78TD
ZfULgK+a8orJ89MqEpikPULPeuzNAPD5B58u592A0vLHMfs5pKTSI3tkImb5/KjstOW7WrXeBYaP
rFXLn5094jhH329oKaS8FM1WNrdYtuAzvnp1ojUBCI94eAdDe2+D/xF77cQC0/u4SdJEkw91qPZj
CB64whD03hyTZ9k3Bk91t5NHTAZM/h5/jMGu9mVjDaAfR01VGzHJgiLxdFTz5M4vuxG+HNnJ9zR9
HdjrNqmfGMulpdxTSiJDwxapx2b/dAcc9y88oZYUnRBD5AjqEpxVgVQHGvMZuUeOaCI/8nCnpsZM
mBDiQXysjafKOmGwEW26uTVrsLB2Kjfa31JKax8TGGiGSfWOwPuAHW7c0hHOsux4ydndMnu1y1y0
ehvoCfIcd/Z8D77CI0+xg3BtBnQUyRmXmOOk6akKwl51doShFkbT4XC9FIXMeNUtfa/sx+pso0Gu
npyKJQBzXk2twN2xkaTzgk1dToa9kBuMgFb6gFhyY1GJdCN0ciCmq7+ZpwLA106zj66eATQHLBdR
8LllxEj+oUPJ0BUNjt73D5NTKtJmeyK9S+ZIp3lIweNsUfzYSIs9JwUgknOysjmOtzEolHGuaI2h
oeF12KjzM9S5jO7SV3XrW/kBYaGaOeBZAt4aJ8dmC+KeVfUXmJHCji1axC8eAJIEWsN8WL5lGFB4
5PscaUK2qmkhZC1n3brfZYzjVA749dt/jY5iv0aHH5PX2rFJ3QZLgx1HN+i3efyy6lxlObxrx+NZ
bZ4H9BvOvgnPcxqRgryXjy/1qSDtm5oMXGc92WT36mk8Vza6aVEsOOZSZvi+lHFXwo3tJf0cy5+4
zpROERYmtf/WJ0Zwxqb5fBlAxmTljSX4I0Eh2JTmelQ53BUYE8Gb68HvtnfRn74mwlcQOml5o1MK
cdejIBiw7IS92fkNHZBOpzTie5Ug1yVrHkx+lh5kOsaD+Esc7bxRIwSQ4/5q80WDsyVdN+qcBDKz
/0o3Vpevc5pN08azTjVPeEI1jWviFgHJaHvHCGg8Kg8JI3jh56EpSP79UH8igj6QVCH7G83akuyn
Jh3q4+vvqF7W9BKfitr0iX3b0UdXBCS1OcFT1oFSghWQwqYPacpolzfwoZ2il6Q4DXQ7MxHpf/jJ
18uRvhd8T17j1CkOrI44bs9VNFtpc+mSBqS6rz9bP8vE7tNSnmsikRJK7v5f6MQLqmEL0/0kjKG0
Lfo+7yTck5WU4nK+cDVkZ6q/Xn1tbuI4lTlmMiwEuejPtyJrI62ufB5qJEZel/m+3MtPrViDN6vW
HdYpmnlycybV0WSyLolEndhiHM6I7muYl4XkUf61y5edM1RXKVFLFqEJHjQZwBUuTJQ4aiHAVXpn
SPc1312pY6rmWmyiRtJzvO4M9TlVJw+MTmP+KRWLCuLNvhO4nHTOZcLv3Pfrq8mw+GurgwHa5KTJ
TcE5RsNGCBkoK7mWF4CO+diZN3e4zK7KO1bG2tiv5uDOleAbV4cKKpaYmcubgleON8XPTJEJVPdU
LuRZjFNdUTUMZEJjkC8O9avhRKCfE0m++skZ62cgzO3Kc9nq/xbtxDTPwrBB+bWMR83jtenXzndc
mACwQCXG1EjOnZBjBTzskCXG32cHg+LwNMy+J3jGjqQsQdLOZgtoWzaoWTPctGc/cpJ1V5z3QOwf
6gMlt7ZhliiTC7iD77zPR1J3zLPlyv1DP3y9uyLbFZq3k2gBlhPPaxAZWfzfCdDcpuq01ALex3Ze
s54pXDp2M7gzqhFE2RNX3bO5dkdi0m1+buVOJALUAMX8QDZQYzOiJlw1FkpkXAUXnMmW/cz9E8xz
2iSJy7pXlYPs59yCSQVrzQ+HpI2oxSk9kLDsUFaNYLe08cGn77YmVGY32bdvSHc60i3xJO+XAEoh
ygaJ3LHYKB7obKlLACb10b0J4FwWeGZLGfLKucTi65AcnjQv+qiTXXoPBG7FIcJ7B67X+BJ2Wxyd
c8KfuBPytFj9w6ztYM4nWMjbW0L3Pq0vyEynBfp+GGeQKsmkttjOLEdvXqb7tGLqzG3R8q4ItAKG
hhAAcaS4qq1dR2OqdcFTbjfbIlJoFOPEfrdSUEaYUqzFLIhV1nUuy4iXV5qiCSdAW1eLV7mX0FXp
QVqOCs34gte9QPtfjAKmHWk/Q1eF2aRX78qSZSu82AS/ban1uGElFyo3bKPEHsG8i278AIMxJvTD
MihwnSzsfnZRmEe3RCumpKh8zWaO7KarR4aPdg2/j+H6o/NEcT171W1S3NurhRgvJ5ski2f4/GMS
f2GWhERmDUxIO1UByQouxJy5CavhJSj9K2dq4Ripg5+wcf0PVt8noDqqjhs1h81wFiqmAXo3kDAc
kAptGB9/EuW5KskC+GhA5lm6GMD5ZG2cOMYv5Uoe4jXzypsJZ6mgTeUkw3EyYHnmag2SB81K2BWF
A5yAv5JDd9GDWSe4gL0SbIYhnKsTG8f8PdktqtyzAVg78iz4Xe86pN8Vp1C3jKUnPFiFJelhR4ij
aG8BumEfDH1CuZCBmbNqfiNqkRJYrVRe39s8Oj8xMMJWRumj4YgZ0Wizomdo+MlRF7eKQNnlJEuw
KqABXL4exZVE4r7KbMAyhKqJ9W0F3IGpZJ9v5IoPCmcR7weJksH+ZXwT5Ef4Jut7hPAfrUXWLH0C
w03h9xv18XJFu5V0l6W/zAPUMi5LM2c2qy6R/T419JgwdvKEHUWadHJ12qjYqPsB+ppk3dXdGb6D
6IX0WYVI+XtF2V2+wXUzB7VCamREEBpSmyPN65ooM0wlV9wwWcCiz6AMeOBOzFmxlYdc+CCr/rbA
xCtswGENc2AicCS94DWmysmcZlKIQDrZVt1vJs43e+FO1wNymgtyNbxdUsxyeIzTO1dFTR0oe2iH
D0BcUUwojVFUYxrT7hUrSeM5HH1u9c++PT9u0+LC4f82OYHxxkVJ58SQjRcm43U4K5yPig+5cutp
JXt8D16IC4SfHH02IwCTeBPsfnk5U8EbaIDDIBqBmoT0pgcbYIJFVkIrWdjJMJE2193btfbSI5N+
WJIGK+A2yNdqUKkrfA3FzzLq8wfAzVZRHhCHX08m/EBBxduJ84+/x3Sj9+55YnHn5yW4Pm8kE+wZ
NX2x7NL6ixKzF2w6ELQKXrJLkB/4jYhx7FITJWfPz7qKmP0M75Q2F7dzfEOMxQ9t2DSW1fZdfLCF
+QJ9r62J7ZhICtd2QeEwq0QHj+6nQ26WW18HvwDEotwSzMoQPTZrwngNl9IfgpdTLZKNzbd6mnh4
9VdrhkG8sVHpvx8ZEwaKIMLDM6iHGV3rke/lyY4ZshF0hQ8FNSC6m00skpx9WOsXM8vS/ony4uqj
YzguLTXwxYvBlXeet3JwEhxtrwpxl/ZzfUQwkhi/qc3bSJzbyJaGgYv6/ANx/dIJGKc1LfZ+1DNN
VEq3hZaiYHOF078Gt2OnuOYUPOkJzp/FMQnuSIYZobAoZ3tOPMZcOAnq9cYNqv1AzzQd1WbTmeTn
78Y+qc6dbf5w7NEjFDKt4jlpvr5bQ81cJxd6n8O/FP0//YRFLPlujU0FctDXkSeLvDLFPr5rUcTL
Yhng2Svmo6FkS236moPtIeZrhw9GOegkSxHoXgRfUyzRuPAKl92FuyECSDr9GLBE/gsUgU+phNsj
vQuHIhaHqJi+BYSSUACb53oO+ULvJAPHio7XAPEyWaBRcRIDUS8knmm9gk9S8aQxf8S7bprHho0H
afns/36hmmK5janvailiWrfevf74mbw83tLJvqGpzkIqwgFRgRFlDhs4te8jY+XAFypLr9Enh2Qo
opT6b1PNjnf5/BUCl+jjyE4khD9oB7vttSSciM/uz9VGShhOYk2br7a8tg89pVzeM1dpyH5sMX9z
7cTuA8NMeHu6JqFYarH53JTowGO+G7KfxjMOdFYJH/6aS6h6QwncT8Ha1Nrobp2pOLWENU+aPFcs
+hza/U3NcrJ3ChzKuO/72LUEuYxNmeLE0pUnuo4pOtYagthte9EXFbmo6BQPIYGkLpnGBILdGa9H
fvFd/OfVSHRx2Udalco2+FXO7itVrbZmb1SSX2cFoz1TBOjydGexd4EbH6nQceXp+MW8IQEe36z2
wuhRNxT1oGDa3CplHZXBFg3j9BoEsbln0QrYN+ZanmvTmyFlslHF4UgGirurpleox1uQhPvISgvM
gydCzJbEylfZVAvvWfKycFS8/EaguuUGqti0igcVcUjRWFP+7dyjJD4tMb+979DqeGX1SrZr6x2q
Lh4yXa5AZ3KIMsw4+sBkjHD/gu9Ooh9Rr11pYI0isxpVyezzGDrsHhi9UIkEBSe1pyjJkgS302nW
Y2ds9fe0uSZB1hOWIFsuD/2ADbGVx4RlCie6OFF1T1ouHKmsoU7QPgX9rvdmBItjWwH7pi6F6IPD
0BWfq7HEiNcr5I3XEZkO/YUOaK8rSdHX/doALsgqlxFR6HihCewJsxMg28ijFB32IkwdKi0BvN3O
NpZxgyAyMHHTh+SB+ahrmlfDo+v98weeMBozDH/u8bpUbOR1c7CkiLL5PgcDKvCeRJ9kYPCGi/ob
2gUrqVdX3IctLbxFxeaRtg/76eyI989OGDB3mPLn9dZlPxYD8ckPFiIU6cUMkvY/kwkFyvwzxYjE
lcMJrExXy/TcPdu4N72CUBbVDfg7rGxFWYAcs1AHlCE62nP+k5G1PNKAJyHhevVk48YHDFCsHi2E
nTa1oPOLr8FDyxyI9OENOBzjDmHGInOM9vyyXhEdGZIy0AnFJeYOYrFlAOZ869tpEz97PKxvlLGm
YV33IYs6LRHkmRulaZL6vT4OzTOl4AsUvyqBl71VY3tzbvjROZwSW+NuULC2zZi9Ge7bjCuCGvLf
6ub6Eez1lX94RDl0dGN+sMdUNzg2jBd5eh93fL/WqqUlDSeRD0Gf6LTsB8TNTm/FzjMPHKfcKcvY
6DFeQIbjJ4dWgMq52sUuEZj+ZL3U6pcGLoKRezfObCxAMTejI2+K6vWtsKGt7tP14bMI8niIDEpT
Y+X1vLSVZglaON6yF3wd31LbOqjO6TdJYB6CPcL9bZgJfffzom/743D5Uzf22odfuvy7Js1YGidO
UMxqae+3OAQtewvSYhnHk5fbtDH2jzyrgBvTXXOf3wJaZNdBRDGkmRJTT1ZWZT2ZVDB6MVLMa59k
PNjDDFOh5fBuue/CdovqBqpT1JQ7QXZ0s5I2fdh+JhcO/UZCjwRavKJgEIVndDJclt2BJDAForYR
ZloLdMU1g6rw62XIqFAXqCqICl3eAWtKuxVSXdzSozGAPNm4ZElBTThKT9mofSVGRsZFCJfE3f8E
IBu/xRpHVp0CL/TbambRMu/e60K5uMtTLCWLoDMWN8fToraH2hhEcEdOA9obNsajSdTv+QJ5eyTc
WbgkZZZFBJ0FGao9HgJg+BRIybWnO5lqExbe75F8BFtnq0QNFWkZGBrlO+EMYezhc3QNwI+e8Bzx
jEMRCQWxzjt71kQ2puC+ovSbQkg1ZiFhTUES96HpxgCYwSJvMF1mmr6qFhlhYdc5KD4fBMCV0QE+
Ift5yevA1XtmqicPZOKlobJbUSu04XBBUhwego64T6qp1nklmkhZb04RKqyN2Fvr30WTRGnihSPY
CKFSxp5yTM7tI4GqvSYARkMlHwaojpRH2wnW2mSxTjbvxvtgGxIr5Pf72xdLrghyTx/Mn0qp+lby
hXMDDMVhFwJ4rMG5cbSfE52QbS76sFmxNYiUK+0Vpp4hkl7bYW4lU9SYqASa2XmSRf3h/pab1FuS
HEJboXk00Mb2cpKZRy1uIBQLfYDIO/jLUOSKeXyrOPjsjbvSw4AKkylqKJB1Oe1NqkpbS7OcTupB
xWMJvo3bK3Nke/6Stdhsm57v6mkCe5UwTK27bKfBEz41qhtM0ules71r8TbhZ0PefI0f7Ft0kx0m
UW7cqkhWNuhfnoYFisv5fncpup3SaXGPpTFSIp6CEt+ZnhisXGGgpd2KAMD/J6z5PdpUxfZlrSw1
Be+rwmTeR8bZMQQCuV9w11MOCh8FjxN4r98kY/u/RwaLhEHeY/6ANlssuWZVWr4ekNuAweKkHgRB
Gu7seA7L04Uzft8vBvsOvIkM2gjgNGIuqv4CDiDSwfV8aQXWwxZdIEPxqRvPfZtINcSMOUpg31cF
YQ9lIbDqJPPfi3sSF0hrwzcIS6IEgyxiV9la9Equeayd66xcXqHJfrJhSjY1hxPwBcRVi6+a3RbD
KPGaDyRHdoWPH8WO9+F+RSwq1bqG0nqCYO0vrQaZcPS5uTPXQRzutLTjU8qkgQuZ/5aR/bYrLlvY
slvBREW9rRmTXMlWdIrida/A5iW7LJRJ/YBT0IbCC9+PKUt4CqMPQdGKypPPv3vCIlkgpYNi2zRr
4Ih07LATo7e7mFrjq2AXyd/J+OI5rUEvugeTifL9X7d9jbsGBKbqS7wCF84Efo5sP8BBhX1avas2
3Ssa5RvIIVVFvNTcPI9o0qduRT1kj+lDrh2SxkoCC27Z0i2mKyIHCXT7V3wO/oUD+eLsPy4sa54m
PiR0KooYvCr72Coz/FutlL4NZP10ypayclnmdo3Ro61nF3yljsUVmmGfK3aZCzfyp/0/VD9QBguQ
gpvQk9NMCcl4VFtvidvOQ3jVxYug5pnh89Z5/NUjTf0eDBYu3muHvd22wvGPdWQkSfYgN9gPCCCX
2GyEhEQ3tT4BCGy4yM/GSKzefH5SyqP6XrBvSh38a/bQx14LA5iE6/k0140JIBQ+WLRKocOrDo8C
EDobZNDHjr08Xw8ADBGU+RkXIuPes8MXIn3+JUFlEpXAXUdInjXhnhsIHX4G1Wmj2BhdqVxtB6lv
C5pWj39UufAJ0bFUbB12wjyCnQM2ynqn5B2Wxk9Jgm/uVtB28eQI5TPvYBDXd9JM8BHtV6zCcE75
8BuiEUZo1V0bVdDsSIGgkuXmLycNWYN33/jxb0MYC6oVRsbVRusI+ZHoWaweqRpkEAuIZKAIWAU9
Y/b+VS6LORGMeTU0uoqsz29KA1RkLOBBCMjQIiujSOgPVCvgwELTfMiRT+kVkN/h82nKcJF68IZf
Twh/WZF6xlut/cMOnksouz6kHiuPY0cHYlBs9WI1ibwQu67C3zkFdqM4DMVrnek0z0RjY/dFh5cE
BQ38nzb8vFaT8pT8rkjzsbbBuGPe3Su9ZROq5Kupa+vm3Yg+zdD2MQH6+yM2G0sz0gTGCKs8rlC2
ohn7vPpYl4k1s80faJ+2TL425Ekduce+5pcX0ijsBqY6jAZf9AxvtUPsAo0n+C84FJ6eOT7umE1X
WmqwCSRwXpS7AdGwkEMLlNuciT44T3SMRQSa9PXS2A9z3rSfMCAFr/PmCKmOk4wQvQjUY76Ocff2
wrq+wsFqLsz1prZ4PHBCLsSApPSOMNxcEuFQczng8MTNmx5VSjZdyiSyS9ojx8HAgSbWp2PMMQBy
mgdZkwBXVmAO7oebKEx7WnyFiwMXvetjIGTtxXVDRr/YG434ZsJgBL0xIXzNLBjfZ6oh8y0mmWL4
k8wa3Xn154e5HtFqlfmFottl/lZpuE/5M5W85GFAVFHy5HIn2giAqZhKZvb/Il5ASs3rah2tbIuX
ppcnkzPwokRpqivjra637V281j1ZBxeEfKP0RM+DCIgaBjehiD39QQMua90qWn18kFhM2uezf7YQ
az0lPfz/RYIib6ptc42rQIhyR6lQQEcYxYmbznoSaBC0hJWfKeivuuVPJWI4EsM16g3Qqj/YIM1x
AkLwGXR1e3xM2TaCFYek2xNF6M0WLLjEZOoWPIPJBvYPaom0ah/yRFIx+Fdk5rQWp60a1CuMqvi0
PADzx3dEZl26uRnBHEf3tACJHOvr1vXCehrZcorRnRr805DXlw0I83/HUOcRWPSmnGrsGO80lU6C
oxRsfcGFBHqyidk4+o8tIxpw0eGTuhphbemJjl0m+9T8TQS9BFdulr7O6Znoh0iLm8RWG6mdlei0
puLmt+DJSJVE6KluJlrbEzfKRR1oBv3s2hfme3ZxpNmSpnN/PiFfQMfC5JeP31sOt4WXnW9xa8in
y3FQmbWU/Nyn+igZ0brGEBYzbGDT/FP5oxtWOaF/MW3DvE5NBIiAtZ2+9xpZarNAgeurqaCmhzHQ
hgbdBIYGzA4P3WKlgFoFAQBSadeI5q3z6jU0gJv1agxVbw4zma9+UPMuhTOwqBhRhTDY2L7xZjNa
sICjAK2ClBGi9p9+srJA5ySGcdG2+mf0lhcHjr7NVqwrMtn6v0qcnGzk9gy/cXus82ct3oKoT+8q
U8Vjv+jzd1/UAOG+mu90NQdBrxiwfOseog/BYkJtqCE4PmIX5LIHSFe9romONRMmYrDa9MM/AyoV
Qi0o4O/zXNJNnuKRz/QQoutiLjupBtLm6wqJJLdF6xZ5Cx+Gor0r0yd7F0GAOCA3RHVi1Qr9ag7E
6ASs/5FR5+/70eYD/6bEZZhzM2heNvZqfESDFZYyKHIQM4GhcGr7HjGsc7j5j/31CFLD/gh4E+m6
n9FB9ROWOz5VdyoX45dvjwKvd1AAbLgZ2fa5QaInG8kwQtRHHsEm22NwolTi1sTkKEKDpbhqNb1c
ewfq4Lr8N6hrWvYmYx2HsBYe6/4ZLqdphftt/SO2dvZb/e9f5pv/WnYo+Mt7jC187b2mDi3imxyd
LIDGqtGvtSg/fQQAcJiKivhlZYGsxZ8IhyHBNUY1IhRCHg/KTC9GXu9mNINBYE0mIxmSVrMafVnl
CaA1WO2jvtaRM3gq48USS9JglpDVlbVocWUtKz7aY+2R8waVAZudxKiNUAiqcyTGb7pY5CN7u9rD
GZlFeze7BYpThYws6l1InPa6B0mAq+okupDL+ZEajLZ0A2tJOmfyMuCW45tNEBG8MGx5xLO0pLv5
D9Fmw/w8OlQimRXuM9R/SXll0OyKLNGa3KRJuRLccQZObEknudzTYRddYnDo6RuvAAse4XDNkwkY
PvbgdJBaoaqIaXeuAUrge0mMZY3tillqONM2GeZwtTkqVhYqtc0GprAN8/e2Y7SwhQ0FR4R/Via4
kdKuWsnv4S94Glxud/La28/fJzbsUd6hVFmJ0LV7phnRP7CzKCQb0957b4taNCptJ0quS054B/v3
kvdqHL1VsdCaRxjwdgweEOSvNqBvzgkx/NEURcTM/jD3B5yii0RUH8d7JG2GUPBzDUeZ2CmkAKwR
XFEMz7MRukl4eGSUhfTuim0iVvzK//OlXuPCQlejIoh+FeDCeaVRDw40i+UHmBuoZARX8CnB2pS1
CLJTRvwoysvw6sTnGiPKZpeDgygElmsbGJzSF8Q8kUo4C3DmJ7gk/3y1ERtXMBd+WDnBqNC5LlAw
8mU5T8aw6JhB6oUmBxCrvKNgHiuUUqflA3ugo/gJ01Lvi3bwSfJeuhHykMEULRIzp/C449oRKIem
dnuPE1fHwToLflpMyGP+Zu75zKA75Vj9u9KTFl9E63UnKCDjVR+Z791Oa7WTX8cSCaBptBmzcjrz
+47uIU5CMGnOXZlIpKcZaLh1u2hUX3XM1Qyyp3tYmFbZpiPdFVlKELBypqj++44JfQIiyveO4Es1
qm+a+HTrgdkRTXpQN7NLaZWMpheauDlAEuk8+jlYjvkzFTj3YNZZaWaJ+Ed9L47eB/lwyHKyzEcQ
EFzXRmKXp3AXoYj1VpSrLQZl5KnvWpnir96I9FyKHi1YY6whKCQ58KDvyc6iGzUZKn4LUpQcOKP4
2Jfai4gbW/3cSiKtq+8B+6PYDq/CLwmQrqzbHy1ihbQPl1vv0t4CGm2tfoYbASNDKIdDrxxdINrT
S7jq3YpYcRPofgjcvHM/OuQYC/yzSnfnFP7slZnQXLR7BB5o3XNba0wTVv1UriQ0ATI5YfJBk62f
R9FnrsOQAJRORt1qRJyva5gzyoG6ONdIvTkHKqjFLM5S6SQnVhg/eZ4ltkfuMAs6HaHFV+5bnuOr
NizmuTzKJ02u0nT4ifctPTVDiJ9jCVq2sPHG9L3ZEDHEeMbkPEr03OVy/oiu/5uWb/wGT9hgMoAH
Xzy/LVpTCOhkfHCX4cuYl8jOeEnDjaLHyKP9n8IkwThpNb0NAsJe3o+Z4icedwp+kJqAmcTqHYMk
/7FoswZDi2cK6xL11kptc9IzfXQdCFWRYe37E7xgMN+kXtW2QMiM7Era3JLIsqxYk2FFZ0/knIzA
nOdCgQIoBDS8W9T7ZSrC5gyQNsPxCqj4EVjq2pk6tSV95cPE34ZKwlAyviQpFbeiTGSDkePhZQsR
vD0MdBpTIF2x8tQiHV16pkHrqAHmYQCHeCGJkLZmUP8VV3ncsI+6ilfqLqm87unJo9xe13soCQXW
6S6OMwyyKsxzOnnNGsZlj9EWqMmDnfSuet+m4LvkX5MWX1opOIMRDbzWZH3DC4HpNt1FX3WOA1gd
1annYORjLMPkP1VprOsT+LaNNWpTTzzarBm+sn6NKFbTJZNItn1HrSZJ3T+LC4Ng94BHyOIgfmBW
XqACXRsNUkR1QtgHlXetYIZ+LdLGypx2B2XNKjESluzfhBtC8OGVVb+WkG9TUCTvjRskuVcoyWpz
6udsJs92qG+utdfCvH1ghYonaY7zEGdwgUhfSdzL1Lb9wj17KJVD2mdFw7XZ/Hy1ZGSp6ZgAtYTD
VYFf3psbN+L8v9IULZlFgep80ywvJF30rbkQNzuMViMeNIl6Nw3CoKZikADQqNQYKur8/6aKj+kX
XYrhheSdKSE9qwuxTWv7Docu+vCGo9qipNjx8GZgIYUIzthTLsJ9dKam3LIhT9BXxQHh5ILPtg1a
UTOBBb0V5hU+cNxy3VkLk8LmcoSAg1Ja95dwEzJ/Co2Pove1FQn96dc06nIYec868i/eZWw4MswY
vlxUiy+TaH2DLNM4gY5DnV5bRdRLOhVKMMeOYvmrkrUIharN5jQ9bOZrHoGozcQQCkJTZBdesTRJ
/FX0/eJgiwoAEDp3E+pkUJ+QAOGAnQ2BiOLczs3E8kb6IudnMdD36H6Gr3/vPT+SIG/oLBEsgt2T
r8dQxhXgjfB+x3J/MXlMcFZLfAP8YniFiw1GsvP2/EfxZDgBneaCpQMuxCfjNdwce57DSsXFqUh4
loIM1Fm4e8frdUGHMjV5h5pgU0dfMJuQxTY3s8SPAj5cqU0kJBGqwCbYWSnOGBmHLVkLPtUq5h5s
H9S0l6PPh60APsxzI6gy8rVR1QsX2CXjBdeQ0nXUT0OhEQ4BAL9gbIRdrk+64seUhYMLVI4vkKTr
XDe+5X9YzCC2g4XQnL4HcGhc+yMBrjOh+ZZ5NNt39ICw58FLWeJT+u+kdLvIEklGzNLjyk08D2ld
86L/kiQZboszefaKJkJS1JTdwaiSHsYYJG2mD+HtQ2u4b2R2MyEalALfkUPihkA+NyOfU4aJ4wN8
ju4ZkhyqDxPs1kR+NW9hEEcl3r4daY3F0Xv8vWcl317w5kfz0YrkumNitzwoiiX3s/dpno/EHq0F
CCGUVRAlhdtfPIczqyoDmXRDJNzoqOaj/xUmQDZNYxGgVq8cJ9HfPMqMSjBYBuvOLpju+OI73rrA
B5LZ6j8hnon/muEuW3iBA2m8U8iqv01rTVB9+4AmfLueQ7JIHz0Duqlmr5uB6/PeZNTJ8c5zg2NL
pKaTipuf9/UZ4UOHREhcWJVdmGV6AH9Qf/BU/7W9DUCVVKyaFPAg1WcdCMdR6MPPoR4Ai2wTo9hE
c67xwe1xudTBW7caZlIe68+XmA4krfU9k9GYvw1mhk4tVCTdcyxKGgUI+8IR18zq9sfGnYUdVJX3
NQrCuvt5Nc4TWWZ5HdW0zez4SJvMzlWo4bu7EA0Ub626QcgDEXOuI39WNIKNHYs2vVkxE46zEqSA
Mf5vYRvdSsLYAxFI6w1EZC0f3m/mWu+dDyJPgMhqMEHy6c8c2veViMem1lEAOrjZJIGXzf4habtI
OClA5K2PeN0x/USXjEnRmBedLiCK+GDmvVFhZmROZRAdoKJL7tpcCCysECvUXsfJNIekL9476YJt
MBNw3k2QcWBYKFijF1LIMDvDqmLYgjNfe0ma/RlWVOh4GVVzGazPtmnTXXxT/X0/4/vwryRKLyf7
lfalNOYiXNU02sI4MKwYx2Q6Gczki/raj97oDckHdrRwuuh7PBjiJwxTjzo6UCkkhLrXu17Ze38X
k9c2wfssjMaMhgNEuu+lZWm9Vf1TklXMnvc9T3uvEtxKoagoq5zNSqMeLOXRjVWpIG8gzvy6OlD2
6BT+gmGyxyKwCj6lVuEGV/ixrBSLbBNuX9Qzy6uXYejTbybA37lF67vq293/oSsMJpcUuUwJ15B3
FMuvPeo01l+vmhDRIQpdTWkQKnMmXj4rWylFb22bqQw7p6+8iA16opzFD53POIMSNG6+28mpif4T
jCqRymxyiriofqZADNts30+j6bdnmA7xL2n0ZjQdMl5dJ2JSYIysSeW9axzwP1c2nEciip9gzH/W
7VS55sei7d1WAd0IwKoLpRrH5UE8CzFWG4Aq0JuqtCaJ8C6QP44RkZnra2PWBRpPdd6NRTUPitZN
m79fsvUtO/ZyzMPHPACezptywyZxeQEVN+p/+kNzO6JiVi8QtcdD0ToU93fsRhjeTAji104cvdKo
7Js6i4oxv01+XHhF5pQJO1DvURrWSOtCbZIiXdS0BzdPRHKzl5n3qsWJfYINzvqe7zw6XjIQpTxG
f3WxbYe2HTL9SRldPWnyLjkL3nnABG4bokCE06jvMi+lFJYhGodxfEEPsgjVATO8DkH+PKNwgag2
sINQcUAxTrRUHJ/Ccft2OwtAMru77dSr3P9Ljo+Xj9DScrVcI8fU+TzwzFkSqxvowGw8RdQS5dyn
oynDCSSu+YdHYeK/SvcS+xWQ8VjQ3A1d4doJh9CJjLeBX6nfIhVG74YgRG5OocsVMSGF1NxxmO6q
oIY283+5KEWUgXcrGBmnGIfx0tOaUF8UxZTY65fJs9aKcoQoH8+ZKK1k+B3D6clPnQNfCi/Rqp6J
3hkFTafF/MEEUw7FfbL52bUZc2uRYrSvLENk5uXImFllUF0eOVssPrtjcfn3gqva3286GWVlKV2u
igyDn28mKSGRYQmegib3xb8dAH7lQ+Lzi/2JsYpmzc55YSR9JsGU8t7PoMQaQSBeq6O8+kWp6zUg
RbrCm3gNb2HYGd//PZEqkdC4It+Wr/9zsJJCVVCjhtl0K0UUeX4MMXR4bOOB54wzfpmeLeGqm0Aw
d630fAKMwREPEp7KZ2TPVPssXA7fiQzrZCOElXGso3Ee6yGBSwnzvgxiT4b+uu+O+FcLbV+/wOQe
ijCBRGpzBWi57+zJQ4/E4s5qpBF1RRO9IrvjeTQkZOOMXjpYU6j78B6eU4kDCEdsXRGbCeJz8Q41
1FhJ5KHnyC8IHhMmfJ/r7B8EnMGYsSOkhgLG9CW9d5DWl3SNGAzQsR0uaFOAVSFfMMstRvjC0W/W
yAG8mGH+mE4P6YWlK8XldBxAEn72tAVUBGDxXbUVlQNciUPq7SUkxN9ZkCajSB2E0wFeTrPAfc5X
Klby9MWIoQz1xCYvwCWP5K2TtYWqv6/ieQBrEfA90ixNR2FNcp4P01axpYh/kzCnwfXP1+DlXVgz
LAJ9z8UdQ5kfDWPM5v36/n1DNw99cvhH37ZIhjaKaDNYTnuM0Mvm/iAg0USlYOxc5TTF23R+epgZ
kAx7LAYm4/adzL80pTr/d5bvp6dLI3Wu/A0Ar6dVqwwWr5HuMg8f6pSdYmxltxtlsrEpEV0ysBv4
zjE7kpeA0bPgImI+AgPUdcppuAbZhAhxWJf+utinQj2HiXGTVgmvm7iBSFNpqBYev/RYaTIARX8g
XCxUE7vR/45MRI7TBLp55yecwBLGqPjc9rgCmc6CPdFYBYrcVxollH+3u2lYDAhp2mdLkMeld7W4
6hLKHHfPkWQKlAzmRqd+dhgOPoczfGoZL1qCqNFd8c5FvZRRoDF1cvcigGVFXIaff+Uw/JbyRHVT
CAmaJfmzXpqMc3+r+ev7dfxPTROanRrg/52AcHPwXXV6SB2PmnuLgp5JBHXt27v/APRktQm2EFg7
efauDlQmjEdvhEBG5vWVpdX0ZtuCnvtuyg20SoCb6bK2ovyjYj8j+Uo1oeTBylq2mEE93tDduqBU
qf4oaIi+vagG06Mf2sTvH6S4tcXlXppMVO3B0jKCFSJVJgyvvhFmxD+Aw3D4AntAZorFNm9BvUOZ
pYvKzVeGqOnqSoDBrmVjMKurz+jfw0liVxyywjH76gD52Zw2scsk26109qRul3t5lTpUix3CobOa
6zREaRNKaLNmK1JjNjjczbY1o/MuakbUn0JdyJNFi5YKGsLOq5TS+E0Fd5C2Xb8rLZ1I/n6VJvmz
jxMOZza7dtDlgDkp4JsT22WfgwYeJseszcbt9nRdPtyohHhbYKcj46WuIR25kL/NWSbXenQkUdi6
uXS6Ce8avyTs0Ac3tbhO7/gj9KdVkw507MjeIt5L+7cw6JbgyH6vWOoHQKzJxJ2dq0eVWngB3CsT
hI5sezIcCZicj07ZLBvHmj+eT9cBRkghnUdscIg1QSqebhkI/W6hLZvtGaljKO8ALdwbgXEo37x3
WrZqBKXOn2YYu9XvfEwVlxjvMjCTswB4zU03TA8WUj7ohuL2Dxcx9lIQyOYE3KDU1LQdd2ARRLpL
bTQjNMe1W3Im9Cux4fdWtU3/cNsb5ToS7bHJqfVGhS+wNuwzXwsE1LOV1aMNUHfPuOIYwNWXVAAp
Y6Q5BYf00fa2npXbr7761kQjjsIHkvPd6gIuYgM2TBd6weacwmPZJvXrz5E4E4s4VlroHskEQWil
7mWJqcDjpOJnLjsC0+ftibAa9JEyV0oU4ZQb3686jOJQFdBjbBr0Kxex6GSRDJx2YfPe+5D0nW2Q
LGPhpbsd26P5d2hKnT84iOnL9oxiFPstju9M/vpLa1a5fpffrE0CtfbR4wSAQOkDevAd10mNejcA
KQfbHdJTjCH2MQARCEL6iz3WGjoJvQ605YgACsgDpMcfP253m9psbbuYkgmVTF72Zaf0WOO6foPK
YEthwIqBfUBCVU8swblXaVOTdeTmzdHXvAF7pCRgSFT4z+vpYpUFF/A99Lw/YmBV6kMKFLDMzquL
TG/02A/4lE6GbVMCDTz/nhImxSUW8p7ByV9e8oYevrtKpj8B0kZ1HlBfLgEhfafmFwKdM297PMEL
TQHml5jTgfWSU9H93wPHjCW4U/90EwxjpWaHRhDGaOpcaQp2vQNJhR1FwF14sHrSPtNVa/bIZPQm
Zt38USDi7h+qdxfRLjQvVlBGnXLKM0B9nZiDweXkiBLhCmj92wrCmf1yA/Q7I5SH9lQTtlnPxs8Q
jpk0+0BQDJOOxIc7vN7VNxkuh1+vaFDUEtEXLAZCfSXOOYLpFxqZyCErun1tgB5X/NtXufLWUf7A
/qt1Q1dzZ30M5YbM0ox7CJNQ3mjRJdSeGfS59EeqofCDX2c29Zr+MD35d3l+ScdedTFQNH/Jqjrz
Ha0l4G2QeVtJBws3FDyEXZuWgoliOopyTj0i9KoevuLeIgCwgoeb7yn8NeCd8CXnFt6rticd7XWr
G0Ole2ihoiBJrAp/H5pEWAnMkq1g3JetFR7em8/meHnz4ear1gKZgTIS/e2FwcxlbpoY3D8ssYQE
G9bUi0n8XtWiSoB5WJfwTH24/OWQNHKwmyFtIUFzViAEXZ1l2sIjGVlcbY0vBJ2rnbeYTgWV+MAt
4/1A9XH90B9gwXxOrat96/II+QhnSzMfo2MW9UaA7qMwQMSDLtBDX6ndIqzdjJ01mJWcv+McIeUz
TxGo82+cAtvPTak+UgpypaFOJp1jCGqq17amZcyFpVLeyNb1JMgvR68QKAk+BsCyK+LlkaeABaaG
7wexGRrHWoqqSRQnO5yA9jgvPAh/15f7wBZZjcHsQFXEWQGbgzm8MYLnZ2sZS4VF/7L1fc3QJUFR
Q5aZ86A6FHYmt5QGMKAlOJMa76NL+Q71UmrxOyJxLh1RKgaQp/4Fp3j4XdihBnO9QLw/HGtILNeH
80yGvyQmTABtEiSOsF0V4e8D8x+phJUH3qtd3nR+hjGzlKT+gyaHQ+jr1TtXD9f9zH2azaQxwxIp
bvICq42x+YRYIsMvY1Pnicet3dV2C1WrxjLlcbVIoAutZyi5iQlDJNDY5j0rzVuNlPpXu10RppNy
FXGx3e7YFhaRhlgzIWmCIPiMzTDtJWsY18LGHzfm8t1CeB4Rh06mZwnvU1rkt8vaQ3OMdAQZ6Ppi
ceI8bOD5kAPQMOAw9+YazITihU7XUU5njxL3jZcJBerjRjBw4BUyh83Jsd2bFHjNJy8Twyij1sZK
mhsMXhjxD1sc861aiKZdedkVlddFDcjtCpexZjNUl+hvws/pJVB1uAkyUYWKuQN3ao1lJ7j0XV+J
Ujk+tIWYfGyFP0MDfIf5CFw5C4swS+j92w5J3jOFt3DRKi8iqviyF0/S24nhXXbEM3rj+eEW/KX6
PnfKng6EzQd5j+HzhJFf5pxI7BMcsBqNexGH/S16oRDHp7IFQ2y6AZENQnXrmTSk2N09/fGSC1vQ
4HvVUKN/6y+Mw0zYUf6mA+LrXcYEefgpMttmhBRsKPZik7EmSpzX+GlzgrGdccleKhRX5s7xPwfh
qrFHWe3JEQi98xBWrieZ/ZnPD4S5oMMKJnWEqiHCCsL3x0wU6TkQKiIsNs4lRu5fxVJQ0c5d/vEl
fIzFT8+S39s1L++liYiprxdOkGXdRCMnSUfWcjhGdUJ8A/BcKEOGI6hq7LSvisd0uh3zLneDuQsr
uBOaJU4fapd5FjxM7nAYdPojwfU/OzM/3ABm08GQMfBmJYKjiNnP5f+znhnQnexw3AbyfhYj1zIy
QIcNLV+wr+RuZUhG7JUl3LMeo/VupyJFzXmZE9XdLkXWJabJQ8zKB1KOPhyX9wSEHeIW9+09UVgP
rLUBLxCfxX6gdJLTP/m248QK8T62MnPEHIKjch2tVEizaFjEDxN3JM7VCmQZL+YfVShOGodmTRXI
UIV8Ka7Ay+PUq3Zq73q5zi2g4BJF/FtqhYcGMWiYyZuYq0Gf1S4rYmJXLh3D+3aUmTtPxTw4oetV
728Kp9TfkepfEftV/Wa2bKg+ptxTgFPwlrhvA5huz8A5ufCOLS+Sd1Yg9/UrCMOSvX5RQEVLaQSD
lH7RkQ5FqLVMfd+FODMxNTn/B+FoQGwZPTo/w8+wjrWTdL6tPR0l2Zfi/2Xu2OsMIPKaYaQVo86M
ulVD8BVlrlbxpeLs6EFPrJ1o0v2Uy433wNrfMlWCgPcmfONtILITNwhKKiBubg7I+iS/JRYocWNY
EHoMiwH5MQ6a0iqFcwurTVrDg2KG2R9x3qaDSHjQ5Z2/DG/kwIRgqzkwoTjKzl1iCCQrJFbuxmk+
vOs+Yh9u5LXt4blZZxR39TI69r2EHDtbE8mWMuDJeNfM/gpPlHh41vMt0jLVkaKJrxkVeLhpM8t4
OIFC03vOl9zl8LQKodPtPurJ/v7NQp8Bwe4sz52v/wNYp+V3ZH45d4KLM6F0CMYJ/zUK5+ue2l5/
mQkYyRpDwHnTqedbyNkhjU6DsfUJW4J7Y/jSQsRIueY8kMF7yOmIsAT3wlVp5A2+OiX9zryTC1Au
GdqPpBrqaOPt8lv/0ojwGcD5Jlbmg41rmSA+uwT/5t8p0o6gsgo8JXSR6idnGPQs+mlsNOJo16P0
Yzcq8eUMgco12egHFvenz2hzaKKupdMLZOCaCwze5EuMYpZa6NqzKbiDMoCXLAEtbg7WA4++tkfU
IWRShEc05bMrAl6VNWmMhHXf52uMmcyZ+Uh2NpRxpqMlWdHYWT7yi6RNhGeDNRH/YWTo6ZcwiGvG
NtvvVaGVS+IuBeZd9X95s8oFSeTgKnlXn1BbB4BFHKPaGmAEFyEj7e5oUDmRzXwk32TMjQdL2KVL
zytDpytJiiuy1POG2fZgWTD/eQywPSwPYizHpaPv+ExOLyW0U/g+homEcPHZvvIHqWfNE8BaaqO9
ee/HT5lGxKj2YxrBedjIpIKmdr3fTxT+/JMlal9TcfXKQiuZCr8hjRaoYrmlhQV75cZ6sTU2AB8e
ptbmQ07JVScGCKzsWPoaQW3DBURZrIbfobmNkO1911JHqgUKGBGq/zc/nAXwve9Uz4cyOkWDkTO+
PGIn8KTGEoPaKysWKDWysrkFObaKhy9TjHk3OLuztRdGqVttN/ov1cyMxriSk2jPDVoeb6RoPGn6
Q3nxJS2PKqEzmKZ+7Mg+hPv9IKYp3xLYFQl2/yLHZ+NArLd5u+crnRw4V0meAlEhFfTrJYQF9QNI
0Mb6+rV4NTYgfyR5m8/kDtDCo+rYaTyS6uyN/Kz1TH83/zUPTtmwfUsV6t4hH4u4IxQAvAh16PJj
6Bu3Caag53ATKkSmGZeUhFJEgSAb4oKnhHDayWpHWc6kdrKpyccO8lG+uuZAzlAQobAqoXp5dtl+
3d+B6HE7uQ6cTxTwgXuP/s54/KMZVK2E9ml2aDyMZXSdwML0HLwOh0miJGQy9+dahDd+MGMUIoNs
gyZPsGgBl4dmNoLNjUi5sNQlZu/BgTjCeEeeoYrBWyEWhMLUohFkS3S+tlSB58yb8bfhvLN3W2kM
uRMDX4LC2VorPSakB+KeM3zMFXSj0VwFRWqTuUlKIP9DO1NS2kR3jUA8vdpWy3TRheA0Q9uoVuQ5
NZn+UNww5SWbdbKLKlWDwroAABo7xuP7kCWVgoNd9qiKe/j0sR4WBvjHcojdw22cpieWMNnzInQ9
OdQ/dx+aCpm/+JDSvQN+u8Cax9gcdTxKtBLOeNZfXxp1fOi4Ot8oPg/2Njt/9aJgQZKZJZ3Df+8o
dJpFb4gFWIVVqmIcscTwhdDPb3AR7cXy3NVuD3H9MbJMtQryYmWL1jmRbhC+DqM1zI/G8uWSy9Zn
630+Txi3+F1CdbqtuJHLNvjONEOLVCUqRI/EAlqcvV3RtQ6V64fV7b7MPpAGe0XyJYgM8lC/yojf
YqmnyP9KP1Yhbd9W7/wndZUjIxmxUHh61ial/yc5x9ct5QvJL72giuUS26/0NbXeORidJeJUyZta
IWZLFyINdcuJXZCF4hVBQlXfhaBO5PuVE1U6gEwNguQZmLY1C/WWVlj3UXLdVmYisoPHu9CZQvPG
4hMxdPOblWJbLFt7+jwoxm9gXOm+9RzDdHbF3rwwVDeAaYxv0zxraktcvB3pOAAKPQG7M2UQ8tTo
QSU4POlIzOdJ8ncUrsL3DXoAgioG5+s1tU8OYR4nIEQSsoYOGk2gb221yQspRc3a7o/m4WmCAras
pZBEvr5ksaRju3LVebzz3AKxKvBp5taPYenjMDJSbH7uByDye52cjCbprqOt9JPYskafVFsascwl
wtC1U4ZUyC21z11dgDNXW3Zww0iio5XuaTqMQ1UMqV5JJf0NJKwbfUxHb7j4Yxdisjh/MI8XkIj+
YKYEAzFd+z0AQLwsPlt+gWUl8UHpWw1zQIGIhiR0pOzHEPE8lif3tbE9laN4DKHm/QXFsroQgktN
4isi0rS/rr/EvchblCkbJnkz+cMCY77beUbQpTdb+i/amZWbKPDt+CgyDSPoh+GCzPJq3cpNw9ts
IVXEl+pUjK/KAPdl5nRH+pH1vsjpZyQ33hKUH+1/+cUCq1rGr/oc8kqnfptHczCQnV0QEK2didGT
h8Z4x1Vpu2z1GrSE1MVCK4jVwkODHL43Y18IGqY8E0z0UCLIPVi1G/ecQEfILYp/tpyubn8Yk0ft
dboI9QvQrQUVGnvk2T+O7TUrkpfpC5kQ65NusFPMG2EwQJ8FkP902wV5cGwGwLt6ZuLiLRV84b2+
pWWGjhmz4Dt+rodvHvNHHVd2Mvw4O+Py+cd5eEJbL53Dbn7abHnh1uFxgTAfWANcJZSV4dPQ8O6S
UPQeIyCg/itHjjmU00NGkvno0Ivbw7mt0yA6swAHjseeHuVmT7OeHfm3bestX4xiuBgN7ODepTJd
vd4y7v2CwNB1Jb7Y1d447+MKhhGfsVG0GV9P4C0LiEbosqhBtrx+rheMxY02Hu6PM55/zQr4arzW
w+HjDIH82k0hj/X+PAAgp3ydYxbHX7IsH+IdWtWB3EBMbk9HfeluF7b8tpMKMQvMHYIpHk4znoDV
bKM7XltmAzddIh/XWbo9l7wOmjl0NOw91JGqzHBWnCw+bDPO2mC+ncpfw/ZDSGRjXLCW1WV53oeN
QFRf7FM+IaZsZ29ySJhJBJrZ0CVG9lG63/QkWnuntqeP/WFuXufgXfAxXvGVttBXhxR/IA1F3Za9
NdLUAJM5ScNtFDO7WDy+SgAxqpysGyw/g93uE9myb9wTZFDfmnSzN0v3CLpDiWTnXvyMkY3HdCSw
fI7e0ElklIOLzEJKZO9hTKhDtIjh+WbySX2rViw9bexaYdCPzoWBZUP3qRa1rd3zvQIqkM/2/jj0
k9FeV0inWbGfp+LdqWvvAYfGsbvlS9yNP/R9qI/uwES4XqLjVj9dRWsmo0FOixlN0/LAeOTDSPye
S4V3MExBMeG1rb77/uZ5RAEFJHAjbGqqiw5a1gi/F3YgpuCv41u6d3NuA07FQiJtnc7RyRXdv35B
QMlo88RlxXpFjuKJ+nlfPPka0hS4sO3jk7rYF4rp9DDE97bZX6oxzORk6GO7EfUXW25pF98vhve8
3M7Xbmof9OVFD7yNGYLUfVK344FEcfJHKjKnMhVSNif9dHnHLPP9vgoIdIhgaQ83y5yjnAb59azm
OirY8jdFwinTGgzZUgLK68tTgOj5zoH0iRtT8RSyVrQKwlmv3De+aWX5Rf4rYLGYlp/d2KJuYxAG
XASKW9NxBPbnOk+SZ6aK5V5rpQC1KGJuKwcGa8DoGKuWzYcXGsVjOx0s9eYIDhVYlRqdmg8QdOul
PcojTjPGnEeYhpHS2Ghnp/BmXVsOTUxEz0X2EssQlRAO3CenDsde/rAI+1NKzJ2btOAgvkuCXw2c
MP7QErkrVxwlvkMoZW4rEpSHff+cJxix7mMHKomBbbqhHXP4L8woBMa79qL5hPQynTdPCr2rEWwC
BY90vdCH3sE7Hx7idv3r549xuira3H2S34jaLOlP9W9uF2bb9LW4QlpUc3J08qROqqjtdIy3ljHJ
lHL974UZ8S52zgTmpzi3nlSNoePeNXvsu1n3R1wtmBfhw53WoyftBeFA/07Epeq1+9ME+9+Rx3Nv
HbMyjspj9OVQE4KOOsByRS3i0YCdvCoXQw/8N78exmePo26XvnrSd0hNoAC9BbKZQtnZJSNfeHGs
RIHgbt3eXgZSSAnU5fnwdOpqH1XzMN3cONFhvqxlR2zyJUVPgw/82L5SIyLcaSJ44JxqankPZXMq
zNRszoX5Jd0rjhglFZYiN52VwdznFvvw/BHgxOKEnbKnDfRXrd6U+3xbTvNfQ3PreTdDx0Jbks0N
4L/RejKBk3xCljM+bH+OifFxYxiR0vraLKkuD5m+byMGJR3qAhM0LkatE1E/NyuUL/0CoTtxYbG8
YiD5yrI3aD4CxIvABSNo71xOidoiX1yr68AWuFunva+XZ1vpD8nhiDqpiNW4VDBSmw1FRGv/vmWW
epWXMY9ga0CGu2Z5OtXzli/zhB5rA3SCNQHPnhz8U9w7xqAh34NKhW7Rp5XZQ2jSM0ZJIkWOSx/B
IjkO729yg2nSj2qu64yMFJHBhnl6bGybPqVPaBS8qCY2AK1rDI2W6h0q4DFkLQaoeimM+/9W/875
OZi7u9cyDEzo2rXmJnJI/WitCavU3Lgih57TSkI/sqHL6nLxPwCaAYdrVO4cReIgjENb5RAzNtxB
3CggxaHAXIVf/7L0oUVOeeM035h/EfsWLovUGXU+rek1qwff9o0TtUnSfG0D+G4G4zQyzvJJYPyi
I6Ru4UjThyy63WDJg7noal6OPLf1kbmGjLRYmzUXDHhOGLkuiKI7XLvJD9cBZdTtxlA941hTZl5q
ecxjIRhN8eI5X9ZgiFshqUCWLk2AexDOTzW6M3u9aOiF+si1m3E+BsmJsXF62YNpXCGZ/K0Bdkx4
SxpmOP041mLppr1u8w2WOdX6N3cXnNbgwoMWs24UtwcHINOkWcH33b4xl+ysHtRSaNKj1Ym9sdNe
Y2BN5PHX0S5eCPiqDsZuPwMBKg+S3i/GhrXByl4l+Ll1b7OK4shE9I7UFAPduS31T9Z9cieT8UOv
h/thbkiFlK+W3XDsW8LS/h789ZpczCdRbTl7WfcGe+lZuEWcwIhIRdpd+ugDn7/oJ4jJ9xh4yWZ+
B0ldLFIT8UgvJGn3JJDQlvKgPiydpJTXpkVZwsrR1cM3/h9xC4vC6XJUfggxKhlhz1Y1WSrvlJX7
00VPyZZWvfGWWccrM2ttaBUw6yj8R1HwXCQbP2Ofvs8YgFy3WbblslgTDZN+5tHPs80H/X4VhKED
DrZK13NALLm5l0vu5QM1zleznoMgH7CAFbzf/lyHS5YtGcrGU5CtWsTBYKV5yPUTTEbjNHBuhblz
1762kOIE6z3v33tZsJA++hzMtRiMjN3uSolbvlOMcsAJigViLhwBqz8mSKATKWA+X8pILg6k1nmf
ZySHqvhwWia4hU1w6xaqdZ6YprNYBgSyXOkKVdHNe+C+3GmhO8A4O5jhzNKFztKewI2U64ARfelk
+ZGimxbjYc71RvVaLpWsz0Gml83nZ6qcMCx9uTpLy4AF88I1lHSGudjuRWQDWGO5rVhsX/m3LRGT
yZdV7M26gwPTYW0jAu8TmJhir3lTDWqAjEz5qWuqms3lfeFAcPt94QCRthlfFz45l0mWL5EmCbL8
gQJGT94uNXtIwTGAckF9y8p+NQs1buJxiY17PoG1/nJLDjx2UWprz+Pt7+GMfQl35aFPjIPd6tz3
5Fiy+alA5L1Nv+5V4fV8JXtL7EVPssnbRXTKVQ4dYjYrR0LqqIh1oe+QjQjzcW1wBSAaY+i0eYsC
5W8Fm7h6iqnm7JfwFXIJhU1on7H/XcM7FdowMw6dQpMOLVC+Qb9ossrU20Hr4yrce9EeIPRkL+NA
XVEgbtTtqHldSvgtX+zGL1aT5DfaycUnoAFNp3bBc30PuYl/iBT1J3jHeol6+wDheRevL0VYVfIM
X+yJ4JSNbE9Cmxpf/odbpeC1hLf0MyFwMHizcvpazXpsNU5wI2BBMCydhjALuwcbG0+62TSI/mjo
qiAEk0r6peh5sN3W6pWIOU2EkIjqG6Dj9VIF5+jduwr/UMGKgKN/PfZj/jZJPmvzb4OGcah/cSh/
EFHpA3EwaWDRLe4WorXy/4XUEp+XnPtflKfTZUkfXmeKIBdMzXQSJeG+ILmhQUlL8Uw4vGwIuowB
DFvsNer1A34Q+wrTzuRcuysCHnBef4jbd9WJNW7VWL6npdCLLysLhWQF1Q7GmaySv7VN660SCgP8
sxB8sKy40iNqvJW89HWN8Xw8Ufy8NNiNpBtouZU1zVf0H3PBmmEgfYpSHtvGsd4OXkjQQ+8gMveo
vfwve15tckXseCPBLSEsXy0lCaweY7rQm+MBSFDhS4wmZDwB0uXxSoiekOBs9og4iMh7Y4+DQ149
lxes2FGOil1mkG5zHW87Fj5sDgHPnSoiEIRBLG2jswYMs+FrhLwmE3PjMOlB6d4g4uIu2i9ipC8x
ruaoOQAWRbfAF8CXvmnxxhM9tRRNtCL/72BKdDrrmQDUKiPccd8BeQ24ab+s8zkMYWQrl0VsET4G
yPPnx1cw0YySzzGSdyXepoBNVBrlxSJv3E4MNTxnLW0LjvAgcSW7eK8/ir68L1nYOruDKFMe4STG
WqxMUegQbg6nK7EFiiQPr9CQ8M3g4ORqk5USTnTyNTP7krOWjmFNZKpugmPc3cQ4ocdmmxXFdCw+
UiX8jxjcaXaOSCA4+61BEj7yawlydnyfVNm/razL/zSTlg8A86pPYCOyMr5z7x4Or71Sm0Mkj0tK
DUrkWa9x170yy+49BGuM2aJOMX+LQjDN0zPX7ccSyTPPTJlwsZT1yCVh9NJBM8KxhDown8V0ik2p
ss+ehGditkOfK3mVn3qShmkZTdBb13YkgLeeMSJZDQV45v1iFJR8ExNUydf7BNbeE9YixiMn4VpJ
kMn0BvrPkFeZ7vUMihBrqJpv1YXtm2ZfHmkmQYzxnfPPhoznZg198ojoj00Abwn+y+ezWnw9FEiK
lrYlYVhBJtGd8qMsH7VjsyurFmTWBdG7uywGdBpYOveRH+wQPBlmF/XWRS5I1CFtk2T4QGoD7iuJ
KQYghmnnWqlfemIda/TU5qykFTLkq8OHaMqv9CTMQOUH7Wwdfc1LUZ4sdj4XH2aHl8qvkpQOoiRU
x+gpFuNy2+746NL1hYkAP39fBA4lk93UcHcNZZ0I12XuiEHGz2pi4FrKdECxw4JmWrpLKEhdof06
nysLFZlOxxriCYUWuG0pmuusxy5pG1F8qqUXpQ0cGcLy2kGY933jDjfxeGS1Zqx7DYJP+GO4kDd8
Xa+PW0BKpbtgarucLU1x6N6zJKsF2Cw6MdHRxnWBVBpARAit+1wIe9RrYl7VxydLKykFOV4byHNw
vyWXu5RPcUHW2KEYBJ308as8LOqyIBbvDIWLTVCB3oUOIC1Po1mLdoajoHv5Lvn7NTioQ1LQ0jsR
MpC+7KB64y1g51+ysel7QyyP+0hvgw5vpDLJRJPJ/YeFgoGWMZw7tNURsV8vi5d8O54CvdXJ84nQ
exh/5MjODnhNRE56oeYNP+AbQKgKek18cf1sXJK6sMytiyTLco34Iscrt9uB+Ds1Mt0w/icHIDsx
G3Edj7Ck5IkFDsAGveG6/lNO2bROzjnlxhomlxTbqHGZl08GU95X36FZIxpPRI5plNNhYwVfYsGa
A3UEHS3Y0E7kz26JcA4VLGCz9Sx+y0FbVmvjfzN25KQSCUVkoULKl/79eJz24l/Y4loVJk5cL0ag
eQhG8MQ9evgQlgypFeTADJmqTLO7W3WOn6YFYmR4s9RLGGFiLaEEpb7sX43DJ9H9yD2xgT1W3WKd
iZo5gZ1kI6xPupFs5wVYhooHPu3+6SJ5y38qGRPmamgZgygN1OKrdMa9qFgBHLgKzNkWccIt3ts6
Sckzmk2jKGvhCklX6744w7NfGuMqxUScTk7eb7tdMh45NxvkHPVLnxi/gtMxAYybLkOhtmWJ9RC8
Skxwb+xyS7pWWWC1Rkb5M2MyV0clTjWMJ5dEzgnnr7icNIOKhWcTvLx2pA3NQgDAKvMYuYx8pyuI
ASX2kV8yJq9l6HZQ7dn2TwemnnYXkMM7oaChSbEHS+k3O0xLN3ow1tqGX8UliPwhJwjGagzLqrKg
c0oXmlByZTJbMmLoZso8vIEPqhwB3/uUpFE5DegZLmcafZUu/NteYMpNVlhRyFgTAtSjQbpdCN3Z
bisgQDGth/KNY5rXC45FoQLpM9JG7bYnsMqf+ZAiofvY8Io5GqHhsz6yyVVIW+F9JVSdqEqFcrrM
O7KSp5QmN2z/ke5hQJ2OVkolHD0vWnJIJCIUYhyUQMA+dtqDelkOlxsVs/FmnYLTdcLCNrHnJ/dH
Zl2HiX+1960jE7eBz8hasFpE6qRYIYyGcAQtogKW/p0QdRjsm2xZ44b7rDB/BRqZcsDrjPSHtPMw
U4Ya7jo/NTgDmx6Nx3FVwOCZHw1NegWeS+uDQ50n5zzMw8TNAtjLdUmfPn5ThGr08BZx8YDC1W7z
xvxBVVZqtKPGVHBSqC87eYOHaJ44jGWyI00CT9eL8Ads9SKic3C5Elh/cq1qGMxkX3S/7hCp8N6n
73zZZUkSQhscU1Fl8B5Lvasv2UGM5GToFLBDWkRyC4mMB6hRumG+I1KTxSU92b8F3unzKIABCOk6
zgT4lhGetioQngrukuiCJua/BAAuNnMvWl4FjXNebo+E53IyH6B5YcCz5PcMh7uyeJsnuyhm2wC2
6CTM2j0Sk+JwRbhGJyQ9X9ufB6KlABNRkxkwdkf2hRYU0ledU9EnGOjAKlamROJ/7eVotU3Yoz2V
rRhV7YZo1FcolSChRbXzQb/QmFjdKjLI/VBVEtJ50wXHnTitXd2v6jkI3NKnl3/96aOTI0TC6Lmm
Co5854m7Fpqt1cdFeJWiy6Y+2oyBvvNGdHd8CLmeg/mpZUB4iCLRAd0L+We3qERAkKEviuY4bqKA
wWAUSdDasrWaoPewa7PgwaNLv8OTaB0BebLs/GUf/D2p//OgqNxW+4sZRwvwjvHqm/6ckahuYfVo
xYdraUw2a2772XSbtnZVnSP0xjzqaJufCnle3yrG86R4uUZMIj/yIOIFKfucQ1NzHO7jWNJugGOU
etvOEF/JmOEbsDa669ZB//uds9FBEb/Bkd9F6lmdSuZfrYOc8n90HMgiX9TL1vGqs1DKClpMkc8F
jx6hETN7df8aQw130nfn2ry+IlCZ8z4VzHh0zr74/4TQljsDoDdKv45lG8NL8/zrbgq0WDaFlXvT
+MQ1iJanSRVXcQsZLscfgJ9tUj3wVFxOYRGVHzQTCBvqLa69Lxy89TMX7zrQtSYYKwDDFEZAppkG
NWAwUwhaSUyOHldm4MFjptgdplSihMOQxMRxV5GLJwfydoXE2NGXGwN6vSQhXarhd/T3Ar4JLxyg
Z70mUERMY1mkUkdUA+ht6zJEC0+R/6nd692slKWz/wLuBsBzeqrHeK3yRSjBIpAirxJ8tRp77+tl
7BXDBuqksd7P/n1AkrfnvDLl8PQ2Y7vUjp5tgJBuM755sadZTqCH2/abl9hwT8qrQFSpPPoFkX9U
6Au9hELNEssElrOWqlpuL4RPDSizoAI8I2W8izlJrFQt+/NbWpZT6mMb+08C/phIZ66KZntcXo0i
6VumQa4Gxsgf7vveboSBsUD+LxeGk6nR3aaezMfIoAJYjr3GgieJAJ9BcrxY42qSxjHWTCAx51ke
/5WmCMmce3kqzUOp0hvlhwnLuzAlK16kuy2tfG+zdPM8vpL7YzFV2DeGJ5jbuPzj7LtBPmNgmuwO
cmYhuIagAOf0nwzgZMEFomrn8ohwDd7Wlqd44QgOstTO183yAtzOaUQt0I2lvTeAKb4ZFOlwab4W
xOGkupLnnYJk8uBFRBQejjHpXKYTxG3O7dtqucckTIpWFlST7hSRrzY4CGelLQwMP2dL1a1sdf6I
1n5IgW7GZOInxdOkp11Xk1grj67z7Don8yErqUKzqXjtVIFIcXyc1ppEcUaHZi/7LDQLw+8qtpdz
il3JVLgEg6MItfx3CyulTzBEk+LT20r0QJBNFllEq/p4DTcVI3i+Vr6kPeo8UeDOQG2kBPI+Yigk
qLJrO6mqx5ixlhav4OkjRUdDlFTkajDm3S07YEXDkCiGpASbgSdfpl92AqcsuehvpMqHHm8OdTbO
cefuEGsIKMlpLWhRthWxPwIiu+2+Hl6SYQhANRTH0YTWLdAs/m8i0Z6FzSIYqK+UGvA1684B6muy
WD3SwwvjsfUI48IBNYgJKmoYWIdyX0qVq2LCQsw+JgCOOsMhtBiO0iBm1e4d7cu1xNJdwwB0THrT
5ReakaqImmjy7V3WrDA8cpaDgxsC9guCHwq1gIjw0eNG4N6e5Xzj9lEPWUKGzCCEcNhJ7jSYSqlR
m7/TIy8u3nKAqrtpkcyHHa6OAsmi47ko0xOn9FO4a3RKzh2Ik3lSsJtao46Lsq05DkMFoNpWhFh+
gaLKAin82KQBsLdskilFwZeTcge07CEvIwi/YuUK7Zs3RSK/6iN2iK4tM2SWbdhrYpvT8gq2p6gu
gJx5VxFYZNaYlU92oCg2ZfrTLkAHsbggyjOvFRNlCyXM6EPS60I+6K2g86btj2nr14zbSl988d0O
PvkcxL1QvS50+IrSW6kwsGWlD7wBX8S1D5Oq1XLjVzV4hXCts0avYFyreapmAFZuEsJojR/mgDY0
qgc+0pCVkG9cfJVivsZDVpyv7ohdhXxdpR4A9+oJ9BAaGwv0CeQ1mLPNRaawfOA1uczl6LIMbCgi
vuMTUkjFX7grfMn/ZAoT8CnmqCcat3JSQA9jgisuZqyWKw70m5Duvm7om/i6H9Rir9IUyQMZSEHv
GcmZXikAkfiM4tbhSIrOsPVGsX/IYHEp8F+yuDJs0gwNWmrxJKm3a40qgzE+XqjWsxzDw12CPNZm
bX/JAaP99POWqSs3rb1R3Fvyd2J9WwBEigqw0DaK94aCuKfxS9lmyGt3PoJZO616GofdY+IjYpLH
cXYszrx+Sdk59cXt6ZIzP4qPtRWw9MDGBDqgf1l3M/qeRXfDulMWpeQ8Mplw7QhAnSinwLaRNvP0
Qua8QDDKdbPpHtuufPHhBHwWjffDbKbOo1sImB9kEAztaBxgf+Bn4prrP19+v2ueGGfznRjCzJy6
Mtid8U90CpeFFplq6PTdJpiLF5q315Fg7ODMjUXNZ4BY9VWHxBWQQXDRQAxI/WqGZkpwQE57YqIS
O8H2P7b18wwuIFSanczzcof1zNbslEKRK0xIsSnP/7e4KHxtIQflxNx9cqyyUp7ueFBQbYnwzSJx
IpFR+YjxJeOsRc6ecEWDw3kaB41CUanKlnNXQZMPAczwyBUfrTTmVpzgqazn3KjKKw4+9wGRh0aG
d1f0TN/FCPYQ38K7d5vN7XAmOEfjFQr/6DMpFAEchD6Mv+OfRhK/d7Y1pwTV8nr4JrEtHgw0yf3Z
Cu+72tsUAdenTYTTaRyWV1cppRxZbnT9f3uBuobZkDGkOCOcas6bDnXKvBbxwbAT2BdT/4i8lYrD
vGJXKoMoaVUeFZ+dGnORwj9sPyw7CGPOLFgQnduBSNR2OcFF+wkuKtX4XC7wd6ugoOD2C4Tk4iLy
0j+dJy4wBV/7+CITG8oISGBW0M5HZS2+47X9ppUGpoiiHBrQoCXJdt3vwa87uWRrHL8ZI277yUid
A9pjdKb9XrQJjgs6pUR/OHTWazhhy3+E4bLWvztAWXRq5K/B1tibcSCtizI1z0rWHF+UfP3/VpfF
XMvRTfOadSemgxvV4tI1RWwPuRQTUZMZ0OdCqCo6UDG9JocO6tF1atsF3u4oufEoTKoZemKAX++5
EjC3c2H7eR9JV5vh52hMqVMpP6ZbyE/sUJWuGY2gERynwrUKGu2dq8ylStxCj9Z0vKKTb3Ha04D+
N5n9OxhZPSQ9CufiPAagD7fe9cEMmDreTyOvC8XoVGXz1G7nmObnD418rzJ3htj4E69mM4J+hbe7
kXfCI4lZI7iUkHxHjqof402M9q6qQIkfRZp9A4MJET5bAqhHHga7aMVKfLyEgJxlT0HjKOC8ySsQ
nMd8qQ/BaanwPTSCiLEjuAKqeN5dhpIa2aYU4aVBwcux+D2zn3pxgs5OlTse9gQbmYmf9P2KYiYC
bDvyWCxhbH3uJJPNeKTLWFxx1DYPVczvvVSsGMtGj3tjkLCwouy2rLkwst9CN1JqgjBFoG/mYOKu
JvwLMJAYqCBSvO8QoZVkhrzBHFZVUTag+/9I1PADPr7hqLZgLukJpJGumgSWMeJfhl4tkm4zbKzJ
m8cm6pS8qorfPh2xwF5WhCdoPRZoxMvnYv/zNSmCZJwXZdHydbxgmXX5DW5balTQHgOwOlsmQU/F
OOANoWlc631vp3R0Lvznaymxy1GBJUaHEJEYIP52A9N29XDR8og73ptspzkLx+XU22M61Wcn6ZoP
Wvwc4dmWfdl1NOeeyMNvTSsPxVix1E3KWgh8g945Kg3alFkTkNKhzspLvPqXTrLruMoGFLRJZLG6
OLlXkkS0JzLVnTc5Bnd+MzWMIKlUC+HPP4WyMQ9EkqWJcd4VoYHBQuvJ0xtFMRSoLiTUaITuXvAO
/guc01b8vvjDObvhKpV1zhWP60uKCE13qOtj8Sm1ulv/NFtqs/G3a3FdKDW2by5pLOjW4KhNXIxn
+5ZrTEMpIn4vg6E3x8gktv71gHrvwVt5ibybarh2IWH8KBNP4XYC/HQQeVnX0rnKKZzwic/1SvQG
dCXqxSd8SGW31/myLFmAUrPSxFJ1LQrzRgkM3qsdkFIpd+EUbqDhb5qCpaCKx6BiJRskEHP7VCz/
Wwa42MAGP187X3vEYt5RswifiXpSaPNapoJWNibEsX8giaUUDqnYInneI2sccqdck7bPpmj+VQXB
LvlgVhWqaK0uMN+QCtRAWpaK/yWanft/5MUwizRcAxL668Fn3zuA1x/uM7L27nAIN0T/V2BHHnNt
MdcN3Vf1wWZ0D1IZvkxJ/NCKblAdHvSc0CV6iS9PqdMVI3j3gcv7KGqNDWPbsa1Q4AxUkafvSoF9
AVwolxWDPGFPckOI8JsobOHWcD1j60gNZTowiFMecWwXPLhlQQp2jCt5LMTPagUojc9A0Wj8JCEp
cTtpe2yCt5dePxfzh+xQsYygxDba353PfUJKomORp+pgNJwebv7IRUYy7p6BUYSPd1hOcoOARjit
M9pT0aNrqQ2wpFKfx6X5JOJNAg5I8kxz/znB1L0AJOcnSsdl+0J41OSMTFj7ikpB1MO+gi0Nkwxs
QjuPKN/733RXPRXw5BLUfrC0NApCkD+omwmVp52pxAiSkrL3KogQWi2hG1Lzbvwar977YCkJXiYa
nluoyMH6s9AxFLvm1GqKZZpFt89xmldBHudD5Oa+v9EAFSsvYfoj40c9JQjvkRvY/ehOWx9VDmym
EcZLybfwypnCdJwtOVAP/nKorTjtDaCQYLJYurcMJJBNmSjDpOrKc74m3Fy3V4z8/zr4/2F7vkAe
dZ+kzoDe+9PaZLl42LLPF3gyUEEZksJRBlF776xKyIOJrm721d5tgVlVLllcLl+k2ttN+LuwLco3
zoR0v/0okiijHW1jgUteK7+aIcYQxHWLegjmaIiR9VUniJGMMHkesIF6F+pqaBM6VwvdSjtZ8be3
sU5ukFqINtSLfqdejw8YgBxr7IFR5ue17VuLhvjkYHiXvUNwRwCdpn42O/+gN9Q3wjkZlFmg0DD3
B+pVbPHmuYqwUoDj9ecwD8H4TXseCM2jVovKbTzNiiP0mLiF+0vqJDxqYqqpsG7Xqdcw0na15T+a
KR6Jywwh52MMA+f89RoGWkLsRjOu+aq7Tnf6flGrkSAC7DBoihtLzyQw8kwnbiqTBC7cEvztcH7s
wYfZqlWsdKTh+jRpFbjdkFm38TyMT5rZ3vusA/2cV+1Xf0r6Z+IJrwXnSG9v8GMgmozELPjFb2HD
cez1Y/UkLihmOu+cWpQv0no6XIEmGynA7BMzKIrOsKaxASOJxGzXipSJJmQqRuLo8lWkRv1bjWPA
itow+cYuCOswgnH/09/I5ATU/XQeqqIc9JBPS4j7+rUUrAvPMPw5A2ACLjs/0P6UsiQCICOMmvcu
NCv/jX5qrnOqDUsDwYYnWnHTBD6xDfOl5YAT9upWvsk7k+7ztPhcmh742iOgKELDTRN6cT1anzxr
ylNhcMgcWks9A1YvRA7esgExJWKa7LEf0uyNOH6/FBgigf7tluz9Lsi9Fo8yqpD3XLFjGBPwcdJ+
/YL+BKOG/npmm0tV5hcwUeuak2mOw8tlRDxwzy4ikvTugd5aoqleyREm/Iy5R4nv8Ck/8TKnsRbc
PD4X+1lBK5M+FCKip7/X/mq5izC1GGNu5a9fCDtNJARGv1SAF7qstY9VHE0oHrRiQz+GcO5FFXKS
Cv1cmeEto71vEX/xElA1Pv/LwZWKLPrV7uelVKrQYiWH8GL3qRYimqCfxakoYjiWH1mvuXVp+TGm
CLeQCLgu6A4utiJI5KXIiU2xvKZ9GTCKIHF1uYWGjKdQ7YY293EnyZPGWb7GJ2fKSWstcKrtD2m/
hXtej/7R2N2svyOdavOjyMu84vUSQXiP2//qTgj2VukNn8p1hbek9jIKyc7lxsJBeg4gRnm+9JNa
sGRjkLIm+9dde41ASOKYskKui90X2M3TMHuI2rMSUCLIFTXDcO2bC0Ii+WlaB0DvTTb9a9c2j+fP
gZv4BRDMlFWQ+TSlBWO5glz1liGHHOyk3sKtoWOZCrxk0w2B4WqG2SH2RJ4Vy1a4rDmegE7M5el2
js1+atzQ1xXp7bgmTFPlwEpsIbzuRZaPwkTo9p57R0+sDvYjnkqyoJn+BvZMXlxEhek07Pg3KN0n
yvMccrZZPMIj8JQUAQFmcDEXVBkRIxJAlpES8UpWezhHJnot8KCC5IOYzGAHwGWKB4b8IGh+dZCL
3YdBjn/qD9E6icd0qjLaCZsMmw1PWUGEnCOpVstHYoF2U537exfBulCrThzWFpOz1M+JKtWDsUAF
JvJ0g/MRZjxSZ7Ayeb5mU+zaOpspH/IUqLl1BKKLrC9M0w3lylQ4dnZ0S68UjAx7JYWlfLDlSskU
CAYgRWc/WBenYBdgdEBTPPX0rd9tHxWTIuZlTo1nMyWB7AnPSIitLSP2uTeAvAOOnx2RvX5LZijb
QVk0aljwOj31cuvxh8/V3spOxQELa4+GdimmJiuMGXyB/tPjTSJHg5Z0OMBVtPXssjBF4LnPVZvm
WJ8x4J9IKJvaMlEXAu2SJnjzk4LpX22OgnMJORZD+O42ZTezhG7SI/J6EqUo7OP4Gi2cSLSdbcjF
5YEgGnEEK74ko6LUT3zf+WVaBnXJvzxO5fm+y9Rk2EckoHY9zq6VAcipMELOLTn4vpx+2sWY5owW
E5Uq1qKS0yByHwUtXVdKVKmjql9rX84wIhfAPT7ab9KRVp0sPCUwvK3KSb0WywrsShwdC0A7CquH
7zUn1eSTR/Vu5wu57BldezkYxnUvD9WCzSuvAyzeowBdgs2uZT58oN5A16p57yehTWfl1TNoeR0w
PWfXFzDIanTdPPFZSkXI87HIjxqm4S4R7BbTncOFip/gjRPErFbiDWVl9GAB0tQp/0RtN5voLDw9
b0iEE0oOjT21Gwil1lz5StXnJmqw0zExdxF+Lcxe3mshIwtccD81Ko4nTV6cZqUmhgCXYoHsjj0g
twScGt4PNWTb1BBBxUdjcaRTuvMdYqWkEPlFxECU35J7ELgPGTdgFJjs/mIFG1uKjsH7qCtMd04F
BInV73yQdB2gfESzV57nLbLCMpwFNVhKOS8QTXuehok6b5kSJDj1rSkoV6MqY4QCXQImL6GHosAT
W3UP8jg61VHtukyhD3hQeN4lgJKLfGBoCnhEihi5nEee/ZuphUwEoeT4kPpsfDsbk4Xq725d7cve
ArQNCe3Xdwynn7PazE2SaSO6XKX+jf0ksKf5RZ7nWEW0OzSEOzZLhg7I5D5/7ynTRI8XRpuNV/Cl
BlsxDfniHYiTcEd7N4xBu+dayYKqoJ1NFS0CWWY+fLOAr0M9bRu6I8VFzaTMJsO8mzV6ogDzlNJR
YVFqQKZkrj7W2UWJUEcB4Qigug72EF/FWfZWpzB02w8Z3Xi7TEd4akMhJxEtWRNa2ddHxLPcGqt9
78HiqWZ1CTINd/pyu96cO4Ky5R8vrTQi4+vw36YTNkME7P2mCUAknOHry5NyRcpbHTuZ6Jy+Lw9e
i7bzHy4IQ8wJGeoGiYj98OhRt8waj2W8Z+A6n7vQz7d+pBVhtrBDCnP8+8VWCVHNiPICJmbMhHn0
lU4Sn9gjQ0c42VtgGQC0Hn8RjRmtQlysc00mE5CYHRCmKyf32dgbbfDwOcu+iDP7C7srn+EAD39w
PbqPyi2qIhFt2spl2eUt5TL0lzDlE+ivlubyCrIQW+1fh/EgSvILuIKcdTJ5eLFHfJuKeMNhopNj
ZGx0DipI3CcOrB7kk6GbXOiKR8Kr6YomF2IDVbvRP3Gh9+fLPwJ9mKRQnEiKitzGnKCvzrXpiUlq
3iO/vQzXlsLvaKV6aRJJRrNtg3oWL5vj7UMgLDdax4szgpvWoPy+VJj5IZJmFmItcA7KsQ+HD6rQ
VHMwj6u1Cra566EGRjUmqIF0nuLPIhySXY7DOPT53tH/s2VKGZI195SVVoJOkKb1L3MfGutQNTBQ
QTP6P8VrA2Bha0x43jgMU+EcGz5rDq7ZQRTmtUnwPeJphYxCLzwJDO5MHNGslcxMp6wEmvXYdifX
O2WEVU9DU/vtLMCWWNxkPQcxQAKmO03n9hFpDJXuIQXsob1m2AGMXfWTT3bDKtTW8XDpsIcaFgBs
4BHkH4wgyShXi6dJabzpHL9V8USZZKx9DCDZekSAhqamA8YpiPtMGv/TtMWKZ6JDGiC+yhwp0r77
mMmnfKv23wOGUWWa9nWYNochhtMVsQWk9/pa3p28XOXMWAY0XFL8cSOt80XNmS4l4e4Jv5CI9/Oy
oUxh7jtnS92qQf13soc6VBUkI35DRn8QFqlOWebJwxvCiPZXIVZlC8RxoTLkNwDPaPVCNanyCbuX
AEgJ0pPHt2D0tlluHypNzHuRpjhJM+MEcX5EvIDVBrTc+ehBGZeewOI8mvouc7opwyoBx+hHFUX2
xbtK/cBcbfCdIBvUI0rGZ32O0wg9Kygsm42xOavbLyuczf02V1OkgrMwDei260cfVb4d1Is5sjHq
KYMfJuNkaczctom5rleej6SuY6RoDjNB9PSsnLkUWWYPNLbeHiLfUukfVdjXN/H6pu/dSsXTjrMu
iDx487PLCTwkEy0P7BHw+wLS9pIpb6Qq7OJtgSBSCn7MAhfiutMk6zFpOPOotSUXT6mOVTs6z29W
0TdGMWlCPDenrg+CYfiJBIyv0mBotixZVq6yWgoQyQTHgBSrCcGnLF4oH3EoCkVErFrcWL0p4BAi
6ikIAyVuBUUG5+oGCAQWDMzmBiK4rbm9NRkE1QNGCO0edHrrPVN3bGqEbzGJeLOU5h36jgCNoYG4
pAHIqRzIkOcghWAgsmyum2Bj5Ls240Y8FD/x9s2OUxRoGDt+hyLd2ukyyZZxGzFYPczOp1MQKKeM
61DGxmYMt7av31byhLIbhxqxc4HmTl7TxhLpZ1kk9YQVxJr4fyPoZXLV2kKFyeHHseg/gosxtyrg
SDnsSubfh+SL3K9p6d/YIa7VU+1oFY/ji64L+wMKPhnQxyZMYk1VU6fWqRtJoWV8hsWE0I0DigMh
fjQJZPVeKh9lzkvxgvAvP7YEwPompb8R1mCY848RbMWMgSlDSBGy4sT6IC+x5t3aMMk6v9xhpsUb
60aj8dLp8/FAc2DatW3cuUhIrS2RI/l6VBnle1pforA/4OJHQrw6oaTTC7D6xLoF78so8Ztchwhq
CWu1CyQfUJyp4bcddzlT5JfGafCtev1f0OphZgWnA+UOHCXJ1nTeMKEcyCznsRm947UlEDDXSMjZ
PwaNKvFEXTeY7iWSGFfzjgk89gAR0Oz7mjbo68Bf71QlW/Z6LGixDXyb6UHU1Mt5tc+CnwxdeQbd
4Fw7kKZG8csycd5djwI41c61is0Lat7g8rbmRrJVYW481C9qQX9ut/07ZmVsISc8KrC5WFRkx0fa
1z7HAgqmxVHdLglME5gcg28a3k+W4doH8U8ed+UFls68mcFzOZD0S00BHzn7hW1RrQgoKElhAdJB
gSepePRaCLwzhpO4/pQziLAJS11LLaLfj5RAr2nH7Z+AdtHzKlKE5Qg7sGuLBzmeBy9/YiDVrvv8
o9euSt7bSMC951ThknxILsPeQfuNMLrfB2pnqH51HvU9d/8JGxxW+7BKIIIbN3LgUKWbxIppFAk4
rAauFAQGk+KCSTTyj8L4YbjN4GFX9s0TFu4dBKvoyJhup5H3G5IJwqoZo/R3Ox4sENmPppawH7Ee
6GtUQtTinaEax56sGOhPcMzyh2LyAIrZAdThf9dv29uNa9f7e6MFsHGC3cpyohT0fKzcavXVWXSa
k+Ro7QLeo1g/irqVoauZ6lw8jcMFrx70/nPCMoHl4b/ezhukrl9KHibix6RiNTmKgYyplMdvARGn
VQkCRhBP8fWn3MI6SvCCjl7R4V1GLIgGNdDJ13X1wG20QD2iwv/AqIowZgBGauWxNsRDfCUGoVuk
bwg/0fWcfCRTnExi2h6rDXnsBvKd99mUd6RBqpRtZoUImk5PBVCJntNkoC38dCRkFKdFMp2ZHwJA
N0q6hlt2KUP/A4/YBgN3xEDK9E9lyJciVgLGcReNI0BEYXfVPwSh6ShVUcHDkr5Vc2B9lWMXBjb7
m33wt/2wfjrl5V0aDJlqYHcty8gCM7zp5GFJS1BzOHDqclTQJmMaT/Lv9AlIuSBREczNfJ6ZXF4Z
AwqVeoTRkYctxSnPkGbtWoahqXyXVGvHB3sXHRd7Gjiruwj+R6t24hm3fvRsP6fH2Ce2K5FpsfEg
YtXwkT8JBbOg4W5s6K2LUr/oa+NVEdpkwHhleC57gmXlzCIiP+3rFS5kEpMO0smq7SP+AEdTX/MO
My7Rl0gy4DZy4f8s+wMpItc4NRDTKI6BcI9mV9MRYUVF6a70c7tWvN7xn2876cOJ5I/wV87A8MXE
GrvahVKHRlZD18BTq7BdHRS4r0R2ZA+yQB1Drk0h6RmcNaahxOgaAY0E/jllfDpPbx8+dW6NRa4K
bcXTqQvGHBYRUo00LP/PSSFuPQqsy3YMWYY0nwTqsbwOYPzDvcYiePq0RSlwkw/Dmg2YZaWUesR/
nrev5+o64phQmeGIP6GdhP2LgK/wH4hVtJalPPyjcYTUWhzsyQZ5Np3m7t9C9n2GfJaV9U5wx4rr
N+U0Gct5AWRp/sbRO2szCReEsGxt98UPsBNm9IUGtCY3fUAS0YmX/SOMDHU/UoduNgwz5pxU4YAv
M2fVz30ZJUFncR30xuRFzg49By5/r2joeDLhwK8u743JBIu6lBYWfT5+R8RobPXfuyB1G0Q21DVY
vAZlOrqhAH7OFkC/gNuYI4JNJAx2X4xuWmr4E33OEqeBcyM9KLPSYsQB9QVXLvx4cUTqQjn/VZQN
aIJ1zPBCG+9i4eouaYssdhNr0rz2OAU3qJGUKH373sgivMEZW1HyYKfm6WE6/dot6G3eHVnPr0Nc
IjmISN9fu2k5yvrDl3z40D4sr7tbPKH0wsb4tSPjpUD+7i6KgeL13uFJNHEdkUTwW9NyIARdG9D3
UUQ1pbMpGGEwr/8iOqRI3W5GMbbXWgTHNEYFrPeodaHUzroAs9+FMve+TcdoO3KsdaPn7+mM1D1s
UdzlUlTkbUrug1nxru88aGsij3D1UEo4Tlrdw8Lh6IAxojeBMhMul+A/z5bNrEzsdBaZWwh2Nn8i
G8mpAA3+YGRRleKJ/9+hYNDmyGFMvPWgnjrPvPcE5JWgHZ/jUug5s5LviczZtAY54r+S1xVwDPS8
BhXOhBposNq1eT+a4vhLYDEi4acoD6HmjFM4zpCKiyQkoYUNhnCNGOcsbzk8EZA5xT+l0/+/G7BV
POjVwgEcdHHyJUusUkYs5alW5X86+/+UQJphB3TF6p9OTXcLoF234j/NZbJQpTpVF5N0e+pBmptN
/0LbWL46RUfr0LyDUneWRvbJEkz6a9PylBDBkefC1xd2xubzpZ0qEpqsUa+CWUewG7GgjY3WBNuI
eEAem079pxabsk9mon9Xg6ZnEuzyuDEdQrIjWxFJh9fOJUr326Vnwek0bhjsyw+J1gxQPemHvI86
dJj0+WRL/rXGz20ORp2kwtZijca4HpdgXrsFS1EqaQShkYPaDfCo3UUQCYw/v62oPTMO1Bo9l5C9
IEJa0TJEN6xGW/RNjRpftUTibtu8dwBmfTuYJN0P5KfZDR9LBMwIP0m80JcWLOwBN43CmXjSwgwB
GyiKTaz4x4MuD8wuW2jdK4WuhRZIL0aeaB/fuJLxqCZAWyII/HrnRkwJzAGGGivyaIHbPK4z2tAe
yJgOiUrOhewrEqBJ4pvNV5wO+a31dX4tPDmTRKw9UIA3US0QH4Ztd3z5q4NvD+sJB7aserMXR0KZ
dnZrTHgEHkYE6QGpyM1/zwsXNvGLwTBBWAV99YpTJ6i4H1WH3cXnHTu+iJh2wgaxXPF4SYT8Th2a
mKtUw0CQHR3iaMy9VZWFLATzt58IqfnU5XPR8zc4EiC+DB0zSj0N0OdpOUF+9Ukseja2mL2Lh1yp
D8NTxd9sI/ICVPqjIJlGFDJFaf5tue/S0wQ0luVCmv3HIxvZP7ZBZBO4bzVozlkmpL3KZh4r66Uf
tFnr4tauxzMFZVtpxgsO7ymUoBURdV8KjxKXr0Xh2DDFdaTfpf+q7uqfJSH8v9xjwCM0aSlaY91n
UqhAtdf5ZIgaSu1KGhBuQv6q+WTKv/82XF/dgFOAfJKijNjrBufppfm3yvIaoRwK8JAZsspILX/F
S4s75gbeMTWQIhHicIaRcVvPMYGOETqngnFnB1u74Ju6+tNGhrKPUoXFTjJ4k+TLHR2kIDybkBj9
uwg8qu5NSy6A+aIANszZXzIIHZZ+PNZj+89bE0iyv5rU5wuOYYP+n7P2pZo/VP+ZBvyC338ZgdW8
OSLMcxOkOFZvqBqerNGbkwVQJguSIYWGNITb5OnjUw0aMJWyTRZewZdpfYORphMyNT+Yjxj6a2VE
Txpz98mOXhLIKp1FUdCq0UYsDvZAbRaGnAVkOkEai0FLwGuA20Jo2KNGlvQGM7Vk0fFby5tkbuQt
2eeM1Xs1AH7hX7398XuDjkKdYPnX+5orGNEenXGenEJczpL1O03cMSFobTnBdjqin9y86Nq4fvEu
YS/M1DBfmXw40jV0mOJKs7nhN0042Iji8yHMtifsYXPBgk2TylZt63UJbdJPAbaHhxQ8MwoAWcYz
qeZJZSm6MLxiBnjSn4FwJoHHFHGN+e+tafeRGD7xcH8H7TIv4Wdz9ZpRFfH32ZgEn/yZbGGn/3aS
xEgY6ZYWR/CNhginxdwpdJjfMMv/o0W15njinxEBubEu8txZjGoB8SGevu5gb8KUztgMYVHO2kjr
YEkXvV8FbsRBy/Y4nv2CPpDxv+CHRWqrnZ3669XyKQQuElzN6tIiWhm0RTHA7lPcqiCG5C73u8KW
BBceJpHytDUeTvYQa/pb1M03Tk9dUcMoLnCjILvbR7TDICVXBkCRdTGBnZJQ33Taf93WDsKnBKZI
bTF/z3RrP6Hbw1xFcCh+H7ugoX/FYQPN3JxObttkEpCqEtqdCqz15bzUlcPV+Y09XU9fc7Q+AGs0
Zif24jRy463vtEcF4SYth29voV9KityLFooyz8kgkpzh1A0J9jAAwFZvFN0924RHn4JktKohj6+4
5APGFnX/i5Ae6R35n+WU/dBIBq0MdGmW94cUP4Cif9BcRMPsmyIBHONQnVzU4+UBEW5/CgXHEizr
OjY1mSLDNbuAZgxEdjveEyy4ffaxLVvY0nRJObW0kgSynTedzQLacKDWksPQuNlP9Rp+anTHw68p
gSjDAFK+9Jov1GMl2+L5d6V8GoszJ+KMkcpRzB/eEp5JmGxdO9On/Xe25fnITlKIwtAt+aJGoYI0
Cyfl44pgIWPxcAMaK46jnp8Cbat7thsZSGOmdqZmjkADrZyEDToOWG6n0C7YAn9CBqZ7LODsLGxm
tlhN4o9jsVlpVgSIzl+ifXQcvvU76ufqZluzdN955mPZJTQmDQ5ewS2kShgTyZ/u5mvqy0kWnQTM
lZPymOmttuKpE5CsGNWa0FLW3lFqyGlyWSUIJSlduYsrMLCe0vvvhyiozsaTZV5gt/E0MugCV1AK
7wi8GvMD0kf0a/EEF9WC0cHj5qyOpzNmTwn3X7b8SOLSqGFnPOtPLou8Yvb+Cnwq547h3k7fIRUJ
viqNd17MZlKdSqvmKz3CGEoJPT41xDPO6R7pKqnKcj61j8F0VhINE9SovhR34WWkDzmc3AQB7ji9
v25pCnb9P1ZC1WF47/rW5PBe34MDpEWta5reuA+/rd879Mky8xmvWFzu+th4rw9r+kB2Z76VHnCV
Oa2J9JDjTvPYe96imRinJxbiEM8R6ibiV0Liz2Y/2XrqYKJPb4IYjpRAT1giqai+FeREm1iAtYB3
xvjg+N7tAozyrw9EirAvV7TpHQvmOq2f/w4/ztiFOjzEKYyfbRX7f+0yP1eQ9LMi7eoYgGcsJqfc
u1L8xrrU/I5S7ppwMla/1YeikKoHrGV3oPNliFd6UI4v7HSHZ3OlNIgQdQsvuis5wHCpcBRvfaNu
3ggsu4oY0pdYOqRfKebyBNpxUyZfCXXn9V8M2brVdWfKywpdzogrqDlFwy2lKHVT1lv+PtRcjCBW
jEli6BI1jehfpkfkXm+6jpR0VTWfHPvMHsX9Qfd1XWQggyF7V/s2wyPGK3OB+HtVovH7LSyDin5c
W1x6mg7iIlxNltj2ZhXyd5qndiNgvbkNiMsHR2mt1Xq6t+Xjmy29tOfTswq6VCc/lY13BuMhWx14
5TikYyRfSx51ZjP8k/0+XdWUemhK8Bh8MaToLTgL2mKTtIMup1JRQSMHTm7UEMjCSQoUcTGZzuo8
l7aPZPIMZlKnlBJiMScPk4Q2OR3CFIUtj3Cn509Fk5XBWyzbt6u8ERJ0R7Ea0FP6MSgcAAZq0AtK
mKyDfcaEYvTrK5xV7WBAbi2sGs62xQ2X5DnQwd6iiE3F96Qpi+66rMhxAti4MqENcbbS0DCDWVru
krndFZkY0TUtAR2OYaC9RTAQvgbCtg+qAMlFIAH9d1G7mwXCa7dnlnEGjlq14MkaeSFWcaXsVs96
aVgnAMMHsilEXT5V5KxjyNaYuMCcWCoIv3YSJcAkRnp4yHQMpSTDAX1NsqRR3GtdelkAya2R4pFv
MQxl3YdaBl6L+MPCyV7oZb2eyxzeRmOX0c6dCBlgvGeLOvnEpaWh1phq2URgY61pIebeHckMEEdU
jAQBRd0qgNAcUp+QUbhNgYadQC6WGvftLtF3URfjRBcU9N7HHJ1TBGlTZlHi0l5ocGWcg4XsIH6L
V6m514SYqdtQtr1iTss59X0TMDQRwLNBZnaGZj/7gJLcftBkVnkYumAEjdHOJvawmbqaEnGI+yXY
cPuDXdbGO1lRcV9VeqgIuD26OrozsaZikrO04JjmrxmmtVJgP9lSeF5UqYxsWdPf0hYapbt+pbEv
yPKTc6A59dQx0dyCmdNrbetOGkk2uB4Twi6Qgg2j2avQ7A3PvkMWys0QCzJqHHYvhieRjOuLBHxc
96xfv3ajQSPnWWOhSbOS/9BpNMXBdnDG/BwKPX43eQ7c64pX0Ikx/IdNiokPf38bfUtFVU9msRce
d5N1oEkb69x+TLL64rav6hPFqPCvPGWZy2PtvaZA6IZyrh9SKw8Ya30Wbv5oYJvmIaVa0jjPpdRB
CnfUbnTtH6ka8wogWdMNosMIrLt2uL0wU5WcNU9IMBNsWinx0OFc60arfiKY92JqAVZCoDQgPWqi
88dzXPCdMXSAAsYiFkZNJlI5djwvVRj0UHEX+nzwoed92ZKyNLdgiIzFBNPBtCzB+dQJwDaI41pK
xXeg5icKSf9VH6zy9maw4wPCpvIyv280diSvNsvEii32n+hBg/9JhsPUMFWk2XutpL20xdjVCRgU
CkFwYp9y5W3KNO+25PTl3HdKceVYVGgZ3GJGLiVHVHYNaOV1xWyXwSCF9d4BkUmS6OGiLO56c8gj
SjV8yN9qvUjLM9TAlDdlMepp5ERzOTbff+N0imy2ew8g3Hpjm2UAxsuudBUymYaXbMMQbq7lWnty
JEqukdztuxgSUR5k3/SNvusCuYl7CdKPaXs8tYN+5qhEamlzd0RK9RSoAE2OQQe4qR7LuCUdt0zp
+luUq/Fljt6oUBsbAlk3VbTuLBvfWpT+qO6daeV7ysoxD8oXxV8m2wVFEfAeC1l8S9wOT+/s84+F
KC3NW5VuR1Cxp+GNgEjx3OxqIOWHiRRRa3dhr7BAysz7GxNPlymkYMY5C6w9OXr7UPpI8UJDJiT+
z7fncR2OLtW5GKycTDTdP9L8Ibv0X5Na95HyzM+3aYehH8b/0+jEhHIBWbTNGz7P2XpNccNAjj+n
DgFUftGMKsFn4H0rbxWGWZ9Cvgzd3chDeVLtANJgdYhRRbMk02sLl7IZOKQH4A+81iN207bMt5em
E5bY3anIUk5nCtOVbnzi7oxd79UhEP7xfkWZc0F52COxa/M9y3oid2pK08oynYwaqh8w12c0iEUB
vCH4U9DFvkMSaW/Et1zRspXgRyHfm2b58PCQQChUdMoaC3tUxdmiBWwl80hBRE6Hp5vXDCNnH0ep
7Xnehk6L9xcjoSU8SqLGM2Wn2pX6V0NvxDlXNFmZ2MQaEMvyF6+Q188lzDYSNP4Qxwm1Jpt9her7
8DWthx0/nxIfXWrMpO67BFEp7LsNX/UcgN6NS6omqaIMM0kKaoGXdlLEms4AyrB9r0Xqsl1pWN+y
g0DaDRsr0QSbtY52JdlmN638BxdfKTrgzasVBSMOaO6wfOE0Vm07OYDPSMZNboMSVQXfhXc9OuDG
oS1U/zL8JILMBs5ejrPZZa8ms1z7HE3gBR3OGRWQ1GhD1f4X/r5rTaQ0DBy3qQG1BaxaSO1qM1CV
Si1QoS1+OJJp93uCBbGbiZ2VEHr8Hsuw4E7/HotXU9VYA2MqXrbkKNwAqPPM9XBxGMsoUTLzGjiI
gsJoPa0J93PltAaDVGFEgdlkSnRgHY/+8+CBdR4GG+pfrCeQmr+SnYfMij0UhVaAjGPjXHWSLaMx
0oCN8ilkyo2CrsliR+8jqr9Bxbb5lKEk9DHNxn83tI9DCuAUSJsH56jiE13ovWu9OQ+GWy1GX7CI
qa41JQQoQ6wpUm7FYqwlqWHKv2mo3HnOuEYchpfPXKgb6P/T81se2GMVMmzjmL67jBpxOLAJEw3I
WIlDWmEOyEI1o9bXaUL2q1gQAf8h4N22oCBXmSzXX917EZEl0J2YRKEza/O0Lw9N4fxAZmKSNpxS
Tc15cD1IL2i91xZE7IZRinDr9tXVgj9L4YzLouK3xzWez+pz0s0toN0rqzFbcptqiuMRTD7W3rED
n/iHo14Bx7Ox7ktNOyPOGM7rWYWzcFpSQ7I/s+Pk9UnzWPxpcQQ9MEUZ7m6Dg7mWkgMc4N0bxIMP
KzKMFXPHnV9StDnDed8ahex0ja/KhiMAjolyjL1aQ1+JPRI1WprOlEUUQmQkpTwS9ROduUvE+kT+
tvq6u/tZBzTG9163bDAuKMrPvVGaADihETvx8jXxwi1l3E1OhpwUxf5YcKsd/U9uyTXOqsq6T6m8
CDeEZgKT943NJlPoufxxUpKWUgHea4jytckBU+7cqrONqZdh8Ffbxk5Ag+iGRyRU5HzvfcjHC9Nj
M4HdebAxgJ8RG4c63djb+k485jygmEh01yjSKWCzrJWVBTs/tRqDL9xHlNG197MesV5qZwb7KgBN
OEH9UZmYGPFceijgzTa32+DIX954SPWoTPJQWCXKXIBHV+fG5X6RNTfEjRS5RD8VN6IKm9jukdL3
3zDZ80tqvjEVJYYlV3aOTPF7/pbEfdxOubRECoCVz9TJ8WRRi7x4J3vE2FJvxuj6gcmq5MVPhrI4
Lj4IZpu4hJR8a8ByezKRuWPopkOeEupK1vPzb/OQWZ/rh0rpu4+Zoo59BsjnUYaMqsC6XnyKU59a
9WlBpse5CSK2+lCnqSQswSSJsyDK5nmGEjIIvEYzJ1vuL0LDI3Jp8NNXreMI7LEoFuFWql3Y4v5r
dtYU7VMbPZqtiM/KOty7Z9ZjeKMiURSOvcIjEOSjOuH0Q+b+lCScuS+hy1IisEF5fiRLGtc5FgTw
TnPwGI40B8Ca0IN6oxItlsc+z61esz5oKCBJ3Rrcqj8t86piiprXRS7U8KPUayUrAcrYWjoX5qwX
D1HhBZAze3PHzOIrRT7o+rUinVpuXNjxNbiI7ZDQpuZdSv6674eB/Swe6KjjE7YohtBnIBhiZmkP
Kg6bDebbiBe3BHD6hiXEcd5+Fo3/8iT1/oiMxXH1pvQep3XXKtcFZjKdOcGHdb6AjqJXN2oMmuB6
YNP5PkdjnGOpPW9g9zUCPdVy1oodYGPnMYOYRaQmERzWprAab3030EnE7lH7HVBgQBICP7WJbM2+
L8Hf41EhGkPBZ/6FQdJSlmCVi69Ooajq2cHoUPQXbzL6ouZaWqRDr8l8T5bH78qaVMh8X9+4Bmtk
8mihRgAXRDTKAjO6lA0/WgxCMxrBbV6ZQHgvE9xdLMpA/9tlfjX/oE3LL26xy4BoEFr7iWmtgoO0
ueojqiSGUpj32EytIa+SNVXq8FFCn9DBw06pveh7/Jie8RQlgSfDAXyJu5tFFHYyKcLzqfan6GNM
9klCcOX7e8bWljk+fb7B8bdBs/05TEdRZHBjgXolf1JzHfDOktAS3PGQyFRyum69kaxzFBXpHM0s
M/Oj9zBSZAC8MTl5eE/wvRdDFH7FgY/3FdJN7cC+sHTBkYRtpDiLkTu2AXXtv1KdBZmlkxF89+n+
4GtrGX0EHCLWAjEizRjl+zCWK6ZcBf2vlkSSLHz1E56hufFcxUdXK4XQGM5aKcJLGoUNu6heJm+3
WkxmDHDciVHV3sWtiShSrzxaZFlWJKnMCVvjLuBwJ9dvuQEjchryZCVeAoaMBvFWYc2Z7bsgHgwk
CyQa16hayIwVitPu7HiPIvZMLVb8DHO2epKmkI83BeE5e9sGT51HbxIV4+/Ttj6ODBrY6J8cvxpl
P2UCBkznTqtFCPqXA08cAuG4t2UKoir6Gl732eveoDXuSunki34pf72vFufDFQlvEGGMjk49dbwv
5gG29VK4ibxfs8dPMZqtMD+/i05A5ThKLpQlTRQo04EGcCB1J03ZcOGize2vzveMMP+wXVrvh1D7
cJEHnf4N2frZetF04pa6TK2Pl1qG5cPuY5I1NX6a56JolOmZXlLi3D2DU4MzArNJlHd9FuAHAzBN
Gepy6tz6rJUFldebueMK+3zcgPJLh2mjOmwiESqxfFgUFl90IoQCnhc362/gnm8NtSF2TsgD9RyU
ot/MHLXn9R+fa2GCGIwBoBH7mZa49o2rg2Zz9hqVXSd7XgZ5gotacMvjVxjd6Fx1ed4oDPqhljEI
70L3LI+4H3mbcSzuKrmhYcYWBTQwVfpwgb86JuYx0kbPlMWzc/GhvNRNCGvA1XV1p8YOkB2vtgWo
vFLu+XAVhYqCWTMLfhvveKwKx3GhyFz3dyxuooBL4djB5saAsquCR4Rv3DA9hjJjaybjmgZfea9C
/xGuy4kvmgSh2hy1lTde0c02vzimARqzAKcZW4h/LoMXuT3za8OkCAWV1EDsFm6KR3XQXxVntmTg
5qe4JstPYBziwTD7Qcgt7q/QrgZlukwrU5Idx9092Z5boy4E9Pvi3+wvMO4AUphcg0FG2T543Eb7
eZlaFoHJbKHnrt36ZpiGi5M9m3PKA3KvqN3zXQrGSzG+cpg/PXbGwZulVRZ8MdOInIwJzcH5zA2Y
3Qe4fM4UdEJZLIsomcAdJzd8XtOzGdYJTh3DpRmBDRBBHZqfENxdtdyxN9AdnXWA0Icum5MMtElD
ccoPlL/7/80tSeovginAbXKRZQu7eqa9b/A2J0chY77P/3XCLxpSePCukbNvOJfRMettGqGkR5ai
MaDjbeTbB0rGT3orFgSeDzjFN8YVwSAy2+JHmq/yrEdpcSgg1cwjYHhz9P0mwi+SsD41z8/yxfzh
4kTOtYog+DURZdzSRTcAsh7q+M7ljLf5OxMozEQe4bviZ7lXaqhOaLNBx0PtpMW61s50j3PPVkW0
sLlSUt9pMtmr6jldDWJT3HFwLBVJhYzHO/mqELIqs+KXSdXl6m/4EvEpnx8/rPoy36zPv+oGln+3
hJUOcZA2PlXwfZCC3I/TTcZYrIGkTglcyXUM/Bkj1XfruX0jfQr/GZqRgwUAOTMBElOnRUHK6CQU
Um0tD6crj7S+xYsPXORrclSC+l62gBNt41uL1wxDmbcDkH4Sq+GkdR9zNbO233jstb8JljdeCRUN
Ioo4/MCQpOuOwDR/8sI7w3g9m7oRepu7DQjdQwS7nCd+puBaZmxchQw4/BlKqQW/E8QMcGwTcCWy
ENBFbMU7FfEvTDDZm1thKh7+rWFlCeNEr8B9s07MYsAYPy/AUI+GUGN3PAIXvbjxNokZxlCCAslB
KU/qDyBQN3iY2IOXCD78qsYQzfrar/kffFq8wbrVGfGQDdaccZHYdrEan56ON2vTQDX9SZES342h
WdclDPZmWzVCD+t/s3fj2D8FYW0M9Ir19eIrvoE+l4sFUF6KFHJjkJbw7g796iiZbJEVKsNVxVyu
5rfZyHngwBYjfMn6R20RBATaNl60C2fKfiZB2GfGphgo++Yc107x1VlWzN1z3b1I78CzppCOIoqB
Z92KxTQgwlO8iktAaz27ipeHcJrBE9fmqjIgb6a+x13V/mzCMLQ1DFupnAPudKvOnYtqeM+9c+NV
xUpo6QrCsIgDnhcATqgvF4yKtE1DkLQTgA0w2PccB0bHFeg3vDamHCh5bzXmb004s4e1nFlvd+KJ
jOUaFIe2YhMagqVQTWUTLazUkPriykdEqimi9NiRkrolKL5+M4foddpPEjl/tH2UdG4bs+mbuu6G
q210t03hy5yhceyiN0j5wmTvNVc78/8z/veF957rzm1paA9EZZVzqne+QbCjHVTlpQBAa6ElzzJI
Nyy6Im3/B9yrVMUGZJ363pAwS/Fovu9Zkdswf73p1fB+B07BUep7u5HhEWIXJXgaDeEbLggSCvxg
hfa6o9+PlFEINtOoBhPYo1iIUTtSNuRKIlrPRQ0TJACWqpGLIM8l3ON9LKhdKnGIHPMv4+FgfDd+
YJ27eYhP0R9gd5DKSPIL9RwB8m0h9zu89hnBASkvY2L1L1tUQyDtx6xHI4/NOuB7Tn6Efc+CUGDz
GiLS7fRzFOObi0azykX9aG/4ulGfvlw3a8vLZ53lmHjBkA4iMUIUC/cuW7cOdn7qO9HPaAsmcOmi
GcKHSzQ+q8Kix4TCo9TQeqOrG6am0JMs92ypf6cXujMbavzzQOeuT5gj9H800kQX+cFF5G/37eTI
peOGg5GUdoZaYrC8wrI2zOQ0bkFFwv5FeilUpif2Q1tJemLDRO3rQrktvuldQzHYt2NJG9mGPoTX
zi+wkHaBp5SW1L3lM/K5EOIupoA3PSTkS/xKSX89c3na2NZwZ0ySaBkpKLlprz5ZSUhGbbX/+QqZ
IYWO7FBPrZ+Zopoukn5b4bozAqD5opqIt1erxywuhlIyapNDAp5k6SIiBlLjSKwwGO0/LXOUOB36
pjnAT5hFUVDIrdwdAfMYaWOFy4wc3NWzwUBps7fRayfSPHt4xFe/RT9Q97BjLRSlswkgT+8Oh47V
cYVKdtxizGuYXTgZ7FKSE3Pxb94sNpR8IS9qNCLT71E4PczM2v+meP5bUOSvPyexlh2ZiYrNI+qv
mM76UWlPdKmo9/X6DWDdd1grut4xRtX5/EdD8JVJj7PLRDs3iHuhcvuCbh6mvIRsOe306elxfG1W
8TYpoOO4/tNZ9+uihzLdUQZAH4Wfbz+kCc17s/m901Nr/VHK+dySI5mulBLWG/Z5QLa5hWIeCxEt
4kcApaCfTKNpvHFx2vcIH0i1fkYxv5hgcQY6cEpqWmKnIRZ8OiFV8MxEhWchYwuBqodt5NlbSJQt
2EThXbW1ujYMS/E7XggCjay2dCAVS3AGEmTp5p3ni3ZVEkeBdySEbDw3hhQ1prBRbPmXxHB66QnJ
gl0iQDXZuBfUucGoU+kbdCJhkD8hI9UhoaUMZFPFwmVdrqecRZpS4MkaPeRYMIa4EKM5lUNSzZBp
rXsaMoj7DOkdH6y/ISpjSGems1Ua64COnr0WbdjVXuLuiDYwhFYvIS3DkFRIsllxbDy7+5b0zwbG
kSsj/YPKiOmPwR6f8EwvJ7O/5XUkK8i+Ki/O8awhTyLZmG5Lh4eEeZBYNdwsGdldl5gm0uYA967u
vKoSriWW1a4fBF5qZM0jXlqofodjHqyhytFYtQ59okmWyrB878PnLSlladdhj+UMPXgkguHmb2QX
cBQCLp4dShCkm/uN0LyF9jDWz2xBHGncAL9tiv+FH+90/kkptp1Vmsf7uxY1U5d23B5hxjwVjaaB
HNCNbw5OCPaWqCrjoEumollf0OzylyqLwzVR7pTB5H1KpzhKVyAVb65RvuDlotZLUwNLOeCtQPry
xXomXL6N76ZwRI0Lp4vkBuNlxLd9w8Pi6STCVId9jHbHZ/37U9ZX0R867aBCp4lFIYc0Fm+xyHip
NEQ8f0ErrU8sinE3eA2jihY7/IS5bUDFeCpDIulcSbFbHExg7Cf0NAD8kU2Ch1S4EtLnbsra7TJC
LM22QfixV1IWPbaY96U/X+9LRauKvW7WiglBNxnZ822P17/FOMoouzLIfU/lYNOJD3nZu8ihNqAm
b0Z10/3obPDDuSmkeC9eb+Th39nTE0RyNkt+EfpVwnXL8OwwSs7PrLUrvG/jS+3dr2THN5OcTJ7L
udMnSxOFETnchnJ0409OCvu0iQf7u46qf8kDc0ccy/MidCHRXhZDqfaqW0GtEYuXoel8H1kbwUF8
yGURJPVZXAtksvQVa4FBRxTu1szHADVZeEPSSD4lzUNcFRZiEp+Cv4NpSoKHYqgmM8HNaCpQbUjG
t87b6cPiSTJ0Y946uPrqKZdWATM3ZXVqQhx+gLxc41km1hgGj35ZrEMgk7+MxGnwz8U2sr0XJpJB
8tfunvfKyP8Cgzw90FJbvcYI4aT2jV0ui97feFYatOgBsS1cMNPPCpvKMbL5IbKLPSwJFjI408Xh
uZVONAHCQSvKyjVc375Wq0HH2w3H3GpCieoj+mc2PZhRNcXh8slJ2Jxe78bXquhIjw84WFqM3iba
V/3HgYDSP1LvyrVc+FuRky688oOtMfPFqQba3lP8F9Ajel5nyQkbLKo+rTAddeOLV4NdwlpOeMP6
W6JWlJjcKpTlgOxKzP3qMIEbQBG2HfdA7sjv7OqzDC6AmnOC4A4+mpvXlkMoCZ2zDuFm8zZptV21
w9Tex5zBvJve7Ewhh2LNTYkxGGgWj8xVnSaf+Ij26PP8Qn2MFfB5q0z04q22M/Fs90eKCd4QsunA
n6TB0M1xjkTAvKPadEXlqpMHxOtI2Sq/39qFVewKX1ysz0vMsOz6A2mbcShYzSfNznDIhD+DqJwK
kpz4OPuNM07Uztcr9zo56nA/1Ba+vuRLmGksJCMyXVp78lc4mgMhtWr8teP8fGiwI6jLbiHasv3i
zIXsPMKEnfWrk5vk8oTKKz6vlHMW+GsnER62jirH6fnJ4qZ/WFt8IrnasFROd25+mQ3F7zBmxG6j
k3nQLKVKb0SvPGTkkUFFRLKzBhUHpUHBCNj/VlYxffb0s3fcffaRp/rHZ+fctDq+kSWrVvzEN7wd
FE601qH24fImRXz1AAoy9s0rDT7iLfQtGgIUy5XacnHNKdEr1M2F2ukUsDGxrTCOheYiZe95KQxh
KRafX19g9VJv+YrO44zmIHidkl+OjwDx5XlKGvEkM40g6ePFbVrB2Cuxk3GsIwN70bw+/Fm1sUGY
QMjaaDR7wv4a2owUzoKRLhlwR2u5DgW0xRRv679p5u0btS9jrIMe8farGv2x9rWBeF/O6+JZ4nDa
DqaFnpQNzcaU1bX8gFsTq3P3GomTIdOoJrrKGV+iGREj1UH6vjIAGla4uwQoFqSzmZX4ip8GFSRv
Rbm9MfLCrHAIUlma57jAmHeWuOE5MlpJj2buf0dD/LHPm3vJNG+Gf3oRKY8gltYXFdKtNkj3uDc0
V+uFbYtSoe54WDd5k80/9avMmpE8duLTLeJ5MrB9b8og6uxa3e51TUyYvuXl0sgnRxWRPI5TDmpH
NckHTOqcrX5Ha6ScxSlGvP7cK/Ajv1CaPbBDAeG53LeBBaPmxJ7SgzVP1zffKOrsdE5/GCbbSunQ
Y01Z37WPL6diP6O+UiKCYE1A/lGjHuHkoBXQBVRvsfiEt+keedghXm3JXZf+YQDHU7tzDy0RX/yX
l+VO9VFqY4e66A+LcwSfvh/qrUDi9xAJI4S8JyKoR537FbAYbPKt/A3ypMvWr3P1uj97Xe5uIBR/
7esjr5zFmK9NS6kz9fTgxoH60juHSN7IYWiwQT1IMNdcS/tkb/Reu2OE0xoK1cSz14V3yUBSQQ5W
20LFDGaBYnUlLefCHYdVTqVK2GEaJbZe7azr8hpU3SIJFbJbgiyKu+5MGOsix4cDSS1vW6hkVStF
oYzfWXdwI4KKdfknuqrE/imiuAe2Ex2GVsV8ZQPgVQa3KTB+lUwopPDNK+wdbLDjipJi+3LQDqdk
aXvKOpCpZkCitscRhudRVhJTjYHZYH9iutMy/fSoIH+2IVtQ03umKA2moOtxU+TLUdbRa2XKcK7M
GfXzDxRzHjf8Eeva/2vr1H+LzrJhwK4DDPPzERqcMy/vygpDrvokHb6SrqIqnITFGDoq30GW56IU
xZGUBfy5wl2lrQzGZZKvUE/sDROnS6yrGn91eC/doQ9nijfisIsUA7GV7DEriW+mkt0xqRcMbYgf
c/iaS7uyUS+mjVlbE+vAL/wL2dfU7QYAFeva2njr3AfNmma3nasBovjxDJ2jrWFw+rcim3+kXxEB
P9WWtlYWY2x5a6qWh2bYj8vcCkZZ4SVr1awORFakAd2j0QZ24i87H2KtlfMSzPL12M6uEQO57DvN
Bqa/FYOrBGSEnVqar3jzwqNQdmJkwUv6k0PKvmQm8Vo0/Mq4eoOkHjDab91YyrFLa7+QVEL+6fdY
ixP468Gsqetl38I73z58sDtCGDR20FKwdFTrrBBBKcKF8J3A+LGAgnVMcH2jgSp8fUC35s2ag4NS
42xm5PKT4tec6AF96E6yH4OIdlMMzuhKeNm/zF4c8h08BgiUgpcU7TMiMclRM4UCIeD92rJ1lHuh
tV2otCVmAoyuUsnooVyiFKEcIFGNjiIJf+SnKqhY5YfQnHIMJaFGjELeJOuXzNgH1CWUdkAzWdVK
jE4jFg29enlhytcWiNzC6JyyR+yrU17+/Lmdatk1j+64iDDPP8kZTeTSohNdayY6htfPxgnbIwow
1ERnmeL3BRw4Xtvc0jXesBTNMpOW1UkQ3VMMF+J5cJTuXOaBcV1gfO9LSWghLIu2i1JZjOEvi3IY
nmgKxy2eOOsn0NmttwfgQGqztFgVUYdhnEdfpjG9Uml7/zC5X3w4Y4ryX/Z/X6Vou8blAqAYstBy
YZUSBwZCyJI8KEj/YfYbr60pSadqAXnHlbaTGRvv3bxkkWgkMSiwtdqeUR4X+SgV8yFeLe5CPWj1
cUhI7/YaQDKgCoApOhESnRdVYTTvxO9yvy5l0FXJJKUk8vmoMteK5acKyTB/WpzPmymMkDHhBzSC
nCwZQ6mnL3Z8Oq4bekW6E0AsVebkaptLyNdbBUP8XX0gCHb/oRCUcCnG0P865mNz7UxgaVR0STOh
/8SijhvxCF7NpClUboWWoTMBm7G0/VWN/CsrrfBE/7MQIrNEqfWT1W1ac/yH4HCX0ZwN/FWiv06x
gOXaTlrt1eM6rN3DlVxEgyHrstY/FjEzCUtWXD3uhk3UlQmplamuLLQsIr8wQcT3S3m1cPenrauE
1RPtyK2/X17OEbt1BAaqD+Rq1A8DgAtlo2J2IKtnX7JPDuPRRkfjbyPweSHZXxF9sv8E6U9Ntd8x
eo9pOLHdsuQ8Jd/4RYEhmHCofHDoOuzS8nl1RGfXeaOZqhmyRX5TowMfciPGQvP0kBdmMgdZxfBE
zxVpkBqN0oy2Z6jff4y53Avo6q7/LEy77IgIhfMbLFZjoqhgF7D+SDM2e7e7j11VFrzvt2qrBbEN
mQNPc/JxAkTB8DmrQAIJo5QANDoQ2bymDZtqyQQ4tAMW7r06+cn0O5tT9h5EbiENxOyvzxag5T7S
4unM9Vw5KiAuA1xxkkJyERGURqQbFc+J9JHr/cnclCIhtVn11TrOJAbrj3PgmOEfGflTNKL/NklU
l2DTs2zOmV90KJomHyaEYvzTB2UzViL2lJRPSHFI0ZAstVMQt8U98pK0XMsQuVcCuo6r3WzK8jI3
DI26xThDr0CySeo9e7LJq9m9mK45gVwd4H/fVOl9zVz/iLidWvHvJ8pnaxfeyR+90Ev3xRu8mvOT
6csm9d6ytosP/DWrwM51ZGkUbOB+Q9JaAigdwTrcIRmh55ihAtTV4h/Tz7/56gCNrJzleCTNFEi9
vp0tTIyZkdHUg1GJkniF1CyxowuVTXgilxXqWvoBaK6hzAcb19HTb6fv5O7fvR+jiZNcy2yd0s/+
UTjJf46b/0eLk8aT3YqfmknJz0O3v9xR7Dbq/ydktleazf3LoB9P70gqyX9/ZzfLUlb6Y8qDNjES
uWl6nePf+CMXyWs+iW1eJXl9PR2EGgzNMvxzR7fombikanFAzQuRW8VfyPA2Qjf++VmFvi3t09JB
I2e2pUY6oVkSPbwkU93tF8Se+DAVAgItbUZkg/x2giTDXuAmyNn4Hw5mpnDQfyafAAEv4CMHl52D
gnkXbpgn5nJ9J/+PE2NEEiIrqYpBTR6J8veATl5/yFxh3qtY8IfcP+P3nDBAYHitrZ9bBU1OoQ3w
fn+MxdYY0M0zC/m2BAMQP8h0n+xsKu17DiMhpWU9GxSPuvpPwKRFDGOoapdyuxPxJxNw1VE5b+6u
onz8v988HdZb+Fphfnufgz/G0gbFlqRoguUqLPh6ORU6tRG6EIcAnB8ieQppuWWdNCEPGzQW+Kvu
JhQmF/yo93Vl9s6YUIeYtBl1v3J5VXEH2MJDX+kPD7+0tBn+XnUYOMeQyGl27vaTnKc7AhveBySy
GklmhbcZShSqeuY/vwA9MJVMpFeNC01e9SwyxiYf1i0x7q2Of87w0UnZeRZKM3XjiVx05oKVbs23
pRXfjA38matwfL4Oea7FLd6NW2zlSU+MICNWCxqRn7Ox91IjBJc6MvkXCCckEUSMLSARNRVXaza9
64IFT2I2RRKSgeq5sfZfwJ/ppnSmYA7F4Mn9Z4wePBZXQtzE6X9fJSj4c6HbqT05AXf5RDYmBTqV
U/HOTKJvmCX8a8VmSNkt2VRqouI9IbZ0cEjOVRIWKP6XWSXBE1RdOGbRBZK1iMxxp18SPFrwNyo+
UzfXFMyc5N7q5rXEiTyaw4zlEBsdAJrDshnVRRkQ+UxLzoPgiYFxBEvLynEmgePCO0IqJrYStZ77
bqaiKyCXDgrnyHA0PxHdqSbjy3jWu9Om5gqE5NWUk/KrZ73ZzyzCzj/uAWk4BwratB7h/MN8hK2u
hG75SboEFbY/zkpP5J0TTIG34NfeO1dsbclQWW81oYyTlX2O4sTlWadjUbOJkp6Mw8pzLqT/42AZ
js6bTzsUS9/w3/focZ0IIG0BPZl2KY8Fsr4uhK3BE0jh5VASWNq7uQ2G9lcVvTD9Q8LzuhU/8VPh
rkSgkZsfFMQ1jqkohacjXr9MC7JxOJKSFNbCbhanpU5APAztPBJzVA0McY2Tu8wGJu3BMc4vZJe4
aV2OZE8Qg/3AFAZnSR2vFeF7W4VSdC8CE93KwWg1++XfYDCrzUT6+2yBEPdIB2BoJph/VzSppPuY
yqvHIzCLqFN/lbZpbuE2nf+WXVFh7YW8iA5RfjLmATLAhLMufXXnJpVtO6TM/cEIfJnW5MQDbaGN
eS4WKl9Rn3FiRamDYDPbyRX93f1nCbc2fRGVJ7q9iloASomd/gX4hL6/5oZngbBkVrPVEEYf44+W
TE+tLmz/Jc7pldAtTNTjVJH7+KugM5E1UDWWRmHuaiSiedCpmLaHksU8ZsXxmU5awguG9SbHYQib
9pZf/VgrjkvxRDTTqTJFllTUrzFiG4KRepE5ByYlT/5r8hJVlSVLuFPXvcXW2uG5/kHwkhSBSeux
NHjFzpDrDPCpqAHSxNWHRHwT5nm/7kR4RPAcRuVUUF8gD8085ozLLEZJnVor4IBrZ+hPNVa1M2SN
tUC4ufIrPFxSoiIkRbPfL4RlJJJBSrR5qTkOXtGSXjWfUgY6+SWQQn933bFQppZ3UPpXS8KsmALR
L6sWubHIh/xsWNO5GLaZDxKsHAE+eunBou2MYv9jFuQDYmsGFT6cT9Rq0wlPu4M99gliWq8/+byo
+gNcPfPOtpQ52X0PCq0kLNf3pHHtNiuPozdk6OBK4gw8ImWvtS3Av8GQKbVibjlyRU3iLOAGmj9U
nxQ1zMheTLSPhcOwilOAqhVjNkYuV5f6YcxN5nNdtu2sxLqvHcC8ZvZy4fCv8uKdffbNqmUby1lF
B28zbpqbs4fwGq0SUVPXomCX3JLUWSSRT/8YFpFvl8xkuYHL2ez1vUKG/XxbpvxPsPnMxiWgVZIS
JQrQ93P0ZfHdbx28W5Z0nMpo4V5uuLvLGc9x0d1HsqTSRY0fMRQ2jgt5x0sdA99DSolJ7BLaRIiv
4bKYihtv8BHUmTK5KB2OF+iJB5rdC9saEz7Qv23y5mTfEIxn8TmBtvcXIoFLeLW4+MTwtV2Hf8y6
ICNtr5RRsOKrw3XxUE1zuh78crhpIU6GSR9/ev4zh6vO1iR3wxj2/BSap4YsTdQjOtbM79Ipm/hu
987gfSU0EjrMdGbNsSLfExO9VxH2vKVeYKCaHWtXU9EIEvhLbkRHUF1ljlkJxHR90Z5Zt/K2xypv
GeZWONjEdtDNBw9D/YS+OlIiIJcx2GuMYmpJvVf0wSe+IwyQqYFz19/BFL4F/ALSMiTGmp+KrWps
uuTnugSlkPXa1gj6g5By9AUCX57PODTXHV3QvlU4AtfGiuI7n11zyDnuAyq7t+31j56bPGCzm6fH
UY3Gsu4fOap9UlAbqONb5yaOPXbOPrdw5qlkTZXR6+Q17ru0tMam2MoDdlk+aBNYmJrzrbhS6vra
ziJryByjnLCJ1XP/QgZroowNeScAkqAjjG/+Lz4cHMqE868SAucWwJylhVPH7i+CgX/uBNVpBHqI
b5VQBu3spM/5apyIDs6VVhRHmVMRdqh+jAYy/rf3k6WR2aLovhPAByLizZ+Jn5sXQJ8qUOzrDS8c
swZDiTB5gtAkpSORIUmzrlkRUjyOkv35xEFZNRyQbYDZTbj2USFvu7wTQr1B1IrVAbWJ9Z1EOqsr
MUFpLCRIxuQ8Jt8clSvvhrCjqRL8skiwZ0T/WdGSesJCzGfw6UBncu0WIqN0lfSaBZv63bM2Ghsr
WgiSYvaMufJ9BoMWKO0zgWWOk5OGsE8B49yH8MEEGMBv5uGQ7xj2uATxhOfSlRFLaRHCEFjX+2Gp
bcwQ52SdVL7OMJrisP6UDQg+mKBp8Vufq4Ws5krlCFI3ONOdH7BNxOtXVujo2tEZe1G2tnudAgWD
0ULyCO2ZLwUVayx/xXRKQ5iViu5LF4La573bf3+OL8dzLf4raG28kIN6Tb6jaVgDXO2XCVZV6+hX
ju3FoWy5uXXpNV6LwUwmr7YdHg9nvNVc0ORfZzKWcF10SD9TsgXx7MP+6AmVAXpfjfIbZQZ920hZ
q4euu/NVrvi72R8RXzLPdX+mlJiydOgUlc6hAU7VKvg5N7p8pdoTPufBRN0GtCIosu81Bkk3StqK
+vltVRYDxhC8lzr7oP2D53rwEYAutFomKUHO4y8VOIp54SrAYxA94B/+/4UpxlIPON73xzPunzyv
ifR7NfTg+Y7uyngMpbKxcAFuFDYmWooWJH/qquTxrSlW45LuMG3svrbP9ezaTB044/xvMidXKvrU
mGNclZtKQuZ28JxxemGfDrbAbCmNg41bL7iA71gmR9F3FFPQB1XRVkzEzdTBd6taNMvoveVEOdS6
f7mofC54NaQC9YUh1H5VwY3jM86JLTcB6J6gCk9oKUN/QIsPQSdR0s2ZNrRDkY1oZMegckXOo1O3
X8TtuRyQtN4sN8ycGxiHREoIM6J8HzziJGA6EdLjED6DhxRY59tdTahC+nLMNjVirAHAsgUJS+zz
qRR0qnaUIM1ToJbBUmPTikbGnnYZDsgv7SGLfgZ6CouWfH/K0hOYkqc2yijSSAvF8leWub1f+Ddo
8DPELHir/zIEIudvU1QIY81baWj+jAJR+s/MWrnXMGXhiakUlH/UieH/38WqmX055vQ49Fcm9Cm0
usB+47Vm8+HPqGl3uBK2ASellTR/SpfonrXBtyUaI1iHUR1Ex2FkueseQ0T8lQAj2LbAI+o7e7lt
n5nq+8Ske54kg1gJp7nyZ4kH79Ot3u9QGQmjefNG4foB1ZW1D8IdTNi2U4P/slkn0HXSQu18ddEY
Cu/eodyTUjifOwtDMdrYw9ZRzP0QW06nLTVcROCi2TLl49Bkbe2hl47mD4ZrLAPpgIc4xkbKGRMj
Ke/7Bqq7YgPT3zZRj4EWtSnDQicu7izRss7fxeK3J3//K0a+bOkHW50YILaz+A6zitmAKozTmCDV
n3QSQfLREBTMgoXZCpOcuixp6dFbs0/Gafk8QWF5KAjfG2BGtasyZvT51JGusTsxmZ5xFPmCemns
5m0w5KLO8J6Kb3lSfPU0JsEGiN/1kTB7793qsfjgZQIbJhMr16Va+vFodgU/LilFlf2hOUA7/UAR
xH+xnO2frpUyhy3kbu+xJoKlqlIBuiVsefI8RiPnm0k56/LJ56qDPtaW0NSh9F1tFr5VlfP0JwQA
5MiLBF8+iODI8J23ldEfOMCF1rplopCgoxzL47L2eJW0bASDOCbX/WgnPEGF+LiwHtUDmJvVDguh
xp9WAckR871LThaCTb01hfJxmIuWvj82UXwxg9ccxwtt2bRBWYxBz0K/K2uEnS7W50A5YHP3MSFY
Dp7HJquTneY4jaMr3CAgPrW+nMt55+Zq5ODm+l3xJNSC5ApHRckbDjtzbRtooobfnCY+hfDlYBhz
NjIoXQiAJSVXPhTyMxy5cpRGVQIRXxJxqL2gADQj5Hwg/Dnynom9dHhl0tmJlmkJjUoY8ELkiDh0
A9W6MiXkcSBP5JO8SzkTPBqyii1tIYFkDs+dI5JqMb2uAqeqEPAo0WN6g3xnQKjaMfveghL1csAs
QoixUuIQ8a+LlTigbU5Yy8utlfanrdNTmkI4xlGPlcTIiklFoIhr0kdNJbswwBMrU0scQuxTJGiT
MNmzoOqWWRgWwqdWE7+BOvnyVoe5mxRiTbyENC5eM609hYqJsN47v1QxmkmR5+HCII9Z+B0YfN2o
wf7ELNRmH/N7LAGvnXyvMe2haWJhljDmvW9d3mT+J+bzQfAZNAQMawjN2xRFtLRY4vZQDYGFGiSK
vBk3sMqsgUbLtWHdG+dO9ShSEUd+m7Kea97ixz7gm+XTk0nKQVGRZmDzTlkYqCTU9EKx36q8Rfuv
ZH4K5U45SzQTBMkL5+PGsSsIvNnrt/g+jg5zrZxeZjOrLVMHGt6JaVw9CTRDtnIO/fVftxWYa+zo
MCx4+z0Bwfu9eLVPrQW7gRwUuY7IJG2LQ+TZYIDQ9CfoHNLbb76yQO96IchzF8I9GWUS94r+iK8+
ZemeKs7gq4zll/s7pxAeTT8TSsm0XuYQnajuz3q+8Ot2A9Mq6HzmPnvJYbk5E1vv7Ho6EeS88TSD
ziDu0czD63NcKpIRdZgnvpBNo+wDHhfzZX4k64fC49OkUrpJSZrt5MCs6KAH/O8drCEO0e2sqgAR
P4oxYQ9zeJ7XOiO3++WHBbyT3ZEhzlhCeeEq7+2JijauLLunXdSbVtDVfZUY0+H1t7KBazVR/rtS
cWO67R14azC/OsYqoo9up2iKWFO+bju7jFJjl34GafzWleugxwkJZbzu7HjmAaQEpWeuQj4ggd5T
/s+EmZzXs6vQZ0D110G0jp4QOFaXdw4GxRmJpC1MDjL3+pJP6fG/zifxIpV5hjjrtV3WKsJJ1PFw
o8vyyNqEdU0qSUDRHHjIiQHX1u3Vff0NHVdWRSpUDLZI41nVELBQEbjYbFlsUgID9oldunN2i6Pv
iBONLLggAUwrOXMr79NYNouhXEKCjjfAjYITKCqbTt9jtJAPxft3PMo4noSI0wIhMiVg7c8iPmOi
YynYWOk9PRFgWSln56L5Nk0zQCWRpCSCq+t8BY3WtQEN367SBwscE+Znyk3SjnPh82Bdn5bqBQ3d
VilAiTYskah0PnhTEK1375rnxSVg62onM5m4LdDgrD4k5+t+8xti1gI0ObI9gwYUPdPKgdQHPFgI
urQUC/8GBkcHBzRZgJD5CWmI82tuXp+MaTw0FkrkwWEYF8K5F9phGyuDXp8WxpWRH8QWT8/E9uvj
zdbxwWNRJFeQ8S4fPXOaLwQJnZv/g4wYYaA496BFu2dzPR8uMMawOldS1O2gb1mRLLaYJyT5U4Hu
7Lzii2woHFv03Wj20bh2twWu0TB9C2cQLsBRFZKhv52dtCap76n8PGPCDDA54G0oA/ta8f91Q06x
0TvMsgp8HkDbYJ1rEcNHsiE2E6mxDBevKWfjK6aq/QBlzjOzItq6ajQ3a0eBTlxOfJnT9lLbBQRB
8ugJ+up3bR/coBAAvbo6gOCNKQXN+wutc4l/vew5TGM2qD/8wolbiLsS1BvN2EeXqjgLAhW6vu3v
BN2AwdybypXFRnC1Tn8FeeyTadsink2sFGrZEKywdRdqu5wrnh2RVuAa+h3LcU/F3RKYYAdGQxRO
FAOiQXHJvPvKtIh/li5H9jOE4PXVQwQKKGqU6RkKJu921hAlvt4jfFctXB++XZFEJGdk/4GdC4oB
4pGnV4mVwuL+/ahoccVQnT1MbMG4pGzhakghBgBD9cVHiLQ0aCODfL6KOAjEeGx2F8YHygTxTaT4
t7JOApgJYNk8dfGLCsYC7I3DBM1L8eCWb3KZfjK/jlsoyN4G9dRYssfc79JVP5Xwt4AuHIPjbCBH
Itg2bdEbx7sUDTnFpFVqtBNFplPglA1RVj59T3h0BgOOELavIhqCAHZ9aZN1CYVhC4XyvA8GLrxe
ZNIcATtDye1Zd4GFwY9w8rdrz9s34md3ceuQd0bEryJQxAOnCRsKqDtrIKJ4/h+OFURE9m5RYg1n
6xloGKOUMozCfsg0GkMThaVy9NfTxbQyeXm2mfSAJWTWN8fwJaBSuerjN/L8lHucYFyXfF9hXPCK
jF4vgamOdtcyGp1Qtc0VmuAljIlpYPcc/ai4nGUJJl6XRcUaRqRBpuavF/AeEXY8zA3mf8VpeISq
Cfvo4WfwOgdkUPlTqGQXFMu3Vlst6dip0rS9vDM7CfYedSCvwLs92OcPZq+3DtuyQNV5FUnytabP
eyjVdGMK0lSa6am/H50d5UrlupjF87cI0cpAldtfUkBfiNd2HvGo7fb7C9dz/Y/vM5sZfcwTAJVl
Fbal1fZjfiC7nf8mYUhfjgCAjykuC5dWeZxDOJMQTFZ1g1jYMUBlghPVqHjdOQxAoBXnGB1w2vzy
qbd1tNJj1GFQZ3Ybm+ofoBPKfvY8gKnaPR887wxhwhUcS2BnXabhuLKsEcqnQcZ8nhVYYubUWYOD
BwKD45d78gTpfUjq69+QuSlajmqOpcoHZCDCBgoBrizQ7C/qZPC3UivJuoDPoY6CofCSgVT1OiHZ
XyGR6o/1gVlQ+UiBLVmwmk3gyGbKMpOQeJjKF84keBRTZ07wiopEdlU4hLHZaf06MMKY6w3jJxxm
RZqnHGTqTNiLTIdF4aW2Le5DXvo4+lsOlOc+tfO2mndX9Z+g1jG6s0jeK9moSBJWRi4xQ0krt4/6
292GR27eTAY3yrUqWXfZxeVRgvqAHWRKnlD9II4HeahXgoXgbs9lNe56M35s4TC1/ZYy7nqGPiyy
BQYEOS6spk7fVMlrfAWW0Ym0e1KQZwQRjeteUfpnJq+YP9LhiY91noiAU3AxoUxzAM2KgBgvP4UZ
z4OB32wN5d96bONPK6WbKgyNOeO0wgZze/VJTNZo5TyOTNfk9wW3ev1Mxu777yZmnAVeoOGs39jf
bBvm3sRYXSbMGuGndF9GblM19B2Drm9VAUeVTeN/lOp6a044/VNaCuuGAjkD7Sf1PU+NWEx5Ab2T
qrceNwk5rDyIvqF4rCuEpgCUHqOfQEul+vJZMHnThW5wwb0rF+09cUMivrojWFwaznIFBdXNYhr+
TgS3swXv2g6VC0w4iw/Q42Kwe5o/lS5i1+by4M5w8DGSK7SK9MNIqnqV9gqcUwvKjbDByyPfpq+y
ttP0V9Oa8UC/vUx1L7twybfU8SWnEoVzj81jXqHMn20ezD3uuhuOImf0xzORZF9miC13bss/qJ3z
mkLncy+sf7rFlcn/rUv6OKl2dlHwhRwYMxUUgsv7iuOSKkinUjYS75v/IvIoyRGCIupOyaOHn43m
iJp50bblI19HTKKwEMO0P1JL9EFGpEEDQeRFHCq/YdkWeZIjJ1HbWdHWiH+5i0/k3uOOoCHkXxsb
5N83P/ZV5f+aLl2R6V5wyen7LTX0JScjW4qpb/AOl97voH4D0MiYd2wDJOguiaLgNAuDVFX/sz0E
ESC3sYjBM00yAEYKIwa/IMRBnmBdVK0gFECLwWLiAkUtJTuUwIrZOY06RlT6WYbor1zorykOGWU0
clTFEFgJZREBVFBGHtojPCyjQfwwoQ3PRD59WIeZQu8RJoSTfnHjk1e9zrwGuLTJOGdpweqNdiCs
dJ/BtZdGrs2N9i5/cnpIc8FLNSnaaShjR9DSHg5p5wC882FSqy+wyUwRMWtnZdjDbMBK9hozzFkt
xQgU2ggJ0hsQGR0Qac0viU0WgS9HC4eMszSWfDWf5wC0kHSLx6aSU7dCiC/bhUjrlBN2hvg3jhlq
smoUtLAW3jLl2ZnVs/x81BDUXBufK/e+y9ZEOwVm8Mo8I7GhTcouF+etjRfFgM+55WmGvdkIC7IL
I79yr8lHAk+8sCOrtPV80SI6I+lPtkhnESz/nt3nRbuOJqXPCHmnGd9b4xogzQuYoeRkrZn1GVAc
Ggmy1lwr1CfevtX9Xx12Je0iFhnQ/d6KXL9zxN3KUlf85aOwaQ78RLY0h5ndO/FePjD1aApPY2cA
GAvzVNComGkG9SlI+F1bUUwTHnmjUvF4rZ8b1Inrpb2TyZTVB0/qk+RXW4YU6dhO3lkcorXx+bf3
J34gtU4umwxCHiYxBKFxVPhPisF/hekI86XdqVkpIWbrr6V6/A82m+BuEtuJsWWzP2vvKCgcs4ta
luToZy4ltlf1GuqW6Pq1Bnpe34GzDX5CxfoJcMvLmBF6WmOgeIGe9DRgW7Mm3YY/qbYgU0W2oeWc
nJLK7JmtLg16fSEJz+bw2KE1Ex5xtmxHhSgmL/l3lP8v9bOwWo8I29e7WsIe3X+soS9wd6bmVdGG
fmB3aMrSoLTagiipUZNRvgid1kv4aoO3g+klJOoZz93FgdLGA7/kXSfRrhQjjWuXrCbwhY6MQKVy
2y6fWuUOMYxIh94R0xZXsgixqg0wkKs11IYGKGmdJPnsie7v79av/umGzh+a7esddhYJLPqyh3R6
1SyP/KwgPQsPAxFF4YpJ3KKvfyB8pAoT/GVJ7l3i1XGoZBTxyMYrWRo1jdhaUclfIU9FlFeBABCh
WhyTUrkBuykJMFDRvnrv3x5onVEAqXDO1fT6b5QrFhCiVVySf21LsTOn4s4wGgIufGN6x8FZ5902
5QAxskcEBPBGRziuoNhUOLlqNPtvzsbLFqF6+LlZ+wxVJYUHGlAhyY1scBH8pyfJrY0BaNFqzSC3
PjVzCxVqaPDuPFcKwGGuCrXEJgMqAkaycH847lvE/dLUZFiwyZwjvUP/snmFMKIg01z3CqXl/Pic
eywCFgsoc4zGNNR+AKqeNMdb5liJNIpKgR0p9MK+hdHlAEkGLy/HmWy0lPWIfKUFJuK5mTyhyTzb
EoT0G0UDxkPVK4J3bqjLuXEU9MqnpLwVtKQJPHaj3RIo4MNOiK4Z0X70pVgoiqgtce3QAuJVTWMR
IixsVVmYCD2ChVEJhLF8LNq0x2eGWvVK+Gh0T+bLQ46G9JaG/yMv1YiMZsuPChDVFiU3rA9JbK+x
E0s5QWSe2F2q7hOt3ZrzEy9IcOPsoE1PadCfhX3rm7N/z495S486ajFsOe2Pmi+nbYlLl4vViJOv
cs1WJflubR6UD8VsRKpwArNo4n1IwBVp4q78zKimow8nRoGxgpiH+9XEJ83JWF6C/Tb0PxMRzu2i
JiJjX9WNF4fAnfiLbzSDxgX5JJMA9tqq1CqbrY359V/T+zye2VYVDqeu109fJxssypfURhwN5lS+
Z4kLlxwzBTIGrk5PEYXI2X1Py5MhLNOKB5Cl4ByUZcWqxpF9BK0rL75JmClXHyGAx/m8m+xjh5sO
5Z4yONJuIX6OtjNC6wO5mnpP8Jm49FExHA6kjjwtNZd9XItfBiFRo8VIhRMcoHLKCm37chlQp4G9
hvhDM7aFhnxeVPhJxQjYHs6SRy/Z+44um5hEiRKsNppDcC31RR04dh/OHACADkvnMWKv0TgbLbiW
FBRM7Kt0yD0g53i/JUl6En6lSG0ukJkXnBMQRHEqbM+WK6OtxkQlHxearRxhTo1DPngKmFjTm2iS
YBNk+eGB2BCavi/cjy63UAJJlVSDzIaWSWg1gq56nglpgLeXJJ2ijLdmY2s4UuluP4F49eKmpflG
dviIpYwzmPs7iAvHqO5gN6WlE486liSFwqwZahmmeLBgezs/moEnXO61tTAcrbJepSca4oOsD5Il
BO0b5llBZAgMJhV5lXrdKl9f4Dt4VQA2GkB3dQYMaXb7pn6UQu/Ss6Uv3cc33jVGuXgTnbnIipyu
8AOCa2vaV7FkYV6uk1zteySVW8s71sQAi+wru48fBcXgarvzfQCGnlLaeAkAMIwaaK9Z0h4rbSOO
ZqIhh3AfFI1/HWZplLQdUGDWxQwKoNjMwkxN/TyI3ymOBit61jLfh+oafUP+zhJvNLoLdmaHUrYO
nTm+ih3wSPo3C/ooPSC8jnAnkarY+vnGYvB9OgN9mLXzUvV7/tl5RECNcKkPx/X80K1vaL9S4YUU
dl0XqbAB/6thIM/hZ0ggC2/JgvPIAP9Rn9+XqYizhhDW7jcfOhlF/P7CXtegAOfIkzLXto/5g74q
pSactq1CJwKfacKYDY8r4CiWvr9nxZEEldlZ/Cd7+Ug8wXC7UOmB91RVtQJlVgEkuCq2bZQJzLdt
JzDW/Icdf2ARp62Xn1V6BKS/hNte7ccENlbAM8x0mPnX2Y6fAK+5y2gHvn3pDd3pMEoq5Oic9dr+
KqRpXUsF6GDsaduzqHyJuQabRwl2ED7Mqo2Jkcme+wl0AogXvQ+gqmqqNjCU+vBG33Vr9k/rD3XX
YUShuw2Gc4o+TsNVJdhrVGSuGI3iyBVW569fmlD1o1Gdk43Fxl1INDEuLEHnQAILManb9XG0m9Dc
nAmC40TJyTHalC/mJZhSocUwqeVY63JSgrCpYoEQZhHA/E9VJ5shzjsVV1geUPrSZf7TzvYYNOmK
u0WWpUysLoJFMvGshfxIT42gFQmgR9Z/SJIXa1NCM/gS7z3zaRhMf5L2bmw2lIaF4hXrvSRxU8Cr
ITL9pYZaZaAg1q7VgJmdy/do7tQHL68XNFFXUkv815gQq70smivpd+tILDVNDEI95YL3qmz1iUXe
GngZy8H/hNJdFicXTQSOrNouXMXz2oXY/XT7surGaIQUrUEj1XVSmmudIDBu/F/G4XJad8nJmkEP
H+TzrsMj+cGwTS8fmqmm5RDoYtCjlAkv7xPWWs6nA+3giexm4LCxsTgAiiht9qgNvq8H/BHFF/Ad
jtgJ0OI5hbn3rTX7LSqqX3BorM0h8A3YE4wOwgLqK/JVPVgMVDWsgw4pC/a6x5G12iRzyoprerF0
3K6khAw3u7+mWiGlfbLBv/qL1rQKFPDDAHEHxTfZhEdbPgQl9lrKOyyynSUBGGEDYr8cPX4oUm26
MF5q0xmmkvHoi4wDczUaOxLiBSBI6onk9zSnJE4IrokUBY0wyHVw4W4puzM7x91ki45r9ZrRJ5jw
yQm6jnIJhaYA2umkagUpPPYKrvmBqnA1vrj1AGMK4aAQkQYTxkkpRBVgqZusKz3bQw/rZi5n2Ngj
6kKjSBRYTrM4RT9d+UvKxGy/BmWXPhX8E0JkBCauV6oRAZ1/fon2J7VlDJPkKXgr5ZfXUQ+xcPc8
Z+1DlBSv+57SWn5qxCjYog/wq8Frc9VJSCd3pnoTvhe2Oq8JHY/aVVPXtVhJdOtr/pc8nN3OtdQ8
5zA+wPZbXwKKoeoMNi4pfm6orsqbV7FfEREt+o2rE2OuTEgAg/SMRTG4tA+E76jWmfLroSR+j/OQ
hTmVpTDhijM2OBUGkJqgDpy/hGlbIZdfnpFb+gEjUc/ZPA7U1qiJzpq/1TS6Nu63nJOf/EyYkE5y
cJv8b5Y6CVFb88Ciip1JU5kO1Y+AiIsDlOs6z2+ilekjpggIe5bH1Z6XlzRfYXp4KNg2KukWLucL
2KXP4G76TNrzpZaNEQOLk8Wi5sEqxq4J+6i2M70QGJpL8JkJG80uSbYBTIZLMpAyuip+NhjkzjDw
4riNKmGWxSLylSyFZssbsl3aKUzYEnyiS8WJOCeRf19XI3R3ZKylipJMu6NfkwW8HzBovVSNOvtR
aSd4ep7cQ5H44nQ7N5k+zJtDepy5uTY9WFmKy44MIs1sauu1LjID7kMnjUlmEEaa9LRWWt7E6OTk
0c/zURVWmyCNztpuJNqNMlyY9NCDbPyWf7AcakVW+20s31uyzqjURu06MwUR4cTCHF0bCsLS42yS
cIcgtz496EENrAIIp2S6a68PMYqSIY98FQO34MHIk3Pwqs2N8mOxQ8I51yO6JQ7G4HuHxwnioIz2
FQBBv/Jjr1kzSy/Zuhmrd6yI0DgZVz1z0KANO9BPrirlsc1RqUuq+aUWYyFCcmtyvh7VruhE/ksy
mMsdPmI/Md5nhKolLD2dcH7hfcf6jbN35j0WgvlBpN4GrzYfi1x3cEhIIUoprnbuMRnUvIz1+XwB
UhkMB6BxFbiZPjhRW/o9Sb0/17N4IrURt0fy/tEgPMjfaZyn1NKARgb58Wi8Va43Ks17sxdBQwMH
rszM4duWGdXH0XpdHdUlMeRdhhF61dfvbmmoaCBS0Nzm49wlfSqk3lXNURA0Q/+V4e12oE8SIXnY
lVegxCIDzgriYkKU+JV2Gjo4hMnmabFU9h385vuVREwK5KidXl6mhmPxW1qCObr4DzPQl3W7CzKW
R9HYXOHX6uzpuEsSNs8AUvS9TE986zAnvy8FAJ6YKEk38U9YUesqpcsRjkwEz2kiahgiOgCsc2xC
ZAwspXA15i8WuD4DoVPXShuJJIYilErWYm5pkO/htzpjNOXVdVNadPosOJpl/kWMxWVi7dazJHyh
F6iWS+1gdB7KVgeLGExo0CM8GJaSNSfpg9k8igm1BH2OAWqsSQePsusUB1An8dzTCQgYU2QZD+oK
2dnDoPZT6sUHHm3++qFvmcpn1DLoitnHNs2g4l5B+2LpCdqKNGLg/9YxCyBHbH5L5rVl8bzU6BJ7
mm0/avTubQdi5XG/9yARJtJB2UN+jniM6d88DJDz6e0TszGMFwC8nk89Ltm6rsJqT0jFYjV14B4f
jGcj8HRp3iSwkdxR9PiVVldCz3GOlSJFSaLX23fSL5nX+BANchfoQ/mhPvCW1rcfUIBWR+Vcly+P
3hk1/JfSga+8ATv1cXO65JNWgLSPwEKzXa47bZMA5yYzn5JHEyiEDkjTFysz5et99xB+i1b7WZWB
aF/rs8A3DCigxkuPdwyN8RaL1s/TbkmhhvRxsBNtiOLbRQbNlhpae3ovUjBNvsv405YFYcFqU9Yj
nDU2KJFYD08a23Uh6+lL+idaSfBwXN72MMVzQxd538U868DFlpKI1vQwOSGhGNYybR4RSQO1Eu8u
gKu5lEV9EZzyzgx64tlwnTMT1kMv97FON/sVeqWOHnfzAhKDO/f8PmZzHEmfkuucKnjFgP22u+LO
W18eC0DFhc7FE1beD1ZP9u4hX/plMLqRD0xD2o3k6r2oZqE175M7HbSUg8Y2ydWkIvGcCAjCUlnD
Fchk0PbdF43rEtscPZFLhpjhcNDS1L0ohV/E/3M3wZhXZUY+jlCz7U9dN6U+rB6fpnCzNhC2Qbbt
tUukGtzDKQYPuiUnjpcFlkhy06dR2sc/gdL/NjYu5eEcIzQitKj+g3RbOx+ATzYzvkS0Q7sfwpHq
fy1vaI/tJioEiCBfV1TAgTrJtiEGcoDReUX8OouvvvSKV4yzaoi7bJ0sjgUQLs4791Cmq8eknB0u
YVPlAgs8sxE15v7qwBgKAtG6tniGq6Q6oX/W13sv3S7a8zua7SSad8/OYBmHjDM8UHb7FeuMI8KK
5Q7sldVHGngXlZ6F5NtO1sqxGtdwMftyD+jMDZG36SVgFhxgeaoJiOeq70fG54r/YNt2trFAGvic
p+9OjVyTc7iB+MotmE/qfhQhaLNGoVIeFV2H7YgAUmXFqBd6OGoraKCJnXsSeq2865N3Zw2Mm1Zk
ZjkaWD+EcTvRgAuQO8VySsRoKGvGeezlF8pvLQjSRBX4LlMJv/du7kM/qRfGCLmAh9an20Ggk5Pe
auSwxq9xw+2j//O52kMuYuvVJ7B0xsCRg+LNcl5pasudXO8lTu2mDSJlnd1t6EWzVWr1+053tf9j
FFFADhGgGRizaW8AkhK2Tzlkz8P4zN/duE8XHWLa0uitt17w2Z1HmZHrHNWsaoM2OZWjOe/TIjgf
88rtchhURWAc98EHk1qzIdqPpyP+GjtNalzR8jpl5I7mO1Q7bo2vs4iWlrqiGjmaVdJLKfJngsLj
q5wodAtoKXjlCNzJG90iZ/mTjZbE/4UmoZiY6GszR9IhpXVOhU5JLVC7zXctkOcqa4AK9iwfpCbw
WJtdosb9pI/hhvrHdNUg1o1VH7DCgOPgUqKNmRYeo3BFNemAAMKogatUUk59RRykXH4lSQXvSH31
3hov7SDsTpmOisAsVw9xkxp1nbc9+uQV7TWQ4f7nqjLEEp7fgnECJDTZFZCpX9nw2+VZpfQPt/wG
Ag33EQd+Lx4K0OahnEDlaJNYb+wJ2FLZSzszvJ9e4QKNAHrEFDNH7NBWjgAPykG+8jhtreOF/sgh
KezxQTXVxURT5SYii2jV17HEHOvh4A2X0lVlMqDkLO1gOY1Un3TDJJxiMVo0jClCAQnkW+2iLK/b
zK18uPowNTWdpBh0GrIg9nowo7Lh10ipR97PEqx8jnmaIowQgAdG14gsROh5Dw6vnb12FZ3TywVt
nYztyeeFTIIGXZr6Vd0qeGn8KPLdezSnSO3RkuPHeqM1L+dgxxa+Dll+f5UyCQGldVWcEYK0HarR
bvBrDXM6coVeu2EEL/bnCXgdkqooikWrxlmp+/2+LC9tT7cMmFoMeDXNVIG4QPMvemMCIhaKg1jG
gTmMBobX8/W7Zlmc8mT13wwsolxElkT5EdlLGCRNag+vY1RIgFg2t5JYzcSPlo3OFbFfRQvEk2LT
9jltkJk3sonR4xqLpNchknQyrh+Ws4Dnr+nL/Vx9GIti2/HDrw/wrGJjcOp4NEKtDVBU1yS9RtUz
9xYo+RHxziLoaUYxzeZuwW+5sjBTggZZsEzRX0+UHcFOtrIChQ9cMb9dOPLTbYV2m0qLnKJha8ch
uqaJBsWtKcci+CXbPxVLuD4o6361sgBvWN0MDkcxhge0PjymaiZegYtuqLPNZmNPnGN+70J2jUc2
mtOtoEkZRgZxGQTeZ7+VbOwIEDeREiT1NoaNCe5WNoxnrXGeugA/Lh9DaJBeETIzFm+xtoNh7NHj
Dkik+6Ev/uZKO6crpm8UYcOAeFoKEJx6G28N2unkODltwHRQv0CwkIYy3JPHXlVuDmYAiIVGBwwO
W5HAAFdOPZZ+aFTvUxcgBOh2f5zCIQiucalT11SzvkDXg/zcLjReuScLAk3JWSBJ7wKPGzLz94RL
YQ7CYDg21rN+ujabQSIk+AWYuQ42ByIJghIJ/URy0Jq8csv0MOLrKDvT6y5pDkAhXuYWyMC/VG6z
3I5pyhkJ37vJATAVfOOgRfb+5773q+O7TnBDTdeI4y+NOmt0uE7M0ewsMcLus1Xjr+MkxZshVL0N
dTV6t77x6W8s2FL0yD38xtMlk3471QvicVYQ5JRvhreiienlu1m3PbW+X2ufBxxbz9c4TuIUNl0F
h/ciKxFZng9Cxx/2ztmtCC+Nw8fqND5RXV15GbkRQr9A9JTQ3aEGXGite58B/dNoAorXvfsBvS+3
SwWBBocS/CxS8xtoODLcl8XJT4tfP/n0bEwKlwDT0SOnuACGqXlMsAbe1S7OmXZ4uj8K5fp6KLm1
Y4Xw3kWZTOiKV10nAF35tpwwC0LD1ahuAj11bkH31DYvFm2RqIt6+Xd2iI/caOrvBiMDvNvmFL7r
YM/+rl2/G+VBjUQMnkQbMNIKzbtd5zrHpT05/mTlgYsWEHOKLH1Jd3WzmAfxlHZdpVpF9hWCoCKJ
McE+JPrSPQDYlejPkC2bM13e6ASJA4weB2qru0j9L/nF5Bt2P3mWcwnS4SdofmL9+UDRaaLy88y/
fMRnbmXAeFnfNx5aNN7jEAx1fDCPO7rO9uKrOmdDUjonsDq63Yt4kYse8E6VHU1pNtrlwNU1my6j
ZAJSmAQdgD5K0G3DRGGTfW16VzCAZOhVg6LS1J1Cdnh7/IDKS3hKpqb3gXqOcUYeitZLScpGQu17
eKZAImKRruCEllp24vqLb05PJmw42vAoTVRqRGlbs1AZdseLfN3SPgvC5oS8ziXfGcoN/gnQhZlZ
vNImpJE560Zy2apbDrm26qerCK4hHaJhlvim8BH428wNxWL1RWoDZEieo8/5jfLqntidhpfPA6ap
2b6TlGeXto2GbGzk0sVC/Eapkl3AHIhH+Pnqn3dvpowDFxbZDUbFpU+Ow3iToIBvoPzEfnJ1cI4m
CePflbMKNTx+elQdwcOwfjHpKz5vKTujPb1ipQYwk/NPVn9rR0n5utowpQ9Cu3yIpX0Lf0oGcQcQ
AfKmiS2xWiu1Gd30vfOQLvPTAsf7DXCC+dylYz8rcY5X5OEf4pz+bCGgEI0FVwKyFIZPV3zKTz4U
HMHJjqzH5UhC2Oq/Fd/6h5zFUO6kbpVemNArj81NuDtaK744/nm+dn6Dr4mf8tENSVW2Jf31uy0+
X6SFWo/TSJ4k2jj9blNNBorwntkUZ2nbGci/yWwU6lTGr07/jc1Ito5UKcJ6/ACXveujNtv9mUMe
fW0sOzv7NHnhfcqTO2bKl0zrdZ8t2Rip7n0wpWT4vua5fub2EbgOVLGIVXMExkXegf8tPYo5fsfp
oxZw4oUrHbQGIW2r7SIi9rKuLJZlNl05Hw+Bq9lXzgiRqnr4BObxtK8u/kVhvGTG8TcVA3dQ9+z0
AT+fr2TPT6MpWF4m3TyxEmgp1p3J092FJnVHNA05PS9YdNJWry+jvswoOTd/ZGO+AmMFT/vdsE2r
ez4JwNxnX/JWus4Xvk5/aRM0Z9gu2Db1DxQaOb2ons+b2OkaYKtQgJxZtc9Sa/Zn6mce9IfqIm2j
6QZtTuttZaP8EPKIcPdUpsDfTyonotzz+1TTeL1IIlIbcaiEOZL3TWYHjtsE5MtkFELBFMaHfVdZ
d6Fyb3RGlORfmLJpbdoF6Gy9M/9v2WYdjOI5Flyu65U6123mZFn1VbBHtDpbrWewPJ7yJi1naC2I
U6aHEtCIwbDTEQuen0nnS0RkYI5MloNaokprMHSod/vrN5Er1/naPWb66jfGCXo8mbbhZL03SGyG
eXvT30UwMi21YIF0CZ0K/nlklYnF6FaA3yWl4VwfcXDQne9FE1XWtPdABwh4iBK+PP2e6gxDHEnE
VS05ZMH7so2NJIZ9GtxL/fZ0rNRiQO+kP33E6jnCdNUkGPABY5jE1E/6Anzy6+JSjXvmYhOtnaCP
ixzjBPLIdIPE57YHTHg7O261OC40C31cHNAXAhG311fAzUJMfwu+wKalzunu8ZxZznleF/3K3pKc
msbGMoqC2kXAYWTPEGVlFDf5KlCplOsi51H4Ej0VkPq+1h5php12T1LNsf6iXoW4U2nkhP6uFdvt
7dEXT3m/bkhP3C67LKWV0EcwYGKB+wvPptkyGUH7sAg75hVOKtwzvYsqDDuDmkX4yW3olfgZDu3J
u0GymeRaMJbNtJAZE8iRCgrj3w/ggQENzeYX4cGFtBHG+bmqomjKVWpSWOg7R/emxiYGgFpacWQP
k0DsxiO0a9AJzyj8QrmR2ODjS9JaDkQAaNkdoeDAXXWxz82Pb4Oc957A3NFjOw7Vx2gY3UdsEb1r
YIiuX2/UE0R3AZQxpNJgwi555pWBHFkz91i3jz3TEP2GkWbapaQN+CVF8/Tpp8BkC4mExrH1Xjc0
8Q5swK6zwffOKKUf7efMrojH/ToySSSjpI7iAUKWVKIEsVWOUbOjHRwLcBYu3hxqpU/0NIF2cWsS
VZXi/Gx2bFWyYQbVCiU/sznOyOnuCLcoktnl8RkYKJCBSCsTN+8oVgPEvelCqMnYJT+izhfVyPAW
uIpC0GF+MDxF8bt5oTqan+nDhRkD++prxKjz/ufHE8Oy+Y8zqOGPlmO+rlG4xLd7nH74rmiX4oRP
LQrdpdGO6yHjHR5nerOvV3VSgVGJzdRy+k1brr4Ar3qUt/X6iJLAuRJnUJ9mnoFzzy9DA7gZcYfS
rcC5Xwiz1i8inYCjeNUzuqEDPIDHWb3fjH/Damv3IQv5sjntJNThkCuXYmO2Dh5TGVc78ra+qjzQ
xKSCzOwKcqULPGt6ewFy5BEzb6o3NZlO+IyfU+efRvlfaufGgzc4NaMnvckMSPdIqbk/q8faJQsy
w2eKVv/OmyDBCOLkj9b5qGFVclwUTXEonu6gll7KcEtK4+K7sMEc7t34nbuRdCm7btTnH7TP7iGg
j7y6CZQtbohR5RmM3pPDLubTmZzHE1UeGYAD3ns8INgrh32wj/I+rWf6AeSCuyOXxqFf0IOTUOCZ
bQVytcP2Jetpuq6eJ6ikCVsBu2HGKRnmv2MDDCNTCIjkOCnLIy5I2BtRxw6QCIGfX+Cs9yyPcQcp
PtzGJeg41oMTof7nu+REA4GwtSUdgzXpxhEGYwPp/bEfITLPia6KwzMeZJd7mZ8qliaYlhoX75ht
QqeSIxN9NhFnX5bOhxVNTwstNXOJZKbpqCTcVujZe6AzjitFFmwpwrM7Qsd8xcVU6i22wzJCFTCw
beQ5sfwhyxPG1BAGd2QIzkQSLvGex5lRkfJpHV05TpyqEQjiCLeEPYzZNqupRBHr0p3EP1ACUI/c
3V5UnQeM9pMOihbCt9Xw0qgKLeMi4uKgcGlFWRXrU7rib5BUM61PBx3UmpjTnfyQI8T53XZKQAoy
ZAUHjGfbw00vjIGDCfCVPXOFp1R3fAKB2eL79VzQEuvGGQcFsq8Ke/B9lZgVmjufTTBIDIC0ztSN
4uKMvKRRz04UbVRUrJZGM12IlqqEJyPSaV+0waljOYsBU7FPYI4Fsfq7PEOF9o6OXIeyMGCawLBK
Q6eoAfk4KrEhDBPORudIodUU7TS2o/XqxSVQOhgGPxnbGdtE5mNgeF5BE10mHRO0LZ+VqYCqi1pd
S8cdrVJaKPf3qX/r1a7DR6AYhLMC1bbhDgpHrFG2+VoStxzYRcHfKLCwEuTOOEckXorNVadqXhDr
sOS5JRqZ3UrbiTXQnsET1c5q30miaV5ZT4wavjTKeqJNRS2+pbRO6e4jM8bBrI7M5V4y8Dh8U3Nv
8DJyIXW9z88oIRzjpZhc4/V4/M+ws1XliZJ5+S6B4D3iMGsS7sk7tUH/rqsJa4H4EvsJzewV9m7j
Q/4ncnagu9FKcBw63yzXsjBk8hKHiX5/lZU08aWtXP+AX10EPJ8/pIbBculLWZujZKB5QtOn+7gU
ht2J+msOTqi4fWyTqX3JF5iHfUWytmjfUim4nsoOckUb7LzQJSwZpEADfuaLrueaa8KMD0FpAKzD
ZlcrLLnEzAXhMejwpNTz9RIojE87d4N5ziaa5derQ7i94YH8JEXrZ0lEQAPGG9M8dgv5eNkyZKa0
bMo4dr9aW4mVcFMUPeS9Dwp3lf2g6zo7WldnmuZ/erTbwAKDTebDP8PHdA568lloYYtFkb+I1IKa
+oC7mwlBMaYoGBAvd4Kv6mrz5GRvVkDgqaqAMF1eICLkZBdgU86DkfBpwdFHBXOzCPCbx8sc0gbW
3KzzQkyO5A32lmIYQIMlZ9OnWsB6l46YAb4sBX4Hg/7S8f045k80fI4n4Ylm9JYfRlc/R3/h8Chg
eOSEEBy1sOGFXnEVhdkNl7/rejU6tDncv4OebpX91JTwk6TUCCke2yge3igOBCbAWW2SkEBtNt6J
4C1jFkaZ1qUJVZoAdruKRP/gRsGb+xHcBLRF57BUpwyyl31tytkKnz5i5zMe4ACcavUXkzx5SiPJ
YF5tsW3deW4I5eXK+kCwkaJs6sXsiHhoOPJV1TwIru3y90XLTigL6rR2rUkSiT9B7mCES6qbYdxi
zDX2HWWK1uBF8LOZnYxGdT+zdqqodpxxBAKjnN0xDXLr4xXA8mN2VtNnpJ5QRgTCj/IBdslF0C31
6irnoPdtSb04/dhDVnWnbTVCa1to+BKlZilFbMfFoWaOccapoUoGTHKYaXshNYGCeGzy0E6R5uIY
yk3zhySx0rRqrcUUZbPS+uEJDp5xuSTlKl8z1LvtC6e+lfASk/eYeVH2IySR2NKrbKQDJKu58pDM
+88bRiScnvlR3Ug2NrRawZ44Ys51+VApV4+MsCkReOY4z6MvBTs1c2r9+BcZAIS4iwZVGv7C9lFx
VlyalyzhSnG/TungcBUqfHdWL5zySVztjjpVgiJ/htxhbwPVtvr5NCzpJrWb68sTO38pnW/j3MD8
8Lx/cbahzlBxt1BEi292TP7dpieL15WRICFLkHS4JTJ6bHDu5kqojklKnWDUnO9TQHfYMD05Aucq
xYFO6I1ayg2/SrkYQNZPinqutfuq49HnK1z4wRoF6jLRhRSICKhB3RU5gvIKzWLGCghooKpjBoKz
sn2IFZ7M3fFsvYupAX98jFKFF2GCDgYVb0ymzbZGa2Sul/5vXnO7Ir0w2TMWvTEYr1P6JTzFwYwy
b8WRef+EdvtRc2aJFcFkvWxbkHx7982TLBWgqtl/8HEqM4B6BSEebwNtVI3bPT0JzQHoHdeQm2sI
KyusJESKf4/Kmdqr9JvFTDB7UIvV2nMafZrVFDQ/uEQK3rOAQqbkVrsONbwdhqPnbKQtwdu+BcK3
hq+q+lF+UNbWhBkoDH3Gldxx1E4tsLMsEt6lfTHM/4Kec/qsTTRqhG7tzEGnqWyAT5Mq5ZPFlvti
rmNrkEgRttZeJqHSAlCR/7rUnIQ0NUyXQRk9ac+cfGGzGsTFr7GXYilKj1NzWza4xqRxvkHJ1EAE
y3VOfsA0l4Eh//eGzlXur4qeNosx2HDJNlk6onZZdoz2skaBQlTBbTLFjEvnKCCXYSGIwWLUfwFv
m86rVTokXBJKixxnou7lhX5m7UnDy98fark35q5+49LCl5kh7ar6Bm69qR/cyfeOtbGiLPL8BFDA
FLyrTNuRd1xvATgitWH6m016yM8K5uTl2fmfAhudyYyj+d7ZziGtbDbTLUB/9zGCyLBYvqoJ4hFG
uVjqVXTtyTtmoJ6gtocyP7NFIjI9a9hnDv0NjMXaelfg1QoO1VocGT11LiUo2B8WtI/RPz8JA4V2
vQtMozcEKRmwsxGBf/eRaK+mVq4BlCoT94qGr8e89zYD134gqNJycWtuSMmkZvDNCydqJZvZsj//
F1Xj0t1OEKP/YzxVYzOc9THqAXdv2mJFeg9A6L5OdJC5jaLWRyAzs+JgaMEadk1GlEb9vw3oGDui
14euK8x+YwAi5ggFgkXmBT2XVOLU0N+AAgGHu3RzsCnWoUh3K+P9txmYS0TSFyKQxvhKJOSBoSbm
HgV0IZPN07tBvQqyUeDdGuSuWXnJziM1/2KQ61HMj+QD/kjz/7lxPMXTsYHRMgbE4hwi2e/wddyT
QqHQZGDDwNsYzjzo5NO+NL7rSAtPzJwR+RCjE4yLxyXAScCbK3Bjx9B13boOjeL31WmJbtH1PrnM
Vttp9pZmY9VfWNqlIJq4EEAbecfx+zhsq2QwRyvc6/S3KKTsq/bGurJhWZDW1SP8lWRAF0m7USxo
42hvv26zOdR/Q+rBRJlfUAY7WQj5C/wpE0Qrv8u0Gnvu0u9WQc+swzkPGD294fjFlcDGqzUGi9J9
GTJMKrJkzZ7X6fxy6z7e7xvb0agE8cCPX627PMIZMer2Xinsmn3RFDas0/4Yy3v1u/mFaSjiUCUD
Xw45OYaullCgNE3LzVTDlt6+t23h6FUdbxa6oKj49fUtmkwEaJztoCCLIZF9z3mbi0LZmsc0g/c4
cs0I+/YHzVHh3rPandtQaM0ou3HmWrorXmpHVZ86I7QUad45XA2xDCC6LrEhXI2+3O/D+lz7mq5i
reHonafJ2KLaDEqGoef4QziqCyST9LtCLVYsxiSXRvpU8jcQJa9GzdYl6LDyDdzb34S5kbwynrdN
gINQ0aHq3O7h7nJ9UnR3TNBf7Y95Q/rx6sO9Itr/LTSqPyaN0wRX3Z38oUkJ8OKaYgsueUnoyPwK
aaPmtU0NF+Cb+oZBPzOio2F9PyYpd7qYn+xwv77ECBVA6/xw6uHu0TGDixE2638tzsBQb1D2Vu0U
SGt1rqfTpCJ58iuNk3UPqX835hMtiRJbmlnNa2RnXeGL2CWfCqBhSf6ppbYPIJwFaPBJqXoF+nVN
ghnV+FriTceC9jVHhvZlwrWxgWAFS1tvYlc4L5qHR3v7wKWACosPOmD61pglWuUYftdgQC2J/tGJ
gCNQ41Jc8p0Lpus1YLfqQTCdYhYC1hm7mJCaUbMaAVvIj+kjBYremdRdw32rGNy/8mpEauYPOuct
b5I8eE9BdmWdZtxE3FfutVqul4rrYAyuO9U+EiU0ZM4SRmFQrnqV0Ka2bkXrA3K8RhxC/oHKMNRH
9l3ZUJCRxJp6crJ68kMCQb8Bcm9IY5qpRPjnNg97KR3ggOztjxC2JDY4B2nEHJ+Pzxa2Si8/GJRA
B2sRiNLwW3XYekBm6DGDznTLgq61Yc0Skemov4gdi2XHkG8v4K2i0or7e90YHA+WGhcV/90yfFYS
iFW275OkZlFVSyT/ITufAh+I3Cy0+qAZJkkKrrTl53HSAIba8AKv4Cl3nbOmkRGvrNJ4E0UteoN2
BACp+gNES6OL7fk/51yrN4XidsbwYDPAhwWFaIx91bjKH1VsnNiIcls3LMPnbolLtju640aaLF+U
eWeEyh8wcOIfT7BqTaZUOBwRvmqhqPPeRThnJKRXx8YGB0g88sTVDGqwk+NvwmSPyiwCsV8Xsj1H
FZdvndqldfDjuZx8EqEEMxITf05z7CV9fiuvFjgeOmhfOVnjjcxLXILJclZnevhwFyRyMeeFfiQ0
BM5jiciIlkbAEz4CIZNGEwDeyaJVlIxnQ0jpRTsMCWBj6hCHTNugqJajvDHCBUL4d6o8A+iIKOVn
P/enrvBcIseArRrc/DcBHU7AJIXL9FoI+sKET86YhshLG4gaFQc9UinYGe3pAIwJQUL1pJNdV05m
CUeX37rcL99r0DB0W467PonTWaF4S/llXCABYipt91N9y1uazOqik0ASjUc/QrSpMZfNHu3L6DTx
tg7KA8vO1YHDwc8hoHPpwikc1yeaqThXd8Lyb7tJogaMHW1WUVKokLpTfmeHrFroxcBswKP8g4hq
dTKngAUThHzqNMgHADfPEgpCey90Zc5gtnwszEELPKUXE7cLRSS59KK4ydXqive0m/Z0iqCu3sPE
moksko4FJO14n9GweetRZFqHhZ4PCCNahU+LW/S+ApzpQ99PIMjwdt/+W57xGBnz03t/kWMFaRO1
eF0yTZ/m2sY83MLrqWmFeW/6S7+nGfx81tuMd7r+Ttrj1oClgVVciZJdljJBKVzk97Qb6r2ViGhQ
aYUJVyP/hLhTxty5gsHTe2XB6TgR0v2lrdA4h2vb1Ghy8RA2HSVP6fWDHZnyLK4+O9cedwlSTn8U
7w9SBIoCyZNinhHfzZ5QHfrMsdfSf5u77llU30nFHVjZ40rUGTP6D8cPAwbtMcmR+ftIZOvUPGrl
eZ4wswCQEq9eswKSbyhbwiYRGgZhAKScIxt9w9qnQP5SoS+n2V8wPX177ph0youVa7dM5mhqF/UC
OGjUXbfWyxiU/iWAxC0x1QRBmQ2PoCHt9c4PYybBjzfK8Ap41Djx7gJrS6UaAL8VdYLUMOsqvd26
k+bZqJChHQ534ovowEH+mErTzyH7Q6bO0Gm4WHGOfLpLIKWUIrZOGJUXyVO86jQl/B4073OyLZAd
f3IUWeJj05gAAGWiGLfSvBIEYEZVBsqlfi8+gKHlLFLYwgUTz3sFpWtdN4ixkTIMRCzhgRSmBVCf
D3n5+drOLJ80XkYsFlzzC6k2HRZZgPFJSLYR2Hl1mC11HdTnr9rNFFz2+FqDDFutSL75ybfcd607
J0LCKJaNTplzazl6Wz4Kwkbm43FHYt2jrezJdi3nh5RNnme+l2TMK6/I3Ekw+iG2JjFiQ7u7CquY
ybRPyVXoj5XBi5Xck0jyWVJ4+nWweRzm7Fzuxc+8CJ9UqQWw6bNEs8rjzztiXIsbT4Wo09zA/bEb
kvsglWpE/5CQJXD0y0odklUwbxYXpZQFfA3wwXaEm4FldUdlV+jBh8UJ1oV49WY0T1yQRI08bQuq
hQZjYkUvYTArHNustRLe9ZSM86RpMahxG8ubVpxFJ9Z75ibq2tuZ2Rv7AfTWV4kIuFmNv4o9QUQp
14/Xq/arYC8SBVBC5MF4qgAbiRna2k5RrlSj+ZiQllOZT3u+Y2yzl1dI/KWdPi8wGP5kaECxFeDW
67EdlKuvLvFyZCU3IIGG84WB/gDsAfHW/5py+2/xwnICyNBasADk++iEiTIl1ff3mRbt84jBFipx
qIWAQC069DOLZYfT2lDHtu6vXhwfoyFoleVXvuha2K5keHbg/nX0NO5u5O/u8c9heik2NmS/HM45
eiqxeGP0Re18Oz9HLAA4lt2jnFP5jJcrvv+huF3FDtokMjnVZ40iwFnn6vEGp3cICFwgrsd7W1TY
cKPOeXfjt1j5TbixuxNp+cMirkOxh4BmDp9xC9srjDGpLAmorVXveeVoBs18td/UBZCLhr5F2Z7L
8+63J1h7L2qrsHNOjFqiHHP+gqb/Cf1Tb4GWxwLAxl1FahUe/k2Ha/zTI+iojXjNldrZZFKYYbDL
eN0OZ6rxPkW3fAw+kqI7cgyfNXU4CLEO/4gx1fl05lUHBhRONFQ7pqxEn4J3NDhs/+MmT1YAOMyV
EC/4oLA6OtY5eKR3aZ9H1lIv5BHEzAQxPDPV3lUIlx3ZNA57SHfBPX+3/KbaKXT7Xf7WWgxWvYby
5Rsi+9oWcMB0WUE2OFmjf1fGQLv5fqzkmST91HX+gFQT0glj31yEoUCBjf4CE67OO4R4MZQ48nea
5vGkgCF//O2LkYV69NMIvCJ3yt4WCIpOsMhKcG3zDOLykGIQNsRZeCAvZ/hI/KZr/e8flYqwzD8V
ZVCihHHJ3o3iyWxJu5FwYytUCzgfmtpaEf65/J8efExu8zqNZmR3OLHlIeoH5NCirCpETS6AiVpA
0BiuN7M+3kuDtVjAmPNsQBUMR1dtzgXkc+besQmbXIMG2Y8eHJXx8sgV7PKi6eCYRSHgYzYpUj4X
rlDCLR3j7I12zHXCsz5tQwYKj6XyppYFY/LtRoCYM9KBGn0rGWFAywewh1FTzj++9qW4gb52cYZ2
f8+axyKzMbmnWJxFpclu5RWK5oovMqOzx83mKhH7FxbXhER9CzNcg8vWxo7uMrnizx7AY3b2NJ2w
JFl3MxT84tlhShk2jeN4iOwphyXpzNKEIwebjnM9/nQgxQLijCrP+8gv95lljhqx2NclBLM9S05h
7imCXPd74DsusjWI1rGwpxCuVSyJ8di6c0n9Y1YjSLxi5rwdBhMyZrs9sa5djhH72yYJ1eyZxjIB
ontIbLAlr84lVGQZw6B38/3+hKSEt5OnVuvohI2qvDb+ftZbuHDsuJT+FzTIBmBS0puJgfwKxfOw
e1eP9ERK5ff68EP5GDCMfk2gDZRm3ew0PQ4kvb3xI9YVjAwV2BqzM8NU1V/JtwzZbx41AHGQt+w2
nNWbgZDLx8QIVx5J5yAKaRD0RJBaoF/6roebb4j3AaXhCXzdfZUv2ict0iJdRTCp22iJZQb/DK0s
tuxPBeedWcVW2mF6dfeYdzfqJn2jT0pZNPOVkJcSVLnPGW118NhTHSYrpRfIAJ7PQPUL693iDZUU
L6droJsjFCGaCiVYkskxDhyShdcy9Zw8oCo0OtW0qsXhroxtR/VyQhsgHx8uAx2oypNRRxiKWpLH
5pVIXVoQITEFplBJ9LTIf1WeavqR/U9kvrMQaUt0mk7wBZvPTxRj9EArBvKXn5HdKd4YvurkC8MR
Rc+9NsC3959WHDCZ7Jzz3likq0CsmRfGHE31MMC9lzkTLt+bBU8E2OSrC8lir6HDufk8flMLcCAG
Qbffw37IiR0SRTVHr7t3iVFhRywaFA59OCCtaY18ZONgvCzU+9BumSsWmeVPRGnsrpoOM9B+JuTN
pg63NGB7bIz8VtGlWQWbTMef4+d+J5ZWX4yu7QeFCur93ZnU0lcJtaZVnjnPX8ktdtOLk81CFcil
QA1lrcBFTZxgsMSAmUQ+hFvjRFvtsFHw0O7LJUhvLEeFLlX1OisXJYNo1HzHQurHsBGPPdDmKDiA
cT212eqjdo9ERu9ZMHaya8uTw9hGsIsWczG7oCSF3XQ9RRHBCHMo9RpUKOIC7JzJs2cjQ0pq09zL
dt1a4xtOHMfX1FFvvqKhiuq3MJuVhX2udFsnSuexlHCFHpMPEK2cWXHKNdk9omdgkHdDJIpg4k2i
LikMSR3VVm2icvGTczTitG6JROkSiH3Z3sL6eyNeRlT+pTLLebJGCsvPro+qp23b36XL1tNugmlh
N35HyF9lokgaZDX2SvpLKaWilJOLzzBZStAtPHy0eNEx5LJzXoWCHudY2g2eGEDBKEdLdyqbSJnF
Lr5i43D43bKqKyoqjTMyRtSx7ZzEacz9nsu20+fcdzJi7waDQFvhwHJWxC1nDh1nX2xltjW39e3N
AYL6d30OVvt4+1iq7o+Fshbt2TQ0zIKm7AcqmeGUUrcuMDFDom4s03oK1WSUvCJL1mkZqCrl29p/
9DoPyA7WAf26XV7HPfyXL/Lsv5KXnl25cdx9bOVsCyatkRiOCLkQWfXy7QKmRuxxNOdBMnlEVqoD
pn0okTeiljQ4TS4R0icG+VbaCuw+oMwS8lu330qd1vkJ3gBcm8+MVyWU7/wfhkZet03P7hTb/w96
oj5556AnhO2h7ekKvewDXKmjiqNzvPdUzNzfAyNrzPA0+7IWxsDxeY8E1qsAPOm4mxjvtTLADmuu
20JfLltRLkf4DUexJc1ZNleTAhSfKtQaZOvYmzDo7rNDPMo1XE5eR1S+9drF0EoosZkOAmnRZ7xX
1e4PEejwMbv/ePYcfgVQbFHkBVWYQ/kTfxH7lmWgpJP9gxx6izYPnkIA0qxg5cMWLskCNAMusonN
x8HFXnc5iPJLCPQvoZmQo5gLSu+NEUQy87fKRk7Y5KeM0FFCsRQtgGg0odnaKYTCa/BOW74FNgge
lUK+T+N7Ai4HJ9nIsAEoWyz/xSPk9xWl6QuCxTQTPvsl+y/5mopgEOaOh73wq/H5iW9mDbrAH9yJ
2UOKkYNeh4mqfFqmZfkokt0N05DCvk69D/hGEUeSNxVCgC88wSwlBmgnjkYqb1NmPvyifkfn8/uf
31A3Z4QRtReI1blQ4EjWNL8N56JhC+5/ZbJVFdQ7z1yAL4TKmAVu72GJccAUyZtyrEfBKrVk6hjz
5QxbNMWgpgPcMNcE152qZIB1EBPLGMh6ESI7zH8KliEVKBX2CijP0jTH9zqfW4ZJJaJzlSbQQWEM
2z6vk2gnOjWZ05sPTxTU7I9ZHeDAueZk1dDqtHrLkE8M4cHBM2XCKMFzY4BXkUgRG7Gz6I0ioB1K
2ZQbPpeC1xqlsRXlZFL8lS06Wits0zzu6694cXuznMz+AgsUz23XFS7oZHlja6LXCsMWiwr1A+Y2
JFt4zqqrdKnS29Regqa7+Lz0rd+IkDdZJ2DFyQaFSMQZedKcZtQyN0lUKip9E3gjxK1XYLU5aryr
4EBK8WbydFQ4JNPS8Jh9OUPGSR8q52T17FUoudV1vJ0Su1hYzMS8MKX1+cdgjCuZ2Io/xgFpJap7
eBTqKdqFVvzyroYT55SgVhcGNXS4MBMeWOZtmkb3/H3yeG9k6oNMz5yRn5O3dWQXFSQnGl0JybwC
yOdh4Vd7QQ7sFDkwJovdTlF/vXXCMB5SZdyg6oY6GmVw22x2f6BXx8ISxZ/EqUNNC8awpyIGthQa
DLSWvUYBXF7wkF3a204SspOTYeaErJt1SRhejUfwVU264sNqPvr4D6qO2raph2Km3ajSAPFa1IEB
jYOzq2Omozsojgn2npaE90ehdJ3+ihjOFui05BE45IMh/VmqJ/myn2B8UZ9zSIrBwyDUyNz5DECU
jK6HR3OVWh2IFjsNeUmV8ZWXN98mrY4iqLVafpLhIt/3qIddwWuKKdCp7noQBhjJ8MFG27H5lLGg
wtq7MyDYotEClmyn871VSzqj9GjBTT3Bf4LdfcBU11+RdVkyqcZJ1/cbZ/4FLxqFHRVm0TuwyLCR
B/C1GoT45QweHzQtQebc0aYwJbl7Itslg4X/+iKDcKEzA9itHtuXnY96jFwmppoaF9wHGO8vE/nQ
wm3ndK8OA0yFVdQ/KHPcUdiIOCRvC7tUkbLUcdsEKwkHVGl7SoXJYeabLEjvGwB27pHrrGH6FrhA
7mmy0yVlZI2cME3QSMP+K9G6KvMeFy+lus4rJcxWu6YkvhS2r/+KID96kAX8kYDD6vdJQvO+QVcy
oN8ZOgFS2o+DWl1AunYxlk1B5sdsBeLuy8Fvjsr373mJZtvYpKRND58tvPfGtVdCuTaLo1Wpc/oI
maQjuqzXp1YJguoKf2+AqouHX3Iu4/v0AmHHljT3gHzLyLPdHOryyV4TAoAKpLn/oQTS9L+Gz+ez
lXKqpuiEPjmR76czmKCR1w0ueeymHSdC830NhZlEOTtHscdIuEZw6pmflog+WwV4kJbaiFldwwAP
QGKGLpKfgEeXD5uaCrwsRJrged544LmQAMdv+Zd87kUCr2yE4aN24Tr/fnPvMKUiaKz5dIlvweav
kXFz0LqVtMm8l6wMbenj7ZBCktpO5INyNHFPQOze4/ljuPk49u7qmhYD22jO7tYfRJ3oz0oGPn8r
/tfB7IYEl5W6qsPjHP1lynYNihldqAlIRuQrOTeH0qFg3JI/nqmq4vY+0EHk+G2R6Jc8mS/fNKWi
ag1UIse0NuUmLI332NHrZsD03A88/OYpBC5F8UsfjlhM7gPYfSw/NHroN6Ze7ZDMUbAGrZWXsIMh
qmkBSl2UHiIgHjLQDjJEzJIq75qfeL9YaE3hNJEoPWuB+6SQJo/Vc5ABYmEBtB6i/j4rBBXam8ef
P1IRm5cH5akfaFjqiIn1MmhmOauCAM2twSOEUWVvX9PxgyZYwV9L71LdvQpgghGZqjp2d6Hv3yIa
F/7yDRVG3g4yM/o8UPery27x/6QIRLWtEAx34XZ/gF4WAM+GReP1rMoOl3CSkiG4MA47TZDxZ/MW
7O8jtDN3B/aXJcjCF0neMZzzJIb9IHAQiEJO/qfN5xDHyt++GwAxyhhKDwCTOofDHr8lJQM6xR+0
8WzEPMGfPUTx4ojfT475LiYQ0SGrYSj1/PdiSPZ/KEOVhpi14SdfYkYw6OYWHyZJ2vuQAaZJ+33V
lq9FV3c3BLgrifY6LEb7v+5fatP+CVg8neOKjJw+zBzZrOehvTr/uyEdq06tNquMVGjda2JUHmKP
4Eaj4zEWidhREigjFKJKAHtj8P19vDsBXG/smbya+KkgvkOw0WuSzezrA8eqEhZcNwDSabP3jOfx
pdbHMuXUDTwf9EQFvapeoqDSnxFRha6aMgb2x+41g0BNrQ823OkDFTJ4zX9EXTxH0CkgrE10UovU
+aiInyNRj8u3T34RlDHL/FxJ1AQucXlGU9984qbT0KTo6KS+9pc4X/D+8MRAIFndIDDpjBacu5KP
u99s59RMvX6x6GOnktTVzm8oxa/TlSXeb5LAIszVBQ/EKNIHTcrXTnd7PZmcGzWIqYrEdYdj3QpN
U6WCfNMREg1GRCX32w9WnSeqQt47YwsKPN4W1jVkAuH9Z2aRKynIOhbbH4P2XasE4WYxWGi5CdNu
khFeyvqRNJlHutDNONyn7L8MR1GzF8COjNS5/oGKIlvoJBRtj9yzwiiotuvKShDfwsDs1vza5H43
Xvi+3yrfu6bofZKGxi9IPs7bwBiyE3XCg38djezhTy4VK3mO5dMWNtz8206p0tjeNxgeyOXeMd3d
M4JIAMZW93dDBQ9QuHtQRy3PZ58BISFtl72RrrRivZyFhe2IiaFOLgiTbYp/zlISFWlM1ifF0/17
UdMTEMrgxSHDnOnGuwm6vK7oorbBcfyo/SPzOBcQJ85wIjLimrvxnCQqWIpkDqlGgUh/x3HHMJqB
TPafUyicSwaRgXS52u3rFQVAx2kLzYbIaYbIW7hoy/i0iYlR3oEB8u9iNWPM8dc7bycq0b5jbU2m
5RECpXCyWTrl6rMjEzV0bhti1HG1sDdL+Twm8WvsTlDFbnDaFqgPhJzKwlX7xbd9B3GzHGn9k+aE
7OfRQ8f7hrjEasLm/6Ksq1NtudIp54ssyFUHVvJ1At9t11EHCPARdzK4L/g/bRuebliJCYs2TiPK
vkGiURwc33UclubrYO9zACeUvuGsZA8fTg9iWNyINDmanRdbGx8NEB3Gxt5yMVDmSTo3UeT3UVg1
A/jwh3CTbiYcDo2flRmRlHqu9mj2ezdFpvkDRMZwvwru2bQwfqILb97Skrh3nyM4YYxD6AIGKiqJ
mDSTezCOs3fJNy5M2mdJIRZkKW7Y9tB57sbKuw+v0jX9c65q5jedjNImSthJiyBrR9GDpgJiYaW4
2TTbriALkR3uj5VxnOmXneFp7r6DPVyqEVu1Iepztgd5nZ+5Mep7dBSwkj+dUZExHuotZc5GGGSi
eaadRF/fFxQ+wRUr+blQJgQTiP2Q4L5/oMEbdNMqqwRrM2+PC652EW+hEKohBTx6ZuzyD+51BfFb
v7kycHajRTN8JTCrIFg1szSSpG29EO8DnN1ZzN7FV7IXJtID49xWgwPUrotPET6arcSmvCGpXiGa
eKImBlQuq3vgV4J6gs5AEze2IvzHJ+60MCLra/z1nQXQQWeA08f/TE+B+dr30cZQ3M4OdmbA+HKB
YiRcRRHggxDNtkRz1UMOUCp9PlifSl1PiZH/t0VIuoyXulYRqnaan5LdpsaRho2ygIuOBkralAqH
G0+XbDYnPNel60UdIhw98Tm1lPEhvriKUmfMsuKQAqrcXV3j71M5Vsyn3SIveM8opcx6P5jldK4E
yx4QeJFOMoG7dd5aq6gLRclsoCUiUS8byx0Yz3E/Uc5MBV/etuCpOIfZ7pU+oekrVf2vDApvd2sz
4qldBd+lT7uuZ35yCA2hZf0XzsHjUVTPC3m8wXwa0AvHEn5F+nfh/fafx9eTvCHi1HSLyYPxyp1b
bhq9yMFyA/3Gm11U2QdH/F9lvzu9EcRCDwc51hZkUg1bTzXgpdEMdV2XAsefHIu3Jiy1+J47MrHX
1YcuWbARtyovn3BiDG4glvKf3st5KjGhLvz1XyEZGJYwcuJ/WMQlK54aOvaf+huu49KVQzOlCYVk
rmxh+VRTNIh4oRKqRLtXFihE6RPWmJCgTNpHJ4S+vgd/09n3HlGSB64fIr46p8jvwkma8fLY/4y5
nd2RvzT79n1+SCG7e/UO6XzPn+lL100SA2Xp5nPtF1zueOJ3Gx7LPA+zwR4Sx9AyQTNVF5C/Pq8M
g3/cMW7+CwEPuKjpDUANQk4Cj1rkc7Cg+q5Ea+lccDGPo5gRV3R+JzUwH78DY6hlNNNuAazt8t+C
N5ZgCMqpjo9tzGTgyOJ9UFsZ8b4fwXDDv3oCScUkdEUMT/GAUICcyMskGECLYA/u3hLjaZ8D8aeg
DakV/yz+fSqwzQGan9nu+ZuXaR1ZmT5hwGjhPbmc1XjIwqKcwgN/1glTBJ341QwvJPVmnhmNRYwP
jQertlQ+nJJFToHkUfQDDMWmA+8noTs2vzvVCrc07vWtTFe/9LoyE17Ir6XeEnYF6/4BVAtSoXrA
kfIEqlrui78X9DYtqtN8RJ1hj3GhCSxwE+hgvgNmoPDYtosSemw71ElVdcVbEvqCmQgnPjy3rSt4
RPVX7fMSeL3PT2s6MCf/TW2xcMNrV/fbSjeNrqcaD6q4chXmyMslQbw6cOKTrMh1zSRbgAngz3qy
IlKs8+bMVFfEHUowJA56qRIl8oi1aOgDgHQ4ypNmr0OlY6k+nzkcuTK7wWtMkEov9LNeyDKDDtNb
21d3ozzN9Ng7btENy1DSmUlMoNBjyMlRAYxnWxBOzo3eZAs/f5n4HW57+EQe0ToEdJawThIWUSEY
/RqYe/t6KW+yGDxntFDCd3StAkyFqQz7vee16R2wB/mGoAiZpM3SyBQtHQcAPOLHLNZfcuvjl6od
4D6241XhVQqNTMkVaphLUAQ5V5fBVomKx14KITqHmCeAdEcPUZLGphJigC4TE3FiXrLrMiO5cVPB
Obg1dogrtjCDNBOjcGE5ReVjHFWJ6r/Vgut4+wJLfBiJov5alY4mHGCFNf3ijqbPNeGz0qRk+hs+
3L4uDFFLa4qQHq9Wo9eAYo8p7ZSi3ofCJ1n86fF1OYU9KvBvHuWKD2pbjkdtOJTVMASMwDsv8Ysz
B2R4VrD7wqIb+e8pwVzKMAJJG/JhTq7gVxsTjaxNd3pq18z9Iy0T7y81TMifLMQreMUOKNtWund2
rJAWjMKNRBbNJR+ktxXpe00mcymZiLzWJkeIS1m3DzqeMM52s65qono/5GWq3hOfodqU17rtaYIl
+NNWrDbBeemcdS+JbSZlL5LI02fQm1UsVYb3XnNsMeoHp9TaK2Px1mU43uM2eJRmdq94Zo9Diz4U
AJzkcbwLDXdo8bK+yFckwEeBvP5L53VF5/zOiU7QX9KpsUq8k9wIFjDcVJiwrRKjvePqfjQJTnBF
MBIy+88wT/zf/0YnsfTf0wIxfUuW3na7od8eZkNnSHUu9bR2nsbg45YIBuj1eEe+GTmZAkyvjwMb
E9sxuvK75g7Z1NSkvD2zhR4A6Jl2olcg7KgBLC8JwMiwvPa4rUcjjGw7/6PD18RsTUUPT6TCe+/w
vUb8w+LcOEmh6BTmtArINqE7v1INm4LM0kZymq/FJLfHXUwxBW13CtXXaHg9gPfLQmTB0cu82vnF
c3KMIpxu9Tj3KSINOqUpDxk4dha7eEQ9WTPOFtKPVi37MyqR2n/pi/asaCUYsvDlmqgt4RChjyCt
BlyIvtb3+b4xUdwAV8bSckPFkXRgjM7TCYduxm+83WxFo/prUR1onZJ7gGi772ShNA0SMGBpSc7U
1YOfmf91ApUd8/HNHALHmIFsWb36rdsaUGzDARMraliOq8joTF2TjVsujaxFucJFxLLwM1WdYhXj
7BtITwFvP5uoHRwYqZZ/rv6wO649WOktgBNs/o43Mvx//i/rOa/ZvYDEbiJOIB/OxwClGhl2MsYH
rkwzh+vgl1m2YZtlxBcttBJPD+rnhGJkbZBcVk++SBI7alJESv53gI1YOQzDX4j8I5h2NVJyd+ja
0Q2v9KtqPJ0nCJVN+GufGiKJ6iQXxrZWjq7abasAlK8CG1BvYoJ/rG+GQW0Q42uKjCty4K01VP+L
dmz/KG9z2sZ9f6z9DnkibP6AeRl9U7B7ATQEVA8+AByn32QxBTFvEtB4BJ/yswEGoWup/N3lLDZV
BCG1zLIzCVlPqDJPOnnMa4x2vX8lwl5zGyeflj3/bnAOChmI9IodzbaFvFimk31S4jR5EZFyEWVX
o6fHspRTYxsdMU2P4mwVLKQiGeQ5+7+LsvWIgzi/mnY2K5v/EjpcBrMUaegyO6idJ0BmufjNIKgs
2SNed3b7Xk0rV0WUHD1nya8IGTgaBn4gbRf6gp3/bipy/Bu6T3wtzPCGwMkP3B580F4xgq34mTIe
WDuwOYDg/sVywzhuTCTbm/0nFnxErv/adeXc1rFNWAVBwHna+riCpWssVd8N4vRswHMJokEg7oEi
nuUe0Mbr/VJk8Fjp7KsiOMu+5HX8mkNNNeMuJsI94X0fSsuaBHwc5v7YB+dWbho1tv/SqYAgCobd
dqMn0ykPxiBTxyb4OBDK2LPwpvh0XUwxWy1gohbTpSNAMDygulcQExEW6oIQlVOvA5kbBkB5DNHV
I9dooIn0tErhBzHB/UC+3TnS1Dp0AHfuWwkHJ/t6YoPkvC+UDxbNivTb9byPZ9FKo4MNFzV13ocB
EwPg+5S0vqg4bTqFzcPXKOR8O3sbwhR0Bemq3vK03BrzG+s4Ua27LIU6Xa2+qWpYuwxt1EuVlta4
eJ+AtKb9gK7+VUAkj9v3smAaOXM7UwRBdnVEMYhDygG0IAfIAA3ojjwMD5fYhyg+E713/7bhRadV
xJO7ud8TdQQmQgfWaRyTWjH6ondww6QECqYDI3hWi7h/KZCtDO2UpdddVkPPwJad48Ulzm3NvBJJ
w4n4x8x/7ls1+RH4auG/dK5LQTGCZsfSR1LQzxw0pRPg0DU1456UiMDkBaTv59Oj+mIN1zmeV8se
PvHx89Qf0pTPS7/iJBSLndI/GByUernTLV1Qy4+/h3Dh+CmNPKGHrSltc75Tg+GkBbRzVoDGu1iq
ZwwpQHUbjaL/2S0EEAxpHRG5toheBKUXf2SXGO3PWf0JLigO5yY8asCvzbKCtMG1PEKqdaFmzBV/
u7KVjOXRzrIMthAShwjlwjbX73zOGjWIFNwzuzMSouZ7i/Hr/ePhDw4jq7TeJFJFqPsA2s4I1vWr
Ev+l7sE+2LCfXxa0brzremk7bRM0SPHwIrwKKSjIqbiX3V32Rv7FCmxguTBMWwK/7I5i0OQeliAb
rk/OvpP0BDBIoplolexTiuu6n/nfHNo4lf8g2FWa5zjuGVoDm0qjRBGLB81lrU2tMqgLhegYj3bJ
CS2DkUylz7azr9DylNNRdoP4iHCgNX3SYWxddCjeDrWZ2FhNIgzMIqS0o4JkLfFYNLxVkf9R9O6H
t5LWw/QxCApf9G3r5ODpoIuLaCd1401mYwfDhU1s8nEfrHpB/opVH/G5XUH1JQoeTAfxyFW9OuCb
0RkSpt6u8063YpBRvf3BwtKpe4YJc7SqygrkFp+BCv9XigL2x30xxZwVHF7223YlI6QAbagXYnF5
bSYfxWEC1OYahyFe8DuaxtG8dmTxffFBN9wisbmX03iGz60tZmeblzOdWaAQxctYerZ1zzIKhAC9
H4LrKL3s7MeVPlqHuHcTnFLlOkCzfFpNyD0t3lrF3EZCBfTHXyLpWqi8MEis1En21D9+ArvtGnRt
CQSH2BiiZy6nFRImbuSPmlYRfYtS4sL8DzsP4vrVSRNlGjOvMKZOdJ4jst/Uaiu8h54eLIMpbHp5
iCWQ5eOUENWBUdZPZiPEi0JqQsDmUYWlIA25ouWSy9YMhfDugvHTNM4baA9nH55/o12Q9ApRxmz8
27c6F5OoBZhGsFU1x9T3inQYbJTNHR5O3n8W/iVj/iPvlwSA5LMxa3YlD1aOdi0fu5hPd5ixKW/d
6TbqlH4HirAk2m28CXvchhcufigYKJz8+9lhAhPwVWzGsAUHJQAmZ9+kdWX3zhywBZSIw6Wz6aMY
258w1WKckrEljyu3RvoFDyaQFJuZbObLbLSDYmIyJMZeuBCGZCWdkPOwCwxy+49dGq0dJLcyGRZ4
peo+vtaNYB7VfdB0rXxa0dyhzyrlDhU5W5Udml3dj+nTNO/B2WzoXST1BCVGArCj39GlqNXgONz5
Ak5NlaV6dM9nN2z7WSlx5WoUARMB/5q5vALYFm7RkrBkT0yDe/96fYbX3Dl0ppOWDQz0wxJ5sIR4
L9pyoEfhbqxXo6LMDvX5aeEKb34cxCzM6LhL01NR8YOgOY/JckJaiaghw1drnP2LeCl91H+J7oF7
5CGVVFbiu1bw6/6ep9cb98KWNJPGUe4UiILOVvh8qFuTEPCfXIXNnRGTdVenwkM5mcegxMwvJr84
Z8pbpqgczf8KFliMHWXfhQqSDh5rokBhAAnKCVybu8NWLlGXURT7fhOPRsa85h8am/gu6bQZ63lT
DNLVdoh7h628n7DmEZXx2wfGdSC2nolHEnK8G246tdMVIja6wOiU7vgn4NhOEYUlcr+DwgYxxiP7
mK6qcBTKPlqlPH+JolcBDs2osNwgAVz7MmxoBubZmrnJ2sBdYmEsE3UUiMhSN+qz3CbGXvC8LlfU
ueuVVYrkV6slp8VE5mN0gnG3xpr8YsuCDdxCVV5+gQEg5WDIXuG69KBP2U4j4GE33K3qy1VLRka0
g7NlStY6ykGBVUP8YiuXw7smVETbl5zrGYxTWZQ6FrdI8HEMZzY96yZufrNVRs5uz25ZvvVeDoht
V7761TTKHaHIiN/EObbw0tF2z/+tfRnCu/buwxp27wadt6KuxPdTSmOK1bjvV7ueqeRX+QRCBY6Z
KdypENHqBBgTRgftbiYiga7y4YN7e7bMJS3uRez+jC+sV+4AftvzvwtSw1qybgyUTfco2E/y0zD/
LKPunCwuvzTHRMnf9AWrO9UEYTDRnBV6KtGtFd4oOcPpwoWTqun0MHSVRQPrY/09Q5yUUaUmIEHD
4zpKY+RFsRiSnqyMsh6BPaLcpHFhzvRgWU0qqS4Aoj3Z31CixpuWdFpjTlm6m2zGtJJ5WkUJW3Tj
gKZpJ+XhAXCNJSArdDs3cZH9+F+qagOanvkdqONQPEnjnAT1zx6fHACqFSRiDFqgBe+/BqajVGC7
Xw3De3Vez2IOZgeaB5e78VMMo+CetMBlVZyrpc7fmHLl/L/VCIdUNPiaOUwTggegMg5LksK8jS5n
8zGm6Tud+E+k+4gcmlXJJn1Lez+dp4zcgOnS1MMLGgIV+RwkHf3oZLzRxqtMxqEm0gto4B9UOQIw
sVHr0kYtzt5ZMQHc2ndHNyFL/oHR1vhVm63GkR0mup/dVTYo5/cPRW4XokRLtCGAL/uDnge1D4H4
6JLE99nrSU4HnN+giCIALjfsySFhNGPlFf8jv1BOIJKNGi4fVpLHIUbkc/VX2MDc+zO8GjzCGFsF
Mk4i4pcw0cXjrvgaCo0+JucDF+qLZDborhYOuwKsvmYH1fCsOARvzYRKGUTO9bqKm2z2k9/K0MqT
ruhlfVH1+sukDX3A4oneJCFf9xIfQCUg9UNlJ4wOk0L7YdRpK/mCwML1gexIM+gYd3vXwc9ruHtx
sUJ4jNMBzy/W4X76a/250SNuM0Z4HPv3S2cj0srE1OSsXkTzI+r6TObSo1a3bnv1zOTYgS4FF+Z5
1+0/GSntRE/34gG5SDhmOKpTPGFkcXSZ4MEa7DIqVfp1+k/cBJSNMD8L9SBPpQoNc57Xh4yLGOOq
/LtXE+34y+h0PaEGhFPxCXpTRDbIGHK/3debH7iErhIyA+rfoLT8r6KsUor6Kp7xROjEVEC5VhpF
/i4fDrWmWbRz+mgHuVjPA+XCFOROQe8eJ2y+YU4vjSMC7PikE29XB/t6TagFMVUlxIAEEgDl1rKk
n7r3RGRdOGdrMqS5AFP6BnUYvzKquhVL/U9D6uyyunUVdMW61j2W6tntjQ/fwYy0ssceyAvuUsZy
zBJyN5MzfCXv3whVGLHGIxt2Z6ReWnI4tfwu4KvC0XxfXC4eUff8N0vzEQLMfrmnk849dXMWTa/u
CQUhsZrPrfXfsg/Pdn9dLAQe682syAnIsbtR6JocvJAKdrZVIUEdJj03HaAOX7QSiwlt6IA6zhlx
mXg3ChPYXPgytbPNgYA/bQxWkVXChhRbOiHUPUmwlVKbHhEp1hdb5sGOkuFSOIQqGkxku3FrsWH4
A7xuwzfKidkx+EgD8+/qlV7NSp17VQHk7B3CsyLDnujMLoSsM6gXsmoThL3mCCYxq4m1Qy6duOcr
wys16rllVxi6g5WuBhbpWPqTMG2J7gZUflxoXRqgeZ1e/eiFPt4MDQGIcXwl0aX2TMs8LIuWdWMJ
p5biyDIM/TB6X1q5vwXRdZ0yj2+Rhon7YABHvbTxwMEXjRRWh9qYcIe5A7f8SyacliPtr04ClWFC
bPI4PTH8qv1h0QuFgSVoS/+l/Jt4O/y9qkj/d4qzQvvVPF5Kw12cpKzPv1OW8wJULvEgurh1ITCf
tRGOMp8CBs33D7OX/gxnyf9Cf/36xP03/iygzZCLiVS0utsuZrTQBpD+7sRf3jFheE+l74r0Qf/1
qKgo73THwpNpVOjptMseOPbWbRUGbbdz2tKD51zc/tVBmgpWdhgUp9Kf4XyxCZpm9xUfg5VMpgSo
V6e9waCzP8mByVntbiZYOspn1Hwvf48YN00ZUAXFr83aQvemG/2JdUY8G+nVOxSRoO+DgvUixUe7
p3q/nbggMi7muUrZ6Z7QuPY5RWe1Y8+8uW8epMH6iZLGSEoqDXZNj+ntDyIqrDaz07nZAM11uS4l
MrdK/9qaCcbgrQYeadwyzGPi9cP63s5SdM3dQfPUGdA72IN4ikn0VZCdOeE38HiGzWsmWXRof6hO
lc8E1MuhijGBSASdjQoEpwsg3wFhLCPK623pZ0hZoZ7Ezn5Reirunze+qzAZnFwyAcN+Qlv5WH2i
A0ewxa/nd1Hx8QBrmlm2i56sEUi1x/L6MKPbW7u9YJt3FBn3msoFU7zsK5PccIMX5f/pexuWjc1u
Jf5mKmzGBA/qW9bEe+Vf8O2SKAfzaYYJJM3aCkufrfNJYAZmIA93swOEmrwIp09Sesl9OE3UY6NY
HD6z/6asPaLmL3ZFEeGkoXL9kUM0Q1ebNY2c6uGiSQ+f4Ddp7X6Rh1YYnqE1719Midkpt9+BdWQu
1r+aZFOJd5sTMTaWpQAQtnyiMMvCFdEi4flJm075ExY7CVWU23gk8TwmtlJ2GrqOxBTMTOYqBDrT
Sw7pOo7zm6k2xfRIj02tN7E5JPMWmx1J0SXeWjLi7zf/HTb2nmgrA3xc39Orv6ssj4bS+pZ28FMz
tfa/sgVey1aFFXUgzFMyG/CR6DLBFfaChGGiKM2eKXa3QmXB/YjWC8Ubfn5M7+B2LyzgpoHMQeAF
I2BnFTEoqfjFxQj4N6NyVqnlHEbzKNnUwlIMjw3Ss83NWQ4HC7xhUXjHa1ASXGTpZPK3R6Qneaud
xrH14XP96znvUS6ppRvHThQIlvplNwJwOtdiBu64lPbXnjo4q54G5zWybYsKMpfoHPWKpaqXsZJN
An8nJCfthfkrw0qUmstJZ7PMDTJsoehGD/uVGZdYAbCE1YicPihEBlY3ckvDQBcyfkkeqUoy5L4O
binp7dWskThzhhhg1jsHSpSnRemCtTx++ktg1mQ8KNYOBPcWjrLmJohgFB+6kOOC5+sHz6+KRfhe
AiAULi97Mzh4dlRYXFa769r7JaIRuwx/hmSf3fyxdHjD0ppelHA/pIHsDvCr9aBxNc+hFZStPieM
N3pMXUgjxlVtb50pejvKu1uRIR5lh2y9ea/rZNo1Vckkn5seZaSMCvy+yu3Gk91i31swh1UQYDMe
Jx/9o/kzuDKM5gdiKlMvZHyfj9rkgy/RYnHEKBcG0vkXM+k0sRBmrpYJOm/3gu8aQvk3O9I9SusA
4w9hAQ4CcQgiQ5PnSrNY14vvJhwVDo96DfoY692XkJQrV8Gmve905iUJ5gZne/eJWcu7F+3nl6EA
/7r5wOTXWgGeax6uoJ1R2qnhgoAw0pJNN0USGuaWJlFZLN0tRqxX58TjYgx1Roi4SkLslo302jAs
JgBd3dtR2yssZLMrsygK6BJkILJziDHC6sf32v1vg9N2DsKxTYgkRM7Oet7LQc4f+azCBAN3Iynk
32sdas+GpxetWjG78J4bl9Zt0y1mkPU2NlfXL+CBf+QldMyqdQjRXjXhLgSgnqWV57yt41LiP5OO
igpxAHuHgiloXvzZurxTEk+EfNQ0K+gzqEmaDGY5t34p8/4K+Ut6l8OVur0e7k7lR0Ppar1G0gf/
LreqAHeicBM1CXZnYy0iEKM/7RAnEanYWsZqs2L7bRsJ2fT7On2fsKZBH773F9eQHgybJMqYbkyu
mq1F762wRfxB8wX7WYIXSqjW/MCL9XcEiMpu3foqEWnR4XQN2o+rXBqCaRjAXV4eAwAQQmkkjocS
fbnAQ9CGp2ciaLTuNyaChVdcsX0/fGvIlkKzDHBuN88sEdy0+Pkb6+Ra88Z1qdGTczV8Sz9xNho7
0WpqhV65PHJvN/UEIIv2sNtzliSJU2ZcCnweG9NxGndwEICvMtzvqEvp3rIFiZpo1s+FZHkfDIAK
5Ih8CZwT239rqSy4YNdHRTxUoXbqqIeoShFzoyCJBIGucqjlxTIT2nuZF5BfX0x+ye7SPKoeeEz2
+sFNj0Ykwo9zmPabLUPrVWuMreeahhqgEQP+mq+Oe/32KMsND2/q7pvRLuM1o6nBDYOmhFkKp7Pg
QvSKz7tZwldKX1+SvOGbTOPbCtAMwTmpYGD7/vb7tHQOi26LDTR7iJOZa8brgHb1oyD0PXfOiEmo
u1tGD/ShU51Mzt3+w878onGpLe6opttI+znkO9Md2wRCpFXP97yCbz7dToJTnOH0uSJSkY1jgmQV
e1VvMyI99uAlfomNkBePTJF9cqZq2nErX0azmKCCGtnExABmhNK7TvaQuPxpcRhVx+/ItCWvN1wx
qDxj6n9crAOZqisl8axOsSXubXk4ejWnW1BTy4JarrvjThjU24OeK5ccpDjFmUjRLvQ3hV1dhqIe
GrcBJ1iJ3jysXTDRnLX0cDigVMc2vtPBagShEe/y0zQFwp1K9BjJa3iOqepoxuktdOVsjeMxyI6Q
qjb9rmITVOuZT12oXISGX/O7bLxbC6fmEeF42PWF9KWTH8iLqNE5xdy9CYxzgWmwq1tVc/T/4cmg
O+wFTSqkxAfduwKNz9BLCi/YwurVFmHb5MR+By+tmyPdMtrNZeM81e4UA5PQMyRgw4lmKIh4vkw9
7TS/qF0Sd6vfRHmokp32WsIYZynGZ3lU5Yt2UfnWmWFaLdGh5MN7rDI2E7+VAsYtT8LOL8SfWaq0
MD27n8i9mNTpvSKNBHTaRtGmRpL1WE75OYisEZlmIkmzHG+yJA6kUCndNNCCGPnaAPxRgCYiHNBy
cUHwlPRPM+dlFQNg418en3ueWmgW3/8qU9T2/h2trcj8QclBCeLb+3LaXFzP4EumGNar6ALOupW5
MsJh4FF4KdiKfuQDBdx92iIUeMzFoe1RcvzX8luGnnykslTFNacAaAdMFeqHCbuT71Gdgg0L9TUI
tPEDOs9pwnG+MDQt+fW+3wjSEjrpurbHOFwtRNd+FNvfHY/p8gVG9lz2HDUuZ9re+gcTIl0tOdTA
5hlB86Ja9l5mbaNjOuzJ/ejnDmxgN3+Kba+u6Nus3VDMWVUwvQ0aqHRRgfRkYVBB5IodAsqujsgZ
3Ej38wdMbA15klc3ogn/txt0/VrLR3sXBil8y+r0euAOvrlaZ22SNeqXxUX2zxkIHpL9udL4dJfR
+41D4EikzvTNATWYo0hvdnf2KR9pt66sVbDfdBjE0+el365ToTA3rquYkiSKPV9WfyBaQp7iWNF+
sd4v9MMDWi1q9Sk+WUbKI9SuzHcYmCuA2LjqwyjFkRymxu9YLaGp2lrmmIyFYa5aJyZNXNQqQFvR
+ti3fOgWSWGcnP6Ui3BPw4a314XP4HNv8w00vpvp9mTAKeDdxtDfV85HSfZbsFleuc+mr5FfNqhi
7QV8jbUeFNOVyk5xMIXpZc4utENWgvOFqVLI2ZQjZBlw2vq6OO89aSZVJTKo+mWO0s1tP1LAdnSQ
ZpwUH1TeUorPl2VuB+xFyP6YRR1lcWh/SP+C4xOoBFE+K7uPd2+dOyBTQVqx6DiZE4O9RxwtyBN7
74e8TXw7bLm+Ya8CLfy2maNVV/6pSwKKgk5JJWzjGtGtAVt1OoHjs3B3rcyPnRVQVWsf5azxnS9t
koKV5i1P60HZhpn2T5YgVuH/OWjHqqkn54GkH5YIdPYUPnAWPYppEQ9BYIIiRqzddQewUs1K5KfX
QMOTt1G9jzrGiCT3IgjrrvYryvtYwAqfWi8WyL8n3b4rbwYCnoU+ThSemswWDAZGycaQkPn/xjdZ
IS6x8XeZVvdPck0W9nq6fJCis1bGf1GDwBpD8rzwAgXUMQ5C2InfWk2v3MV/j57sVaj+SIQJusdg
XQU6ODTmSEJbVSB2u57GYnxcRcxscxf3Eadxs4xdpPGtB2JA3GuZ3jCBQClEZPHarY/5h4juTtiv
MWZVKvgvn6/I0yV+aH3nkFO+lGKxPYWMp5Dada4s2dczUYbPcxEmIz+z+t0jDJh4NFaXaL6BvBS0
ITLU27eCOH91FqslqKDWWzln0TUZiI4bpjtAGiTu+qcJkCIrGdQJAFGktoRqg4t0DWnQuxxuNFCg
yDcO/1MawS3mj5LwIXmQLZe+XdhIVOdyGdlLsZyx2XUnHj2vH1X/X346jJeJVKTekAxS3mbJ7PfL
1q4VYUOMzD8KD8ttlHdNqQdapvsYN/9D2kT7PsUImTbPNx5ps/cYCnoVv57oxOTU9mWMhQBvpz5k
uKpBHN+9B8v5mTakKpaEqDgLJ9XzaJM65QAsOpBWhdq+XNmflDuKds/oVH56gXUyf3E3N++aYeYI
Z7CnEgyrBtX2q1ZW/PDb3X56BUOhGJGud78KlC2uLrdTgT6dvh+GE+CtqM3v3s0byFGXHmGMGt/T
y2VdGzQa3jxozV/CbJmVFERLgrD5X3Aj1BDmQ6FSZOAETk6q8zjL3wT60KLVkNVRMruqpJVCn//d
EMKTm4TeRkO2FaFk6Lxs71Ix9+bkR5n2j43k8JAtE3MigXFiL3z0xF6djjeJ4gilzjqyTPkfoA4j
RzF7VkdFu9T/h9gpjIm9KQmn1G/WVPUKjym0R2CPPJLWVdB/U+ggQA0Puzibz8MWRgqT+O/uU+xK
k/l7+2bLeEEZ+LCtS4jVzVVgGhpOxpvF9F3WINK3wfCbIPHbRuKNoQsAD/wzxm4CuVa1WOv40Ie7
1/DMjALALCcQdGaoVc9aQHna9HdW603rrRSK0zhochiC4tQmvHP+LrUKf1vEsSaDmabFYBLGSXl+
ha1z1iKGY7Zea2HkjhItE8MV5VCYHXal/erjYj/eSfSseZaFDOIptPA7JBUadq22o7GAa6ZmzHjn
UGOUFEKVGGKR3JOIV8oRNNKqu0v2bvXfqMYoz15+TviKKZAqWHUcMLKBrL15CiT+d5Bqj2FFmCte
USHys/wZW5rfCFZ4SO8YjRZPq6+Zc+w/3qU4B3YBSxvtjebpcXP82EWniorxPzKVdsoq6ExXivSU
pVaFRgi9ssJcRl0q293QkN5zE7Xp9BT8Cp8FqTQezh8f8FcYivAT6n+Ou/sKbmYS2cjdQIrZMm7N
8eO3vCu+1kl1fbp62F1LNQyvpmXg4l7wsXbCvXlmigRmzmh3qQFEesnSnuate2jSZWArTv54HnkA
UUHN+ogt4uXVA2O9627pH2aHV+TOC//8yEUrYa6zXUd3m1HpUiEMZwLfEq5w6sV0HU/ZwR+RAfdl
fSObGqgwWKpn5GiGWyVyMvN/U9AOT6Laz3sp3AO3wqT1Tt1zGLb5ssEjn++hS/mTPc1ND79zZnhK
gZIYemocWyU9nNlJklvOHmo+h0hIQLJx6g7zXIPFyGb3zgKdyCXfHmOmwDn2cSmsYWLWgK+cm6u3
M3eFpiY12BKmfsNfGryqhYMxvLRP8lBh/VZBTR9E+7hB0g+rPdmBiG10Ad2gbRrbuZMLG1PLVZvO
sv0yJqrufymjBtBUcEJpZ215U3JRrg3o+01sr1adKp4UfS7JPRIXl2ZvImPErbt7Iu9TrHudIonv
J0aGTahcs6BKY//fK7SvQg8mcuXP//j+HJF56hOp/zv5oBnRdPx6gykDdALftRYZ87wGHDhI9caO
tje2Lu7b7mRzJJABFVYj5KAr5ZegdqBl+eHuFSBlrsOXMj+a0piCAfiMQGJYkdCf/T0hubTs87hf
5h9j+G+vJZzbH4bk1t7V/HOPrNwb2vIN5oKSGGSQvrICaz7bBDRGQXnKhSqY8CHKIieSMhCKWmJ1
RoHCq5iCWCyNgCEbEf0TufCx0bqXTqjYJJypzZZIQ2SrNJNRSO9iuA1UCoqBJVv06XCRKDOzACw4
3juVceK6IMMOZlTUpGvU3ivSvXfeCfLSRMs5ACjXxmVoriK+EplEJ0IYYAs2EPSQ7gpGrA+yriqv
iKTGnaUsxjh35Qp1I+7H+wlydg8WhnDh0Vk=
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
