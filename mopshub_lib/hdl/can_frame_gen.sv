//
// Verilog Module mopshub_lib.can_frame_gen
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:55:02 06/23/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//
`resetall
`timescale 1ns/10ps
`include "canmsgpack.sv" 
module can_frame_gen#(
  parameter DATA_WIDTH = 76)
  (
  input wire rst,
  input wire clk,
  input wire  [DATA_WIDTH-1:0] payload,
  output wire txgen
  );
  logic txgenreg = 1'b1;        //CAN message tx bit  
  int size = 0; 
  int i = 0;
  
  wire [63:0]data;                // 8 bytes of data to be sent 
  wire [10:0]customcanid;          // Custom CAN id from tbSM
  assign txgen = txgenreg;
  assign data = payload[63:0];
  assign customcanid = payload[74:64];
  //Variables to hold different type of MOPS specific message
  CAN_Message_MOPS canmsgcustom     = new;
  always@(payload) 
  begin
    canmsgcustom.msgcustom(.id(customcanid), .rtr(1'b0), .dlcval(4'h8),.datain(data)); 
    size = canmsgcustom.canframe.size(); 
  end
  always@(posedge clk or negedge rst)
  if(!rst)
  begin         
    txgenreg <= 1'b1;
  end 
  else
  begin
    if(payload) 
    if (i < size)
    begin 
      i <= i + 1 ;
      txgenreg <= canmsgcustom.canframe[i];
    end
    else
    begin
      txgenreg <= 1'b1;
    end
    else 
    begin
      txgenreg <= 1'b1;
      i<= 0;
    end     
  end 
endmodule
