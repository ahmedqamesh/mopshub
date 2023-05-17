//
// Verilog Module mopshub_reconfig.FPGA_reconfig
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 10:22:46 05/17/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module FPGA_reconfig (
  input wire clk,
  input wire reset,
  input wire [31:0] icap_data,
  input wire icap_ready,
  output reg icap_ce,
  output reg icap_write,
  output reg [31:0] icap_d,
  output reg error
);

  localparam IDLE = 2'b00, CHECK_ECC = 2'b01, RECONFIGURE = 2'b10;
  reg [1:0] state, next_state;
  reg [31:0] checksum, expected_checksum;
  reg [15:0] frame_address;

  always @(posedge clk or posedge reset) begin
    if (reset) begin
      state <= IDLE;
      icap_ce <= 0;
      icap_write <= 0;
      icap_d <= 0;
      checksum <= 0;
      frame_address <= 0;
      error <= 0;
    end else begin
      state <= next_state;
      if (state == CHECK_ECC) begin
        icap_ce <= 1;
        icap_write <= 0;
        if (icap_ready) begin
          // Update checksum
          checksum <= checksum + icap_data;
        end
      end else if (state == RECONFIGURE) begin
        icap_ce <= 1;
        icap_write <= 1;
        icap_d <= mem[frame_address];
        frame_address <= frame_address + 1;
      end else begin
        icap_ce <= 0;
        icap_write <= 0;
        icap_d <= 0;
      end
    end
  end

  always @(state or checksum or expected_checksum) begin
    case (state)
      IDLE: begin
        if (checksum != expected_checksum) begin
          next_state <= RECONFIGURE;
          error <= 1;
        end else begin
          next_state <= IDLE;
          error <= 0;
        end
      end
      CHECK_ECC: begin
        next_state <= IDLE;
      end
      RECONFIGURE: begin
        if (frame_address < FRAME_END_ADDRESS) begin
          next_state <= RECONFIGURE;
        end else begin
          next_state <= CHECK_ECC;
        end
      end
    endcase
  end

endmodule