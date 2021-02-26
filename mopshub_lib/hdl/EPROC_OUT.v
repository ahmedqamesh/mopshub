//
// Verilog Module mopshub_lib.EPROC_OUT
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:53:03 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

//E-link processor, 2bit output
module EPROC_OUT #(
   // synopsys template
   // synopsys template
   parameter IC_Elink                       = 0,
   parameter egroupID                       = 0,
   //Enable all Egroups from 0 to 5 with 8b10bencoding
   parameter EnableFrHo_Egroup0Eproc2_8b10b = 1,
   parameter EnableFrHo_Egroup1Eproc2_8b10b = 1,
   parameter EnableFrHo_Egroup2Eproc2_8b10b = 1,
   parameter EnableFrHo_Egroup3Eproc2_8b10b = 1,
   parameter EnableFrHo_Egroup4Eproc2_8b10b = 1,
   parameter EnableFrHo_Egroup5Eproc2_8b10b = 1
)
( 
   input   wire           bitCLK, 
   input   wire           bitCLKx2, 
   input   wire           bitCLKx4, 
   input   wire           rst, 
   input   wire           ENA, 
   input   wire           swap_outbits, 
   output  wire           getDataTrig,       //-- @ bitCLKx4
   output  wire    [1:0]  EDATA_OUT, 
   input   wire           fhCR_REVERSE_10B, 
   input   wire    [9:0]  DATA_IN, 
   input   wire           DATA_RDY, 
   input   wire           toHostXoff
);

// ### Please start your Verilog code here ###
// Internal Declarations
endmodule
