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
  parameter half_clock_period_40 = 1;
  
  wire [1:0] EDATA_OUT;
  wire getDataTrig;
  reg [9:0] edataIN; // 10 bits input code+data
  reg DATA_RDY;
  reg   rst; 
  reg   clk_usr;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
  reg   reverse_tx; //normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  reg   swap_output; //No swap equal to 0
  reg datain_valid;
  wire [9:0] enc10bit;
  wire [7:0] DEC_OUT;
  wire [9:0] enc10bit_out;
  wire ko;
  wire code_err;
  wire disp_err;
  
  // Instances  
  assign enc10bit          = U_0.enc10bit;
  
  EPROC_OUT_ENC8b10b U_0( 
  .edataIN       (edataIN), 
  .DATA_RDY    (DATA_RDY), //one? CLKx4 after inp_request_trig_out
  .getDataTrig   (getDataTrig), 
  .EDATA_OUT      (EDATA_OUT), 
  .rst           (rst), 
  .bitCLK        (clk_usr),  // runs the counters as a normal FIFO clk
  .swap_outbits (swap_output),
  .fhCR_REVERSE_10B(reverse_tx)
  ); 
  
  
  GBTX_Emulator U_1( 
  .ko          (ko), 
  .code_err    (code_err), 
  .disp_err    (disp_err), 
  .dataout     (DEC_OUT), 
  .rst         (rst), 
  .bitCLK        (clk_usr),
  .enc10bit_out_sig(enc10bit_out),
  .datain_valid(datain_valid),
  .EDATA_2bit (EDATA_OUT),
  .data_10b_in (enc10bit), 
  .data_10b_en (1'b0)
  );
  
  // clocks           
  initial begin 
    clk_usr=0; 
    forever #half_clock_period_40 clk_usr=~clk_usr;
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
    //Decoder signal
    datain_valid =1'b0;
    join 
  end
  
  //Sending Data                                     
  initial 
  begin 
    //fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
    //SOP
    #5;
    datain_valid =!datain_valid;
    edataIN = {2'b10,8'h0};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;  
    
    //Data
    #5; 
    edataIN = {2'b00,8'hDE};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;   
    
    #5;
    edataIN = {2'b00,8'hAD};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0; 
    
    #5;
    edataIN = {2'b00,8'hBE};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;  
    
    #5;
    edataIN = {2'b00,8'hEF};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0; 
    //EOP
    
    #5;  
    edataIN = {2'b01,8'b0};
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;
    
    //join   
  end   
endmodule
