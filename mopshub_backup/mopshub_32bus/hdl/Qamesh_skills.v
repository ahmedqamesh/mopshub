/*
 * Qamesh_skills Module
 * Author: Ahmed Qamesh
 * Date: 2024-06-29
 * Location: Wuppertal, Germany
 *
 * Description: This module represents my journey over the years,
 *              from early learning stages to professional FPGA development. It's like a
 *              time machine that unfolds my coding adventures from
 *              caffeinated nights to cracking the code on coffee breaks (A testbench is urgently needed )
 *
 */
`resetall
`timescale 1ns/10ps


module Qamesh_skills (
    input clk,
    input rst,
    input wire [31:0] year_addr,      // Assuming 32-bit address for years
    output reg [31:0] experiences_out
);

// Define skills registers
reg [1:0] hardware_prog_skills = 2'b0; // skills related to hardware programming
reg [4:0] software_prog_skills = 5'b0; // skills related to software programming
reg [3:0] communication_protocol_skills = 4'b0; // skills related to communication protocols
reg [2:0] tools_skills = 3'b0; // tools skills
reg [3:0] analysis_simulation_tools = 4'b0; // analysis and Simulation tools 
reg [4:0] miscellaneous_skills= 5'b0; // Other skills


// Additional Special registers
reg [2:0] coffee_consumption = 3'b0; // How much coffee I need to function
reg [2:0] procrastination_level = 3'b0; // My expert level in procrastination
reg [2:0] sleeping_level = 3'b0; // My expert level in procrastination


// assign skills
assign hardware_prog_skills  = experiences_out[31:30]; // {Verilog, VHDL} 
assign software_prog_skills  = experiences_out[29:25]; // {Python, C++ ,TCL,Shell,R}
assign communication_protocol_skills = experiences_out[24:21]; // {CAN, SPI, UART, Ethernet}
assign tools_skills = experiences_out[20:18]; // {QuestaSim, Vivado, HDL Designer}
assign analysis_simulation_tools = experiences_out[17:14]; // {Pandas, Numby, ROOT,Geant4}
assign miscellaneous_skills = experiences_out[13:9]; // {Documentation, Hardware Testing, FPGA synthesis,Statistical data analysis,Git} 
assign coffee_consumption = experiences_out[8:6]; // Scale from 0-8
assign procrastination_level = experiences_out[5:3]; //  Scale from 0-8
assign sleeping_level = experiences_out[2:0]; // Scale from 0-8


// Assignments based on year_addr
always @(posedge clk)
    if (!rst) begin
        experiences <= 32'h0; // Reset value
    end else begin
   // Case statement based on year (each case represents a year)
    case (year_addr)
            // During my PhD
            32'd2024: experiences_out <= 32'h7FFFFF61; // Maximum coffee
            32'd2023: experiences_out <= 32'h7FFFFF61;
            32'd2022: experiences_out <= 32'h7FFFFF61;
            32'd2021: experiences_out <= 32'h7FFFFF61;
            32'd2020: experiences_out <= 32'h7FFFFF1D;
            32'd2019: experiences_out <= 32'h7FFFFF1D;
            
            // During my MASTER
            32'd2018: experiences_out <= 32'h61C0E32A;
            32'd2017: experiences_out <= 32'h61C3412A;
            32'd2016: experiences_out <= 32'h23C1C234;
            
            // When I had NORMAL LIFE
            32'd2015: experiences_out <= 32'h23C055DF;
            32'd2014: experiences_out <= 32'h0E063FDF;// Maximum Procrastination/sleeping
            
            // Add more years if needed
            default: experiences_out <= 32'h0; // Default: no skills assigned
    endcase
  end

endmodule
