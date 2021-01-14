`resetall
`timescale 1ns/10ps
module tb_readdata_select;
	// Inputs
   reg    [31:0]  can_rec; 
   reg    [31:0] readdata_counter;
   
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
   wire    [15:0]  readdata;
	// Instantiate the Unit Under Test (UUT)
	node_readdata_select uut (
      .can_rec(can_rec), 
      .readdata_counter(readdata_counter), 
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
      .readdata(readdata)
                                          
	);
  initial begin
    $monitor("TIME = %g can_rec = %b readdata_counter = %b bus_rec_select = %b readdata = %b",
    $time,can_rec, readdata_counter,bus_rec_select,readdata);
    
    can_rec = 31'b0000000000000000000000000000001; #10;
    readdata0 = 15'b0101010101010101;
    readdata_counter = 31'b0000000000000000000000000000001; 
    
    can_rec = 31'b0000000000000000000000000000010; #10;
    readdata1 = 15'b0101010101010101;
    readdata_counter = 31'b0000000000000000000000000000010;
    
    can_rec = 31'b0000000000000000000000000000100; #10;
    readdata2 = 15'b0101010101010101;
    readdata_counter = 31'b0000000000000000000000000000100;
    
    can_rec = 31'b0000000000000000000000000001000; #10;
    readdata3 = 15'b0101010101010101;
    readdata_counter = 31'b0000000000000000000000000001000;
    
  end 
endmodule
