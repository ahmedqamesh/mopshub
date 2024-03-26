// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.2 (lin64) Build 3064766 Wed Nov 18 09:12:47 MST 2020
// Date        : Tue Mar 26 12:55:13 2024
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
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
Ft4qf4PYEo33iZkAAvH7IpZ2xemOooqNXxk=
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
