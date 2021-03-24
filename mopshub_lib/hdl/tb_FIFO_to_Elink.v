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
  parameter DATA_IN_WIDTH=18;
  parameter DATA_OUT_WIDTH = 10;
  parameter half_clock_period_40 = 2;
  parameter half_clock_period_80 = 1;
  
   reg clk_usr;    //FIFO Clock is the User clk
   reg clk_80;  
   reg rst; 
   
   reg                         fifo_flush;
   reg                         tx_fifo_wr_en;
   reg    [DATA_IN_WIDTH-1:0]  tx_fifo_data_in; 
   
   wire                         efifoPfull; 
   wire                         DATA1bitOUT; 
   wire    [1:0]                elink2bit; 
   
   //encoder Signals
   wire [1:0] dout2bit;
   //FIFO Signals
   wire [DATA_OUT_WIDTH-1:0] Dout;
   wire doutRdy;
   wire rd_en;

 //Encoder Signals
  reg datain_valid;
  wire [7:0] DEC_OUT;
  wire [9:0] enc10bit_out;
  wire ko;
  wire code_err;
  wire disp_err;
  
assign Dout = MUT.efifoDout;
assign doutRdy = MUT.doutRdy;
assign rd_en = MUT.efifoRE;
assign dout2bit = MUT.dout2bit;
FIFO_to_Elink MUT(.clk_usr(clk_usr),
                  .clk_80(clk_80),
                  .rst(rst),
                  
                  .fifo_flush(fifo_flush),
                  .efifoWe(tx_fifo_wr_en),
                  .efifoDin(tx_fifo_data_in),
                  
                  .efifoPfull(efifoPfull),
                  .DATA1bitOUT(DATA1bitOUT),
                  .elink2bit(elink2bit));

  GBTX_Emulator U_1( 
  .ko          (ko), 
  .code_err    (code_err), 
  .disp_err    (disp_err), 
  .dataout     (DEC_OUT), 
  .rst         (rst), 
  .bitCLK        (clk_usr),
  .enc10bit_out_sig(enc10bit_out),
  .datain_valid(datain_valid),
  .EDATA_2bit (dout2bit),
  .data_10b_in (), 
  .data_10b_en (1'b0)
  );
  
  
   //initial #5000 $stop;
  initial begin 
    clk_usr=0; 
    forever #half_clock_period_40 clk_usr=~clk_usr; 
  end

  initial begin 
    clk_80=0; 
    forever #half_clock_period_80 clk_80=~clk_80; 
  end
   
  
  initial 
    begin 
      fork
    tx_fifo_data_in = {2'b00,16'h0};
    tx_fifo_wr_en=0;
    //Send a rst signal
    rst=1;
    #5 rst=!rst;
    //rst FIFO
    fifo_flush = 1;
    #5 fifo_flush = 0;
    
    
    //Decoder signal
    datain_valid =1'b0;
    
    join
    end 

initial 
  begin 
    //fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
    //SOP
    #5 
    datain_valid =!datain_valid;
    tx_fifo_data_in = {2'b10,16'h0};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;
    
    //Data 
    tx_fifo_data_in = {2'b00,16'hDEAD};
    #5 tx_fifo_wr_en=1; 
    #10 tx_fifo_wr_en=0;  
    
//    #5   
//    tx_fifo_data_in = {2'b00,16'hBEEF};
//    tx_fifo_wr_en=1; 
//    #2 tx_fifo_wr_en=0;
//    
//    #5
//    //EOP
//    tx_fifo_data_in = {2'b01,16'b0};
//    tx_fifo_wr_en=1; 
//    #2 tx_fifo_wr_en=0;
    //join 
  end 

endmodule
