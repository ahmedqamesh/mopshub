`resetall
`timescale 1ns/10ps
module tb_mopshub_core ;
reg             clk = 1'b0;
reg             rst = 1'b1;
wire            start_init;
wire            end_init;
reg             sel_bus = 1'b0;
reg     [4:0]   can_tra_select_dbg =5'd3;
wire            ready_osc;
string          info_debug_sig; 
wire            sign_on_sig ; 
reg             start_data_gen= 1'b0;  
int             adc_ch;
wire    [75:0]  bus_dec_data;
//tbSM signals  
wire    [7:0]   bus_id;
wire            sign_in_start;
wire            sign_in_end;
reg             osc_auto_trim =1'b0; ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg
wire            trim_sig_start;
wire            trim_sig_end;
wire            trim_sig_done;

reg             test_advanced =1'b0;
wire            rand_msg_end;
reg             test_rx = 1'b0;
wire            test_rx_start;
wire            test_rx_end;
reg             test_mopshub_core=1'b0;
wire            irq_elink_tra;
// MOPSHUB signals
wire    [75:0]  data_rec_uplink;
wire    [75:0]  data_tra_downlink;
wire            reqmsg;
wire            respmsg;
wire    [4:0]   can_rec_select;
wire            irq_can_rec;
wire            start_read_elink;
wire            end_read_elink; 
reg      [75:0] requestreg  = 75'h0;
reg      [75:0] responsereg = 75'h0; 
wire     [4:0]  can_tra_select;
wire            irq_can_tra;
wire            test_elink_data_done;  
reg             end_cnt_dbg =1'b0;
wire            buffer_en;
// Generator signals 
wire            rx0;
wire            rx1;
wire            rx2;
wire            rx3;
wire            rx4;
wire            rx5;
wire            rx6;
wire            rx7;

wire            tx0;
wire            tx1;
wire            tx2;
wire            tx3;
wire            tx4;
wire            tx5;
wire            tx6;
wire            tx7;

//Internal assignments                    
/// Top level instantiation
assign irq_can_rec = mopshub_core0.irq_can_rec;
assign irq_can_tra = mopshub_core0.irq_can_tra;
assign can_tra_select = mopshub_core0.can_tra_select;
assign can_rec_select = mopshub_core0.can_rec_select;
assign data_tra_downlink = data_generator0.emulator_rec_in;
assign ready_osc = data_generator0.ready_osc ;
mopshub_core#(
.n_buses (5'b111))mopshub_core0(
.clk(clk),
.rst(rst), 
.start_init(start_init),   
.end_init(end_init),  
.sign_on_sig(sign_on_sig),                      
.irq_elink_tra(irq_elink_tra), 
.data_tra_downlink(data_tra_downlink),            
.start_read_elink(start_read_elink),
.end_read_elink(end_read_elink),
.end_write_elink(1'b1),
.data_rec_uplink(data_rec_uplink), 
.buffer_en(buffer_en),
.end_cnt_dbg(end_cnt_dbg),      
.rx0(rx0),        
.rx1(rx1),        
.rx2(rx2),        
.rx3(rx3),        
.rx4(rx4),        
.rx5(rx5),        
.rx6(rx6),        
.rx7(rx7),              
.tx1(tx1),
.tx2(tx2),
.tx3(tx3),
.tx4(tx4),
.tx5(tx5),
.tx6(tx6),
.tx7(tx7),
.tx0(tx0));  

data_generator#(
.n_buses (5'b111))data_generator0(
.clk(clk),
.rst(rst),
.loop_en(1'b0),
//Start SM
.start_data_gen(start_data_gen),
.ext_trim_mops(osc_auto_trim),
//OScillation Triming Signals
.osc_auto_trim(osc_auto_trim),
.trim_sig_start(trim_sig_start),
.trim_sig_end(trim_sig_end),
.trim_sig_done(trim_sig_done),
.sign_in_start(sign_in_start), 
.sign_in_end(sign_in_end),
//Read ADC channels from MOPS and send it to MOPSHUB rx
.test_rx(test_rx),
.test_rx_start(test_rx_start),
.test_rx_end(test_rx_end),
.test_mopshub_core(test_mopshub_core),
.irq_elink_tra(irq_elink_tra),
.start_read_elink(start_read_elink),
.end_read_elink(end_read_elink),
.test_elink_data_done(test_elink_data_done),
.test_advanced(test_advanced),
.rand_msg_end(rand_msg_end),
.respmsg(respmsg),
.reqmsg(reqmsg),
.adc_ch(adc_ch),  
//Decoder Signals [Listen always to the bus ]
.bus_dec_data(bus_dec_data),
//read data from Elink and send it to the bus
.sel_bus(sel_bus),
.bus_cnt(can_tra_select_dbg),// test Bus 0
.osc_auto_trim_mopshub(1'b0),
.bus_id(bus_id),
.buffer_en(buffer_en),
//print activity
.can_tra_select(can_tra_select),
.start_init(start_init),   
.end_init(end_init),
.data_rec_uplink(data_rec_uplink), 
.data_tra_downlink(data_tra_downlink), 
//RX-TX signals
.rx0(rx0),        
.rx1(rx1),        
.rx2(rx2),        
.rx3(rx3),        
.rx4(rx4),        
.rx5(rx5),        
.rx6(rx6),        
.rx7(rx7),
.tx0(tx0),              
.tx1(tx1),
.tx2(tx2),
.tx3(tx3),
.tx4(tx4),
.tx5(tx5),
.tx6(tx6),
.tx7(tx7));

//////////****// Clock generation////////////////
always #50 clk = ~clk;   
//////////////////////////////////////////////// 
  /////******* Reset Generator task--low active ****/////
  initial 
  begin
    rst = 1'b0;
    #200
    rst = 1'b1;
  end 
  always@(posedge sign_on_sig)
  begin
    #1500
    start_data_gen = 1'b1;
    #100
    start_data_gen = 1'b0;
  end  
  /////*******Start Full SM for Data Generation ****/////
  always@(posedge clk)
    if (!rst)
  begin
    info_debug_sig = "<:RESET>";
  end
  else
  begin
    if(trim_sig_done ==1)
    begin
      //sel_bus = 1'b1;
      //osc_auto_trim =1'b0;
    end
    if(start_init)
    begin 
      info_debug_sig = "<:initialization:>";
    end  
    if(trim_sig_start)
    begin 
      info_debug_sig = $sformatf("<:Oscillator Trimming [BUS ID %d]:>",bus_id);
    end  
     if(trim_sig_end)
    begin 
      info_debug_sig = {""};
    end    
    if(sign_on_sig ==1)//start Rx test
    begin
      start_data_gen =1'b0;
      //test_rx =1'b1;
      //test_mopshub_core = 1'b1;
      test_advanced = 1'b1;
    end
    if(test_rx_start)
    begin 
      info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);
    end 
    if(test_rx_end ==1)//Done Rx test
    begin
      test_rx =1'b0;
      test_mopshub_core =1'b1;
      info_debug_sig = {""};
    end
    if (test_elink_data_done == 1)test_mopshub_core =1'b0; 
   // if (rand_msg_end == 1'b1)     test_advanced = 1'b0;
    if(start_read_elink && test_mopshub_core)
    begin 
      info_debug_sig = $sformatf("<:Elink test  [BUS ID %d ]  :>",bus_id);
    end  
  end

endmodule 
