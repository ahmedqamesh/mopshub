`resetall
`timescale 1ns/10ps
module timout_rst_watchdog( 
   input   wire        clk, 
   input   wire        entimeout0, 
   input   wire        entimeout1, 
   input   wire        entimeout2, 
   input   wire [31:0] time_limit, 
   input   wire        rst, 
   output  wire        timeoutrst
);
//40MHZ clock gives 25 ns
//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [31:0] counter;
reg timeoutrstreg;

//Triplication signals
wire timeoutrstregVoted = timeoutrstreg;
assign timeoutrst = timeoutrstregVoted;
wire enable_timeout = entimeout0 ||entimeout1||entimeout2;
//triplication assginments
wire [31:0] counterVoted = counter;

always@(posedge clk)
begin 
if(!rst)
  begin
   counter <= 0;
  end
else 
begin 
  if(enable_timeout & !timeoutrst)
    counter <= {counterVoted + 1};
  else 
    begin
     counter <= 0;
    end
  end
end


always@(posedge clk)
begin 
  if(counterVoted >= time_limit)
      timeoutrstreg <= 1'b1;
  else
      timeoutrstreg <= 1'b0;
end 

endmodule // timeoutrst