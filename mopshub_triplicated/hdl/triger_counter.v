//
// Verilog Module mopshub_lib.triger_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:37:30 04/06/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

//`resetall
//`timescale 1ns/10ps

module triger_counter (
  input wire rst,
  input wire clk,
  output wire request_trig
  );
  
localparam    [2:0]  cycles_cnt = 3'b100;
reg   [2:0] request_cycle_cnt;
initial request_cycle_cnt = 3'b000;

//Voter
//tmrg triplicate request_cycle_cnt
wire [2:0] request_cycle_cntV = request_cycle_cnt; 
//Voter

  // Counter over the Clock signal
  always @(posedge clk)
  begin
    if (!rst) request_cycle_cnt <= 3'b0;
    else begin
      if  (request_trig == 1) request_cycle_cnt <= 3'b0;
      else request_cycle_cnt <= (request_cycle_cntV + 1'b1);
    end
  end
  //  request cycle 5 CLKs
  assign request_trig = (request_cycle_cntV == cycles_cnt) ? 1 : 0; 
  
endmodule