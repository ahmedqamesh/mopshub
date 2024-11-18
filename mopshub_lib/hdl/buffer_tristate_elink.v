//
// Verilog Module mopshub_lib.buffer_tristate_elink
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 11:26:26 08/26/21
//
// ===================================================================
//
`resetall
`timescale 1ns/10ps
module buffer_tristate_elink( 
   input   wire           clk,
   input   wire           rst, 
   input   wire    [9:0]  data_tra_in0, 
   input   wire    [9:0]  data_tra_in1,  
   input   wire    [9:0]  data_tra_in2, 
   input   wire    [9:0]  data_tra_in3, 
   input   wire           buffer_en0,    // enable signal
   input   wire           buffer_en1,    // enable signal
   input   wire           buffer_en2,    // enable signal
   input   wire           buffer_en3,    // enable signal
   input   wire    [7 :0]  Kchar_comma,
   output  wire    [9:0]  data_tra_out   // Output data to be written on the CAN bus
);


// Internal Declarations
reg [9:0] data_tra_reg;
initial data_tra_reg = {2'b11,8'b10111100};
always@(*)
  begin 
   if(!rst)
      data_tra_reg <= {2'b11,Kchar_comma};
   else 
     begin
       if(buffer_en0) data_tra_reg <= data_tra_in0;
       else if(buffer_en1) data_tra_reg <= data_tra_in1;
       else if(buffer_en2) data_tra_reg <= data_tra_in2;
       else if(buffer_en3) data_tra_reg <= data_tra_in3;
       else data_tra_reg <= data_tra_in0;
     end
  end 
assign data_tra_out = data_tra_reg;
endmodule
