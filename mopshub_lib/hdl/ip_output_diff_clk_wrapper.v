//
// Verilog Module mopshub_lib.ip_output_diff_clk_wrapper
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:50:11 04/12/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module ip_output_diff_clk_mopshub( 
   input   wire      clk_in, 
   input   wire      locked,
   output  wire      clk_out_p,
   output  wire      clk_out_n 
);
// Internal Declarations
   wire clk_local_sig;
   ODDR #( //Output DDR Primitive
      .DDR_CLK_EDGE("SAME_EDGE"), // "OPPOSITE_EDGE" or "SAME_EDGE" 
      .INIT(1'b0),    // Initial value of Q: 1'b0 or 1'b1
      .SRTYPE("SYNC") // Set/Reset type: "SYNC" or "ASYNC" 
   )ODDR_CLK(
      .Q(clk_local_sig),  // 1-bit DDR output
      .C(clk_in),   // 1-bit clock input
      .CE(locked), // 1-bit clock enable input
      .D1(1'b1), // 1-bit data input (positive edge)
      .D2(1'b0), // 1-bit data input (negative edge) // it was 1'b0
      .R(1'b0),  // 1-bit reset
      .S(1'b0)   // 1-bit set
   );

   OBUFDS OBUFDS_inst (
      .O(clk_out_p),     // Diff_p output (connect directly to top-level port)
      .OB(clk_out_n),   // Diff_n output (connect directly to top-level port)
      .I(clk_local_sig)      // Buffer input
    );
endmodule	