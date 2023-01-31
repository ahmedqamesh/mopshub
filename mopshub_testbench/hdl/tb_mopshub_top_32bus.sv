//
// Verilog Module mopshub_testbench.tb_mopshub_top
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:39:49 03/25/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//
///eda/mentor/2019-20/RHELx86/QUESTA-CORE-PRIME_2019.4/questasim/linux_x86_64
`resetall
`timescale 1ns/10ps
module tb_mopshub_top_32bus();
  wire             clk_m;
  wire             clk_mops;
  wire             clk_40_m;
  reg              rst   = 1'b0;
  reg              endwait_all = 1'b0;
  wire             rst_bus;
  reg              sel_bus = 1'b0;
  reg     [4:0]    can_tra_select_dbg =5'd4;
  wire             sign_on_sig;
  wire             start_init;
  wire             end_init;
  string           info_debug_sig;     
  //tbSM signals  
  wire    [75:0]  bus_dec_data;
  wire    [7:0]   bus_id;
  int             adc_ch;

  reg             osc_auto_trim_mopshub = 1'b0;
  wire            ready_osc;
  wire            start_trim_osc;
  wire            end_trim_bus;
  wire            end_power_init;
  
  wire            power_bus_en;
  wire    [4:0]   power_bus_cnt;
  
  reg             test_rx = 1'b0;
  wire            test_rx_start;
  wire            test_rx_end;
  
  reg             test_tx = 1'b0;
  wire            test_tx_start;
  wire            test_tx_end;
  
  reg             test_advanced =1'b0;
  wire            costum_msg_end;

  // MOPSHUB signals
  wire    [75:0]  data_rec_uplink;
  wire    [4 :0]  can_rec_select;
  wire    [75:0]  data_tra_downlink;
  wire    [4 :0]  can_tra_select;

  wire            irq_elink_tra;
  wire            irq_elink_rec;
  
  // Generator signals 
  wire            rx0;
  wire            rx1;
  wire            rx2;
  wire            rx3;
  wire            rx4;
  wire            rx5;
  wire            rx6;
  wire            rx7;
  wire            rx8;
  wire            rx9;
  wire            rx10;
  wire            rx11;
  wire            rx12;
  wire            rx13;
  wire            rx14;
  wire            rx15;
  wire            rx16;
  wire            rx17;
  wire            rx18;
  wire            rx19;
  wire            rx20;
  wire            rx21;
  wire            rx22;
  wire            rx23;
  wire            rx24;
  wire            rx25;
  wire            rx26;
  wire            rx27;
  wire            rx28;
  wire            rx29;
  wire            rx30;
  wire            rx31;

      
      
  wire            tx0;
  wire            tx1;
  wire            tx2;
  wire            tx3;
  wire            tx4;
  wire            tx5;
  wire            tx6;
  wire            tx7;
  wire            tx8;
  wire            tx9;
  wire            tx10;
  wire            tx11;
  wire            tx12;
  wire            tx13;
  wire            tx14;
  wire            tx15;
  wire            tx16;
  wire            tx17;
  wire            tx18;
  wire            tx19;
  wire            tx20;
  wire            tx21;
  wire            tx22;
  wire            tx23;
  wire            tx24;
  wire            tx25;
  wire            tx26;
  wire            tx27;
  wire            tx28;
  wire            tx29;
  wire            tx30;
  wire            tx31;
  
  wire            spi_dat_m;
  wire            spi_dat_p;
      
  wire [1:0] tx_mopshub_2bit; 
  wire [1:0] rx_mopshub_2bit; 

  //Internal assignments  
  assign can_tra_select    = mopshub0.can_tra_select;
  assign can_rec_select    = mopshub0.can_rec_select;
  assign data_rec_uplink   = mopshub0.data_rec_uplink;
  assign data_tra_downlink = mopshub0.data_tra_downlink;
  assign end_power_init    = mopshub0.end_power_init;
  assign start_init        = mopshub0.start_init;
  assign end_init          = mopshub0.end_init;
  assign rst_bus           = mopshub0.rst_bus;
  assign sign_on_sig       = mopshub0.sign_on_sig;
  assign end_trim_bus      = mopshub0.end_trim_bus;
  assign start_trim_osc    = mopshub0.start_trim_ack;
  assign power_bus_en      = mopshub0.power_bus_en;
  assign power_bus_cnt     = mopshub0.power_bus_cnt;  
  assign irq_elink_tra     = mopshub0.irq_elink_tra;
  assign irq_elink_rec     = mopshub0.irq_elink_rec;
  assign start_osc_cnt     = mopshub0.start_osc_cnt;
  assign ready_osc         = data_generator0.ready_osc;
  
  mopshub_top_32bus mopshub0(
  .clk(clk_40_m),
  .rst(rst),
  .n_buses(5'd31),
  .dbg_elink(1'b0), 
  .dbg_spi(1'b0),
  .debug_mode(1'b0),
  .osc_auto_trim_mopshub(osc_auto_trim_mopshub),                      
  .endwait_all(endwait_all),  
  .tx_elink2bit(tx_mopshub_2bit),
  .rx_elink2bit(rx_mopshub_2bit),
  .mosi_m(spi_dat_m),
  .miso_m(spi_dat_m),        
  .mosi_c(spi_dat_p),
  .miso_c(spi_dat_p), 
  .rx0(rx0),        
  .rx1(rx1),        
  .rx2(rx2),        
  .rx3(rx3),        
  .rx4(rx4),        
  .rx5(rx5),        
  .rx6(rx6),        
  .rx7(rx7),
  .rx8(rx8),        
  .rx9(rx9),        
  .rx10(rx10),        
  .rx11(rx11),        
  .rx12(rx12),        
  .rx13(rx13),        
  .rx14(rx14),        
  .rx15(rx15),
  .rx16(rx16),
  .rx17(rx17),
  .rx18(rx18),              
  .rx19(rx19),
  .rx20(rx20),  
  .rx21(rx21),
  .rx22(rx22),
  .rx23(rx23),
  .rx24(rx24),
  .rx25(rx25),
  .rx26(rx26),
  .rx27(rx27),
  .rx28(rx28),              
  .rx29(rx29),
  .rx30(rx30),   
  .rx31(rx31),
  .tx0(tx0),              
  .tx1(tx1),
  .tx2(tx2),
  .tx3(tx3),
  .tx4(tx4),
  .tx5(tx5),
  .tx6(tx6),
  .tx7(tx7),
  .tx8(tx8),              
  .tx9(tx9),
  .tx10(tx10),
  .tx11(tx11),
  .tx12(tx12),
  .tx13(tx13),
  .tx14(tx14),
  .tx15(tx15),
  .tx16(tx16),
  .tx17(tx17),
  .tx18(tx18),              
  .tx19(tx19),
  .tx20(tx20),  
  .tx21(tx21),
  .tx22(tx22),
  .tx23(tx23),
  .tx24(tx24),
  .tx25(tx25),
  .tx26(tx26),
  .tx27(tx27),
  .tx28(tx28),              
  .tx29(tx29),
  .tx30(tx30),   
  .tx31(tx31));
  
  data_generator#(
  .n_buses (5'd31))data_generator0(
  .clk_mops(clk_mops),
  .clk(clk_40_m),
  .rst(rst),
  .ext_rst_mops(rst_bus),
  .start_osc_cnt(start_osc_cnt),
  .ext_trim_mops(osc_auto_trim_mopshub),
  //Start SM
  .start_data_gen(sign_on_sig),
  //Read ADC channels from MOPS and send it to MOPSHUB rx
  .test_rx(test_rx),
  .test_tx(test_tx),
  .test_tx_end(test_tx_end),
  .test_rx_start(test_rx_start),
  .test_rx_end(test_rx_end),
  .test_tx_start(test_tx_start),
  .test_advanced(test_advanced),
  .costum_msg_end(costum_msg_end),
  .adc_ch(adc_ch),  
  // Acknowledgement bit from the MOPSHUB
  //Decoder Signals [Listen always to the bus ]
  .bus_dec_data(bus_dec_data),
  .power_bus_cnt(power_bus_cnt),
  //read data from Elink and send it to the bus
  .sel_bus(sel_bus),
  .bus_cnt(can_tra_select_dbg),
  .test_mopshub_core(1'b0),
  .osc_auto_trim_mopshub(osc_auto_trim_mopshub),
  .can_rec_select(can_rec_select),
  .bus_id(bus_id),
  .buffer_en(),
  .test_elink_data_done(),
  .start_write_emulator(),
  .start_read_elink(),
  .end_read_elink(),
  //print activity
  .start_init(start_init),   
  .end_init(end_init),
  .can_tra_select(can_tra_select),
  .data_rec_uplink(data_rec_uplink), 
  .data_tra_downlink(data_tra_downlink), 
  .end_trim_bus(end_trim_bus),
  .start_trim_osc(start_trim_osc),
  //ElinkSignals
  .tx_elink2bit(rx_mopshub_2bit),
  .rx_elink2bit(tx_mopshub_2bit),
  //RX-TX signals
  .rx0(rx0),        
  .rx1(rx1),        
  .rx2(rx2),        
  .rx3(rx3),        
  .rx4(rx4),        
  .rx5(rx5),        
  .rx6(rx6),        
  .rx7(rx7),
  .rx8(rx8),        
  .rx9(rx9),        
  .rx10(rx10),        
  .rx11(rx11),        
  .rx12(rx12),        
  .rx13(rx13),        
  .rx14(rx14),        
  .rx15(rx15), 
  .rx16(rx16),
  .rx17(rx17),
  .rx18(rx18),              
  .rx19(rx19),
  .rx20(rx20),  
  .rx21(rx21),
  .rx22(rx22),
  .rx23(rx23),
  .rx24(rx24),
  .rx25(rx25),
  .rx26(rx26),
  .rx27(rx27),
  .rx28(rx28),              
  .rx29(rx29),
  .rx30(rx30),   
  .rx31(rx31),
  .tx0(tx0),              
  .tx1(tx1),
  .tx2(tx2),
  .tx3(tx3),
  .tx4(tx4),
  .tx5(tx5),
  .tx6(tx6),
  .tx7(tx7),
  .tx8(tx8),              
  .tx9(tx9),
  .tx10(tx10),
  .tx11(tx11),
  .tx12(tx12),
  .tx13(tx13),
  .tx14(tx14),
  .tx15(tx15),
  .tx16(tx16),
  .tx17(tx17),
  .tx18(tx18),              
  .tx19(tx19),
  .tx20(tx20),  
  .tx21(tx21),
  .tx22(tx22),
  .tx23(tx23),
  .tx24(tx24),
  .tx25(tx25),
  .tx26(tx26),
  .tx27(tx27),
  .tx28(tx28),              
  .tx29(tx29),
  .tx30(tx30),   
  .tx31(tx31));
  
  
  //Clock Generators and Dividers master
  clock_generator #(
  .freq(160))
  clock_generator0( 
  .clk  (clk_m), 
  .enable (1'b1)
  ); 
  clock_divider #(28'd4)
  clock_divider_mops( 
  .clock_in  (clk_m), 
  .clock_out (clk_mops)
  ); 
    
  clock_divider #(28'd4)
  clock_divider4( 
  .clock_in  (clk_m), 
  .clock_out (clk_40_m)
  ); 

  /////******* Reset Generator task--low active ****/////
  initial 
  begin
    rst = 1'b0;
    #10
    rst = 1'b1;
  end
  /////*******Start Full SM for Data Generation ****/////
  always@(posedge clk_40_m)
  begin  
    if(end_power_init ==1) osc_auto_trim_mopshub = 1'b0;
    if(sign_on_sig ==1)//start Rx test
    begin
    test_rx =1'b1;
    //test_advanced = 1'b1;
    end
    if(test_rx_end ==1)//Done Rx test
    begin
     test_rx =1'b0; 
     endwait_all = 1'b1;
     #10
     endwait_all =1'b0;
     #3000
     test_tx =1'b1; 
    end
    if (test_tx_end    ==1) test_tx =1'b0;//Done Tx test
    if (costum_msg_end ==1) test_advanced = 1'b0;
  end
  /////******* prints bus activity ******///
  always@(posedge clk_40_m)
  if (!rst) info_debug_sig = "<:RESET>";
  else 
  begin
    if(start_init) info_debug_sig = "<:initialization:>";    
    /////*********************************Oscillator Trimming*********************************///// 
    if(start_trim_osc) info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",power_bus_cnt)," ]:>"};
    //if(trim_sig_start) info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",bus_id)," ]:>"};  
    /////*********************************  RX Test    *********************************///// 
    if(test_rx_start)  info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);
    /////*********************************  TX Test    *********************************/////     
    if (test_tx_start) info_debug_sig = $sformatf("<:TX signals  [BUS ID %d ]  :>",bus_id);    
    if (test_advanced) info_debug_sig = $sformatf("<:Costum Message  [BUS ID %d ]  :>",bus_id); 
    if (test_tx_end || test_rx_end ||end_init||end_trim_bus||costum_msg_end)  info_debug_sig = {""};    
  end
endmodule 