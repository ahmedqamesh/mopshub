//
// Verilog Module mopshub_lib.buffer_irq_set
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:24:14 04/13/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_irq_set(
   // Port Declarations
   input   wire           clk,
   input   wire           rst, 
   input   wire   [4:0]   bus_rec_select,
   output  wire           data_out, 
   input   wire   [4:0]   bus_id,  
   input   wire           set_buffer,
   input   wire           rst_buffer
);

// Internal Declarations
reg  output_reg;
initial output_reg = 1'b0;     

always @(posedge clk)
  begin
    if (!rst) output_reg <=  1'b0; 
    else if (set_buffer) output_reg <= set_buffer;    //Set the irqsucrec buffer    
    else if (rst_buffer && bus_rec_select == bus_id) output_reg = 1'b0;  //Restst the irqsucrec buffer
    else output_reg <= output_reg;
  end

assign data_out = output_reg ;
endmodule 
