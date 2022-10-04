//
// Verilog Module mopshub_lib.mux4_Nbit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:01:50 03/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mux4_Nbit( 
   // Port Declarations
   input   wire            clk, 
   input   wire            rst,  
   input   wire    [7:0]  data0, 
   input   wire    [7:0]  data1, 
   input   wire    [7:0]  data2, 
   input   wire    [7:0]  data3,  
   input   wire    [1:0]   sel, 
   output  wire    [7:0]  data_out,
   input   wire    [7:0]  def_value
);
// Internal Declarations
reg [7:0] data_out_reg;
assign data_out = data_out_reg;

/////////////////////////////////////////////////////////////////
//always @ (data0, data1, data2, data3, sel)
always @ (posedge clk)
if (!rst) data_out_reg <=def_value;
else
begin  
   case (sel) 
   2'b00 : data_out_reg<=data0;//Read Wanted data
   2'b01 : data_out_reg<=data1;//Read EOP data
   2'b10 : data_out_reg<=data2;//Read SOP data
   2'b11 : data_out_reg<=data3;//Read Comma data
   default  data_out_reg<=def_value;
   endcase
end
endmodule
