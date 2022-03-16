//
// Verilog Module mopshub_lib.buffer_tristate_busid
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:26:26 08/26/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_tristate_busid( 
   input   wire           clk,
   input   wire           rst, 
   input   wire    [4:0]  data_tra_in0, 
   input   wire    [4:0]  data_tra_in1, 
   input   wire    [4:0]  data_tra_in2, 
   input   wire    [4:0]  data_tra_in3,
   input   wire           buffer_en0,    // enable signal
   input   wire           buffer_en1,    // enable signal
   input   wire           buffer_en2,    // enable signal
   input   wire           buffer_en3,    // enable signal
   output  wire    [4:0]  data_tra_out   // Output data to be written on the CAN bus
);


// Internal Declarations
reg [4:0] data_tra_reg;
initial data_tra_reg = 5'h0;
always@(posedge clk)
  begin 
   if(!rst)
      data_tra_reg <= 5'd0;
   else 
     begin
       if(buffer_en0) data_tra_reg <= data_tra_in0;
       else if(buffer_en1) data_tra_reg <= data_tra_in1;
       else if(buffer_en2) data_tra_reg <= data_tra_in2;
       else if(buffer_en3) data_tra_reg <= data_tra_in3;
       else
         data_tra_reg <= data_tra_reg;
     end
  end 
assign data_tra_out = data_tra_reg;
endmodule
