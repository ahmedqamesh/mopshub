//
// Verilog Module mopshub_lib.serializer_readout
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 13:12:41 11/18/24
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module serializer_readout(  
  input   wire           clk_rx, 
  input   wire           clk_tx, 
  input   wire           clk40, 
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

    // Instantiate the VHDL serializer_rx_nitz module
    serializer_rx_nitz serializer_rx0 (
        .clk80(clk_rx),              // Connect 80 MHz clock
        .clk40(clk40),              // Connect 40 MHz clock
        .reset(reset),              // Connect reset signal
        .DATA1bitIN(rx_elink1bit),  // Connect 1-bit serial data input
        .DATA2bitIN(rx_elink2bit)   // Connect 2-bit parallel data output
    );

    serializer_tx_nitz serializer_tx0 (
        .clk80(clk_tx),              // Connect 80 MHz clock
        .reset(reset),              // Connect reset signal
        .DATA1bitOUT(tx_elink1bit),  // Connect 1-bit serial data input
        .DATA2bitOUT(tx_elink2bit)   // Connect 2-bit parallel data output
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
