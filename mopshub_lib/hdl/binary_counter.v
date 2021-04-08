//
// Verilog Module mopshub_lib.binary_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 10:52:06 04/08/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

//==============================================================

//b_counter.v; 4 bit asynchronous binary up counter

//============
`resetall
`timescale 1ns/10ps
module binary_counter#(
  parameter ADDRESS_WIDTH=11 //Counter width
  )(c_out,c_rst,c_clk,en);
  output [ADDRESS_WIDTH-1:0] c_out;
  reg [ADDRESS_WIDTH-1:0] c_out;
  input c_rst,c_clk,en;
  
  always @(posedge c_clk or posedge c_rst) 
  if (c_rst)
  c_out <= 0;
  else if(en)  
  c_out <= c_out + 1;

// ### Please start your Verilog code here ### 

endmodule
