//
// Verilog Module mopshub_testbench.clock_generator
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:34:45 10/01/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/100ps
module clock_generator#(
  parameter freq  = 40,//in Mhz
  parameter phase = 0,// in degrees
  parameter duty  = 50 // in Percentage
  )(
  input wire enable,// alllow the coock to be disabled or enabled as req (to phase multiple clocks easily)
  output reg clk);
  real clk_period = 1.0/(freq *1e6)*1e9; //convert to ns
  real clk_on ; 
  real clk_off;
  real quarter;
  real start_delay;
  
  reg start_clk;
  
  initial begin 
    quarter     = clk_period/4;
    start_delay = quarter * phase/90;
    clk_on      = duty/100.0 * clk_period; 
    clk_off     = (100.0 - duty)/100.0 * clk_period;
   $display("Frequncy  = %0d MHz, Period = %0.3f ns", freq,clk_period);
   $display("clk phase = %0d deg", phase);
   $display("clk duty = %0d %%", duty);
  end
  // Intialize variables to zero
  initial begin 
   clk <=0;
   start_clk <=0;
  end
  //achieve duty cycle by skewd clock on/off time and let this run as long as the clock are turn on 
  //run as long as the clocks are turned on 
  always@(posedge enable)
  begin
    if (enable)
    begin
      clk =1;
    while (enable) 
      begin 
        #(clk_on) clk =0; 
        #(clk_off) clk =1; 
      end
      clk = 0;
    end
  end
endmodule
