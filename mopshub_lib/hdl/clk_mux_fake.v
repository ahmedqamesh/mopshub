//
// Verilog Module mopshub_lib.clk_mux_fake
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:05:44 03/18/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module clk_mux_fake(
	 input   wire  		clk_in_sel,
		//Clock out ports  
	output   wire  					clk_mux,
		//Status and control signals                
	input   wire  					reset,
	output   wire  					locked,
		//Clock in ports
  input   wire  			clk_downlink,
	input   wire  			clk_uplink
);


reg clk_mux_reg = 1'b0;
reg locked_reg  = 1'b0;
always @(*)
  if (reset) 
    begin
      clk_mux_reg <= 1'b0 ;
      locked_reg<=1'b1; 
    end 
  else 
  begin
  locked_reg<=1'b0;
  if (clk_in_sel) clk_mux_reg <= clk_uplink ;
  else clk_mux_reg <= clk_uplink;
  end

assign clk_mux = clk_mux_reg;
assign locked=locked_reg;
endmodule
