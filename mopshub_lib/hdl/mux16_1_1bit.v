//
// Verilog Module mopshub_lib.mux1_1bit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 10:56:59 06/07/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

module mux16_1_1bit( 
   input   wire            clk, 
   input   wire            rst,  
  input   wire    [4:0]   sel,
  input    wire           def_value,
  output  wire            output_port,  
  input   wire            input0, 
  input   wire            input1, 
  input   wire            input2, 
  input   wire            input3,   
  input   wire            input4, 
  input   wire            input5, 
  input   wire            input6, 
  input   wire            input7, 
  input   wire            input8, 
  input   wire            input9,   
  input   wire            input10, 
  input   wire            input11, 
  input   wire            input12, 
  input   wire            input13, 
  input   wire            input14, 
  input   wire            input15
  );
reg output_port_reg;
initial  output_port_reg =1'b0;
assign output_port = output_port_reg;
 always @ (posedge clk)
if (!rst) output_port_reg <=def_value;
else
  begin
      case (sel)
        5'h0  : output_port_reg <= input0 ;
        5'h1  : output_port_reg <= input1 ;
        5'h2  : output_port_reg <= input2 ;
        5'h3  : output_port_reg <= input3 ;
        5'h4  : output_port_reg <= input4 ;
        5'h5  : output_port_reg <= input5;
        5'h6  : output_port_reg <= input6 ;
        5'h7  : output_port_reg <= input7 ;
        5'h8  : output_port_reg <= input8 ;
        5'h9  : output_port_reg <= input9 ;
        5'hA  : output_port_reg <= input10;
        5'hB  : output_port_reg <= input11 ;
        5'hC  : output_port_reg <= input12 ;
        5'hD  : output_port_reg <= input13 ;
        5'hE  : output_port_reg <= input14 ;
        5'hF  : output_port_reg <= input15;  
        default: output_port_reg <= def_value;
      endcase
  end
endmodule
