//
// Verilog Module mopshub_testbench.top_LED_test
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:10:03 10/04/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module top_led_test (
    input wire rst,
    input wire clk,
    output wire led
    );

  reg [31:0] counter= 32'b0;
  reg LED_status= 1'b0;
  assign led = LED_status;
  always @ (posedge clk) 
  if (!rst)
    begin
    counter <= 32'b0;
    LED_status <= 1'b0;
    end
  else
  begin
    counter <= counter + 1'b1;
  if (counter > 5000000)
    begin
    LED_status <= !LED_status;
    counter <= 32'b0;
    end
  end
  
  

endmodule