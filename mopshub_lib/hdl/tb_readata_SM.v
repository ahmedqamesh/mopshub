//
// Verilog Module mopshub_lib.tb_readata_SM
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:03:21 01/17/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_node_readdata_SM ;
	// Inputs
  	reg    clk;
	 reg    reset;
	 reg    genrst;
	 reg    ireqsucrec;
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
   reg            endwait;
   reg            restirq;
   
	// Outputs
   wire   [4:0]  bus_rec_select;
   wire   [15:0]  readdata;
   wire    choose_bus_end;
   wire    irq_can_rec;
   wire    init_bus_select;
	 wire   [4:0] count_bus;
	 
	node_readdata_SM UUT (
	    .clk(clk), 
      .reset(reset),
      .init_bus_select(init_bus_select),
      .genrst(genrst),
      .can_rec(can_rec),
      .endwait(endwait),
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
      .ireqsucrec(ireqsucrec),
      .irq_can_rec(irq_can_rec),
      .count_bus(count_bus),
      .restirq(restirq)                   
	);
// ### Please start your Verilog code here ### 
  initial clk = 0;  
	always #1 clk = ~clk;
  initial begin
    $monitor($time,": ireqsucrec = %b can_rec = %b bus_rec_select = %d  readdata = %b irq_can_rec = %b  choose_bus_end = %b count_bus = %d",
                     ireqsucrec, can_rec, bus_rec_select, readdata,irq_can_rec, choose_bus_end, count_bus);
 	 		// Initialize Inputs
   
   readdata0 = 16'b0; 
   readdata1 = 16'b0; 
   readdata2 = 16'b0; 
   readdata3 = 16'b0; 
   readdata4 = 16'b0; 
   readdata5 = 16'b0; 
   readdata6 = 16'b0; 
   readdata7 = 16'b0; 
   readdata8 = 16'b0; 
   readdata9 = 16'b0; 
   readdata10 = 16'b0; 
   readdata11 = 16'b0; 
   readdata12 = 16'b0; 
   readdata13 = 16'b0; 
   readdata14 = 16'b0; 
   readdata15 = 16'b0; 
   readdata16 = 16'b0; 
   readdata17 = 16'b0; 
   readdata18 = 16'b0; 
   readdata19 = 16'b0; 
   readdata20 = 16'b0; 
   readdata21 = 16'b0; 
   readdata22 = 16'b0; 
   readdata23 = 16'b0; 
   readdata24 = 16'b0; 
   readdata25 = 16'b0; 
   readdata26 = 16'b0; 
   readdata27 = 16'b0; 
   readdata28 = 16'b0; 
   readdata29 = 16'b0; 
   readdata30 = 16'b0; 
   readdata31 = 16'b0;
   endwait = 0 ;
   //resetirq = 0;
   
  	#1
   reset = 1;
   ireqsucrec =1;   //start reading //expected message readdata = readdata1 
   can_rec = 32'b00000000000000000000000000000010; //enable counter 1
   readdata1= 16'b0000000000000001; //send a random message to readdata1
   genrst = 1;
   
   # 25
   can_rec = 32'b00000000000000000000000000000100;  //enable counter 2
   readdata2= 16'b0000000000000011;
   
   #25
   can_rec = 32'b00000000000000000000000000001000;  //enable counter 
   readdata3= 16'b0000000000000111; //send a random message to readdata3

   #25
   can_rec = 32'b00000000000000000000000001100000;  //enable counter 5, 6 
   readdata5= 16'b0000000000011111; //send a random message to readdata5
   readdata6= 16'b0000000001011111; //send a random message to readdata6     
   end	 		
endmodule
