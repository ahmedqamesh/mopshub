//
// Verilog Module mopshub_lib.bus_comp
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:30:04 06/28/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module bus_comp #(
parameter max_bit_size = 5
)(
input wire  [max_bit_size-1 :0] can_rec_select,
input wire  [max_bit_size-1 :0] can_tra_select,
output wire   bus_match
);
reg bus_match_reg;
assign bus_match = bus_match_reg;
always @(*)
  begin
    if(can_rec_select == can_tra_select)
      bus_match_reg   <= 1'b1;
    else 
      bus_match_reg   <= 1'b0;
  end
endmodule