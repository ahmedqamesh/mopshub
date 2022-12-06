`resetall
`timescale 1ns/10ps
module initialize_block( 
   input   wire    [4:0]   addr,       // Address of the Canakari registers
   output  wire    [15:0]  data_init  // Ouput data to be written to the registers
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [15:0] data_init_reg;
assign data_init = data_init_reg;

// 
always @ (*)
begin
   case(addr)
       5'b01111 : data_init_reg = 16'h0033;          //  prescalar register value 
       5'b01110 : data_init_reg = 16'h00A3;          // general register.first 7bits=0 then sjw,tseg1,tseg2 each 3bits [0000000 010 100 011]
       5'b00101 : data_init_reg = 16'h0000;          //ID 28-13 
       5'b00100 : data_init_reg = 16'h0000;          //ID 12-0 
       5'b10010 : data_init_reg = 16'h8070;          // Enable communication by setting the MSB of interrupt register and enable irqs
       5'b10001 : data_init_reg = 16'h0000;          // acceptance mask  MSBs 28-13
       5'b10000 : data_init_reg = 16'h0000;          // acceptance mask LSBs  12-0
       default : data_init_reg  = 16'h0000;
   endcase 
end 


endmodule
