//
// Verilog Module mopshub_lib.nodedemux_tb
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 19:45:56 01/05/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps


module tb_node_tra_demux;

// Inputs
// Internal Declarations
   reg    [4:0]  bus_tra_select; 
   reg            enable_cs; 
   // Outputs
   wire  [31:0] can_tra; 

// Instantiate the Unit Under Test (UUT)
  node_tra_demux uut (
        .enable_cs(enable_cs),
        .bus_tra_select(bus_tra_select),
        .can_tra0(can_tra[0]), 
        .can_tra1(can_tra[1]), 
        .can_tra2(can_tra[2]), 
        .can_tra3(can_tra[3]), 
        .can_tra4(can_tra[4]), 
        .can_tra5(can_tra[5]), 
        .can_tra6(can_tra[6]), 
        .can_tra7(can_tra[7]),
        .can_tra8(can_tra[8]), 
        .can_tra9(can_tra[9]), 
        .can_tra10(can_tra[10]), 
        .can_tra11(can_tra[11]),
        .can_tra12(can_tra[12]), 
        .can_tra13(can_tra[13]), 
        .can_tra14(can_tra[14]), 
        .can_tra15(can_tra[15]), 
        .can_tra16(can_tra[16]), 
        .can_tra17(can_tra[17]),
        .can_tra18(can_tra[18]), 
        .can_tra19(can_tra[19]), 
        .can_tra20(can_tra[20]),
        .can_tra21(can_tra[21]), 
        .can_tra22(can_tra[22]), 
        .can_tra23(can_tra[23]), 
        .can_tra24(can_tra[24]), 
        .can_tra25(can_tra[25]), 
        .can_tra26(can_tra[26]), 
        .can_tra27(can_tra[27]),
        .can_tra28(can_tra[28]), 
        .can_tra29(can_tra[29]),               
        .can_tra30(can_tra[30]), 
        .can_tra31(can_tra[31])
    );
  
  initial begin
    $monitor("TIME = %g bus_tra_select = %b enable_cs = %b can_tra0 = %b can_tra1 = %b can_tra20 = %b can_tra30 = %b can_tra31 = %b",
    $time,bus_tra_select, enable_cs,can_tra[0],can_tra[1],can_tra[20],can_tra[30],can_tra[31]);
    
    enable_cs = 0;
    bus_tra_select = 20; #10;
    enable_cs = 1;
    bus_tra_select = 0; #10;
    bus_tra_select = 1; #10; 
    bus_tra_select = 20; #10;
    bus_tra_select = 30; #10;
    bus_tra_select = 31; #10;  
  end
    
endmodule
