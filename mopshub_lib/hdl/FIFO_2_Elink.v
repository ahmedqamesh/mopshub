//
// Verilog Module mopshub_lib.fifoToElink
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:29:40 02/22/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module FIFO_to_Elink #(
   parameter OutputDataRate = 80,
   parameter elinkEncoding  = "01"   //01-8b10b encoding
)
( 
   input   wire            efifoWclk, 
   input   wire            clk_40, 
   input   wire            clk_80, 
   input   wire            clk_160, 
   input   wire            rst, 
   input   wire            efifoDin, 
   input   wire    [17:0]  efifoWe, 
   input   wire            fifo_flush, 
   output  wire            efifoPfull,   //  tx fifo prog full
   output  wire            DATA1bitOUT,  // 1-bit elink tx, must be connected to the output differential pin pair of FPGA 
   output  wire    [2:0]   elink2bit     // 2 bits is the data rate selected at clk80, can interface 2-bit of GBT frame
);

// Internal Declarations

                              
// ### Please start your Verilog code here ###

endmodule
