//
// Verilog Module mopshub_lib.seu_rom
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 13:01:49 06/8/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//
//Following is the verilog code of ROM (Read Only Memory).
`resetall
`timescale 1ns/10ps
module seu_rom(
    input  wire clk,
    input  wire read,
    input  wire  [3:0]  addr,
    output wire [7:0]   out
    );

reg [7:0] out_reg;
reg [7:0] ROM [15:0];

always @(posedge clk)
begin
    if (read) out_reg=ROM[addr];
end 

initial
begin
    ROM[0]=8'd0; 
    ROM[1]=8'd1;
    ROM[2]=8'd2; 
    ROM[3]=8'd3;
    ROM[4]=8'd4; 
    ROM[5]=8'd5;
    ROM[6]=8'd6; 
    ROM[7]=8'd7;
    ROM[8]=8'd8; 
    ROM[9]=8'd9;
    ROM[10]=8'd10; 
    ROM[11]=8'd11;
    ROM[12]=8'd12; 
    ROM[13]=8'd13;
    ROM[14]=8'd14; 
    ROM[15]=8'd15;
end
assign out = out_reg;
endmodule

