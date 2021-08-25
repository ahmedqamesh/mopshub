//
// Verilog Module mopshub_lib.mux_bus_select
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:57:38 08/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mux_bus_select#(
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
   input   wire    [4:0]    sel, 
   output  wire    [N-1:0]  data_out
);

// Internal Declarations
reg [N-1:0] data_out_r = 0;
assign data_out = data_out_r;

always @ (data0, data1, data2, data3, data4, data5, data6, data7, sel)
begin  
   case (sel)
   5'b01000 : begin //Initialize
      data_out_r=data0;
   end
   5'b11000 : begin
      data_out_r=data1;//Initialize//Write
   end
   5'b00100 : begin
      data_out_r=data2; //read
   end
   5'b01001 : begin //reset
      data_out_r=data3;
   end
   5'b00110 : begin // Compare Bus ID
      data_out_r=data4;
   end
   default : data_out_r=data_out_r;
   
   endcase
end

endmodule