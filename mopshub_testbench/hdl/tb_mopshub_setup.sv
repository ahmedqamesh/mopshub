//
// Verilog Module mopshub_testbench.tb_mopshub_setup
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:00:38 01/06/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_mopshub_setup();
  wire            clk ;//= 1'b0;
  wire            clk_40;
  wire            clk_80;
  reg             start_data_gen= 1'b0;    
  reg             test_advanced =1'b1;
  wire            costum_msg_end;

  // MOPSHUB signals
  wire    [75:0]  data_send;
  wire    [75:0]  bus_dec_data;
  wire    [75:0]  data_rec;

  assign data_send    = {setup_generator0.customcanid, setup_generator0.data};
  assign data_rec     = setup_generator0.bus_dec_data;
//                        {setup_generator0.bus_dec_data2[75:56], setup_generator0.bus_dec_data2[47:40], setup_generator0.bus_dec_data2[55:48],//b1Voted,b3Voted,b2Voted
//                         setup_generator0.bus_dec_data2[39:32], setup_generator0.bus_dec_data2[7:0]  , setup_generator0.bus_dec_data2[15:8],//b4Voted,b5Voted,b6Voted
//                         setup_generator0.bus_dec_data2[23:16], setup_generator0.bus_dec_data2[31:24]};//b7Voted,b8Voted};                           
//  
  setup_generator#(
  .n_buses (5'b111),
  .seialize_data_stream(1))setup_generator0(
  .clk(clk_40),
  .clk_80(clk_80),
  .loop_en(1'b0),
  .osc_auto_trim_mopshub(1'b0),
  //.start_data_gen(start_data_gen),
  .test_advanced(test_advanced),
  .costum_msg_end(costum_msg_end),
  .respmsg(respmsg),
  .reqmsg(reqmsg),
  .bus_dec_data(bus_dec_data),
  .data_rec_uplink(data_rec),
  .test_mopshub_core(1'b0));
  
  
  //Clock Generators and Dividers
  clock_generator #(
  .freq(40))
  clock_generator0( 
  .clk  (clk), 
  .enable (1'b1)
  ); 
  
  clock_divider #(28'd4)
  clock_divider4( 
  .clock_in  (clk), 
  .clock_out (clk_40)
  ); 
  
  
  clock_divider #(28'd2)
  clock_divider2( 
  .clock_in  (clk), 
  .clock_out (clk_80)
  ); 
 
endmodule 