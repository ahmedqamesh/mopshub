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
module triger_counter #(
  parameter cycles_cnt = 3'b101,
  parameter req_size = 3'b011)
  (
  input wire rst,
  input wire bitCLK,
  output wire request_trig
  );
  
  
  reg   [req_size-1:0] request_cycle_cnt = 0;
  
  
  // Counter over the Clock signal
  always @(posedge bitCLK)
  begin
    if (rst ==1)
    request_cycle_cnt <= 3'b0;
    else 
    begin
      if  (request_trig == 1)
      request_cycle_cnt <= 3'b0;
      else
      request_cycle_cnt <= request_cycle_cnt + 1'b1;
    end
  end
  // HDL Embedded Text Block 2 Trig_sig
  //  request cycle 5 CLKs
  assign request_trig = (request_cycle_cnt == cycles_cnt) ? 1:0;  //cycle 5 bitCLKs]
  
endmodule