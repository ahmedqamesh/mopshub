//
// Verilog Module mopshub_lib.tb_pulse_pdxx_pwxx
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:59:37 03/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_pulse_pdxx_pwxx ;
      reg clk;
      reg trigger;
      wire pulseout;
      wire t0;
      wire trigger_1clk_delayed;
assign t0 = DUT.t0;     
assign trigger_1clk_delayed = DUT.trigger_1clk_delayed;

pulse_pdxx_pwxx DUT(
        .clk(clk),
        .trigger(trigger),
        .pulseout(pulseout));
        
  initial begin 
    clk=0; 
    forever #1 clk=~clk; 
  end       
        
  initial 
  begin
  clk=1'b1;
  trigger = 1'b0; 
   end
       
// ### Please start your Verilog code here ### 
always @(posedge clk) 
  begin
      trigger<=1'b1;
      #5;
      trigger=!trigger;
      
   end
endmodule
