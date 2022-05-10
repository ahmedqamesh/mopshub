`resetall
`timescale 1ns/10ps
module tb_mopshub_top_triplicated();
  wire             clk_m;
  wire             clk_s;
  wire             clk_40_s;
  wire             clk_40_m;
  wire             clk_80;
  reg             enable_s =1'b0;
  reg             rst   = 1'b0;
  reg             endwait_all = 1'b0;
  wire            rst_bus;
  wire            ext_counter_gen;
  reg             sel_bus = 1'b1;
  reg     [4:0]   can_tra_select_dbg =5'd1;
  wire            sign_on_sig;
  wire            start_init;
  wire            end_init;
  string          info_debug_sig;     
  //tbSM signals  
  wire    [75:0]  bus_dec_data;
  wire    [7:0]   bus_id;
  int             adc_ch;
  
  //Automated trimming signals
  reg             osc_auto_trim =1'b0; ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg
  wire            trim_sig_start;
  wire            trim_sig_end;
  wire            trim_sig_done;
  
  reg             osc_auto_trim_mopshub =1'b0;
  reg             seialize_data_stream =1'b1;
  wire            ready_osc;
  wire            start_trim_osc;
  wire            end_trim_bus;
  wire            done_trim_osc;
  
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
  wire    [75:0]  data_tra_emulator_out;
  wire    [4 :0]  can_rec_select;
  wire    [75:0]  data_tra_downlink;
  wire    [4 :0]  can_tra_select;
  wire    [75:0]  data_rec_emulator_in;
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
  wire            spi_dat;
    
  wire [1:0] tx_mopshub_2bit; 
  wire       tx_mopshub_1bit;
   
  wire [1:0] tx_mopshub_2bitB; 
  wire       tx_mopshub_1bitB; 
  
  wire [1:0] tx_mopshub_2bitC; 
  wire       tx_mopshub_1bitC; 
  
  wire [1:0] rx_mopshub_2bit; 
  wire       rx_mopshub_1bit;
  //Internal assignments  
  assign can_tra_select    = mopshub_topTMR0.can_tra_selectA;
  assign can_rec_select    = mopshub_topTMR0.can_rec_selectA;
  assign data_rec_uplink   = mopshub_topTMR0.data_rec_uplinkA;
  assign data_tra_downlink = mopshub_topTMR0.data_tra_downlinkA;
  assign done_trim_osc     = mopshub_topTMR0.done_trim_oscA;
  assign start_init        = mopshub_topTMR0.start_initA;
  assign end_init          = mopshub_topTMR0.end_initA;
  assign rst_bus           = mopshub_topTMR0.rst_busA;
  assign sign_on_sig       = mopshub_topTMR0.sign_on_sigA;
  assign end_trim_bus      = mopshub_topTMR0.end_trim_busA;
  assign start_trim_osc    = mopshub_topTMR0.start_trim_ackA;
  assign power_bus_en      = mopshub_topTMR0.power_bus_enA;
  assign power_bus_cnt     = mopshub_topTMR0.power_bus_cntA;  
  assign irq_elink_tra     = mopshub_topTMR0.irq_elink_traA;
  assign irq_elink_rec     = mopshub_topTMR0.irq_elink_recA;
  assign ext_counter_gen   = mopshub_topTMR0.ext_counter_genA;
  assign data_tra_emulator_out  = data_generator0.data_tra_76bit_reg;
  assign data_rec_emulator_in   = data_generator0.data_rec_76bit_reg;
  assign ready_osc              = data_generator0.ready_osc;
  
  
  
