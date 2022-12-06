//
// Verilog Module mopshub_lib.demux8_Nbit
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:41:41 03/21/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//
`resetall
`timescale 1ns/10ps
module demux8_Nbit #(
parameter N = 10
)(
input   wire    [2:0]  sel,
input   wire    [1:0]  EDATA_2bit,  
output  wire    [N-1:0]  enc10bit_out
);
    
reg  [9:0] enc10bit_r= 10'b0;

assign enc10bit_out = enc10bit_r;
 always @(EDATA_2bit or sel)
 begin 
  case (sel)
      3'b000 : begin 
               enc10bit_r[1:0] = EDATA_2bit;
              end
      3'b001 : begin 
              enc10bit_r[3:2] = EDATA_2bit;
              end
      3'b010 : begin 
               enc10bit_r[5:4] = EDATA_2bit;
              end
      3'b011 : begin 
               enc10bit_r[7:6] = EDATA_2bit;
              end
      3'b100 : begin
               enc10bit_r[9:8]= EDATA_2bit;
               end
  endcase
end

endmodule
