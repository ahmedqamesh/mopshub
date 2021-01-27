//
// Verilog Module mopshub_lib.tb_canakari
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:35:35 01/21/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_canakari ;
	// Inputs
    reg       clock;
    reg       reset; 
    reg [4:0] address;
    reg [15:0] writedata;
    reg        cs;
    reg        read_n;
    reg        write_n;
   	reg        rx;
   		  

	// Outputs
	  wire [15:0] readdata;
	  wire        irq;
   	wire        irqstatus;
   	wire        irqsuctra;
   	wire        irqsucrec;
   	wire        tx;
   	wire [7:0]  statedeb;
   	wire        Prescale_EN_debug;
   	wire [6:0]  bits;	  

// ### Please start your Verilog code here ### 

endmodule
