//
// Verilog Module mopshub_lib.tb_enc8b10b_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:03:15 03/16/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_enc8b10b_wrap ;
  // Port Declarations
  
  
  reg [7:0] ENC_IN;
  reg [1:0] dataCode;
  reg DATA_RDY;
  reg   ENC_RST; 
  reg   ENC_CLK; 
  
  
  wire [9:0] ENC_OUT;
  wire encDataOutrdy;
  
  reg datain_valid;
  reg data_10b_en;
  
  wire [1:0] dataCode_s;
  wire [7:0]  byte;
  wire isk;
  
  
  wire [7:0]DEC_OUT;
  
  
  wire ko;
  wire code_err;
  wire disp_err;
  
  // Instances 
  assign dataCode_s = U_0.dataCode_s;  
  
  assign isk = U_0.isk;  
  assign byte= U_0.byte;
  
  enc8b10b_wrap U_0( 
  .dataIN        (ENC_IN), 
  .dataINrdy     (DATA_RDY),
  .dataCode      (dataCode), 
  .encDataOut    (ENC_OUT), 
  .encDataOutrdy (encDataOutrdy),
  .rst           (ENC_RST), 
  .clk           (ENC_CLK)
  ); 
  
  GBTX_Emulator U_1( 
  .ko          (ko), 
  .code_err    (code_err), 
  .disp_err   (disp_err), 
  .dataout      (DEC_OUT), 
  .rst           (ENC_RST), 
  .EDATA_2bit           (), 
  .enc10bit_out_sig   (), 
  .bitCLK        (ENC_CLK), 
  .data_10b_in       (ENC_OUT), 
  .data_10b_en (data_10b_en),
  .datain_valid(datain_valid)
  );
  
  initial begin 
    ENC_CLK=0; 
    forever #5 ENC_CLK=~ENC_CLK; 
  end
  
  initial 
  begin
    fork
    //Intialise signals
    //Data
    ENC_IN=8'b0; 
    DATA_RDY=1'b0; 
    dataCode = 2'b0;
    data_10b_en = 1;
    
    ENC_RST = 1'b1;
    #5 ENC_RST=!ENC_RST;
    
    //Decoder signal
    datain_valid =1'b0;
    join  
  end

  
  //Sending Data                                     
  initial 
  begin 
    //fork //Fork-Join will start all the processes inside it parallel and wait for the completion of all the processes.
    //SOP
    
    #6;
    datain_valid =~datain_valid;
    dataCode = 2'b10;
    ENC_IN = 8'h0;
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;  
    
    //Data
    #5; 
    dataCode = 2'b00;
    ENC_IN = 8'hDE;
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;   
    
    #5;
    dataCode = 2'b00;
    ENC_IN = 8'hAD;
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0; 
    
    #5;
    dataCode = 2'b00;
    ENC_IN = 8'hBE;
    
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0;  
    
    #5;
    dataCode = 2'b00;
    ENC_IN = 8'hEF;  
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0; 
    //EOP
    
    #5;  
    dataCode = 2'b01;
    ENC_IN = 8'h0;  
    DATA_RDY=1'b1;
    #10;
    DATA_RDY=1'b0; 
    //join   
  end      
endmodule
