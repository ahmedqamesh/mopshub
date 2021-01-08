`resetall
`timescale 1ns/10ps
module timoutrst( 
   input   wire      clk, 
   input   wire      entimeout, 
   input   wire      rst, 
   output  wire      timeoutrst
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [31:0] counter;
reg timeoutrstreg;

//Triplication signals
wire timeoutrstregVoted = timeoutrstreg;
assign timeoutrst = timeoutrstregVoted;

//triplication assginments
wire [31:0] counterVoted = counter;

always@(posedge clk or negedge rst)
begin 
if(!rst)
  begin
   counter <= 0;
  end
else 
begin 
  if(entimeout)
    counter <= {counterVoted + 1};
  else 
    begin
     counter <= 0;
    end
  end
end


always@(posedge clk)
begin 
  if(counterVoted >= 32'd900000)
      timeoutrstreg <= 1'b1;
  else
      timeoutrstreg <= 1'b0;
end 

endmodule // timeoutrst
