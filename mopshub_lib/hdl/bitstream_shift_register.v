//
// Verilog Module mopshub_lib.bitstream_shift_register
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 22:37:59 04/03/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//
//-------------------------------------------------------------------------------------------
//--live bitstream
//-- Serial In Parallel Out Shift Register SIPO
//-------------------------------------------------------------------------------------------
`resetall
`timescale 1ns/10ps
module bitstream_shift_register #(
  // synopsys template
  parameter dout_bit_size = 12,
  parameter din_bit_size = 2
  )
  ( 
  input   wire    [din_bit_size -1:0]      din,    // Declare input for data to the first flop in the shift register
  input   wire               clk,  // Declare input for the clock to all flops in the shift register
  input   wire               en,   // Declare input for enable to switch the shift register on/off
  input   wire               dir,  // Declare input to shift in either left or right direction
  input   wire               rst,  // Declare input to reset the register to a default value
  output  wire     [dout_bit_size-1:0]  dout
  );
  reg [dout_bit_size-1:0]  dout_r = 0;
  assign dout = dout_r;
  // Declare output to read out the current value of all flops in this register  
  // This always block will "always" be triggered on the rising edge of the clock   
  // Once it enters the block, it will first check to see if reset is 0 and if yes, then reset register   
  // If no, then check to see if the shift register is enabled  
  // If no => maintain previous output. If yes, then shift based on the requested direction
  // Internal Declarations
  always @ (posedge clk)  
  if (rst)  
  dout_r <= 0;  
  else begin  
    if (en)  
    case (dir)  
      0 :  dout_r <= {dout_r[dout_bit_size-2:1], din};  
      1 :  dout_r <= {din, dout_r[dout_bit_size-1:2]};  
    endcase  
    else  
    dout_r <= dout_r;  
  end  
endmodule  