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
   reg Input9; 
   reg Input18; 
   reg Input19; 
   reg Input20; 
   reg Input21; 
   reg Input22; 
   reg Input23; 
   reg Input24; 
   reg Input4; 
   reg Input5; 
   reg Input6; 
   reg Input7; 
   reg Input8; 
   reg Input10; 
   reg Input11; 
   reg Input12; 
   reg Input13; 
   reg Input14; 
   reg Input15; 
   reg Input16; 
   reg Input17; 
   reg Input0; 
   reg Input1; 
   reg Input2; 
   reg Input3; 
   reg Input26; 
   reg Input27; 
   reg Input28; 
   reg Input29; 
   reg Input30; 
   reg Input31; 
   reg Input25;
   // Outputs
   wire output_bus_sig;
   wire  [31:0]   output_bus;
  
  dec32_Nbit uut (
      .output_bus(output_bus),
      .output_bus_sig(output_bus_sig),
      .Input0(Input0), 
      .Input1(Input1), 
      .Input2(Input2), 
      .Input3(Input3), 
      .Input4(Input4), 
      .Input5(Input5), 
      .Input6(Input6), 
      .Input7(Input7),
      .Input8(Input8), 
      .Input9(Input9), 
      .Input10(Input10), 
      .Input11(Input11),
      .Input12(Input12), 
      .Input13(Input13), 
      .Input14(Input14), 
      .Input15(Input15), 
      .Input16(Input16), 
      .Input17(Input17),
      .Input18(Input18), 
      .Input19(Input19), 
      .Input20(Input20),
      .Input21(Input21), 
      .Input22(Input22), 
      .Input23(Input23), 
      .Input24(Input24), 
      .Input25(Input25), 
      .Input26(Input26), 
      .Input27(Input27),
      .Input28(Input28), 
      .Input29(Input29),               
      .Input30(Input30), 
      .Input31(Input31)
        
      );
  
  initial begin
    $monitor("TIME = %g Input0 = %b Input1 = %b Input30 = %b Input31 = %b Input0 = %b Input1 = %b Input30 = %b Input31 = %b ",
    $time,Input0, Input1,Input30,Input31, output_bus[0],output_bus[1],output_bus[30],output_bus[31]);
    
    Input0 = 1; #10;
    Input0 = 0;
    Input1 = 1; #10;
    Input1 = 0;
    Input30 = 1; #10;
    Input30 = 0;
    Input31 = 1; #10;  
  end 

endmodule
