//
// Verilog Module mopshub_lib.demux1_Nbit
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 20:40:24 06/06/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module demux1_16_16bit( 
  input    wire  [4 : 0]            sel,
  input    wire  [15 : 0]           input_bus,  
  output   wire  [15 : 0]            output0, 
  output   wire  [15 : 0]            output1, 
  output   wire  [15 : 0]            output2, 
  output   wire  [15 : 0]            output3,   
  output   wire  [15 : 0]            output4, 
  output   wire  [15 : 0]            output5, 
  output   wire  [15 : 0]            output6, 
  output   wire  [15 : 0]            output7, 
  output   wire  [15 : 0]            output8,
  output   wire  [15 : 0]            output9,    
  output   wire  [15 : 0]            output10, 
  output   wire  [15 : 0]            output11, 
  output   wire  [15 : 0]            output12, 
  output   wire  [15 : 0]            output13, 
  output   wire  [15 : 0]            output14, 
  output   wire  [15 : 0]            output15 
  );
  reg [15 : 0] def_value ;
  initial def_value = 16'b0;
  reg  [15 : 0]  output0_reg  = 16'b0;  
  reg  [15 : 0]  output1_reg  = 16'b0;  
  reg  [15 : 0]  output2_reg  = 16'b0;  
  reg  [15 : 0]  output3_reg  = 16'b0;  
  reg  [15 : 0]  output4_reg  = 16'b0;  
  reg  [15 : 0]  output5_reg  = 16'b0;  
  reg  [15 : 0]  output6_reg  = 16'b0;  
  reg  [15 : 0]  output7_reg  = 16'b0;  
  reg  [15 : 0]  output8_reg  = 16'b0;
  reg  [15 : 0]  output9_reg  = 16'b0;    
  reg  [15 : 0]  output10_reg = 16'b0;  
  reg  [15 : 0]  output11_reg = 16'b0;  
  reg  [15 : 0]  output12_reg = 16'b0;  
  reg  [15 : 0]  output13_reg = 16'b0;  
  reg  [15 : 0]  output14_reg = 16'b0;  
  reg  [15 : 0]  output15_reg = 16'b0;  
 

 
   
 assign  output0=output0_reg; 
 assign  output1=output1_reg; 
 assign  output2=output2_reg; 
 assign  output3=output3_reg; 
 assign  output4=output4_reg; 
 assign  output5=output5_reg; 
 assign  output6=output6_reg; 
 assign  output7=output7_reg; 
 assign  output8=output8_reg; 
 assign  output9=output9_reg; 
 assign  output10=output10_reg; 
 assign  output11=output11_reg; 
 assign  output12=output12_reg; 
 assign  output13=output13_reg; 
 assign  output14=output14_reg; 
 assign  output15=output15_reg; 



  
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
      5'h0  : output0_reg   = input_bus;
      5'h1  : output1_reg   = input_bus;
      5'h2  : output2_reg   = input_bus;
      5'h3  : output3_reg   = input_bus;
      5'h4  : output4_reg   = input_bus;
      5'h5  : output5_reg   = input_bus;
      5'h6  : output6_reg   = input_bus;
      5'h7  : output7_reg   = input_bus;
      5'h8  : output8_reg   = input_bus;
      5'h9  : output9_reg   = input_bus;
      5'hA  : output10_reg  = input_bus;
      5'hB  : output11_reg  = input_bus;
      5'hC  : output12_reg  = input_bus;
      5'hD  : output13_reg  = input_bus;
      5'hE  : output14_reg  = input_bus;
      5'hF  : output15_reg  = input_bus;   
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
