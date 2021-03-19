//
// Verilog Module mopshub_lib.tb_FIFO_to_Elink
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:41:49 03/19/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_FIFO_to_Elink ;
   reg clk_usr;    //FIFO Clock is the User clk
   reg clk_40; 
   reg clk_80; 
   reg clk_160; 
   reg rst; 
   
   reg                         fifo_flush;
   reg                         tx_fifo_wr_en;
   reg    [18-1:0]             tx_fifo_data_in; 
   
   wire                         efifoPfull; 
   wire                         DATA1bitOUT; 
   wire    [1:0]                elink2bit; 
   
  
FIFO_to_Elink DUT(.efifoWclk(clk_usr),
                  .clk_40(clk_40),
                  .clk_80(clk_80),
                  .clk_160(clk_160),
                  .rst(rst),
                  
                  .fifo_flush(fifo_flush),
                  .efifoWe(tx_fifo_wr_en),
                  .efifoDin(tx_fifo_data_in),
                  
                  .efifoPfull(efifoPfull),
                  .DATA1bitOUT(DATA1bitOUT),
                  .elink2bit(elink2bit));

   //initial #5000 $stop;
  initial begin 
    clk_usr=0; 
    forever #10 clk_usr=~clk_usr; 
  end
  
  initial begin 
    clk_40=0; 
    forever #10 clk_40=~clk_40; 
  end  
  
  initial begin 
    clk_80=0; 
    forever #10 clk_80=~clk_80; 
  end
  
  initial begin 
    clk_160=0; 
    forever #10 clk_160=~clk_160; 
  end  
  
  initial 
    begin 
      fork
      tx_fifo_wr_en=0;
    //Send a rst signal
      rst=1;
      #20 rst=0;
    //rst FIFO
    fifo_flush = 1;
    #10 fifo_flush = 0;
    join
    end 

initial 
  begin 
    //fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
    //SOP
    @#5 tx_fifo_data_in = {2'b10,16'h0};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;
    //Data 
     tx_fifo_data_in = {2'b00,16'hDEAD};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;  
        
    tx_fifo_data_in = {2'b00,16'hBEEF};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;
    //EOP
    tx_fifo_data_in = {2'b01,16'b0};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;
    //join 
  end 
                                                
// ### Please start your Verilog code here ### 

endmodule
