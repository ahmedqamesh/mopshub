// distributed under the mit license
// https://opensource.org/licenses/mit-license.php
`timescale 1 ns / 1 ps
`default_nettype none
`resetall
module fifo_async #(
  // synopsys template
  parameter DSIZE       = 10,
  parameter ASIZE       = 15,
  parameter FALLTHROUGH = "False"   // First word fall-through without latency
  // First word fall-through without latency
  )
  
  ( 
  input   wire                 wclk,   //Clock signal for the write domain.
  input   wire                 wrst_n, //Active-low asynchronous reset signal for the write domain.
  input   wire                 winc, //Write increment signal, indicating a write operation.
  input   wire    [DSIZE-1:0]  wdata, //Input data to be written into the FIFO.
  output  wire                 wfull, //Output signal indicating whether the FIFO is full in the write domain.
  output  wire                 awfull, //Output signal indicating whether the FIFO is full in the asynchronous domain.
  input   wire                 rclk,  //Clock signal for the read domain.
  input   wire                 rrst_n, //Active-low asynchronous reset signal for the read domain.
  input   wire                 rinc, // Read increment signal, indicating a read operation.
  output  wire    [DSIZE-1:0]  dout_fifo, //Output data read from the FIFO.
  output  wire                 rempty, //Output signal indicating whether the FIFO is empty in the read domain.
  output  wire                 arempty //Output signal indicating whether the FIFO is empty in the asynchronous domain.
  );
  
  
  // Internal Declarations
  wire [ASIZE-1:0] waddr, raddr; //Address signals for write and read operations, respectively.
  //wptr, rptr: Write and read pointers, respectively, indicating the current positions in the FIFO.
  //wq2_rptr, rq2_wptr: Synchronized versions of write and read pointers for cross-domain communication.
  wire [ASIZE  :0] wptr, rptr, wq2_rptr, rq2_wptr;
  // The module synchronizing the read point
  // from read to write domain
  fifo_sync_r2w
  #(ASIZE)
  sync_r2w (
  .wq2_rptr (wq2_rptr),
  .rptr     (rptr),
  .wclk     (wclk),
  .wrst_n   (wrst_n)
  );
  
  // The module synchronizing the write point
  // from write to read domain
  fifo_sync_w2r
  #(ASIZE)
  sync_w2r (
  .rq2_wptr (rq2_wptr),
  .wptr     (wptr),
  .rclk     (rclk),
  .rrst_n   (rrst_n)
  );
  
  // The module handling the write requests
  fifo_wptr_full
  #(ASIZE)
  wptr_full (
  .awfull   (awfull),
  .wfull    (wfull),
  .waddr    (waddr),
  .wptr     (wptr),
  .wq2_rptr (wq2_rptr),
  .winc     (winc),
  .wclk     (wclk),
  .wrst_n   (wrst_n)
  );
  
  // The DC-RAM
  fifo_mem
  #(DSIZE, ASIZE, FALLTHROUGH)
  fifomem (
  .wreset(wrst_n),
  .rreset(rrst_n),
  .rclken (rinc),
  .rclk   (rclk),
  .rdata  (dout_fifo),
  .wdata  (wdata),
  .waddr  (waddr),
  .raddr  (raddr),
  .wclken (winc),
  .wfull  (wfull),
  .wclk   (wclk)
  );
  
  // The module handling read requests
  fifo_rptr_empty
  #(ASIZE)
  rptr_empty (
  .arempty  (arempty),
  .rempty   (rempty),
  .raddr    (raddr),
  .rptr     (rptr),
  .rq2_wptr (rq2_wptr),
  .rinc     (rinc),
  .rclk     (rclk),
  .rrst_n   (rrst_n)
  );
  // Read data from flip-flops based on read pointer
  
endmodule
