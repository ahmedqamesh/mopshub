//
// Verilog Module mopshub_lib.seu_counter
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 15:56:47 06/16/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
(* DONT_TOUCH = "1" *)  module seu_counter (
  input wire rst,
  input wire clk,
  input wire status_uncorrectable, 
  output wire [4:0]out_data,
  output wire [7:0]out_data_uart,
  output wire request_trig 
  );

reg   [4:0]  cycles_cnt;
reg   [4:0] request_cycle_cnt;
initial cycles_cnt = 5'd31;
initial request_cycle_cnt = 5'b000;
assign out_data_uart = {3'b0,out_data};

 // Counter over the Clock signal
 always @(posedge clk)
  begin
    if (!rst) request_cycle_cnt <= 3'b0;
    else
    begin
      if  (request_trig == 1) request_cycle_cnt <= 3'b0;
      else if (status_uncorrectable ==1) request_cycle_cnt <= 3'b0;
      else request_cycle_cnt <= request_cycle_cnt + 1'b1;
    end
  end
  //  request cycle 5 CLKs
  assign request_trig = (request_cycle_cnt == cycles_cnt) ? 1:0; 
assign out_data = request_cycle_cnt;  
endmodule
