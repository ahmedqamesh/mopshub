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
module select_io_ddr_emci(  
  input   wire           clk_rx, 
  input   wire           clk_tx,  
  input   wire           clk, 
  input   wire           reset, 
  input   wire           rx_elink_n, 
  input   wire           rx_elink_p, 
  output  wire    [1:0]  rx_elink2bit, 
  input   wire    [1:0]  tx_elink2bit,
  output  wire           tx_elink_oser_p,
  output  wire           tx_elink_oser_n
  );
  wire           rx_elink1bit;
  wire           tx_elink1bit_oser;
  wire  [3:0]    tx_elink2bit_width8;
assign tx_elink2bit_width8 = {tx_elink2bit[1],//since sys clock is 40 and 320/40 =8 -->> I choose width 8
                              tx_elink2bit[1],
                              tx_elink2bit[1],
                              tx_elink2bit[1],
                              tx_elink2bit[0],
                              tx_elink2bit[0],
                              tx_elink2bit[0],
                              tx_elink2bit[0]};

   // IDDRE1: Dedicated Double Data Rate (DDR) Input Register
   //         Kintex UltraScale+
   // Xilinx HDL Language Template, version 2020.1
   
   IDDRE1 #(
      .DDR_CLK_EDGE("SAME_EDGE"), // IDDRE1 mode (OPPOSITE_EDGE, SAME_EDGE, SAME_EDGE_PIPELINED)
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

   // OSERDESE3: Output SERial/DESerializer
   //            Kintex UltraScale+
   // Xilinx HDL Language Template, version 2020.1
   //define the output tx Signal from 
  OSERDESE3 #(
  .DATA_WIDTH(8),                 // Parallel Data Width (4-8)
  .INIT(1'b0),                    // Initialization value of the OSERDES flip-flops
  .IS_CLKDIV_INVERTED(1'b0),      // Optional inversion for CLKDIV
  .IS_CLK_INVERTED(1'b0),         // Optional inversion for CLK
  .IS_RST_INVERTED(1'b0),         // Optional inversion for RST
  .SIM_DEVICE("ULTRASCALE_PLUS")  // Set the device version for simulation functionality (ULTRASCALE,
  // ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1, ULTRASCALE_PLUS_ES2)
  )
  OSERDESE3_inst (
  .OQ(tx_elink1bit_oser),         // 1-bit output: Serial Output Data
  .T_OUT(),   // 1-bit output: 3-state control output to IOB
  .CLK(clk_tx),       // 1-bit input: High-speed clock
  .CLKDIV(clk),        // 1-bit input: Divided Clock
  .D(tx_elink2bit_width8),           // 8-bit input: Parallel Data Input
  .RST(reset),       // 1-bit input: Asynchronous Reset
  .T(1'b0)            // 1-bit input: Tristate input from fabric
  );
  
  


  OBUFDS edout_buf_oser(
  .I (tx_elink1bit_oser),
  .O (tx_elink_oser_p),
  .OB(tx_elink_oser_n)
  );
  

  
  //edin buffer [Differential Input Buffer Primitives]
  IBUFDS edin_buf (
  .I (rx_elink_p),
  .IB(rx_elink_n),
  .O (rx_elink1bit)
  );
  
  				
endmodule
