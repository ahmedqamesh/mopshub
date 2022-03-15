//
// Verilog Module mopshub_lib.demux1_31bit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:32:33 06/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module demux1_1bit( 
  input    wire            def_value,
  input    wire    [4:0]   sel,
  input    wire            input_port,  
  output   wire            output0, 
  output   wire            output1, 
  output   wire            output2, 
  output   wire            output3, 
  output   wire            output4, 
  output   wire            output5, 
  output   wire            output6, 
  output   wire            output7, 
  output   wire            output8, 
  output   wire            output9, 
  output   wire            output10, 
  output   wire            output11, 
  output   wire            output12, 
  output   wire            output13, 
  output   wire            output14, 
  output   wire            output15, 
  output   wire            output16, 
  output   wire            output17,
  output   wire            output18, 
  output   wire            output19, 
  output   wire            output20, 
  output   wire            output21, 
  output   wire            output22, 
  output   wire            output23, 
  output   wire            output24, 
  output   wire            output25,
  output   wire            output26, 
  output   wire            output27, 
  output   wire            output28, 
  output   wire            output29, 
  output   wire            output30, 
  output   wire            output31
  );
  reg output9_reg;
  reg output18_reg;  
  reg output19_reg;  
  reg output20_reg;  
  reg output21_reg;  
  reg output22_reg;  
  reg output23_reg;  
  reg output24_reg;  
  reg output4_reg; 
  reg output5_reg; 
  reg output6_reg; 
  reg output7_reg; 
  reg output8_reg; 
  reg output10_reg;  
  reg output11_reg;  
  reg output12_reg;  
  reg output13_reg;  
  reg output14_reg;  
  reg output15_reg;  
  reg output16_reg;  
  reg output17_reg;  
  reg output0_reg; 
  reg output1_reg; 
  reg output2_reg; 
  reg output3_reg; 
  reg output26_reg;  
  reg output27_reg;  
  reg output28_reg;  
  reg output29_reg;  
  reg output30_reg;  
  reg output31_reg;  
  reg output25_reg;  

