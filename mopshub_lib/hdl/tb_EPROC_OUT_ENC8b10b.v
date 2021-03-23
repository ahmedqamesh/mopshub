//
// Verilog Module mopshub_lib.tb_EPROC_OUT_ENC8b10b
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:34:52 03/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_EPROC_OUT_ENC8b10b ;
  // Port Declarations
  parameter half_clock_period_40 = 4;
  parameter half_clock_period_160 = 1;//6.25;
  
  wire [1:0] EDATA_OUT;
  wire getDataTrig;
  
  reg [9:0] edataIN; // 10 bits input code+data
  reg DATA_RDY;
  
  reg   rst; 
  reg   clk40;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
  reg   clk160;  //bitCLKx4 for 8b/10b encoding [clk_80 MB/s]
  reg   reverse_tx; //normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  reg   swap_output; //No swap equal to 0
  wire datain_valid;
  wire [2:0] send_count;
  wire [9:0] enc10bit_r;
  wire [9:0] enc10bit;
  wire [2:0] request_cycle_cnt;
  wire send_out_trig;
  wire [7:0] DEC_OUT;
  wire [9:0] enc10bit_out;
  wire ko;
  wire code_err;
  wire disp_err;
  
  // Instances 
  assign send_count = U_0.send_count;  
  assign send_out_trig = U_0.send_out_trig;  
  
  assign enc10bit_r        = U_0.enc10bit_r;
  assign enc10bit          = U_0.enc10bit;
  assign request_cycle_cnt = U_0.request_cycle_cnt;
  assign send_out_trig     = U_0.send_out_trig;
  
  
  EPROC_OUT_ENC8b10b U_0( 
  .edataIN       (edataIN), 
  .DATA_RDY    (DATA_RDY), //one? CLKx4 after inp_request_trig_out
  .getDataTrig   (getDataTrig), 
  .EDATA_OUT      (EDATA_OUT), 
  .rst           (rst), 
  .bitCLK        (clk40),  // runs the counters as a normal FIFO clk
  .bitCLKx4      (clk160), // runs the encoder and the pulse out trigger 
  .swap_outbits (swap_output),
  .fhCR_REVERSE_10B(reverse_tx)
  ); 
  
  
  GBTX_Emulator U_1( 
  .ko          (ko), 
  .code_err    (code_err), 
  .disp_err    (disp_err), 
  .dataout     (DEC_OUT), 
  .rst         (rst), 
  .bitCLK        (clk40),  // runs the counters as a normal FIFO clk
  .bitCLKx4      (clk160), // runs the encoder and the pulse out trigger  
  .enc10bit_out_sig  (enc10bit_out),
  //.datain      (enc10bit), 
  .datain_valid(~DATA_RDY),
  .EDATA_2bit (EDATA_OUT)
  //.sel(send_count)
  );
  
  // clocks           
  initial begin 
    clk40=0; 
    forever #half_clock_period_40 clk40=~clk40; //Period = 8 ns 
  end
  
  initial begin 
    clk160=0; 
    forever #half_clock_period_160 clk160=~clk160; //period = 2 ns 
  end 
  //Initialization
  initial 
  begin
    fork
    reverse_tx = 0; 
    edataIN= 10'b0; 
    DATA_RDY=1'b0;
    swap_output  = 0;
    
    rst = 1'b1;
    #5 rst=!rst;
    
    join 
  end
  
  
  //Sending Data                                     
  initial 
  begin 
    //fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
    //SOP
    
    #5;
    edataIN = {2'b10,8'h0};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0;  
    
    //Data
    #30; 
    DATA_RDY=1'b1;
    edataIN = {2'b00,8'hDE};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0;   
    
    #30;
    edataIN = {2'b00,8'hAD};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0; 
    
    #30;
    edataIN = {2'b00,8'hBE};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0;  
    
    #30;
    edataIN = {2'b00,8'hEF};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0; 
    //EOP
    
    #30;  
    edataIN = {2'b01,8'b0};
    DATA_RDY=1'b1;
    #2;
    DATA_RDY=1'b0; 
    //join   
  end   
endmodule
