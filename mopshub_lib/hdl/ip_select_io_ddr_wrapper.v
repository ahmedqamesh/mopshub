//
// Verilog Module mopshub_lib.select_io_ddr_emci
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:11:21 03/16/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module ip_select_io_ddr_wrapper(  
  input   wire           clk_rx, 
  input   wire           clk_tx, 
  input   wire           reset, 
  input   wire           rx_elink_n, 
  input   wire           rx_elink_p, 
  output  wire    [1:0]  rx_elink2bit, 
  input   wire    [1:0]  tx_elink2bit,
  output   wire          tx_elink_n, 
  output   wire          tx_elink_p 
  
  );
  wire           rx_elink1bit;
  wire           tx_elink1bit;

   // IDDRE1: Dedicated Double Data Rate (DDR) Input Register
   //         Kintex UltraScale+
   // Xilinx HDL Language Template, version 2020.1
   
   IDDRE1 #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), // IDDRE1 mode (OPPOSITE_EDGE, SAME_EDGE, SAME_EDGE_PIPELINED)
      .IS_CB_INVERTED(1'b1),          // Optional inversion for CB
      .IS_C_INVERTED(1'b0)            // Optional inversion for C
   )
   IDDRE1_inst (
      .Q1(rx_elink2bit[0]), // 1-bit output: Registered parallel output 1
      .Q2(rx_elink2bit[1]), // 1-bit output: Registered parallel output 2
      .C(clk_rx),   // 1-bit input: High-speed clock
      .CB(clk_rx), // 1-bit input: Inversion of High-speed clock C
      .D(rx_elink1bit),   // 1-bit input: Serial Data Input
      .R(reset)    // 1-bit input: Active-High Async Reset
   );

  
   ODDRE1 #(
      .IS_C_INVERTED(1'b0),           // Optional inversion for C
      .IS_D1_INVERTED(1'b0),          // Unsupported, do not use
      .IS_D2_INVERTED(1'b0),          // Unsupported, do not use
      .SIM_DEVICE("ULTRASCALE_PLUS"), // Set the device version for simulation functionality (ULTRASCALE,
                                      // ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1, ULTRASCALE_PLUS_ES2)
      .SRVAL(1'b0)                    // Initializes the ODDRE1 Flip-Flops to the specified value (1'b0, 1'b1)
   )
   ODDRE1_inst (
      .Q(tx_elink1bit),   // 1-bit output: Data output to IOB
      .C(clk_tx),   // 1-bit input: High-speed clock input
      .D1(tx_elink2bit[0]), // 1-bit input: Parallel data input 1
      .D2(tx_elink2bit[1]), // 1-bit input: Parallel data input 2
      .SR(reset)  // 1-bit input: Active-High Async Reset
   );
   
   
   

  OBUFDS edout_buf(
  .I (tx_elink1bit),
  .O (tx_elink_p),
  .OB(tx_elink_n)
  );

  //edin buffer [Differential Input Buffer Primitives]
  IBUFDS edin_buf (
  .I (rx_elink_p),
  .IB(rx_elink_n),
  .O (rx_elink1bit)
  );
  
  				
endmodule
