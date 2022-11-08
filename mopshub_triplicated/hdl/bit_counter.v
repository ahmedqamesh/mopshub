//
// Verilog Module mopshub_lib.bit_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:02:28 07/21/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

//`resetall
//`timescale 1ns/10ps

module bit_counter( 
   // Port Declarations
   input   wire                    ext_rst, 
   input   wire                    rst, 
   output  wire    [4:0]  data_out, 
   input   wire                    clk, 
   input   wire                    cnt_enable
);

// Internal Declarations
  reg [4:0] data_out_reg;
  assign data_out = data_out_reg ;
  
//Voter
//tmrg triplicate data_out_reg
//Voter

  always @(posedge clk)
    if (!rst | ext_rst) 
      begin
        data_out_reg <= 5'b00000 ; 
      end 
    else if (cnt_enable) 
      begin
        data_out_reg <= data_out + 1;
      end
endmodule 
