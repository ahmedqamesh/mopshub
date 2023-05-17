//
// Verilog Module SEU_Test_lib.seu_shift_reg
//
// Created:
//          by - lehmann.edagrp (chipdev2.physik.uni-wuppertal.de)
//          at - 21:10:57 01/23/17
//
// using Mentor Graphics HDL Designer(TM) 2015.1b (Build 4)
//

//`resetall
`timescale 1ns/10ps
module seu_shift_reg_tmr
(
  input wire clk,
  input wire data_in,   // vote
  input wire mode,      // vote
  output wire data_out  // vote
);

// tmrg default triplicate

// ### Please start your Verilog code here ### 
parameter LENGTH = 50;

reg  [LENGTH-1:0] shiftreg;
wire [LENGTH-1:0] shiftregVoted = shiftreg;
wire data_inVoted = data_in;
wire modeVoted = mode;

always @(posedge clk)
begin
  if (modeVoted) // shift register mode
    shiftreg <= {shiftregVoted[LENGTH-2:0], data_inVoted};
  else
    shiftreg <= shiftregVoted;
end

assign data_out = shiftregVoted[LENGTH-1];

endmodule
