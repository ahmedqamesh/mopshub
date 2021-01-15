//
// Verilog Module mopshub_lib.ring_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:07:30 01/13/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module node_readdata_counter (
      input clock,
      input reset,
      output [31:0] readdata_counter
    );
 
  reg[31:0] readdata_counter_reg;
  assign readdata_counter = readdata_counter_reg;
  
    always @(posedge clock)
      if (reset)
        readdata_counter_reg = 31'h1;
 
      else
        begin
        readdata_counter_reg <=  readdata_counter_reg<<1; // Notice the blocking assignment
        readdata_counter_reg[0]<=readdata_counter_reg[31];
        end
 
    
 
  endmodule

