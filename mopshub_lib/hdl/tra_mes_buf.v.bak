`resetall
`timescale 1ns/10ps
module tra_mes_buf#(
    parameter DATA_CAN_WIDTH = 76
    )( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [DATA_CAN_WIDTH - 1:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            en,            // enable signal
   input   wire            rst,           //
   output  wire    [DATA_CAN_WIDTH - 1:0]  data_tra_out,  // Output data to be written on the CAN bus
   output  wire    [4: 0]  data_tra_select
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [75:0] data_tra_reg;
reg [4: 0] data_tra_select_reg;
// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;
wire [4:0] data_tra_select_regVoted = data_tra_select_reg;
always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 76'd0;
    data_tra_select_reg <= 5'd0;
  end
 else
  if(en)
  begin
      data_tra_reg <= data_tra_in;
      data_tra_select_reg <= data_tra_in[4:0];
    end
  else
  begin 
   data_tra_reg <= data_tra_regVoted;
   data_tra_select_reg <= data_tra_select_regVoted;
 end
end 

assign data_tra_out = data_tra_regVoted;
assign data_tra_select = data_tra_select_regVoted;
endmodule
