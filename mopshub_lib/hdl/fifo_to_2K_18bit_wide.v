//
// Verilog Module mopshub_lib.fifo_to_2K_18bit_wide
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:32:47 03/02/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

    
//==============================================================

//b_counter.v; 4 bit asynchronous binary up counter

//==============================================================

module b_counter(c_out,c_rst,c_clk,en);     
  parameter c_width=11; //counter width    
  output [c_width-1:0] c_out; reg [c_width-1:0] c_out;   
  input c_rst,c_clk,en;
  always @(posedge c_clk or posedge c_rst) 
  if (c_rst)
  c_out <= 0;
  else if(en)  
  c_out <= c_out + 1;
endmodule

