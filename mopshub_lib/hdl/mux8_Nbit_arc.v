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
reg [N-1:0] data_out_reg;
assign data_out = data_out_reg;
// Internal Declarations



/////////////////////////////////////////////////////////////////
// Flowchart process0
always @ (data0, data1, data2, data3, data4, data5, data6, data7, sel)
begin : process0_flowchart_proc
   case (sel)
   "000" : begin
      data_out_reg<=data0;
   end
   "001" : begin
      data_out_reg<=data1;
   end
   "010" : begin
      data_out_reg<=data2;
   end
   "011" : begin
      data_out_reg<=data3;
   end
   "100" : begin
      data_out_reg<=data4;
   end
   "101" : begin
      data_out_reg<=data5;
   end
   "110" : begin
      data_out_reg<=data6;
   end
   "111" : begin
      data_out_reg<=data7;
   end
   endcase
end

endmodule