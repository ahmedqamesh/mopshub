//
// Verilog Module mopshub_lib.bit_counter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 21:56:32 06/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module bit_counter  #(
  parameter bit_size = 5
  )(
  output wire [bit_size-1:0] data_out     ,  // Output of the counter
  input wire enable  ,  // enable for counter
  input wire clk     ,  // clock Input
  input wire rst     , // reset Input
  input wire ext_rst 
  );
  //------------Internal Variables--------
  reg [bit_size-1:0] data_out_reg;
  assign data_out = data_out_reg ;
  //-------------Code Starts Here-------
  always @(posedge clk)
    if (!rst | ext_rst) 
      begin
        data_out_reg <= 5'b00000 ; //Default number is 0 
      end 
    else if (enable) 
      begin
        data_out_reg <= data_out_reg + 1;
      end
endmodule 