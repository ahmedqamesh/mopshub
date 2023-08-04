//
// Verilog Module mopshub_lib.bit_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:02:28 07/21/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module counter_bit#(
   // synopsys template
   parameter DSIZE       = 5
)
( 
   // Port Declarations
   input   wire    ext_rst, 
   input   wire    rst, 
   output  wire    [DSIZE-1:0]  data_out, 
   input   wire    clk, 
   input   wire    cnt_enable
);

// Internal Declarations
  reg [DSIZE:0] data_out_reg;
  initial data_out_reg =0;
  assign data_out = data_out_reg ;

  always @(posedge clk)
    if (!rst)  data_out_reg <= 0 ; 
    else
    begin 
    if (cnt_enable) data_out_reg <= data_out_reg + 1;
    else if (ext_rst ) data_out_reg <= 0 ; 
    else data_out_reg <= data_out_reg;
    end
endmodule 