initial 
  begin
   output9_reg  = 1'b0; 
   output18_reg = 1'b0;  
   output19_reg = 1'b0;  
   output20_reg = 1'b0;  
   output21_reg = 1'b0;  
   output22_reg = 1'b0;  
   output23_reg = 1'b0;  
   output24_reg = 1'b0;  
   output4_reg  = 1'b0;  
   output5_reg  = 1'b0;  
   output6_reg  = 1'b0;  
   output7_reg  = 1'b0;  
   output8_reg  = 1'b0;  
   output10_reg = 1'b0;  
   output11_reg = 1'b0;  
   output12_reg = 1'b0;  
   output13_reg = 1'b0;  
   output14_reg = 1'b0;  
   output15_reg = 1'b0;  
   output16_reg = 1'b0;  
   output17_reg = 1'b0;  
   output0_reg  = 1'b0;  
   output1_reg  = 1'b0;  
   output2_reg  = 1'b0;  
   output3_reg  = 1'b0;  
   output26_reg = 1'b0;  
   output27_reg = 1'b0;  
   output28_reg = 1'b0;  
   output29_reg = 1'b0;  
   output30_reg = 1'b0;  
   output31_reg = 1'b0;  
   output25_reg = 1'b0; 
  end
  



 
 assign  output9  = output9_reg; 
 assign  output18 = output18_reg; 
 assign  output19 = output19_reg; 
 assign  output20 = output20_reg; 
 assign  output21 = output21_reg; 
 assign  output22 = output22_reg; 
 assign  output23 = output23_reg; 
 assign  output24 = output24_reg; 
 assign  output4  = output4_reg; 
 assign  output5  = output5_reg; 
 assign  output6  = output6_reg; 
 assign  output7  = output7_reg; 
 assign  output8  = output8_reg; 
 assign  output10 = output10_reg; 
 assign  output11 = output11_reg; 
 assign  output12 = output12_reg; 
 assign  output13 = output13_reg; 
 assign  output14 = output14_reg; 
 assign  output15 = output15_reg; 
 assign  output16 = output16_reg; 
 assign  output17 = output17_reg; 
 assign  output0  = output0_reg; 
 assign  output1  = output1_reg; 
 assign  output2  = output2_reg; 
 assign  output3  = output3_reg; 
 assign  output26 = output26_reg; 
 assign  output27 = output27_reg; 
 assign  output28 = output28_reg; 
 assign  output29 = output29_reg; 
 assign  output30 = output30_reg; 
 assign  output31 = output31_reg; 
 assign  output25 = output25_reg; 
 

  always @(*)
  begin
 output0_reg  = def_value; 
 output1_reg  = def_value; 
 output2_reg  = def_value; 
 output3_reg  = def_value; 
 output9_reg  = def_value; 
 output18_reg = def_value; 
 output19_reg = def_value; 
 output20_reg = def_value; 
 output21_reg = def_value; 
 output22_reg = def_value; 
 output23_reg = def_value; 
 output24_reg = def_value; 
 output4_reg  = def_value; 
 output5_reg  = def_value; 
 output6_reg  = def_value; 
 output7_reg  = def_value; 
 output8_reg  = def_value; 
 output10_reg = def_value; 
 output11_reg = def_value; 
 output12_reg = def_value; 
 output13_reg = def_value; 
 output14_reg = def_value; 
 output15_reg = def_value; 
 output16_reg = def_value; 
 output17_reg = def_value; 
 output26_reg = def_value; 
 output27_reg = def_value; 
 output28_reg = def_value; 
 output29_reg = def_value; 
 output30_reg = def_value; 
 output31_reg = def_value; 
 output25_reg = def_value; 
    case (sel)
      5'h0  : output0_reg   = input_port;
      5'h1  : output1_reg   = input_port;
      5'h2  : output2_reg   = input_port;
      5'h3  : output3_reg   = input_port;
      5'h4  : output4_reg   = input_port;
      5'h5  : output5_reg   = input_port;
      5'h6  : output6_reg   = input_port;
      5'h7  : output7_reg   = input_port;
      5'h8  : output8_reg   = input_port;
      5'h9  : output9_reg   = input_port;
      5'hA  : output10_reg  = input_port;
      5'hB  : output11_reg  = input_port;
      5'hC  : output12_reg  = input_port;
      5'hD  : output13_reg  = input_port;
      5'hE  : output14_reg  = input_port;
      5'hF  : output15_reg  = input_port;
      5'h10 : output16_reg  = input_port;
      5'h11 : output17_reg  = input_port;
      5'h12 : output18_reg  = input_port;
      5'h13 : output19_reg  = input_port;           
      5'h14 : output20_reg  = input_port;
      5'h15 : output21_reg  = input_port;
      5'h16 : output22_reg  = input_port;
      5'h17 : output23_reg  = input_port;
      5'h18 : output24_reg  = input_port;
      5'h19 : output25_reg  = input_port;
      5'h1A : output26_reg  = input_port;
      5'h1B : output27_reg  = input_port;
      5'h1C : output28_reg  = input_port; 
      5'h1D : output29_reg  = input_port;
      5'h1E : output30_reg  = input_port;
      5'h1F : output31_reg  = input_port;   
      default:
        begin
         output0_reg  = def_value; 
         output1_reg  = def_value; 
         output2_reg  = def_value; 
         output3_reg  = def_value; 
         output9_reg  = def_value; 
         output18_reg = def_value; 
         output19_reg = def_value; 
         output20_reg = def_value; 
         output21_reg = def_value; 
         output22_reg = def_value; 
         output23_reg = def_value; 
         output24_reg = def_value; 
         output4_reg  = def_value; 
         output5_reg  = def_value; 
         output6_reg  = def_value; 
         output7_reg  = def_value; 
         output8_reg  = def_value; 
         output10_reg = def_value; 
         output11_reg = def_value; 
         output12_reg = def_value; 
         output13_reg = def_value; 
         output14_reg = def_value; 
         output15_reg = def_value; 
         output16_reg = def_value; 
         output17_reg = def_value; 
         output26_reg = def_value; 
         output27_reg = def_value; 
         output28_reg = def_value; 
         output29_reg = def_value; 
         output30_reg = def_value; 
         output31_reg = def_value; 
         output25_reg = def_value;     
        end
    endcase
  end
  
endmodule
