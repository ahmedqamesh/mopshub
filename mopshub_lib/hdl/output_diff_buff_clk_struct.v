//
// Module mopshub_lib.output_diff_buff_clk.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:25:10 03/10/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module output_diff_buff_clk( 
   // Port Declarations
   input   wire      clk_in, 
   input   wire      locked, 
   output  wire      clk_out_p, 
   output  wire      clk_out_n
);

// Internal Declarations
// Internal Declarations


// Local declarations

// Internal signal declarations
wire   clk_local_sig;


// Instances 
OBUFDS OBUFDS_inst( 
   .I  (clk_local_sig), 
   .O  (clk_out_p), 
   .OB (clk_out_n)
); 

ODDR #("SAME_EDGE",1'b0,"SYNC")
ODDR_CLK( 
   .C(clk_in),
   .CE(locked),
   .Q(clk_local_sig),
   .D1(1'b1),
   .D2(1'b0),
   .R(1'b0),
   .S(1'b0)
); 


endmodule // output_diff_buff_clk
