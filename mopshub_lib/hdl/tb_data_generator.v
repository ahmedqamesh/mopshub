//
// Verilog Module mopshub_lib.tb_data_generator
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 21:15:56 03/24/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module tb_data_generator ;
  reg clk_usr;            // write FIFO clk
  reg rst;            // should be used through VIO
  reg loop_en; 
  wire done;               // dbg
  wire [15:0] dout;
  wire wr_en;
  wire [1:0] delimeter;
  
  
  
  // Instances 
  data_gen MUT(
  .clk_usr(clk_usr),
  .rst(rst),
  .loop_en(loop_en),
  .done(done),
  .tx_fifo_pfull(tx_fifo_pfull),
  .dout(dout),
  .delimeter(delimeter),
  .wr_en(wr_en));   
  
  initial begin 
    clk_usr=0; 
    forever #1 clk_usr=~clk_usr; 
  end 
  
  initial 
  begin 
    enable= 0;
    loop_en= 0;
    tx_fifo_pfull=0;
    #5;
    enable = !enable;
    loop_en = 1;
  end
endmodule
