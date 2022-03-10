`resetall
`timescale 1ns/10ps
module buffer_tra_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst, 
   output  wire    [4:0]   data_tra_select,
   output  wire    [75:0]  data_tra_out   // Output data to be written on the CAN bus
);

// Internal Declarations
reg [75:0] data_tra_reg = 76'd0 ;
reg [4:0] data_tra_select_reg = 5'd0;
// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;
wire [4:0] data_tra_select_regVoted = data_tra_select_reg;


always@(posedge clk)
begin 
 if(!rst) data_tra_select_reg <= 5'd0;
 else
  if(buffer_en) data_tra_select_reg <= data_tra_in[28:24];
  else  data_tra_select_reg <= data_tra_select_regVoted;
end 

always@(posedge clk)
begin 
 if(!rst) data_tra_reg <= 76'd0;
 else
  if(buffer_en) data_tra_reg <= data_tra_in;
  else  data_tra_reg <= data_tra_regVoted;
end 

assign data_tra_out = data_tra_regVoted;
assign data_tra_select = data_tra_select_regVoted;
endmodule
