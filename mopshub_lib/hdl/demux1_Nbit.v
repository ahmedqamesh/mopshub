//
// Verilog Module mopshub_lib.demux1_Nbit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:40:24 06/06/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module demux1_Nbit#(
  parameter def_value = 16'b0,
  parameter N = 16
  
  )( 
  input    wire  [4 : 0]           sel,

  input    wire  [N-1 : 0]           input_bus,  
  output   wire  [N-1 : 0]            output9, 
  output   wire  [N-1 : 0]            output18, 
  output   wire  [N-1 : 0]            output19, 
  output   wire  [N-1 : 0]            output20, 
  output   wire  [N-1 : 0]            output21, 
  output   wire  [N-1 : 0]            output22, 
  output   wire  [N-1 : 0]            output23, 
  output   wire  [N-1 : 0]            output24, 
  output   wire  [N-1 : 0]            output4, 
  output   wire  [N-1 : 0]            output5, 
  output   wire  [N-1 : 0]            output6, 
  output   wire  [N-1 : 0]            output7, 
  output   wire  [N-1 : 0]            output8, 
  output   wire  [N-1 : 0]            output10, 
  output   wire  [N-1 : 0]            output11, 
  output   wire  [N-1 : 0]            output12, 
  output   wire  [N-1 : 0]            output13, 
  output   wire  [N-1 : 0]            output14, 
  output   wire  [N-1 : 0]            output15, 
  output   wire  [N-1 : 0]            output16, 
  output   wire  [N-1 : 0]            output17, 
  output   wire  [N-1 : 0]            output0, 
  output   wire  [N-1 : 0]            output1, 
  output   wire  [N-1 : 0]            output2, 
  output   wire  [N-1 : 0]            output3, 
  output   wire  [N-1 : 0]            output26, 
  output   wire  [N-1 : 0]            output27, 
  output   wire  [N-1 : 0]            output28, 
  output   wire  [N-1 : 0]            output29, 
  output   wire  [N-1 : 0]            output30, 
  output   wire  [N-1 : 0]            output31, 
  output   wire  [N-1 : 0]            output25
  );
  
  reg  [N-1 : 0]  output9_reg =def_value; 
  reg  [N-1 : 0]  output18_reg =def_value; 
  reg  [N-1 : 0]  output19_reg =def_value; 
  reg  [N-1 : 0]  output20_reg =def_value; 
  reg  [N-1 : 0]  output21_reg =def_value; 
  reg  [N-1 : 0]  output22_reg =def_value; 
  reg  [N-1 : 0]  output23_reg =def_value; 
  reg  [N-1 : 0]  output24_reg =def_value; 
  reg  [N-1 : 0]  output4_reg =def_value; 
  reg  [N-1 : 0]  output5_reg =def_value; 
  reg  [N-1 : 0]  output6_reg =def_value; 
  reg  [N-1 : 0]  output7_reg =def_value; 
  reg  [N-1 : 0]  output8_reg =def_value; 
  reg  [N-1 : 0]  output10_reg =def_value; 
  reg  [N-1 : 0]  output11_reg =def_value; 
  reg  [N-1 : 0]  output12_reg =def_value; 
  reg  [N-1 : 0]  output13_reg =def_value; 
  reg  [N-1 : 0]  output14_reg =def_value; 
  reg  [N-1 : 0]  output15_reg =def_value; 
  reg  [N-1 : 0]  output16_reg =def_value; 
  reg  [N-1 : 0]  output17_reg =def_value; 
  reg  [N-1 : 0]  output0_reg =def_value; 
  reg  [N-1 : 0]  output1_reg =def_value; 
  reg  [N-1 : 0]  output2_reg =def_value; 
  reg  [N-1 : 0]  output3_reg =def_value; 
  reg  [N-1 : 0]  output26_reg =def_value; 
  reg  [N-1 : 0]  output27_reg =def_value; 
  reg  [N-1 : 0]  output28_reg =def_value; 
  reg  [N-1 : 0]  output29_reg =def_value; 
  reg  [N-1 : 0]  output30_reg =def_value; 
  reg  [N-1 : 0]  output31_reg =def_value; 
  reg  [N-1 : 0]  output25_reg =def_value; 
  
 assign  output9=output9_reg; 
 assign  output18=output18_reg; 
 assign  output19=output19_reg; 
 assign  output20=output20_reg; 
 assign  output21=output21_reg; 
 assign  output22=output22_reg; 
 assign  output23=output23_reg; 
 assign  output24=output24_reg; 
 assign  output4=output4_reg; 
 assign  output5=output5_reg; 
 assign  output6=output6_reg; 
 assign  output7=output7_reg; 
 assign  output8=output8_reg; 
 assign  output10=output10_reg; 
 assign  output11=output11_reg; 
 assign  output12=output12_reg; 
 assign  output13=output13_reg; 
 assign  output14=output14_reg; 
 assign  output15=output15_reg; 
 assign  output16=output16_reg; 
 assign  output17=output17_reg; 
 assign  output0=output0_reg; 
 assign  output1=output1_reg; 
 assign  output2=output2_reg; 
 assign  output3=output3_reg; 
 assign  output26=output26_reg; 
 assign  output27=output27_reg; 
 assign  output28=output28_reg; 
 assign  output29=output29_reg; 
 assign  output30=output30_reg; 
 assign  output31=output31_reg; 
 assign  output25=output25_reg; 
  
  always @(*)
  begin 
   output9_reg =def_value; 
   output18_reg =def_value; 
   output19_reg =def_value; 
   output20_reg =def_value; 
   output21_reg =def_value; 
   output22_reg =def_value; 
   output23_reg =def_value; 
   output24_reg =def_value; 
   output4_reg =def_value; 
   output5_reg =def_value; 
   output6_reg =def_value; 
   output7_reg =def_value; 
   output8_reg =def_value; 
   output10_reg =def_value; 
   output11_reg =def_value; 
   output12_reg =def_value; 
   output13_reg =def_value; 
   output14_reg =def_value; 
   output15_reg =def_value; 
   output16_reg =def_value; 
   output17_reg =def_value; 
   output0_reg =def_value; 
   output1_reg =def_value; 
   output2_reg =def_value; 
   output3_reg =def_value; 
   output26_reg =def_value; 
   output27_reg =def_value; 
   output28_reg =def_value; 
   output29_reg =def_value; 
   output30_reg =def_value; 
   output31_reg =def_value; 
   output25_reg =def_value;   
   case (sel)
      5'h0 : begin 
        output0_reg = input_bus;
      end
      5'h1 : begin 
        output1_reg  = input_bus;
      end
      5'h2 : begin 
        output2_reg  = input_bus;
      end
      5'h3 : begin 
        output3_reg  = input_bus;
      end
      5'h4 : begin
        output4_reg  = input_bus;
      end
      5'h5 : begin 
        output5_reg = input_bus;
      end
      5'h6 : begin 
        output6_reg  = input_bus;
      end
      5'h7 : begin 
        output7_reg  = input_bus;
      end
      5'h8 : begin 
        output8_reg  = input_bus;
      end
      5'h9 : begin
        output9_reg  = input_bus;
      end
      5'hA : begin 
        output10_reg = input_bus;
      end
      5'hB : begin 
        output11_reg  = input_bus;
      end
      5'hC : begin 
        output12_reg  = input_bus;
      end
      5'hD : begin 
        output13_reg  = input_bus;
      end
      5'hE : begin
        output14_reg  = input_bus;
      end
      5'hF : begin 
        output15_reg = input_bus;
      end
      5'h10 : begin 
        output16_reg  = input_bus;
      end
      5'h11 : begin 
        output17_reg  = input_bus;
      end
      5'h12 : begin 
        output18_reg  = input_bus;
      end
      5'h13 : begin
        output19_reg  = input_bus;           
      end
      5'h14 : begin 
        output20_reg  = input_bus;
      end
      5'h15 : begin 
        output21_reg  = input_bus;
      end
      5'h16 : begin 
        output22_reg  = input_bus;
      end
      5'h17 : begin
        output23_reg  = input_bus;
      end
      5'h18 : begin 
        output24_reg = input_bus;
      end
      5'h19 : begin 
        output25_reg  = input_bus;
      end
      5'h1A : begin 
        output26_reg  = input_bus;
      end
      5'h1B : begin 
        output27_reg  = input_bus;
      end
      5'h1C : begin
        output28_reg  = input_bus;
    end 
      5'h1D : begin 
        output29_reg  = input_bus;
      end
      5'h1E : begin 
        output30_reg  = input_bus;
      end
      5'h1F : begin
        output31_reg  = input_bus;
    end    
      default: begin
        output0_reg  = input_bus;
    end 
    
    endcase
  end
  
endmodule
