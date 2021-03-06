//
// Verilog Module mopshub_lib.initialize_block_mopshub
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 12:24:48 05/13/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module initialize_block_mopshub( 
   input   wire    [4:0]   addr,       // Address of the Canakari registers
   output  wire    [15:0]  data_init  // Ouput data to be written to the registers
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [15:0] data_init_reg;
assign data_init = data_init_reg;

always @ (*)
begin
   case(addr)
       5'b01111 : data_init_reg = 16'h0033;//FF;//         //  prescalar register value 5'h0F
       5'b01110 : data_init_reg = 16'h00E3;//A3;//         // general register.first 7bits=0 then sjw,tseg1,tseg2 each 3bits [0000000 010 100 011]5'h0E
       
       5'b00101 : data_init_reg = 16'h0000;          //ID 28-13 5'h05
       5'b00100 : data_init_reg = 16'h0000;          //ID 12-0  5'h04
       5'b10010 : data_init_reg = 16'h8070;          // Enable communication by setting the MSB of interrupt register and enable irqs 5'h12
       5'b10001 : data_init_reg = 16'h0000;          // acceptance mask  MSBs 28-13 5'h11
       5'b10000 : data_init_reg = 16'h0000;          // acceptance mask LSBs  12-0  5'h10
       default : data_init_reg  = 16'h0000;
   endcase 
end 


endmodule