//
// Verilog Module mopshub_lib.tb_fifoTXelink_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:58:06 03/02/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_fifoTXelink_wrap ;
  wire [10-1:0]dout;
  wire doutRdy;
  wire prog_full, full,empty;
  
  reg [17:0] din;
  reg rd_en, wr_en, rd_clk, wr_clk;
  reg rst, fifoFLUSH;
    
  fifoTXelink_wrap TXelink_wrap(.din(din),
                                .wr_en(wr_en),
                                .wr_clk(wr_clk),
                                .full(full),
                                .empty(empty),
                                .prog_full(prog_full),
                                .dout(dout),
                                .doutRdy(doutRdy),
                                .rd_en(rd_en),
                                .rd_clk(rd_clk),
                                .rst(rst),
                                .fifoFLUSH(fifoFLUSH));
  initial begin 
    #10 rd_clk=0; 
    forever #10 rd_clk=~rd_clk; 
  end
  
  initial begin 
    #5 wr_clk=0; 
    forever #50 wr_clk=~wr_clk; 
  end 
  
endmodule
