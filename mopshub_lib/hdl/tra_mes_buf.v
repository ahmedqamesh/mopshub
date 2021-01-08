`resetall
`timescale 1ns/10ps
module tra_mes_buf( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            en,            // enable signal
   input   wire            rst,           //
   output  wire    [75:0]  data_tra_out,  // Output data to be written on the CAN bus
   input   wire            sdobuf,        // indicates the message written is SDO
   input   wire            pdobuf         // Indicates the message written is PDO
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [75:0] data_tra_reg;

// Triplication assignment
wire [75:0] data_tra_regVoted = data_tra_reg;

always@(posedge clk or negedge rst)
begin 
 if(!rst)
  data_tra_reg <= 76'd0;
 else
  if(en)
   data_tra_reg <= data_tra_in;
  else 
   data_tra_reg <= data_tra_regVoted;
end 

assign data_tra_out = data_tra_regVoted;


// ### Please start your Verilog code here ### 

endmodule
