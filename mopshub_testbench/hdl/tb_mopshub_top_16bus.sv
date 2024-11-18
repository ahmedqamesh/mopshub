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
module tb_mopshub_top_16bus();
  wire             clk_m;
  wire             clk_uart;
  wire             clk_mops;
  wire             clk_40_m;
  wire             clk_80_m;
  wire             clk_elink;
  reg              rst   = 1'b0;
  reg              endwait_all = 1'b0;
  wire             rst_bus;
  reg              sel_bus = 1'b0;
  reg     [4:0]    can_tra_select_dbg =5'd1;
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
  wire            test_advanced_end ;

  // MOPSHUB signals
  wire    [75:0]  data_rec_uplink;
  wire    [75:0]  data_tra_downlink;
  wire    [75:0]  data_tra_power_spi;
  wire    [75:0]  data_tra_mon_spi;
  wire    [4 :0]  can_rec_select;
  wire    [4 :0]  can_tra_select;
  wire    [4 :0]  bus_cnt_power;
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

  
  wire            spi_dat_m;
  wire            spi_dat_p;
      
  wire [1:0] tx_mopshub_2bit; 
  wire [1:0] rx_mopshub_2bit; 
  wire            out_tx_serial;
  reg             in_rx_serial = 1;
  reg [4:0]    n_buses =5'd10;
  //Internal assignments  
  assign can_tra_select    = mopshub0.can_tra_select;
  assign can_rec_select    = mopshub0.can_rec_select; 
  assign data_tra_power_spi= mopshub0.data_tra_power_spi;
  assign data_tra_mon_spi  = mopshub0.data_tra_mon_spi;
  assign end_power_init    = mopshub0.end_power_init;
  assign start_init        = mopshub0.start_init;
  assign end_init          = mopshub0.end_init;
  assign sign_on_sig       = mopshub0.sign_on_sig;
  assign end_trim_bus      = mopshub0.end_trim_bus;
  assign start_trim_osc    = mopshub0.start_trim_ack;
  assign power_bus_en      = mopshub0.set_power_init;
  assign bus_cnt_power     = mopshub0.bus_cnt_power;
  assign ready_osc         = mopshub_tb_environment0.ready_osc;

  mopshub_top_16bus #(2)mopshub0(
  .clk(clk_40_m),
  .clk_elink(clk_elink),
  //.clk_80_ser(clk_80_m),
  .rst(rst),
  .n_buses(n_buses),
  .xadc_rec_in(12'hA),
  .irq_elink_tra(irq_elink_tra),
  .irq_elink_rec(irq_elink_rec),
  .dbg_elink(1'b0), 
  .dbg_spi(1'b0),
  .debug_mode(1'b0),
  .osc_auto_trim_mopshub(osc_auto_trim_mopshub),                      
  .endwait_all(endwait_all),  
  .tx_elink2bit(tx_mopshub_2bit),
  .rx_elink2bit(rx_mopshub_2bit),
  .data_rec_uplink(data_rec_uplink),
  .data_tra_downlink (data_tra_downlink),
  .word10b_rdy(),
  .tx_efifo_full(),
  .tx_data_rdy(),
  .rx_fifo_full(),
  .rx_data_rdy(),
  .sck_m(),
  .sck_c(),
  .rst_bus(rst_bus),
  .power_bus_cnt(power_bus_cnt),
  .mon_bus_cnt(),
  .irq_can_tra(),
  .irq_can_rec(),
  .data_rdy_10bit_in_dbg(),
  .start_write_elink_dbg(),
  .end_write_elink_dbg(),
  .data_10bit_in_dbg(),
  .cs_active_c(),
  .cs_active_m(), 
  .data_rec_dbg_in(),
  .mosi_m(spi_dat_m),
  .miso_m(spi_dat_m),        
  .mosi_c(spi_dat_p),
  .miso_c(spi_dat_p), 
  .mopshub_id(4'b1),
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
  .tx15(tx15));

  
  mopshub_tb_environment mopshub_tb_environment0(
  .clk_mops(clk_mops),
  .clk_uart(clk_uart),
  .n_buses(n_buses),
  .clk(clk_40_m),
  .clk_elink(clk_elink),
  .rst(rst),
  .ext_rst_mops(rst_bus),
  .bus_cnt_power(bus_cnt_power),
  .ext_trim_mops(osc_auto_trim_mopshub),
  .end_trim_bus(end_trim_bus),
  .start_trim_osc(start_trim_osc),
  //Start SM
  .sign_on_sig(sign_on_sig),
  //Read ADC channels from MOPS and send it to MOPSHUB rx
  .test_rx(test_rx),
  .test_tx(test_tx),
  .test_tx_end(test_tx_end),
  .test_rx_start(test_rx_start),
  .test_rx_end(test_rx_end),
  .test_tx_start(test_tx_start),
  .test_advanced(test_advanced),
  .test_advanced_end (test_advanced_end ),
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
  .test_elink_data_done(),
  .start_read_elink(1'b0),
  .end_read_elink(),
  //print activity
  .start_init(start_init),   
  .end_init(end_init),
  .can_tra_select(can_tra_select),
  .data_rec_uplink(data_rec_uplink), 
  .data_tra_downlink(data_tra_downlink), 
  // UART signals
  .out_tx_serial(out_tx_serial),
  .in_rx_serial(in_rx_serial),
  //SPI Signals
  .data_tra_mon_spi(data_tra_mon_spi),
  .data_tra_power_spi(data_tra_power_spi),
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
  .tx16(1'b1),
  .tx17(1'b1),
  .tx18(1'b1),              
  .tx19(1'b1),
  .tx20(1'b1),  
  .tx21(1'b1),
  .tx22(1'b1),
  .tx23(1'b1),
  .tx24(1'b1),
  .tx25(1'b1),
  .tx26(1'b1),
  .tx27(1'b1),
  .tx28(1'b1),              
  .tx29(1'b1),
  .tx30(1'b1),   
  .tx31(1'b1));
  
  
 // Clock Generators and Dividers master
clock_generator #(
  .freq(160))
  clock_generator0( 
  .clk  (clk_m), 
  .enable (1'b1)
  ); 
  
  clock_divider #(28'd16)
  clock_divider0( 
  .clock_in  (clk_m), 
  .clock_out (clk_uart)
  );  
   
  clock_divider #(28'd4)
  clock_divider1( 
  .clock_in  (clk_m), 
  .clock_out (clk_40_m)
  ); 

   
  clock_divider #(28'd4)
  clock_divider_elink( 
  .clock_in  (clk_m), 
  .clock_out (clk_elink)
  ); 
    
//  clock_generator #(
//  .freq(40), 
//  .phase(90))
//  clock_generator1( 
//  .clk  (clk_elink), 
//  .enable (1'b1)
//  ); 
  clock_divider #(28'd2)
  clock_divider_ser( 
  .clock_in  (clk_m), 
  .clock_out (clk_80_m)
  ); 
  
  clock_divider #(28'd4)
  clock_divider_mops( 
  .clock_in  (clk_40_m), 
  .clock_out (clk_mops)
  ); 

  /////******* Reset Generator task--low active ****/////
  initial 
  begin
//    $dumpfile("tb_mopshub_top_16bus.vcd"); // Specify VCD file name
//    $dumpvars(0, clk_40_m); // Dump all signals or specific signals
//    $dumpvars(0, mopshub0.canakari_top_16bus0.cancari_block0_7.can_1); 
//    $dumpvars(0, mopshub0.canakari_top_16bus0.bus_tra_select);
//    $dumpvars(0, mopshub0.canakari_top_16bus0.bus_rec_select);
//    $dumpvars(0, mopshub0.bridge_controller0);
//    $dumpvars(0, mopshub0);
    rst = 1'b0;
    #10
    rst = 1'b1; 
  //repeat (2) run_data(); 
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
      if (test_tx_end    ==1) 
      begin 
        //test_tx =1'b0;//Done Tx test
        test_tx =1'b1;//Loop Tx test
      end
      if (test_advanced_end  ==1) test_advanced = 1'b0;
    end
  /////******* prints bus activity ******///
  always@(posedge clk_40_m)
  if (!rst) info_debug_sig = "<:RESET>";
  else 
  begin
    if (start_init)    info_debug_sig = {"<:initialization:>"};    
    if (start_trim_osc)info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",power_bus_cnt)," ]:>"};
    if (test_rx_start) info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);   
    if (test_tx_start) info_debug_sig = $sformatf("<:TX signals  [BUS ID %d ]  :>",bus_id);    
    if (test_advanced) info_debug_sig = $sformatf("<:Advanced Test  [BUS ID %d ]  :>",bus_id); 
  end
endmodule 