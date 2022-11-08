//`resetall
//`timescale 1ns/10ps
module timout_rst( 
   input   wire        clk, 
   input   wire        entimeout, 
   input   wire [31:0] time_limit, 
   input   wire        rst, 
   output  wire        timeoutrst
);
//40MHZ clock gives 25 ns

// Internal Declarations
reg [31:0] counter;


//Voter
//tmrg triplicate counter
wire [31:0] counterV = counter; 
//Voter

always@(posedge clk)
begin 
if(!rst)
  begin
   counter <= 0;
  end
else 
begin 
  if(entimeout & !timeoutrst)
    counter <= {counterV + 1};
  else 
    begin
     counter <= 0;
    end
  end
end
 
assign timeoutrst = (counterV >= time_limit) ? 1'b1 : 1'b0;

/*
always@(posedge clk)
begin 
  if(counterVoted >= time_limit)
      timeoutrstreg <= 1'b1;
  else
      timeoutrstreg <= 1'b0;
end 
*/
endmodule // timeoutrst