`resetall
`timescale 1ns/10ps
module tra_mes_buf( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            en,            // enable signal
   input   wire            rst,           //
   output  wire    [75:0]  data_tra_out,  // Output data to be written on the CAN bus
   output  wire    [4:0]   data_tra_bus
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [75:0] data_tra_reg;
reg [4:0] data_bus_reg;

// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;
wire [4:0] data_bus_regVoted = data_bus_reg;

always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 76'd0;
    data_bus_reg <= 5'd0; 
  end
 else
  if(en)
    begin
      data_tra_reg <= data_tra_in;
      data_bus_reg <= data_tra_in[20:16];
    end
  else 
   data_tra_reg <= data_tra_regVoted;
   data_bus_reg <= data_bus_regVoted;
end 

assign data_tra_out = data_tra_regVoted;
assign data_tra_bus = data_bus_regVoted;
endmodule
