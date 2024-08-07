//
// Verilog Module mopshub_testbench.mopshub_score_board_wrapper
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:54:24 02/28/24
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mopshub_tb_scoreboard_wrapper( 
   input  wire       clk,
   input  wire       rst,
   input wire    [7:0]   bus_id,
   input wire    [4:0]   n_buses,
   input wire    [4:0]   can_tra_select,
   input wire    [4:0]   can_rec_select,
   input wire    [4:0]   power_bus_cnt,
   //Step name
   input wire       start_init,
   input wire       end_init,

   input wire       test_tx,
   input wire       test_tx_start,
   input wire       test_tx_end,
      
   input wire       test_rx,
   input wire       test_rx_start,
   input wire       test_rx_end,
   input wire       test_advanced,
   input wire       test_spi,
   input wire       random1000,
   input wire       test_advanced_start,
   input wire       test_advanced_end,
   input wire    [75:0]  request_data,
   input wire    [75:0]  response_data,    
   input wire       osc_auto_trim_mopshub,     
   input wire       end_trim_bus,
   input wire       start_trim_osc,
   input wire    [75:0]  bus_dec_data,
   input wire            reqmsg,
   input wire            respmsg,
   input wire            no_respmsg
);

mopshub_tb_scoreboard mopshub_tb_scoreboard0( 
   .clk                   (clk), 
   .rst                   (rst), 
   .bus_id                (bus_id), 
   .n_buses               (n_buses), 
   .can_tra_select        (can_tra_select), 
   .can_rec_select        (can_rec_select), 
   .power_bus_cnt         (power_bus_cnt), 
   .start_init            (start_init), 
   .end_init              (end_init), 
   .test_tx               (test_tx), 
   .test_tx_start         (test_tx_start), 
   .test_tx_end           (test_tx_end), 
   .test_rx               (test_rx), 
   .test_rx_start         (test_rx_start), 
   .test_rx_end           (test_rx_end),  
   .test_advanced         (test_advanced),
   .test_advanced_start   (test_advanced_start), 
   .test_advanced_end     (test_advanced_end), 
   .test_spi              (test_spi),
   .random1000(random1000), 
   .osc_auto_trim_mopshub (osc_auto_trim_mopshub), 
   .end_trim_bus          (end_trim_bus), 
   .start_trim_osc        (start_trim_osc), 
   .request_data       (request_data), 
   .response_data     (response_data), 
   .bus_dec_data          (bus_dec_data), 
   .reqmsg                (reqmsg), 
   .respmsg               (respmsg),
   .no_respmsg            (no_respmsg)
); 

endmodule
