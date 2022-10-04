`resetall
`timescale 1ns/10ps
module bus_comp(
input wire  [4 :0] can_rec_select,
input wire  [4:0] can_tra_select,
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
