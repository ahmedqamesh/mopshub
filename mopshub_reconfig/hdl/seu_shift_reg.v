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
module seu_shift_reg 
(
  input wire clk,
  input wire data_in,
  input wire mode,
  output wire data_out
);


// ### Please start your Verilog code here ### 
parameter LENGTH = 50;

reg [LENGTH-1:0] shiftreg;

always @(posedge clk)
begin
  if (mode) // shift register mode
  begin
    shiftreg <= {shiftreg[LENGTH-2:0],data_in};
  end
end

assign data_out = shiftreg[LENGTH-1];

endmodule
