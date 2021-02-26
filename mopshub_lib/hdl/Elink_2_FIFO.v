//
// Verilog Module mopshub_lib.Elink_2_FIFO
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:30:05 02/22/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module Elink_to_FIFO #(
   // synopsys template
   parameter OutputDataRate = 80,    // 80 / 160 / 320 MHz
   parameter elinkEncoding  = "01"   //01-8b10b encoding
)
( 
   input   wire           clk_40, 
   input   wire           clk_80, 
   input   wire           clk_160, 
   input   wire           rst, 
   input   wire           DATA1bitIN,  // 1-bit elink tx, must be connected to the output differential pin pair of FPGA
   input   wire           efifoRclk, 
   input   wire           efifoRe, 
   input   wire           fifo_flush, 
   output  wire           efifoFull,   //  tx fifo prog full
   output  wire           efifoEmpty,  //  tx fifo prog full
   output  wire    [9:0]  efifoDout, 
   input   wire    [2:0]  elink2bit    // 2 bits is the data rate selected at clk80, can interface 2-bit of GBT frame
);

// ### Please start your Verilog code here ###
// Internal Declarations
endmodule
