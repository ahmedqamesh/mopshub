//
// Verilog Module mopshub_lib.pulse_pdxx_pwxx
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:06:59 03/03/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
//generates a one clk-pulse pd clkss after trigger rising edge[comes every five cycles]
module pulse_pdxx_pwxx #(
   // synopsys template
   // FIFO parameters
   parameter pd = 0,
   parameter pw = 1   //pulse width in clks
   //pulse width in clks
)
( 
   input   wire      clk, 
   input   wire      trigger, 
   output  wire      pulseout
);


// Internal Declarations
wire on_s;
wire t0 ;
reg trigger_1clk_delayed= 0;

always @(posedge clk)
  begin
    trigger_1clk_delayed <= trigger;
  end
  
assign t0 = (trigger & !trigger_1clk_delayed); //-- Recored the first clk of a trigger, one clk pulse

//----------------------------------------
//-- shift register for pulse delay
//----------------------------------------
assign on_s = t0;
//----------------------------------------
//-- shift register for pulse width
//----------------------------------------
assign pulseout = on_s;

endmodule
