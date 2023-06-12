// distributed under the mit license
// https://opensource.org/licenses/mit-license.php

`timescale 1 ns / 1 ps
`default_nettype none

module fifo_async #(
   // synopsys template
   parameter DSIZE       = 10,
   parameter ASIZE       = 15,
   parameter FALLTHROUGH = "False"   // First word fall-through without latency
   // First word fall-through without latency
)
( 
   input   wire                 wclk, 
   input   wire                 wrst_n, 
   input   wire                 winc, 
   input   wire    [DSIZE-1:0]  wdata, 
   output  wire                 wfull, 
   output  wire                 awfull, 
   input   wire                 rclk, 
   input   wire                 rrst_n, 
   input   wire                 rinc, 
   output  wire    [DSIZE-1:0]  dout_fifo, 
   output  wire                 rempty, 
   output  wire                 arempty
);


// Internal Declarations
    wire [ASIZE-1:0] waddr, raddr;
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

endmodule

`resetall
