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
   input   wire    [4:0]  data_tra_in0, 
   input   wire    [4:0]  data_tra_in1, 
   input   wire    [4:0]  data_tra_in2, 
   input   wire    [4:0]  data_tra_in3,
   input   wire    [4:0]  data_tra_in4,
   input   wire    [4:0]  data_tra_in5,
   input   wire           buffer_en0,    // enable signal
   input   wire           buffer_en1,    // enable signal
   input   wire           buffer_en2,    // enable signal
   input   wire           buffer_en3,    // enable signal
   input   wire           buffer_en4,    // enable signal
   input   wire           buffer_en5,    // enable signal
   input   wire           rst, 
   output  wire    [4:0]  data_tra_out   // Output data to be written on the CAN bus
);


// Internal Declarations
reg [4:0] data_tra_reg;
// Triplication assignment
wire [4:0] data_tra_regVoted = data_tra_reg;
always@(posedge clk or negedge rst)
begin 
 if(!rst)
  begin
    data_tra_reg <= 5'd0;
  end
 else if(buffer_en0)
  begin
      data_tra_reg <= data_tra_in0;
    end
  else if(buffer_en1)
  begin
      data_tra_reg <= data_tra_in1;
    end
 else if(buffer_en2)
  begin
      data_tra_reg <= data_tra_in2;
    end
 else if(buffer_en3)
  begin
      data_tra_reg <= data_tra_in3;
    end
 else if(buffer_en4)
  begin
      data_tra_reg <= data_tra_in4;
    end
 else if(buffer_en5)
  begin
      data_tra_reg <= data_tra_in5;
    end
  else
  begin 
   data_tra_reg <= data_tra_regVoted;
 end
end 
assign data_tra_out = data_tra_regVoted;
endmodule