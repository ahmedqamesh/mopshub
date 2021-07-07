`resetall
`timescale 1ns/10ps
module tra_data_buf( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst, 
   output  wire            priority_sig,          //
   output  wire    [75:0]  data_tra_out   // Output data to be written on the CAN bus
);

// Internal Declarations
reg [75:0] data_tra_reg;
reg priority_sig_reg;
// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;
assign  priority_sig = priority_sig_reg;
always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 76'd0;
    priority_sig_reg <=0;
  end
 else
  if(buffer_en)
  begin
      data_tra_reg <= data_tra_in;
      priority_sig_reg <=1;
    end
  else
  begin 
   data_tra_reg <= data_tra_regVoted;
   priority_sig_reg <=0;
 end
end 
assign data_tra_out = data_tra_regVoted;
endmodule
