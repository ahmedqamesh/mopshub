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
module mux32_Nbit( 
  // Port Declarations
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
  input   wire    [15:0]  data16, 
  input   wire    [15:0]  data17, 
  input   wire    [15:0]  data18, 
  input   wire    [15:0]  data19, 
  input   wire    [15:0]  data20, 
  input   wire    [15:0]  data21, 
  input   wire    [15:0]  data22, 
  input   wire    [15:0]  data23, 
  input   wire    [15:0]  data24, 
  input   wire    [15:0]  data25, 
  input   wire    [15:0]  data26, 
  input   wire    [15:0]  data27, 
  input   wire    [15:0]  data28, 
  input   wire    [15:0]  data29, 
  input   wire    [15:0]  data30, 
  input   wire    [15:0]  data31,  
  input   wire    [4:0]   sel, 
  output  wire    [15:0]  data_out
  );
  
  
  // Internal Declarations
  reg [15:0] data_out_r;
  initial data_out_r = 16'b0;
  assign data_out = data_out_r;
  /////////////////////////////////////////////////////////////////
  // Flowchart process0
  always @ (*)
  begin 
    case (sel)
      5'b000  : data_out_r=data0;
      5'b001  : data_out_r=data1;
      5'b010  : data_out_r=data2;
      5'b011  : data_out_r=data3;
      5'b100  : data_out_r=data4;
      5'b101  : data_out_r=data5;
      5'b110  : data_out_r=data6;
      5'b111  : data_out_r=data7;
      
      5'b1000 : data_out_r=data8;
      5'b1001 : data_out_r=data9;
      5'b1010 : data_out_r=data10;
      5'b1011 : data_out_r=data11;
      5'b1100 : data_out_r=data12;
      5'b1101 : data_out_r=data13;
      5'b1110 : data_out_r=data14;    
      5'b1111 : data_out_r=data15;
      
      5'b10000  : data_out_r=data16;
      5'b10001  : data_out_r=data17;
      5'b10010  : data_out_r=data18;
      5'b10011  : data_out_r=data19;
      5'b10100  : data_out_r=data20;
      5'b10101  : data_out_r=data21;
      5'b10110  : data_out_r=data22;
      5'b10111  : data_out_r=data23;
            
      5'b11000  : data_out_r=data24;
      5'b11001  : data_out_r=data25;
      5'b11010  : data_out_r=data26;
      5'b11011  : data_out_r=data27;
      5'b11100  : data_out_r=data28;
      5'b11101  : data_out_r=data29;
      5'b11110  : data_out_r=data30;
      5'b11111  : data_out_r=data31;
      
      default : data_out_r=16'b0;
      
    endcase
  end
  
endmodule
