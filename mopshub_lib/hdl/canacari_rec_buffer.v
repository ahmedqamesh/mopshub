//
// Verilog Module mopshub_lib.canacari_rec_buffer
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 21:44:12 07/30/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_rec_canakari(
   input   wire            clk, 
   input   wire    [4:0]  data_tra_in,   // input data from the SCB or Object Dictionary side
   input   wire            buffer_en,     // enable signal
   input   wire            rst, 
   output  wire    [4:0]  data_tra_out   // Output data to be written on the CAN bus
);

// Internal Declarations
reg [4:0] data_tra_reg;

always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 5'd0;
  end
 else
  if(buffer_en)
  begin
      data_tra_reg <= data_tra_in;
    end
  else
  begin 
   data_tra_reg <= data_tra_reg;
 end
end 
assign data_tra_out = data_tra_reg;
endmodule