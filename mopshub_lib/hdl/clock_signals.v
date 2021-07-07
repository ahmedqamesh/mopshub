//
// Verilog Module mopshub_lib.clock_signals
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:54:58 06/30/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module clock_signals( 
   input   wire      clk   // write FIFO clk
);


// Internal Declarations
reg clk_reg = 1'b0;
assign clk = clk_reg;
always #10 clk_reg = ~clk_reg;
endmodule
