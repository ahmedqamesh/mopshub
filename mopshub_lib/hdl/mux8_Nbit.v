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
module mux8_Nbit#(
  parameter N = 16
)( 
   // Port Declarations
   input   wire    [N-1:0]  data0, 
   input   wire    [N-1:0]  data1, 
   input   wire    [N-1:0]  data2, 
   input   wire    [N-1:0]  data3, 
   input   wire    [N-1:0]  data4, 
   input   wire    [N-1:0]  data5, 
   input   wire    [N-1:0]  data6, 
   input   wire    [N-1:0]  data7, 
   input   wire    [2:0]   sel, 
   output  wire    [N-1:0]  data_out
);


// Internal Declarations
reg [N-1:0] data_out_r = 0;
assign data_out = data_out_r;

always @ (data0, data1, data2, data3, data4, data5, data6, data7,  sel)
begin  
   case (sel)
   3'b000 : begin
      data_out_r=data0;
   end
   3'b001 : begin
      data_out_r=data1;
   end
   3'b010 : begin
      data_out_r=data2;
   end
   3'b011 : begin
      data_out_r=data3;
   end
   3'b100 : begin
      data_out_r=data4;
   end
   3'b101 : begin
      data_out_r=data5;
   end
   3'b110 : begin
      data_out_r=data6;
   end
   3'b111 : begin
      data_out_r=data7;
   end
   default : data_out_r=0;
   
   endcase
end

endmodule