`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/19/2023 02:48:07 PM
// Design Name: 
// Module Name: Buf_ip
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module ip_buf(
input wire input_wire, 
output wire output_wire
    );
    
    
//      IBUF       : In order to incorporate this function into the design,
//     Verilog     : the following instance declaration needs to be placed
//    instance     : in the body of the design code.  The instance name
//   declaration   : (IBUF_inst) and/or the port declarations within the
//      code       : parenthesis may be changed to properly reference and
//                 : connect this function to the design.  Delete or comment
//                 : out inputs/outs that are not necessary.

//  <-----Cut code below this line---->

   // IBUF: Single-ended Input Buffer
   //       Artix-7
   // Xilinx HDL Language Template, version 2020.2

   IBUF #(
      .IBUF_LOW_PWR("TRUE"),  // Low power (TRUE) vs. performance (FALSE) setting for referenced I/O standards
      .IOSTANDARD("LVCMOS33")  // Specify the input I/O standard
   ) IBUF_inst (
      .O(output_wire),     // Buffer output
      .I(input_wire)      // Buffer input (connect directly to top-level port)
   );

   // End of IBUF_inst instantiation
					
					
					
endmodule
