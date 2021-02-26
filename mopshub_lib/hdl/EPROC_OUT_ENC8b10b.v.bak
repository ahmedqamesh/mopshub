//
// Verilog Module mopshub_lib.EPROC_OUT_ENC8b10b
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:52:27 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module EPROC_OUT_ENC8b10b( 
   input   wire           bitCLK, 
   input   wire           bitCLKx2, 
   input   wire           bitCLKx4, 
   input   wire           rst, 
   output  wire           getDataTrig, 
   input   wire    [9:0]  edataIN, 
   input   wire           edataINrdy, 
   input   wire           fhCR_REVERSE_10B, 
   output  wire    [1:0]  EdataOUT, 
   input   wire           toHostXoff
);
EPROC_OUT2_ENC8b10b ENC8b10b (.bitCLK(bitCLK)
                              , .bitCLKx2(bitCLKx2)
                              , .bitCLKx4(bitCLKx4)
                              , .rst(rst)
                              , .getDataTrig(getDataTrig)
                              , .edataIN(edataIN)
                              , .edataINrdy(edataINrdy)
                              , .fhCR_REVERSE_10B(fhCR_REVERSE_10B)
                              , .EdataOUT(EdataOUT)
                              , .toHostXoff(toHostXoff));
// ### Please start your Verilog code here ###
// Internal Declarations
endmodule
