//
// Verilog Module mopshub_lib.buffer_tra_spi_data
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:04:40 01/27/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_tra_spi_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [31:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst, 
   output  wire    [11:0]  spi_id,
   output  wire    [7:0]   spi_reg,
   output  wire    [7:0]   data_tra_out   // Output data to be written on the CAN bus
);

// Internal Declarations
reg [7:0] data_tra_reg = 8'd0 ;
reg [11:0] spi_id_reg = 12'd0;
reg [7:0]  spi_reg_reg = 12'd0;

// Triplication assignment
wire [7:0] data_tra_regVoted = data_tra_reg;
wire [11:0] spi_id_regVoted = spi_id_reg;
wire [7:0] spi_reg_regVoted = spi_reg_reg;

always@(posedge clk)
begin 
 if(!rst) spi_id_reg <= 12'd0;
 else
  if(buffer_en) spi_id_reg <= data_tra_in[31:20];
  else  spi_id_reg <= spi_id_regVoted;
end 

always@(posedge clk)
begin 
 if(!rst) spi_reg_reg <= 12'd0;
 else
  if(buffer_en) spi_reg_reg <= data_tra_in[20:12];
  else  spi_reg_reg <= spi_reg_regVoted;
end 

always@(posedge clk)
begin 
 if(!rst) data_tra_reg <= 28'd0;
 else
  if(buffer_en) data_tra_reg <= data_tra_in[11:4];
  else  data_tra_reg <= data_tra_regVoted;
end 

assign data_tra_out = data_tra_regVoted;
assign spi_id = spi_id_regVoted;
assign spi_reg = spi_reg_regVoted;
endmodule
