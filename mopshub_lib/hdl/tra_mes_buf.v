//
// Verilog Module mopshub_lib.buffer_tra_data
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 11:42:25 08/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_tra_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [75:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst, 
   input   wire     debug_mode,
   output  wire    [4:0]   data_tra_select,
   output  wire    [75:0]  data_tra_out   // Output data to be written on the CAN bus
);

// Internal Declarations
reg [75:0] data_tra_reg;
reg [4:0] data_tra_select_reg;
wire [4:0]bus_id;
initial 
begin 
  data_tra_reg = 76'd0 ;
  data_tra_select_reg = 5'd0;
end
assign bus_id = (debug_mode ==0) ? data_tra_in[28:24]: 5'd0;
always@(posedge clk)
begin 
 if(!rst) data_tra_select_reg <= 5'd0;
 else
  if(buffer_en) data_tra_select_reg <= bus_id;
  else  data_tra_select_reg <= data_tra_select_reg;
end 

always@(posedge clk)
begin 
 if(!rst) data_tra_reg <= 76'd0;
 else
  if(buffer_en) data_tra_reg <= data_tra_in;
  else  data_tra_reg <= data_tra_reg;
end 

assign data_tra_out = data_tra_reg;
assign data_tra_select = data_tra_select_reg;
endmodule
