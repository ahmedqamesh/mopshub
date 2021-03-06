//
// Module mopshub_testbench.tb_mopshub_core_synthesis.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:39:49 01/03/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_mopshub_core_synthesis( 
   // Port Declarations
   output  wire      can_rec_dbg, 
   output  wire      can_tra_dbg, 
   output  wire      clk_100out_n, 
   output  wire      clk_100out_p, 
   output  wire      irq_elink_rec_dbg, 
   output  wire      irq_elink_tra_dbg, 
   output  wire      led, 
   output  wire      rx_data_rdy, 
   output  wire      tx0, 
   output  wire      tx1, 
   output  wire      tx2, 
   output  wire      tx3, 
   output  wire      tx4, 
   output  wire      tx5, 
   output  wire      tx6, 
   output  wire      tx7, 
   output  wire      tx_data_rdy, 
   output  wire      tx_fifo_full_rdy
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire   clk_40;
wire   clk_80;
wire   enable                 = 1'b1;
wire   end_cnt_dbg            = 1'b0;
wire   locked                 = 1'b1;
wire   osc_auto_trim_mopshub  = 1'b0;
wire   reset;
reg    rst                    = 1'b0;
wire   rx0;
wire   rx1;
wire   rx2;
wire   rx3;
wire   rx4;
wire   rx5;
wire   rx6;
wire   rx7;


// Instances 
mopshub_core_diff_ports mopshub_core_diff_ports0( 
   .clk                   (clk_40), 
   .clk_100               (clk_40), 
   .clk_80                (clk_80), 
   .data_2bit_in          (), 
   .end_cnt_dbg           (end_cnt_dbg), 
   .locked                (locked), 
   .osc_auto_trim_mopshub (osc_auto_trim_mopshub), 
   .reset                 (reset), 
   .rx0                   (rx0), 
   .rx1                   (rx1), 
   .rx2                   (rx2), 
   .rx3                   (rx3), 
   .rx4                   (rx4), 
   .rx5                   (rx5), 
   .rx6                   (rx6), 
   .rx7                   (rx7), 
   .can_rec_dbg           (can_rec_dbg), 
   .can_tra_dbg           (can_tra_dbg), 
   .clk_100out_n          (clk_100out_n), 
   .clk_100out_p          (clk_100out_p), 
   .irq_elink_rec_dbg     (irq_elink_rec_dbg), 
   .irq_elink_tra_dbg     (irq_elink_tra_dbg), 
   .led                   (led), 
   .rx_data_rdy           (rx_data_rdy), 
   .tx0                   (tx0), 
   .tx1                   (tx1), 
   .tx2                   (tx2), 
   .tx3                   (tx3), 
   .tx4                   (tx4), 
   .tx5                   (tx5), 
   .tx6                   (tx6), 
   .tx7                   (tx7), 
   .tx_data_rdy           (tx_data_rdy), 
   .tx_fifo_full_rdy      (tx_fifo_full_rdy)
); 

clock_divider clk_div( 
   .clock_in  (clk_40), 
   .clock_out (clk_80)
); 

clock_generator clk40( 
   .enable (enable), 
   .clk    (clk_40)
); 

// HDL Embedded Text Block 1 Reset_module
// Reset_module 1   
  /////******* Reset Generator task--low active ****/////
  initial 
  begin
    rst = 1'b0;
    #200
    rst = 1'b1;
  end                                     
assign reset = !rst;



// HDL Embedded Text Block 2 eb1
// eb1 2                                        
//RX signal assignment
assign rx0 =  ~(rst ^ (tx0));
assign rx1 =  ~(rst ^ (tx1));
assign rx2 =  ~(rst ^ (tx2));
assign rx3 =  ~(rst ^ (tx3));
assign rx4 =  ~(rst ^ (tx4));
assign rx5 =  ~(rst ^ (tx5));
assign rx6 =  ~(rst ^ (tx6));
assign rx7 =  ~(rst ^ (tx7));


endmodule // tb_mopshub_core_synthesis

