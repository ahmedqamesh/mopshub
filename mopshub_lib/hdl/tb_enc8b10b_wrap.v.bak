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
    reg dataINrdy;
    reg   ENC_RST; 
    reg   ENC_CLK; 
    

    wire [9:0] ENC_OUT;
    wire encDataOutrdy;
       
    reg datain_valid;
    
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
               .dataINrdy     (dataINrdy),
               .dataCode      (dataCode), 
               .encDataOut    (ENC_OUT), 
               .encDataOutrdy (encDataOutrdy),
               .rst           (ENC_RST), 
               .clk           (ENC_CLK)
                ); 
                
GBTX_Emulator U_1( 
                 .ko       (ko), 
                 .code_err    (code_err), 
                 .disp_err   (disp_err), 
                 .dataout      (DEC_OUT), 
                 .reset           (ENC_RST), 
                 .clk        (ENC_CLK), 
                 .datain      (ENC_OUT), 
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
  ENC_RST = 1'b1;
  #1 ENC_RST=!ENC_RST;
  //Data
  ENC_IN=8'b00010101; 
  dataINrdy=1'b0; 
  dataCode = 2'b01;
  
  //Decoder signal
  datain_valid <=1'b0;
  join
  
end

always @(posedge ENC_CLK) 
  begin
   $monitor("Time %g  dataCode %b ENC_IN %b ENC_OUT %b encDataOutrdy %b",$time,dataCode, ENC_IN, ENC_OUT,encDataOutrdy);
      #2;
      dataCode <= 2'b00;
      dataINrdy<=1'b1;
      ENC_IN<=ENC_IN+1;
      #2;
      datain_valid <=1'b1;
      #6;
     datain_valid <=1'b0; 
   end

   
endmodule
