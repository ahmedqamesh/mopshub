`resetall
`timescale 1ns/10ps
module timout_rst_module( 
   input   wire        clk, 
   input   wire        entimeout, 
   input   wire [31:0] time_limit, 
   input   wire        rst, 
   output  wire        timeoutrst
);
//40MHZ clock gives 25 ns
// Internal Declarations
reg [31:0] counter;
reg timeoutrstreg;


assign timeoutrst = timeoutrstreg;


always@(posedge clk)
begin 
if(!rst)
  begin
   counter <= 0;
  end
else 
begin 
  if(entimeout & !timeoutrstreg)
    counter <= {counter + 1};
  else 
    begin
     counter <= 0;
    end
  end
end


always@(posedge clk)
begin 
  if(counter >= time_limit)
      timeoutrstreg <= 1'b1;
  else
      timeoutrstreg <= 1'b0;
end 

endmodule // timeoutrst

