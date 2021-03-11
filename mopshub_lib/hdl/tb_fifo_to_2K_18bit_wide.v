//
// Verilog Module mopshub_lib.tb_fifo_to_2K_18bit_wide
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:52:37 03/01/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_fifo_to_2K_18bit_wide ;
  
  parameter DATA_WIDTH=18;
  parameter ADDRESS_WIDTH = 11;
  
  wire [DATA_WIDTH-1:0] dout;
  wire almost_full,full,empty;
  wire prog_full;
  wire [ADDRESS_WIDTH-1:0] r_ptr,w_ptr,ptr_diff ;
  
  reg [DATA_WIDTH-1:0] din;
  reg rd_en,wr_en,rd_clk,wr_clk;
  reg rst;
  
 assign r_ptr=fifo2K_18bit_wide.r_ptr;
 assign w_ptr=fifo2K_18bit_wide.w_ptr;
 assign ptr_diff=fifo2K_18bit_wide.ptr_diff;
 assign r_next_en=fifo2K_18bit_wide.r_next_en;
 assign w_next_en=fifo2K_18bit_wide.w_next_en;

  
  fh_epath_fifo2K_18bit_wide fifo2K_18bit_wide(.dout(dout),
                                              .full(full),
                                              .empty(empty),
                                              .prog_full(prog_full),
                                              .almost_full(almost_full),
                                              .din(din),
                                              .rd_en(rd_en),
                                              .wr_en(wr_en),
                                              .rd_clk(rd_clk),
                                              .wr_clk(wr_clk),
                                              .rst(rst));
  
  
  //initial #5000 $stop;
  initial begin 
    rd_clk=0; 
    forever #10 rd_clk=~rd_clk; 
  end
  
  initial begin 
    wr_clk=0; 
    forever #50 wr_clk=~wr_clk; 
  end  
  
  initial 
    begin 
    rd_en= 0;
    wr_en= 0;
    din=0;
  @(posedge wr_en);
    repeat(10) @(posedge wr_clk) din=din+1;
    end
  
  initial 
    begin 
      rst=1;
      #20 rst=0;
    end 

  initial 
    begin 
      fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
        #10 wr_en=1; 
        #1500 wr_en=0; 
      join 
    end            
  
  initial begin
    $monitor("din %d dout %d",din,dout);
    fork 
      #1400 rd_en=1; 
      #1700 rd_en=0; 
    join 
  end
                
endmodule