mopshub_topTMR mopshub_topTMR0(
// Signal A  
  .clkA(clk_40_s),
  .clk_80A(clk_80),
  .rstA(rst),
  .n_busesA(5'd2),
  .seialize_data_streamA(seialize_data_stream), 
  .osc_auto_trim_mopshubA(osc_auto_trim_mopshub),                      
  .endwait_allA(endwait_all),  
  .tx_elink2bitA(tx_mopshub_2bit),
  .tx_elink1bitA(tx_mopshub_1bit),
  .rx_elink1bitA(rx_mopshub_1bit),
  .rx_elink2bitA(rx_mopshub_2bit),
  .mosi_mA(spi_dat),
  .miso_mA(spi_dat),        
  .rx0A(rx0),        
  .rx1A(rx1),        
  .rx2A(rx2),        
  .rx3A(rx3),        
  .rx4A(rx4),        
  .rx5A(rx5),        
  .rx6A(rx6),        
  .rx7A(rx7),
  .rx8A(rx8),        
  .rx9A(rx9),        
  .rx10A(rx10),        
  .rx11A(rx11),        
  .rx12A(rx12),        
  .rx13A(rx13),        
  .rx14A(rx14),        
  .rx15A(rx15), 
  .rx16A(rx16),        
  .rx17A(rx17),        
  .rx18A(rx18),        
  .rx19A(rx19),        
  .rx20A(rx20),        
  .rx21A(rx21), 
  .rx22A(rx22),   
  .rx23A(rx23),
  .rx24A(rx24),        
  .rx25A(rx25),        
  .rx26A(rx26),        
  .rx27A(rx27),        
  .rx28A(rx28),        
  .rx29A(rx29),        
  .rx30A(rx30),        
  .rx31A(rx31),
  .tx0A(tx0),              
  .tx1A(tx1),
  .tx2A(tx2),
  .tx3A(tx3),
  .tx4A(tx4),
  .tx5A(tx5),
  .tx6A(tx6),
  .tx7A(tx7),
  .tx8A(tx8),              
  .tx9A(tx9),
  .tx10A(tx10),
  .tx11A(tx11),
  .tx12A(tx12),
  .tx13A(tx13),
  .tx14A(tx14),
  .tx15A(tx15),
  .tx16A(tx16),              
  .tx17A(tx17),
  .tx18A(tx18),
  .tx19A(tx19),
  .tx20A(tx20),
  .tx21A(tx21),
  .tx22A(tx22),
  .tx23A(tx23),
  .tx24A(tx24),              
  .tx25A(tx25),
  .tx26A(tx26),
  .tx27A(tx27),
  .tx28A(tx28),
  .tx29A(tx29),
  .tx30A(tx30),
  .tx31A(tx31),
// Signal B
  .clkB(clk_40_s),
  .clk_80B(clk_80),
  .rstB(rst),
  .n_busesB(5'd2),
  .seialize_data_streamB(seialize_data_stream), 
  .osc_auto_trim_mopshubB(osc_auto_trim_mopshub),                      
  .endwait_allB(endwait_all),  
  .tx_elink2bitB(tx_mopshub_2bitB),
  .tx_elink1bitB(tx_mopshub_1bitB),
  .rx_elink1bitB(rx_mopshub_1bit),
  .rx_elink2bitB(rx_mopshub_2bit),
////  .mosi_mB(spi_dat),
////  .miso_mB(spi_dat),        
   .rx0B(rx0),        
   .rx1B(rx1),        
   .rx2B(rx2),        
////   .rx3B(rx3),        
////   .rx4B(rx4),        
////   .rx5B(rx5),        
////   .rx6B(rx6),        
////   .rx7B(rx7),
////   .rx8B(rx8),        
////   .rx9B(rx9),        
////   .rx10B(rx10),        
////   .rx11B(rx11),        
////   .rx12B(rx12),        
////   .rx13B(rx13),        
////   .rx14B(rx14),        
////   .rx15B(rx15), 
////   .rx16B(rx16),        
////   .rx17B(rx17),        
////   .rx18B(rx18),        
////   .rx19B(rx19),        
////   .rx20B(rx20),        
////   .rx21B(rx21), 
////   .rx22B(rx22),   
////   .rx23B(rx23),
////   .rx24B(rx24),        
////   .rx25B(rx25),        
////   .rx26B(rx26),        
////   .rx27B(rx27),        
////   .rx28B(rx28),        
////   .rx29B(rx29),        
////   .rx30B(rx30),        
////   .rx31B(rx31),
  .tx0B(tx0),              
  .tx1B(tx1),
  .tx2B(tx2),
//  .tx3B(tx3),
//  .tx4B(tx4),
//  .tx5B(tx5),
//  .tx6B(tx6),
//  .tx7B(tx7),
//  .tx8B(tx8),              
//  .tx9B(tx9),
//  .tx10B(tx10),
//  .tx11B(tx11),
//  .tx12B(tx12),
//  .tx13B(tx13),
//  .tx14B(tx14),
//  .tx15B(tx15),
//  .tx16B(tx16),              
//  .tx17B(tx17),
//  .tx18B(tx18),
//  .tx19B(tx19),
//  .tx20B(tx20),
//  .tx21B(tx21),
//  .tx22B(tx22),
//  .tx23B(tx23),
//  .tx24B(tx24),              
//  .tx25B(tx25),
//  .tx26B(tx26),
//  .tx27B(tx27),
//  .tx28B(tx28),
//  .tx29B(tx29),
//  .tx30B(tx30),
//  .tx31B(tx31),
// Signal C    
  .clkC(clk_40_s),
  .clk_80C(clk_80),
  .rstC(rst),
  .n_busesC(5'd2),
  .seialize_data_streamC(seialize_data_stream), 
  .osc_auto_trim_mopshubC(osc_auto_trim_mopshub),                      
  .endwait_allC(endwait_all), 
  .tx_elink2bitC(tx_mopshub_2bitC),
  .tx_elink1bitC(tx_mopshub_1bitC),
  .rx_elink1bitC(rx_mopshub_1bit),//
  .rx_elink2bitC(rx_mopshub_2bit),//
////  .mosi_mC(spi_dat),
////  .miso_mC(spi_dat),        
   .rx0C(rx0),    
   .rx1C(rx1),        
   .rx2C(rx2)        
////   .rx3C(rx3),        
////   .rx4C(rx4),        
////   .rx5C(rx5),        
////   .rx6C(rx6),        
////   .rx7C(rx7),
////   .rx8C(rx8),        
////   .rx9C(rx9),        
////   .rx10C(rx10),        
////   .rx11C(rx11),        
////   .rx12C(rx12),        
////   .rx13C(rx13),        
////   .rx14C(rx14),        
////   .rx15C(rx15), 
////   .rx16C(rx16),        
////   .rx17C(rx17),        
////   .rx18C(rx18),        
////   .rx19C(rx19),        
////   .rx20C(rx20),        
////   .rx21C(rx21), 
////   .rx22C(rx22),   
////   .rx23C(rx23),
////   .rx24C(rx24),        
////   .rx25C(rx25),        
////   .rx26C(rx26),        
////   .rx27C(rx27),        
////   .rx28C(rx28),        
////   .rx29C(rx29),        
////   .rx30C(rx30),        
////   .rx31C(rx31),
   //.tx0C(tx0) ,             
   //.tx1C(tx1),
   //.tx2C(tx2),
   //.tx3C(tx3),
  // .tx4C(tx4),
  // .tx5C(tx5),
   //.tx6C(tx6),
   //.tx7C(tx7),
   //.tx8C(tx8),              
   //.tx9C(tx9),
  // .tx10C(tx10),
   //.tx11C(tx11),
  // .tx12C(tx12),
   //.tx13C(tx13),
   //.tx14C(tx14),
   //.tx15C(tx15),
   //.tx16C(tx16),              
   //.tx17C(tx17),
   //.tx18C(tx18),
   //.tx19C(tx19),
  // .tx20C(tx20),
   //.tx21C(tx21),
   //.tx22C(tx22),
  // .tx23C(tx23),
  // .tx24C(tx24),              
   //.tx25C(tx25),
   //.tx26C(tx26),
   //.tx27C(tx27),
   //.tx28C(tx28),
   //.tx29C(tx29),
   //.tx30C(tx30),
  // .tx31C(tx31)
  );
  
  data_generator#(
  .n_buses (5'd2))data_generator0(
  .clk(clk_40_m),
  .clk_80(clk_80),
  .rst(rst),
  .seialize_data_stream(seialize_data_stream), 
  .ext_rst_mops(rst_bus),
  .ext_counter_gen(ext_counter_gen),
  .ext_trim_mops(osc_auto_trim_mopshub),
  .loop_en(1'b0),
  //Start SM
  .start_data_gen(sign_on_sig),
  //OScillation Triming Signals
  .osc_auto_trim(osc_auto_trim),
  .trim_sig_start(trim_sig_start),
  .trim_sig_end (trim_sig_end),
  .trim_sig_done(trim_sig_done),
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
  .tx_elink1bit(rx_mopshub_1bit),
  .tx_elink2bit(rx_mopshub_2bit),
  .rx_elink1bit(tx_mopshub_1bit),
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
  .freq(40))
  clock_generator0( 
  .clk  (clk_m), 
  .enable (1'b1)
  ); 
  
  clock_divider #(28'd4)
  clock_divider4( 
  .clock_in  (clk_m), 
  .clock_out (clk_40_m)
  ); 
  
  clock_divider #(28'd2)
  clock_divider2( 
  .clock_in  (clk_m), 
  .clock_out (clk_80)
  );   
  //Clock Generators and Dividers slave  
  clock_generator #(
  .freq(40))
  clock_generator0s( 
  .clk  (clk_s), 
  .enable (enable_s)
  ); 
  
  clock_divider #(28'd4)
  clock_divider4s( 
  .clock_in  (clk_s), 
  .clock_out (clk_40_s)
  ); 
  


  /////******* Reset Generator task--low active ****/////
  initial 
  begin
    rst = 1'b0;
    enable_s =1'b1;
    #10
    rst = 1'b1;
  end
  /////*******Start Full SM for Data Generation ****/////
  always@(posedge clk_40_m)
  begin  
    if(trim_sig_done ==1 ||done_trim_osc ==1)
    begin
      osc_auto_trim =1'b0;
     // osc_auto_trim_mopshub = 1'b0;
    end
    if(sign_on_sig ==1)//start Rx test
    begin
     test_tx =1'b1;
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
    if (test_tx_end ==1)//Done Tx test
    test_tx =1'b0;
    if (costum_msg_end ==1)
    test_advanced = 1'b0;
  end
  /////******* prints bus activity ******///
  always@(posedge clk_40_m)
  if (!rst) info_debug_sig = "<:RESET>";
  else 
  begin
    if(start_init) info_debug_sig = "<:initialization:>";    
    /////*********************************Oscillator Trimming*********************************///// 
    if(start_trim_osc) info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",power_bus_cnt)," ]:>"};
    if(trim_sig_start) info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",bus_id)," ]:>"};  
    /////*********************************  RX Test    *********************************///// 
    if(test_rx_start)  info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);
    /////*********************************  TX Test    *********************************/////     
    if (test_tx_start) info_debug_sig = $sformatf("<:TX signals  [BUS ID %d ]  :>",bus_id);    
    if (test_advanced) info_debug_sig = $sformatf("<:Costum Message  [BUS ID %d ]  :>",bus_id); 
    if (test_tx_end || test_rx_end ||end_init||end_trim_bus||trim_sig_end ||costum_msg_end)  info_debug_sig = {""};    
  end
endmodule 
