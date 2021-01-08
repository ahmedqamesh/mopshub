//
// Verilog Module mopshub_lib.tb_node_rec_decoder
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:50:17 01/08/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_node_rec_decoder ;
   // Internal Declarations
   // Inputs
   reg can_rec9; 
   reg can_rec18; 
   reg can_rec19; 
   reg can_rec20; 
   reg can_rec21; 
   reg can_rec22; 
   reg can_rec23; 
   reg can_rec24; 
   reg can_rec4; 
   reg can_rec5; 
   reg can_rec6; 
   reg can_rec7; 
   reg can_rec8; 
   reg can_rec10; 
   reg can_rec11; 
   reg can_rec12; 
   reg can_rec13; 
   reg can_rec14; 
   reg can_rec15; 
   reg can_rec16; 
   reg can_rec17; 
   reg can_rec0; 
   reg can_rec1; 
   reg can_rec2; 
   reg can_rec3; 
   reg can_rec26; 
   reg can_rec27; 
   reg can_rec28; 
   reg can_rec29; 
   reg can_rec30; 
   reg can_rec31; 
   reg can_rec25;
   // Outputs
   wire  [31:0]   can_rec;
  
  node_rec_decoder uut (
      .can_rec(can_rec),
      .can_rec0(can_rec0), 
      .can_rec1(can_rec1), 
      .can_rec2(can_rec2), 
      .can_rec3(can_rec3), 
      .can_rec4(can_rec4), 
      .can_rec5(can_rec5), 
      .can_rec6(can_rec6), 
      .can_rec7(can_rec7),
      .can_rec8(can_rec8), 
      .can_rec9(can_rec9), 
      .can_rec10(can_rec10), 
      .can_rec11(can_rec11),
      .can_rec12(can_rec12), 
      .can_rec13(can_rec13), 
      .can_rec14(can_rec14), 
      .can_rec15(can_rec15), 
      .can_rec16(can_rec16), 
      .can_rec17(can_rec17),
      .can_rec18(can_rec18), 
      .can_rec19(can_rec19), 
      .can_rec20(can_rec20),
      .can_rec21(can_rec21), 
      .can_rec22(can_rec22), 
      .can_rec23(can_rec23), 
      .can_rec24(can_rec24), 
      .can_rec25(can_rec25), 
      .can_rec26(can_rec26), 
      .can_rec27(can_rec27),
      .can_rec28(can_rec28), 
      .can_rec29(can_rec29),               
      .can_rec30(can_rec30), 
      .can_rec31(can_rec31)
        
      );
  
  initial begin
    $monitor("TIME = %g can_rec0 = %b can_rec1 = %b can_rec30 = %b can_rec31 = %b can_rec0 = %b can_rec1 = %b can_rec30 = %b can_rec31 = %b can_rec = %b",
    $time,can_rec0, can_rec1,can_rec30,can_rec31, can_rec[0],can_rec[1],can_rec[30],can_rec[31],can_rec);
    
    can_rec0 = 1; #10;
    can_rec0 = 0;
    can_rec1 = 1; #10;
    can_rec1 = 0;
    can_rec30 = 1; #10;
    can_rec30 = 0;
    can_rec31 = 1; #10;  
  end 

endmodule
