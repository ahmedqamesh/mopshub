//
// Module mopshub_lib.elinkCore.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:37:33 04/08/21
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module elink_core( 
   // Port Declarations
   output  wire    [9:0]     rx_fifo_data_out, 
   output  wire              rx_fifo_empty, 
   output  wire              rx_fifo_full, 
   input   wire              rx_elink, 
   input   wire    [1:0]     elink2bit, 
   input   wire              bitCLK, 
   input   wire              bitCLKx2, 
   input   wire              bitCLKx4, 
   input   wire              efifoRclk, 
   input   wire              rx_fifo_rd_enable, 
   input   wire              fifo_flush, 
   input   wire              rst, 
   output  wire              efifoPfull, 
   output  wire              tx_elink, 
   input   wire    [10-1:0]  tx_fifo_din, 
   input   wire              tx_fifo_wr_enable, 
   input   wire              efifoWclk
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [9:0] din_dbg;
wire  [9:0] din_fifo_dbg;
wire  [9:0] dout_dbg;
reg         reverse_rx      = 0;
reg         reverse_tx      = 0;   // 0
reg         swap_input      = 0;
reg         swap_output     = 0;   // 0 defaultwhen '1', the output bits will be swapped
wire        wr_en_dbg;
wire        wr_en_fifo_dbg;


// Instances 
Elink_to_FIFO U_0( 
   .DATA1bitIN     (rx_elink), 
   .bitCLKx2       (bitCLKx2), 
   .efifoRe        (rx_fifo_rd_enable), 
   .swap_input     (swap_input), 
   .bitCLK         (bitCLK), 
   .efifoRclk      (efifoRclk), 
   .efifoEmpty     (rx_fifo_empty), 
   .fifo_flush     (fifo_flush), 
   .efifoFull      (rx_fifo_full), 
   .efifoDout      (rx_fifo_data_out), 
   .elink2bit      (elink2bit), 
   .wr_en_dbg      (wr_en_dbg), 
   .dout_dbg       (dout_dbg), 
   .bitCLKx4       (bitCLKx4), 
   .reverse_rx     (reverse_rx), 
   .din_dbg        (din_dbg), 
   .din_fifo_dbg   (din_fifo_dbg), 
   .wr_en_fifo_dbg (wr_en_fifo_dbg), 
   .rst            (rst)
); 

FIFO_to_Elink U_1( 
   .efifoWr     (tx_fifo_wr_enable), 
   .bitCLK      (bitCLK), 
   .bitCLKx2    (bitCLKx2), 
   .bitCLKx4    (bitCLKx4), 
   .rst         (rst), 
   .efifoDin    (tx_fifo_din), 
   .efifoPfull  (efifoPfull), 
   .DATA1bitOUT (tx_elink), 
   .elink2bit   (elink2bit), 
   .fifo_flush  (fifo_flush), 
   .reverse_tx  (reverse_tx), 
   .swap_output (swap_output), 
   .efifoWclk   (efifoWclk)
); 


endmodule // elinkCore
