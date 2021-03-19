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
   integer i;
   wire [1:0] EDATA_OUT;
   wire getDataTrig;
   
    reg [9:0] edataIN; // 10 bits input code+data
    reg DATA_RDY;
   
    reg   rst; 
    reg   clk40;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
    reg   clk80;  //bitCLKx4 for 8b/10b encoding [clk_80 MB/s]
    reg   reverse_tx; //normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
    reg   swap_output; //No swap equal to 0
    reg datain_valid;
    
   wire [2:0] send_count;
   wire [9:0] enc10bit_r;
   wire [9:0] enc10bit;
   wire inp_request_trig;
   wire [2:0] request_cycle_cnt;
   wire send_out_trig;
   wire [7:0]DEC_OUT;
   wire ko;
   wire code_err;
   wire disp_err;
   
// Instances 
assign send_count = U_0.send_count;  
assign enc10bit_r= U_0.enc10bit_r;
assign enc10bit = U_0.enc10bit;
assign request_cycle_cnt = U_0.request_cycle_cnt;
assign send_out_trig = U_0.send_out_trig;
assign inp_request_trig = U_0.inp_request_trig;

EPROC_OUT_ENC8b10b U_0( 
                 .edataIN       (edataIN), 
                 .DATA_RDY    (DATA_RDY), //one? CLKx4 after inp_request_trig_out
                 .getDataTrig   (getDataTrig), 
                 .EDATA_OUT      (EDATA_OUT), 
                 .rst           (rst), 
                 .bitCLK        (clk40),  // runs the counters as a normal FIFO clk
                 .bitCLKx4      (clk80), // runs the encoder and the pulse out trigger 
                 .swap_outbits (swap_output),
                 .fhCR_REVERSE_10B(reverse_tx)
                  ); 

                
GBTX_Emulator U_1( 
                 .ko          (ko), 
                 .code_err    (code_err), 
                 .disp_err    (disp_err), 
                 .dataout     (DEC_OUT), 
                 .reset       (rst), 
                 .clk         (clk80), 
                 .datain      (enc10bit), 
                 .datain_valid(datain_valid)
                  );
                  
  // clocks           
  initial begin 
    clk40=0; 
    forever #2 clk40=~clk40; 
  end
  
  initial begin 
    clk80=0; 
    forever #4 clk80=~clk80; 
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
    
    #5 DATA_RDY=1'b1;
    #5 edataIN={2'b00,8'b01010101};  
    #2 DATA_RDY=1'b0; 
 
    //Decoder signal
    datain_valid <=1'b0;
    join 
  end
always @(posedge clk40) 
  begin
      #20
      DATA_RDY<=1'b1;
      edataIN<=edataIN+1;
      
      //#2 DATA_RDY<=1'b0;

      #10; //wait 5 clock cycles
      #2;
      datain_valid <=1'b1;
      #6;
     datain_valid <=1'b0; 
   end
   
endmodule

