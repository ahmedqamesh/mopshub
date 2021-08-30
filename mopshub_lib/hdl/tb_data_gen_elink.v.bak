//
// Verilog Module mopshub_lib.tb_data_gen_elink
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 19:12:09 06/21/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_data_gen_elink ;
  reg clk;            // write FIFO clk
  reg rst = 1'b0;            // should be used through VIO
  reg loop_en; 
  reg tx_fifo_pfull;  // pfull from Tx FIFO
  wire [15:0] dout;
  wire wr_en;
  wire done;               // dbg
  wire [1:0] delimeter;
   //Instances 
  data_gen_elink GEN_B(
  .clk(clk),
  .rst(rst),
  .loop_en(loop_en),
  .tx_fifo_pfull(1'b0),
  .dout(dout),
  .delimeter(delimeter),
  .done(done),
  .wr_en(wr_en));   
  
  initial begin 
    clk=0; 
    forever #1 clk=~clk; 
  end 
  initial 
  begin 
    loop_en= 0;
    tx_fifo_pfull=0;
    #5;
    rst = !rst;
    loop_en = 1;
  end
endmodule
