`resetall
`timescale 1ns/10ps
module mux32_1_1bit( 
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
  input   wire            input15,
  input   wire            input16, 
  input   wire            input17,
  input   wire            input18, 
  input   wire            input19, 
  input   wire            input20, 
  input   wire            input21, 
  input   wire            input22, 
  input   wire            input23, 
  input   wire            input24,   
  input   wire            input25,
  input   wire            input26, 
  input   wire            input27, 
  input   wire            input28, 
  input   wire            input29, 
  input   wire            input30, 
  input   wire            input31 
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
        5'h10 : output_port_reg <= input16 ;
        5'h11 : output_port_reg <= input17 ;
        5'h12 : output_port_reg <= input18 ;
        5'h13 : output_port_reg <= input19 ;           
        5'h14 : output_port_reg <= input20 ;
        5'h15 : output_port_reg <= input21 ;
        5'h16 : output_port_reg <= input22 ;
        5'h17 : output_port_reg <= input23 ;
        5'h18 : output_port_reg <= input24;
        5'h19 : output_port_reg <= input25 ;
        5'h1A : output_port_reg <= input26 ;
        5'h1B : output_port_reg <= input27 ;
        5'h1C : output_port_reg <= input28 ; 
        5'h1D : output_port_reg <= input29 ;
        5'h1E : output_port_reg <= input30 ;
        5'h1F : output_port_reg <= input31 ; 
        
        default: output_port_reg <= def_value;
      endcase
  end
endmodule
