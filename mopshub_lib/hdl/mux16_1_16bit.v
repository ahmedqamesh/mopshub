//
// Verilog Module mopshub_lib.mux32_Nbit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 22:55:59 07/24/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mux16_1_16bit( 
  // Port Declarations
  input   wire            clk, 
  input   wire            rst, 
  input   wire    [15:0]  data0, 
  input   wire    [15:0]  data1, 
  input   wire    [15:0]  data2, 
  input   wire    [15:0]  data3, 
  input   wire    [15:0]  data4, 
  input   wire    [15:0]  data5, 
  input   wire    [15:0]  data6, 
  input   wire    [15:0]  data7, 
  input   wire    [15:0]  data8, 
  input   wire    [15:0]  data9, 
  input   wire    [15:0]  data10, 
  input   wire    [15:0]  data11, 
  input   wire    [15:0]  data12, 
  input   wire    [15:0]  data13, 
  input   wire    [15:0]  data14, 
  input   wire    [15:0]  data15, 
  input   wire    [4:0]   sel, 
  output  wire    [15:0]  data_out
  );
  // Internal Declarations
  reg [15:0] data_out_r;
  initial data_out_r = 16'b0;
  assign data_out = data_out_r;
  /////////////////////////////////////////////////////////////////
  // Flowchart process0
always @ (posedge clk)
if (!rst) data_out_r <=16'b0;
else
  begin 
    case (sel)
      5'b000  : data_out_r<=data0;
      5'b001  : data_out_r<=data1;
      5'b010  : data_out_r<=data2;
      5'b011  : data_out_r<=data3;
      5'b100  : data_out_r<=data4;
      5'b101  : data_out_r<=data5;
      5'b110  : data_out_r<=data6;
      5'b111  : data_out_r<=data7;
      
      5'b1000 : data_out_r<=data8;
      5'b1001 : data_out_r<=data9;
      5'b1010 : data_out_r<=data10;
      5'b1011 : data_out_r<=data11;
      5'b1100 : data_out_r<=data12;
      5'b1101 : data_out_r<=data13;
      5'b1110 : data_out_r<=data14;    
      5'b1111 : data_out_r<=data15;
      
      default : data_out_r<=16'b0;
      
    endcase
  end
  
endmodule
