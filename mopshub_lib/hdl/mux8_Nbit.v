//
// Verilog Module mopshub_lib.mux8_Nbit_arc
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:22:16 02/22/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mux8_Nbit( 
   // Port Declarations
   input   wire            clk, 
   input   wire            rst,  
   input   wire    [1:0]  data0, 
   input   wire    [1:0]  data1, 
   input   wire    [1:0]  data2, 
   input   wire    [1:0]  data3, 
   input   wire    [1:0]  data4, 
   input   wire    [1:0]  data5, 
   input   wire    [1:0]  data6, 
   input   wire    [1:0]  data7, 
   input   wire    [2:0]  sel, 
   output  wire    [1:0]  data_out
);


// Internal Declarations
reg [1:0] data_out_r;
initial data_out_r = 0;
assign data_out = data_out_r;
always @ (posedge clk)
if (!rst) data_out_r <=2'b0;
else  
//always @ (data0, data1, data2, data3, data4, data5, data6, data7,  sel)
begin  
   case (sel)
   3'b000  : data_out_r=data0;
   3'b001  : data_out_r=data1;
   3'b010  : data_out_r=data2;
   3'b011  : data_out_r=data3;
   3'b100  : data_out_r=data4;
   3'b101  : data_out_r=data5;
   3'b110  : data_out_r=data6;
   3'b111  : data_out_r=data7;
   default : data_out_r=2'b0;
   endcase
end

endmodule
