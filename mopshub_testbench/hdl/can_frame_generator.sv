`resetall
`timescale 1ns/10ps
`include "canmsgpack.sv" 
module can_frame_generator(
  input wire rst,
  //input wire frame_en,
  input wire clk,
  input wire  [75:0] payload,
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
  CAN_Message_MOPS canmsgadc        = new;
  always@(customcanid,data,payload) 
  begin
    //canmsgcustom.msgcustom(.id(customcanid), .rtr(1'b0), .dlcval(4'h8),.datain(data));
    canmsgadc.radc(.ch(0), .id(customcanid)); 
    size = canmsgcustom.canframe.size(); 
  end
  
always@(posedge clk or negedge rst)
  begin
    if(!rst)
      begin         
        txgenreg <= 1'b1;
      end 
    else
      begin
      if (i < size)
        begin
          i <= i + 1 ;
         txgenreg <= canmsgcustom.canframe[i];
        end
      else
        txgenreg <= 1'b1;
      end
  end

endmodule
