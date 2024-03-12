`resetall
`timescale 1ns/10ps
module timeout_rst_module( 
   input   wire        clk, 
   input   wire        enable_timeout, 
   input   wire [31:0] time_limit, 
   input   wire        rst, 
   output  wire        rst_timeout
);
//40MHZ clock gives 25 ns
// Internal Declarations
reg [31:0] counter;
reg rst_timeoutreg;


assign rst_timeout = rst_timeoutreg;


always@(posedge clk)
begin 
if(!rst)
  begin
   counter <= 0;
  end
else 
begin 
  if(enable_timeout & !rst_timeoutreg)
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
      rst_timeoutreg <= 1'b1;
  else
      rst_timeoutreg <= 1'b0;
end 

endmodule // rst_timeout

