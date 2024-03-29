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
module mux32_Nbit#(
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
  input   wire    [N-1:0]  data8, 
  input   wire    [N-1:0]  data9, 
  input   wire    [N-1:0]  data10, 
  input   wire    [N-1:0]  data11, 
  input   wire    [N-1:0]  data12, 
  input   wire    [N-1:0]  data13, 
  input   wire    [N-1:0]  data14, 
  input   wire    [N-1:0]  data15, 
  input   wire    [N-1:0]  data16, 
  input   wire    [N-1:0]  data17, 
  input   wire    [N-1:0]  data18, 
  input   wire    [N-1:0]  data19, 
  input   wire    [N-1:0]  data20, 
  input   wire    [N-1:0]  data21, 
  input   wire    [N-1:0]  data22, 
  input   wire    [N-1:0]  data23, 
  input   wire    [N-1:0]  data24, 
  input   wire    [N-1:0]  data25, 
  input   wire    [N-1:0]  data26, 
  input   wire    [N-1:0]  data27, 
  input   wire    [N-1:0]  data28, 
  input   wire    [N-1:0]  data29, 
  input   wire    [N-1:0]  data30, 
  input   wire    [N-1:0]  data31,  
  input   wire    [4:0]   sel, 
  output  wire    [N-1:0]  data_out
  );
  
  
  // Internal Declarations
  reg [N-1:0] data_out_r = 16'b0;
  assign data_out = data_out_r;
  /////////////////////////////////////////////////////////////////
  // Flowchart process0
  always @ (*)
  begin 
    case (sel)
      5'b000 : begin
        data_out_r=data0;
      end
      5'b001 : begin
        data_out_r=data1;
      end
      5'b010 : begin
        data_out_r=data2;
      end
      5'b011 : begin
        data_out_r=data3;
      end
      5'b100 : begin
        data_out_r=data4;
      end
      5'b101 : begin
        data_out_r=data5;
      end
      5'b110 : begin
        data_out_r=data6;
      end
      5'b111 : begin
        data_out_r=data7;
      end
      default : data_out_r=0;
      
    endcase
  end
  
endmodule
