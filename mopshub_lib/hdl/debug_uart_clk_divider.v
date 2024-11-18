//
// Verilog Module mopshub_lib.debug_uart_clk_divider
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 20:39:55 06/12/24
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module debug_uart_clk_divider#(
  parameter integer CLOCK_FREQ = 40000000,  // Input clock frequency (40 MHz)
  parameter integer BAUDRATE = 115200     // Desired baud rate (115200 bps)
)(

    input wire clk_in,     // 40 MHz input clock
    input wire reset,      // Reset signal
    output reg clk_out     // 11.52 MHz (approx) output clock
);

parameter integer DIVISOR = CLOCK_FREQ / BAUDRATE; // Calculate the approximate divisor
reg [31:0] counter;  // Counter to keep track of clock cycles
// a comparator is needed to detect when the counter reaches a certain threshold value.
always @(posedge clk_in) begin
    if (reset) begin
        counter <= 32'b0;
        clk_out <= 1'b0;
    end 
    else begin
        if (counter >= DIVISOR - 1) begin
            counter <= 32'b0;
            clk_out <= ~clk_out;  // Toggle the output clock
        end 
        else begin
            counter <= counter + 1;
        end
    end
end

endmodule
