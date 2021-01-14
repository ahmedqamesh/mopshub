//
// Verilog Module mopshub_lib.node_rec_decoder
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:06:18 01/13/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module node_rec_decoder( 
   // Port Declarations
   input   wire            can_rec9, 
   input   wire            can_rec18, 
   input   wire            can_rec19, 
   input   wire            can_rec20, 
   input   wire            can_rec21, 
   input   wire            can_rec22, 
   input   wire            can_rec23, 
   input   wire            can_rec24, 
   input   wire            can_rec4, 
   input   wire            can_rec5, 
   input   wire            can_rec6, 
   input   wire            can_rec7, 
   input   wire            can_rec8, 
   input   wire            can_rec10, 
   input   wire            can_rec11, 
   input   wire            can_rec12, 
   input   wire            can_rec13, 
   input   wire            can_rec14, 
   input   wire            can_rec15, 
   input   wire            can_rec16, 
   input   wire            can_rec17, 
   input   wire            can_rec0, 
   input   wire            can_rec1, 
   input   wire            can_rec2, 
   input   wire            can_rec3, 
   input   wire            can_rec26, 
   input   wire            can_rec27, 
   input   wire            can_rec28, 
   input   wire            can_rec29, 
   input   wire            can_rec30, 
   input   wire            can_rec31, 
   input   wire            can_rec25, 
   output  wire    [31:0]  can_rec
);

reg [31:0] can_rec_reg;
assign  can_rec =can_rec_reg ;
always @(*)
  begin
    can_rec_reg[9] = can_rec9;
    can_rec_reg[18] = can_rec18;
    can_rec_reg[19] = can_rec19;
    can_rec_reg[20] = can_rec20;
    can_rec_reg[21] = can_rec21;
    can_rec_reg[22] = can_rec22;
    can_rec_reg[23] = can_rec23;
    can_rec_reg[24] = can_rec24;
    can_rec_reg[4] = can_rec4;
    can_rec_reg[5] = can_rec5;
    can_rec_reg[6] = can_rec6;
    can_rec_reg[7] = can_rec7;
    can_rec_reg[8] = can_rec8;
    can_rec_reg[10] = can_rec10;
    can_rec_reg[11] = can_rec11;
    can_rec_reg[12] = can_rec12;
    can_rec_reg[13] = can_rec13;
    can_rec_reg[14] = can_rec14;
    can_rec_reg[15] = can_rec15;
    can_rec_reg[16] = can_rec16;
    can_rec_reg[17] = can_rec17;
    can_rec_reg[0] = can_rec0;
    can_rec_reg[1] = can_rec1;
    can_rec_reg[2] = can_rec2;
    can_rec_reg[3] = can_rec3;
    can_rec_reg[26] = can_rec26;
    can_rec_reg[27] = can_rec27;
    can_rec_reg[28] = can_rec28;
    can_rec_reg[29] = can_rec29;
    can_rec_reg[30] = can_rec30;
    can_rec_reg[31] = can_rec31;
    can_rec_reg[25] = can_rec25;
  end
endmodule