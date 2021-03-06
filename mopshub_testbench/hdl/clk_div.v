`resetall
`timescale 1ns/10ps
module clk_div(
input wire clk,
output wire clk_low,
input rst
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
