//
// Verilog Module mopshub_lib.intialize_elinkCore
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:03:11 04/08/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
//creates an internal reset pulse for initialization/reset
module intialize_elinkCore
( 
   input   wire    rst,       // 
   input   wire    clk,    
   output  wire   fifo_flush_signal,
   output  wire   rst_signal
);
reg [5:0] cnt_init = 6'b0;
reg fifo_flush_r, rst_r;

assign fifo_flush_signal = fifo_flush_r;
assign rst_signal = rst_r;
always@(posedge clk)
  begin
  if (rst)
    begin
      cnt_init        <= 6'b0;
      rst_r           <= 1;
      fifo_flush_r    <= 1;     
    end
  else
    begin
    if(cnt_init < 6'b010000)
    begin
      cnt_init        <= cnt_init +1;
      rst_r           <= 1;
      fifo_flush_r    <= 1;     
    end
    if(cnt_init >= 6'b010000 && cnt_init < 6'b111111) //first release the flush signal
    begin
      cnt_init        <= cnt_init +1;
      rst_r           <= 1;
      fifo_flush_r    <= 0;     
    end
    if(cnt_init == 6'b111111)//remain in this state until reset by top
    begin
      cnt_init        <= cnt_init;
      rst_r           <= 0;
      fifo_flush_r    <= 0;     
    end
    else
    begin
      cnt_init        <= 6'b0;
      rst_r           <= 1;
      fifo_flush_r    <= 1;      
    end           
    end
  end
endmodule
