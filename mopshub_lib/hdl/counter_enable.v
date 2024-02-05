//
// Verilog Module mopshub_lib.triger_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:37:30 04/06/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module counter_enable (
  input wire rst,
  input wire clk,
  input wire request_trig,
  output wire [7:0] send_count
  );

reg   [7:0] send_count_reg;
initial send_count_reg = 8'd0;


  always @(posedge clk)
    if (!rst) send_count_reg <= 8'b0;
    else if  (request_trig == 1)     
    begin 
      send_count_reg <= send_count_reg + 1'b1;
    end
  assign send_count = send_count_reg ;
endmodule
