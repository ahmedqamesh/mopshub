//
// Verilog Module mopshub_lib.demux1_31bit
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 18:32:33 06/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module demux1_16_1bit( 
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
  output   wire            output15
  );

  reg output0_reg; 
  reg output1_reg; 
  reg output2_reg; 
  reg output3_reg; 
  reg output4_reg; 
  reg output5_reg; 
  reg output6_reg; 
  reg output7_reg; 
  reg output8_reg; 
  reg output9_reg;  
  reg output10_reg;  
  reg output11_reg;  
  reg output12_reg;  
  reg output13_reg;  
  reg output14_reg;  
  reg output15_reg;  

initial 
  begin 
   output0_reg  = 1'b0;  
   output1_reg  = 1'b0;  
   output2_reg  = 1'b0;  
   output3_reg  = 1'b0;
   output4_reg  = 1'b0;  
   output5_reg  = 1'b0;  
   output6_reg  = 1'b0;  
   output7_reg  = 1'b0;  
   output8_reg  = 1'b0;
   output9_reg  = 1'b0;     
   output10_reg = 1'b0;  
   output11_reg = 1'b0;  
   output12_reg = 1'b0;  
   output13_reg = 1'b0;  
   output14_reg = 1'b0;  
   output15_reg = 1'b0;  
  end
 assign  output0  = output0_reg; 
 assign  output1  = output1_reg; 
 assign  output2  = output2_reg; 
 assign  output3  = output3_reg; 
 assign  output4  = output4_reg; 
 assign  output5  = output5_reg; 
 assign  output6  = output6_reg; 
 assign  output7  = output7_reg; 
 assign  output8  = output8_reg; 
 assign  output9  = output9_reg;  
 assign  output10 = output10_reg; 
 assign  output11 = output11_reg; 
 assign  output12 = output12_reg; 
 assign  output13 = output13_reg; 
 assign  output14 = output14_reg; 
 assign  output15 = output15_reg; 



 

  always @(*)
  begin
 output0_reg  = def_value; 
 output1_reg  = def_value; 
 output2_reg  = def_value; 
 output3_reg  = def_value; 
 output4_reg  = def_value; 
 output5_reg  = def_value; 
 output6_reg  = def_value; 
 output7_reg  = def_value; 
 output8_reg  = def_value; 
 output9_reg  = def_value; 
 output10_reg = def_value; 
 output11_reg = def_value; 
 output12_reg = def_value; 
 output13_reg = def_value; 
 output14_reg = def_value; 
 output15_reg = def_value; 
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
      default:
        begin
         output0_reg  = def_value; 
         output1_reg  = def_value; 
         output2_reg  = def_value; 
         output3_reg  = def_value; 
         output4_reg  = def_value; 
         output5_reg  = def_value; 
         output6_reg  = def_value; 
         output7_reg  = def_value; 
         output8_reg  = def_value; 
         output9_reg  = def_value; 
         output10_reg = def_value; 
         output11_reg = def_value; 
         output12_reg = def_value; 
         output13_reg = def_value; 
         output14_reg = def_value; 
         output15_reg = def_value;     
        end
    endcase
  end
  
endmodule
