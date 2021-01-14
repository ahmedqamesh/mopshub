//
// Verilog Module mopshub_lib.tb_node_readdata_SM
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:06:30 01/14/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_node_readdata_SM ;
	// Inputs
  	reg    clock;
	 reg    reset;
   reg    choose_bus_start;
   reg    [31:0]  can_rec; 
   reg    [15:0]  readdata0; 
   reg    [15:0]  readdata1; 
   reg    [15:0]  readdata2; 
   reg    [15:0]  readdata3; 
   reg    [15:0]  readdata4; 
   reg    [15:0]  readdata5; 
   reg    [15:0]  readdata6; 
   reg    [15:0]  readdata7; 
   reg    [15:0]  readdata8; 
   reg    [15:0]  readdata9; 
   reg    [15:0]  readdata10; 
   reg    [15:0]  readdata11; 
   reg    [15:0]  readdata12; 
   reg    [15:0]  readdata13; 
   reg    [15:0]  readdata14; 
   reg    [15:0]  readdata15; 
   reg    [15:0]  readdata16; 
   reg    [15:0]  readdata17; 
   reg    [15:0]  readdata18; 
   reg    [15:0]  readdata19; 
   reg    [15:0]  readdata20; 
   reg    [15:0]  readdata21; 
   reg    [15:0]  readdata22; 
   reg    [15:0]  readdata23; 
   reg    [15:0]  readdata24; 
   reg    [15:0]  readdata25; 
   reg    [15:0]  readdata26; 
   reg    [15:0]  readdata27; 
   reg    [15:0]  readdata28; 
   reg    [15:0]  readdata29; 
   reg    [15:0]  readdata30; 
   reg    [15:0]  readdata31;
   
	// Outputs
   wire   [4:0]  bus_rec_select;
   wire   [15:0]  readdata;
   wire    choose_bus_end;
   wire    irq_can_rec;

	
	node_readdata_decoder UUT (
	    .clock(clock), 
      .reset(reset),
      .can_rec(can_rec),
      .readdata0(readdata0),
      .readdata1(readdata1),
      .readdata2(readdata2),
      .readdata3(readdata3),
      .readdata4(readdata4),
      .readdata5(readdata5),
      .readdata6(readdata6),
      .readdata7(readdata7),
      .readdata8(readdata8),
      .readdata9(readdata9),
      .readdata10(readdata10),
      .readdata11(readdata11),
      .readdata12(readdata12),
      .readdata13(readdata13),
      .readdata14(readdata14),
      .readdata15(readdata15),
      .readdata16(readdata16),
      .readdata17(readdata17),
      .readdata18(readdata18),
      .readdata19(readdata19),
      .readdata20(readdata20),
      .readdata21(readdata21),
      .readdata22(readdata22),
      .readdata23(readdata23),
      .readdata24(readdata24),
      .readdata25(readdata25),
      .readdata26(readdata26),
      .readdata27(readdata27),
      .readdata28(readdata28),
      .readdata29(readdata29),
      .readdata30(readdata30),
      .readdata31(readdata31),
      .bus_rec_select(bus_rec_select),
      .readdata(readdata),
      .choose_bus_end(choose_bus_end),
      .choose_bus_start(choose_bus_start),
      .irq_can_rec(irq_can_rec)                     
	);
	always #1 clock = ~clock;
  initial begin
    $monitor("TIME = %g reset = %b can_rec = %b bus_rec_select = %b readdata = %b irq_can_rec = %b choose_bus_end = %b",
    $time,reset, can_rec,bus_rec_select,readdata,irq_can_rec, choose_bus_end);
 		
 		// Initialize Inputs
    clock = 0;  
	  reset = 0;
 
  	#1 reset = 1;
  	#1 reset = 0;
   choose_bus_start =1; 
   can_rec = 32'b01000000000000000000000000000000;
   readdata30= 16'b0101010101010000;
  	
  	#1 reset = 1;
  	#1 reset = 0;    
   choose_bus_start =1;
   can_rec = 32'b10000000000000000000000000000000; 
   readdata31= 16'b0101010100000000;
    
    
  end 
    
endmodule
