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
module demux1_31bit( 
  input   wire    [4:0]  sel,
  input   wire           Input,  
  output   wire            output9, 
  output   wire            output18, 
  output   wire            output19, 
  output   wire            output20, 
  output   wire            output21, 
  output   wire            output22, 
  output   wire            output23, 
  output   wire            output24, 
  output   wire            output4, 
  output   wire            output5, 
  output   wire            output6, 
  output   wire            output7, 
  output   wire            output8, 
  output   wire            output10, 
  output   wire            output11, 
  output   wire            output12, 
  output   wire            output13, 
  output   wire            output14, 
  output   wire            output15, 
  output   wire            output16, 
  output   wire            output17, 
  output   wire            output0, 
  output   wire            output1, 
  output   wire            output2, 
  output   wire            output3, 
  output   wire            output26, 
  output   wire            output27, 
  output   wire            output28, 
  output   wire            output29, 
  output   wire            output30, 
  output   wire            output31, 
  output   wire            output25
  );
  
  reg output9_reg =1'b1; 
  reg output18_reg =1'b1; 
  reg output19_reg =1'b1; 
  reg output20_reg =1'b1; 
  reg output21_reg =1'b1; 
  reg output22_reg =1'b1; 
  reg output23_reg =1'b1; 
  reg output24_reg =1'b1; 
  reg output4_reg =1'b1; 
  reg output5_reg =1'b1; 
  reg output6_reg =1'b1; 
  reg output7_reg =1'b1; 
  reg output8_reg =1'b1; 
  reg output10_reg =1'b1; 
  reg output11_reg =1'b1; 
  reg output12_reg =1'b1; 
  reg output13_reg =1'b1; 
  reg output14_reg =1'b1; 
  reg output15_reg =1'b1; 
  reg output16_reg =1'b1; 
  reg output17_reg =1'b1; 
  reg output0_reg =1'b1; 
  reg output1_reg =1'b1; 
  reg output2_reg =1'b1; 
  reg output3_reg =1'b1; 
  reg output26_reg =1'b1; 
  reg output27_reg =1'b1; 
  reg output28_reg =1'b1; 
  reg output29_reg =1'b1; 
  reg output30_reg =1'b1; 
  reg output31_reg =1'b1; 
  reg output25_reg =1'b1; 
  
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
  
  always @(Input or sel)
  begin 
    case (sel)
      5'h0 : begin 
        output0_reg = Input;
      end
      5'h1 : begin 
        output1_reg  = Input;
      end
      5'h2 : begin 
        output2_reg  = Input;
      end
      5'h3 : begin 
        output3_reg  = Input;
      end
      5'h4 : begin
        output4_reg  = Input;
      end
      5'h5 : begin 
        output5_reg = Input;
      end
      5'h6 : begin 
        output6_reg  = Input;
      end
      5'h7 : begin 
        output7_reg  = Input;
      end
      5'h8 : begin 
        output8_reg  = Input;
      end
      5'h9 : begin
        output9_reg  = Input;
      end
      5'hA : begin 
        output10_reg = Input;
      end
      5'hB : begin 
        output11_reg  = Input;
      end
      5'hC : begin 
        output12_reg  = Input;
      end
      5'hD : begin 
        output13_reg  = Input;
      end
      5'hE : begin
        output14_reg  = Input;
      end
      5'hF : begin 
        output15_reg = Input;
      end
      5'h10 : begin 
        output16_reg  = Input;
      end
      5'h11 : begin 
        output17_reg  = Input;
      end
      5'h12 : begin 
        output18_reg  = Input;
      end
      5'h13 : begin
        output19_reg  = Input;           
      end
      5'h14 : begin 
        output20_reg  = Input;
      end
      5'h15 : begin 
        output21_reg  = Input;
      end
      5'h16 : begin 
        output22_reg  = Input;
      end
      5'h17 : begin
        output23_reg  = Input;
      end
      5'h18 : begin 
        output24_reg = Input;
      end
      5'h19 : begin 
        output25_reg  = Input;
      end
      5'h1A : begin 
        output26_reg  = Input;
      end
      5'h1B : begin 
        output27_reg  = Input;
      end
      5'h1C : begin
        output28_reg  = Input;
    end 
      5'h1D : begin 
        output29_reg  = Input;
      end
      5'h1E : begin 
        output30_reg  = Input;
      end
      5'h1F : begin
        output31_reg  = Input;
    end    
    endcase
  end
  
endmodule
