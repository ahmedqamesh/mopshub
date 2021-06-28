`resetall
`timescale 1ns/10ps
module tra_mes_buf( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst,           //
   output  wire    [75:0]  data_tra_out   // Output data to be written on the CAN bus
);


// Internal Declarations
reg [75:0] data_tra_reg;
// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;
always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 76'd0;
  end
 else
  if(buffer_en)
  begin
      data_tra_reg <= data_tra_in;
    end
  else
  begin 
   data_tra_reg <= data_tra_regVoted;
 end
end 
assign data_tra_out = data_tra_regVoted;
endmodule
