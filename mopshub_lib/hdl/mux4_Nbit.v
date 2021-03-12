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
module mux4_Nbit#(
  parameter N = 16
)( 
   // Port Declarations
   input   wire    [N-1:0]  data0, 
   input   wire    [N-1:0]  data1, 
   input   wire    [N-1:0]  data2, 
   input   wire    [N-1:0]  data3,  
   input   wire    [1:0]   sel, 
   output  wire    [N-1:0]  data_out
);
// Internal Declarations
reg [N-1:0] data_out_reg;
assign data_out = data_out_reg;
// Internal Declarations



/////////////////////////////////////////////////////////////////
// Flowchart process0
always @ (data0, data1, data2, data3, sel)
begin  
   case (sel)
   "00" : begin
      data_out_reg=data0;
   end
   "01" : begin
      data_out_reg=data1;
   end
   "10" : begin
      data_out_reg=data2;
   end
   "11" : begin
      data_out_reg=data3;
   end
   endcase
end
endmodule
