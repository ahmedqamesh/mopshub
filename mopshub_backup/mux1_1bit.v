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
module mux1_1bit#(
  parameter def_value = 1'b1
  )( 
  input   wire    [4:0]  sel,
  output  wire           output_port,  
  input   wire            input9, 
  input   wire            input18, 
  input   wire            input19, 
  input   wire            input20, 
  input   wire            input21, 
  input   wire            input22, 
  input   wire            input23, 
  input   wire            input24, 
  input   wire            input4, 
  input   wire            input5, 
  input   wire            input6, 
  input   wire            input7, 
  input   wire            input8, 
  input   wire            input10, 
  input   wire            input11, 
  input   wire            input12, 
  input   wire            input13, 
  input   wire            input14, 
  input   wire            input15, 
  input   wire            input16, 
  input   wire            input17, 
  input   wire            input0, 
  input   wire            input1, 
  input   wire            input2, 
  input   wire            input3, 
  input   wire            input26, 
  input   wire            input27, 
  input   wire            input28, 
  input   wire            input29, 
  input   wire            input30, 
  input   wire            input31, 
  input   wire            input25
  );
reg output_port_reg =def_value;   
assign output_port = output_port_reg;
  
always @(*)
  begin
    output_port_reg = def_value;
      case (sel)
        5'h0 : begin 
        output_port_reg = input0;
        end
        5'h1 : begin 
        output_port_reg = input1 ;
        end
        5'h2 : begin 
        output_port_reg = input2 ;
        end
        5'h3 : begin 
        output_port_reg = input3 ;
        end
        5'h4 : begin
        output_port_reg = input4 ;
        end
        5'h5 : begin 
        output_port_reg = input5;
        end
        5'h6 : begin 
        output_port_reg = input6 ;
        end
        5'h7 : begin 
        output_port_reg = input7 ;
        end
        5'h8 : begin 
        output_port_reg = input8 ;
        end
        5'h9 : begin
        output_port_reg = input9 ;
        end
        5'hA : begin 
        output_port_reg = input10;
        end
        5'hB : begin 
        output_port_reg = input11 ;
        end
        5'hC : begin 
        output_port_reg = input12 ;
        end
        5'hD : begin 
        output_port_reg = input13 ;
        end
        5'hE : begin
        output_port_reg = input14 ;
        end
        5'hF : begin 
        output_port_reg = input15;
        end
        5'h10 : begin 
        output_port_reg = input16 ;
        end
        5'h11 : begin 
        output_port_reg = input17 ;
        end
        5'h12 : begin 
        output_port_reg = input18 ;
        end
        5'h13 : begin
        output_port_reg = input19 ;           
        end
        5'h14 : begin 
        output_port_reg = input20 ;
        end
        5'h15 : begin 
        output_port_reg = input21 ;
        end
        5'h16 : begin 
        output_port_reg = input22 ;
        end
        5'h17 : begin
        output_port_reg = input23 ;
        end
        5'h18 : begin 
        output_port_reg = input24;
        end
        5'h19 : begin 
        output_port_reg = input25 ;
        end
        5'h1A : begin 
        output_port_reg = input26 ;
        end
        5'h1B : begin 
        output_port_reg = input27 ;
        end
        5'h1C : begin
        output_port_reg = input28 ;
        end 
        5'h1D : begin 
        output_port_reg = input29 ;
        end
        5'h1E : begin 
        output_port_reg = input30 ;
        end
        5'h1F : begin
        output_port_reg = input31 ;
        end    
      endcase
  end
endmodule
