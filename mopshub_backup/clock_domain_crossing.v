//
// Verilog Module mopshub_lib.clock_domain_crossing
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:22:14 04/08/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module clock_domain_crossing #(
    parameter NUMBER_OF_BITS = 8//number of signals to be synced
)(
    input wire  clkA,   
    input wire  [NUMBER_OF_BITS - 1:0] data_in_clkA, // data to be synced
    input wire  clkB,
    output wire [NUMBER_OF_BITS - 1:0] data_out_clkB // synced data to clkB
);

// We use a two-stages shift-register to synchronize SignalIn_clkA to the clkB clock domain
reg [1:0] SyncA_clkB;
reg [NUMBER_OF_BITS - 1:0] data_in_clkA_reg;
reg [NUMBER_OF_BITS - 1:0] data_out_clkB_int;
reg [NUMBER_OF_BITS - 1:0] data_sync_stage_0;

assign data_out_clkB  = data_out_clkB_int;
//-------------------------------------------------------
//-- Register the input signals
//-------------------------------------------------------
always @(posedge clkA) 
begin 
  data_in_clkA_reg <= data_in_clkA;
end
//-------------------------------------------------------
//-- Double synchronization
//-------------------------------------------------------
always @(posedge clkB) 
begin 
    data_sync_stage_0 <= data_in_clkA_reg;
    data_out_clkB_int <= data_sync_stage_0;
end
endmodule
