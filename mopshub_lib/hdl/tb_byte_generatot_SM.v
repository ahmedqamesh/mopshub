//
// Verilog Module mopshub_lib.tb_byte_generatot_SM
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:55:09 03/30/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module tb_byte_generator_SM ;
  reg clk;            // write FIFO clk
  reg rst;            // should be used through VIO
  reg rd_en;               // dbg
  reg [17:0] GEN_EDATA_18bit;
  wire [10:0] byte_out;
  wire  byte_rdy;
  
  
  byte_generator_SM byte_MUT(
  .clk(clk),
  .rst(rst),
  .rd_en(rd_en),
  .byte0_code(2'b0),
  .byte1_code(2'b0),
  .GEN_EDATA_18bit(GEN_EDATA_18bit),
  .byte_out(byte_out),
  .byte_rdy(byte_rdy)
  );    
    initial begin 
    clk=0; 
    forever #1 clk=~clk; 
  end 
  
  
  initial 
  begin 
    rst= 1;
    rd_en= 0;
    GEN_EDATA_18bit = 18'b0;
    #5;
    rst = 0;
    GEN_EDATA_18bit = {2'b00,16'hDEAD};
    rd_en = 1;
    #5;
    rd_en = 0;
    #10;
    GEN_EDATA_18bit = {2'b00,16'hBEEF};
    
  end

  always@(posedge byte_rdy)
    begin
      rd_en= 1;
      #1;
      rd_en= 0;
    end
endmodule
  