//
// Verilog Module mopshub_lib.clk_div
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:09:42 07/06/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module clk_div( 
   input   wire      clk, 
   input   wire      rst, 
   output  wire      clk_low
);


// Internal Declarations
integer count = 0;
reg clk_out = 1'b0;

assign clk_low = clk_out;
always@(posedge clk or negedge rst)
begin 
  count <= count + 1;
  if (!rst)
    begin
      count   <= 0;
      clk_out <= 1'b0;
    end 
  else 
    begin 
     if(count == 39)
      begin
        clk_out <= !clk_out;
        count   <= 0;
      end
    end
end 
endmodule 