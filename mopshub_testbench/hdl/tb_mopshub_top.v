`resetall
`timescale 1ns/10ps
module tb_mopshub_top();
reg             clk = 1'b0;
wire             clk_40;
wire             clk_80;
reg             rst   = 1'b1;
wire            rst_mops_dbg;
reg             sel_bus = 1'b0;
reg     [4:0]   can_tra_select_dbg =5'd5;
wire            sign_on_sig;
reg             start_data_gen= 1'b0;
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
wire            ready_osc;
wire            start_trim_osc;
wire            end_trim_bus;
wire            done_trim_osc;

wire            power_bus_en;
wire    [4:0]   power_bus_cnt;

wire            sign_in_start;
wire            sign_in_end;

reg             test_osc_reg = 1'b0;
wire            osc_reg_start;
wire            osc_reg_end;

reg             test_rx = 1'b0;
wire            test_rx_start;
wire            test_rx_end;

reg             test_tx = 1'b0;
wire            test_tx_start;
wire            test_tx_end;

// MOPSHUB signals
wire    [75:0]  data_rec_uplink;
wire    [75:0]  data_tra_emulator_out;
wire    [4:0]   can_rec_select;
wire    [75:0]  data_tra_uplink;
wire    [4:0]  can_tra_select;
wire    [75:0] data_rec_emulator_in;
wire            irq_elink_tra;
wire            irq_elink_rec;
reg      [75:0] requestreg  = 75'h0;
wire            reqmsg;
reg      [75:0] responsereg = 75'h0; 
wire            respmsg;
// Generator signals 
int failures = 0;   // Number of BAD reponses from the chip  
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
//wire [1:0] tx_mopshub_2bit; 
wire       tx_mopshub_1bit; 
//wire [1:0] rx_mopshub_2bit; 
wire       rx_mopshub_1bit;

//Internal assignments  
assign can_tra_select   = mopshub0.can_tra_select;
assign can_rec_select   = mopshub0.can_rec_select;
assign data_rec_uplink  = mopshub0.data_rec_uplink;
assign data_tra_uplink  = mopshub0.data_tra_uplink;
assign done_trim_osc    = mopshub0.done_trim_osc;
assign start_init       = mopshub0.start_init;
assign end_init         = mopshub0.end_init;
assign rst_mops_dbg     = mopshub0.rst_mops_dbg;
assign sign_on_sig      = mopshub0.sign_on_sig;
assign end_trim_bus     = mopshub0.end_trim_bus;
assign start_trim_osc   = mopshub0.start_trim_ack;


assign data_tra_emulator_out  = data_generator0.data_tra_76bit_reg;
assign data_rec_emulator_in   = data_generator0.data_rec_76bit_reg;
assign ready_osc              = data_generator0.ready_osc;

assign irq_elink_tra = mopshub0.irq_elink_tra;
assign irq_elink_rec = mopshub0.irq_elink_rec;

mopshub_top#(
.n_buses (5'b111))mopshub0(
.clk(clk_40),
.clk_40(clk_40),
.clk_80(clk_80),
.rst(rst),  
.osc_auto_trim_mopshub(osc_auto_trim_mopshub), 
.power_bus_en(power_bus_en),
.power_bus_cnt(power_bus_cnt),                     
.end_cnt_dbg(1'b0),
.can_tra_select_dbg(can_tra_select_dbg),              
//.tx_elink2bit(tx_mopshub_2bit),
.tx_elink1bit(tx_mopshub_1bit),
.rx_elink1bit(rx_mopshub_1bit),
//.rx_elink2bit(rx_mopshub_2bit),        
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

data_generator#(
.n_buses (5'b111))data_generator0(
.clk(clk),
.rst(rst),
.ext_rst_mops(rst_mops_dbg),
.ext_trim_mops(osc_auto_trim_mopshub),
.loop_en(1'b0),
//Start SM
.start_data_gen(start_data_gen),
//OScillation Triming Signals
.osc_auto_trim(osc_auto_trim),
.trim_sig_start(trim_sig_start),
.trim_sig_end (trim_sig_end),
.trim_sig_done(trim_sig_done),
.sign_in_start(sign_in_start), 
.sign_in_end(sign_in_end),
.osc_reg_end(osc_reg_end),
.osc_reg_start(osc_reg_start),
//Read ADC channels from MOPS and send it to MOPSHUB rx
.test_rx(test_rx),
.test_tx(test_tx),
.test_tx_end(test_tx_end),
.test_rx_start(test_rx_start),
.test_rx_end(test_rx_end),
.test_tx_start(test_tx_start),
.respmsg(respmsg),
.reqmsg(reqmsg),
.adc_ch(adc_ch),  
// Acknowledgement bit from the MOPSHUB
//Decoder Signals [Listen always to the bus ]
.bus_dec_data(bus_dec_data),
//read data from Elink and send it to the bus
.sel_bus(sel_bus),
.bus_cnt(can_tra_select_dbg),// test Bus 0
.test_mopshub_core(1'b0),
.irq_can_ack(1'b0),
.bus_id(bus_id),
.buffer_en(),
.test_elink_data_done(),
.start_write_emulator(),
.start_read_elink(),
.end_read_elink(),
//Elin.kSignals
.tx_elink1bit(rx_mopshub_1bit),
//.tx_elink2bit(rx_mopshub_2bit),
.rx_elink1bit(tx_mopshub_1bit),
//.rx_elink2bit(tx_mopshub_2bit),
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
clock_divider #(28'd2)
clock_divider2( 
   .clock_in  (clk), 
   .clock_out (clk_80)
); 

clock_divider #(28'd4)
clock_divider4( 
   .clock_in  (clk), 
   .clock_out (clk_40)
); 
 
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
  begin  
    if(trim_sig_done ==1 ||done_trim_osc ==1)
    begin
      osc_auto_trim =1'b0;
      osc_auto_trim_mopshub = 1'b0;
      test_osc_reg = 1'b1;
    end
    if(osc_reg_end ==1)//Done with Initialisation
    begin
      test_rx =1'b1;
      test_osc_reg = 1'b0;
      // test_tx =1'b1;
      start_data_gen =1'b0;
    end
    if(test_rx_end ==1)//Done Rx test
    begin
      test_rx =1'b0;
      test_tx =1'b1; 
    end
    if (test_tx_end ==1)//Done Tx test
    test_tx =1'b0;
  end
  
  /////******* prints bus activity ******///
  always@(posedge clk or negedge rst)
  if (!rst)
  begin
    requestreg <= 0;
    responsereg <= 0;
    info_debug_sig = "<:RESET>";
  end
  else 
  begin
    if(start_init)
    begin 
      info_debug_sig = "<:initialization:>";
      $strobeh("\t initialization [BUS ID %d ]",can_tra_select);
    end  
    if(end_init)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end
    
    /////*********************************Oscillator Trimming*********************************///// 
    if(start_trim_osc)
    begin 
      info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",power_bus_cnt)," ]:>"};
      $strobeh("\t Oscillator Trimming [BUS ID %d ]: ",power_bus_cnt);
    end
    if(trim_sig_start)
    begin 
      info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",bus_id)," ]:>"};
      $strobeh("\t Oscillator Trimming [BUS ID %d ]: ",bus_id);
    end       
    if(end_trim_bus||trim_sig_end)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end
    /////*********************************  Sign In message print *********************************///// 
    if(sign_in_start & !osc_auto_trim_mopshub)
    begin 
      responsereg <= data_rec_uplink;
      //can_rec_select instead of bus_id in case MOPSHUB skip the bus id
      $strobeh("\t Sign In Message [BUS ID %d]: \t request %h \t response %h \t",can_rec_select,requestreg,responsereg); 
    end     
    if(sign_in_end &!osc_auto_trim_mopshub)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end 
    
    /////*********************************  Oscillator Reg Test *********************************///// 
    if(osc_reg_start)
    begin 
      info_debug_sig = {"<:       Oscillator Reg Test       :>"};
      $strobeh("\t Oscillator Reg Test [BUS ID %d ]",bus_id);
    end 
    if(osc_reg_end)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end
    /////*********************************  RX Test    *********************************///// 
    if(test_rx_start)
    begin 
      info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);
    end 
    if(test_rx_end)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end 
        /////*********************************  TX Test    *********************************/////     
    if (test_tx_start)
    begin 
      info_debug_sig = $sformatf("<:TX signals  [BUS ID %d ]  :>",bus_id);
    end     
    if(test_tx_end)
    begin 
      #10
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end    
    
    // Test Osc Trim  Response part 
    if(osc_auto_trim_mopshub  && !test_rx && !test_tx)
    begin
      requestreg <= {12'h555,64'hAAAAAAAAAAAAAAAA};  
    end  
    if(end_trim_bus)
    begin 
      responsereg <= data_rec_uplink;
      $strobeh("\t Sign In Message [BUS ID %d]: \t request %h \t response %h \t",bus_id,requestreg,responsereg);
      $strobeh("*************************************************************************"); 
    end      
    // Test Osc Trim  Response part 
    else if(respmsg && osc_auto_trim  && !test_rx && !test_tx && !test_osc_reg)
    begin
      responsereg <= data_rec_uplink;
       $strobeh("\t Oscillator trimming [BUS ID %d]: \t request %h \t response %h \t",bus_id,requestreg,responsereg);
    end  
    else if(reqmsg && osc_auto_trim  && !test_rx && !test_tx && !test_osc_reg)
    begin
      requestreg <= {76'h555aaaaaaaaaaaaaaaa};  
    end 
     
    //test RX Response part 
    else if(reqmsg && (test_rx || test_osc_reg))
    begin
      requestreg <= data_rec_uplink; 
    end
    else if (respmsg && (test_rx || test_osc_reg))
    begin
      responsereg <= data_tra_emulator_out;
      $strobeh("\t Receive RX signals [BUS ID %d]: \t request  %h \t response %h \t Emulator_out %h",bus_id,requestreg,data_rec_uplink,data_tra_emulator_out);
    end
    //Test Elink or TX Response part 
    else if (reqmsg &&  test_tx)
    begin
      requestreg <= data_tra_uplink; 
    end
    else if (respmsg && test_tx)
    begin
      responsereg <= data_rec_uplink;
      $strobeh("\t Transmit TX signals [BUS ID %d]: \t request %h \t response %h\t Emulator_in %h",bus_id,requestreg,responsereg, data_rec_emulator_in);
    end
    //Default
    else if (respmsg &&  !test_rx && !test_tx && !osc_auto_trim)
    begin
      responsereg <= data_tra_emulator_out ;
      $strobeh("\t [BUS ID %d]: \t request %h \t response %h \t Emulator_out %h",bus_id,requestreg,data_rec_uplink,data_tra_emulator_out);
    end
    else if(reqmsg && !test_rx&& !test_tx && !osc_auto_trim)
    begin
      requestreg <= data_rec_uplink; 
    end
    
  end  
  //// *********************************** Score board ***************************************////
  always@(*)
  begin 
    if (respmsg)
    begin
     #500
      casez(requestreg)
        75'h0: begin    //////// Reset requestreg////
          if(responsereg inside {{43'h701?5000000,bus_id,24'h0}})
          begin                     
            $strobe("Status GOOD [BUS ID %d]-Reset request",bus_id);
          end 
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Reset request: Status BAD ************************************************************* Status BAD");
            failures += 1;
          end  
        end
        75'h701??00000000000000: 
        begin 
          if(responsereg == 75'h701?500000000000000)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end  
        end
        75'h6014010000000000000:
        begin 
          if(responsereg == 75'h5814310000000000191)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h6014010010000000000:
        begin 
          if(responsereg == 75'h5814310010000000000)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h6014010050000000000:
        begin 
          if(responsereg == 75'h5814310050000000080)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h6014010140000000000:
        begin 
          if(responsereg == 75'h5814310140000000081)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401018??00000000:
        begin 
          
          if(responsereg == 75'h5814310180000000001)
          $strobe("Status GOOD");
          else if (responsereg == 75'h5814310180087654321)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401200??00000000:
        begin 
          if(responsereg == 75'h5814312000000000002)
          $strobe("Status GOOD");
          else if (responsereg == 75'h5814312000100000601)
          $strobe("Status GOOD");
          else if (responsereg == 75'h5814312000200000581)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401800??00000000:
        begin 
          if(responsereg == 75'h5814318000000000006)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318000100000181)
          $strobe("Status GOOD");
          else if(responsereg == 75'h58143180002000000FE)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318000300000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318000400000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318000500000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318000600000000)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401801??00000000:
        begin 
          if(responsereg == 75'h5814318010000000006)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318010100000281)
          $strobe("Status GOOD");
          else if(responsereg == 75'h58143180102000000FE)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318010300000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318010400000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318010500000000)
          $strobe("Status GOOD");
          else if(responsereg == 75'h5814318010600000000)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401A00??00000000:
        begin 
          if(responsereg == 75'h581431A000000000001)
          $strobe("Status GOOD");
          else if(responsereg == 75'h581431A000121000020)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401A01??00000000:
        begin 
          if(responsereg == 75'h581431A010000000001)
          $strobe("Status GOOD");
          else if(responsereg == 75'h581431A010121010030)
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h6014020010000000000:
        begin 
          if(responsereg == {75'h58143200100000000})
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200200,bus_id,8'h0,16'h0}:
        begin 
          if(responsereg == {43'h58143200200,bus_id,24'h01})
          $strobe("Status GOOD [BUS ID %d]- Oscillator Reg Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200300,bus_id,8'h0,16'h0}: 
        begin 
          if(responsereg == {43'h58143200300,bus_id,24'h01})
          $strobe("Status GOOD [BUS ID %d]- Oscillator Reg Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200400,bus_id,8'h0,16'h0} :
        begin 
          if(responsereg == {43'h58143200400,bus_id,24'h00})
          $strobe("Status GOOD [BUS ID %d]- Oscillator Reg Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60123??????,bus_id,24'h??}:
        begin 
          if(responsereg inside {{43'h58160??????,bus_id,8'h??,16'h0}})
          $strobe("Status GOOD [BUS ID %d]- Oscillator Reg Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Oscillator Reg Test:Status BAD ****************************************************************** Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        //Check Osc test
        {76'h555aaaaaaaaaaaaaaaa}:
        begin 
          if(responsereg inside{{43'h555aaaaaaaa,bus_id,24'haaaaaa}})
          $strobe("Status GOOD [BUS ID %d]- Trimming Osc test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************- Trimming Osc -************************************************* Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end 
        
        // Check TX- Test
        {43'h60140??240?,3'h0,can_tra_select,8'h0,16'h0}:begin
          if(responsereg inside{ {43'h5818000240?,3'h0,can_tra_select,24'h???}})
          $strobe("Status GOOD [BUS ID %d] - TX Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test [BUS ID %d]****************** Status BAD %h",can_tra_select,requestreg);
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        {43'h60140??401?,3'h0,can_tra_select,8'h0,16'h0}:begin
          if(responsereg inside{ {43'h5818000401?,3'h0,can_tra_select,24'h???}})
          $strobe("Status GOOD [BUS ID %d] - TX Test",can_tra_select);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test [BUS ID %d]****************** Status BAD %h",can_tra_select,requestreg);
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end        
        {43'h60140210000,bus_id,8'h0,16'h0}:
        begin 
          if(responsereg == {43'h58143210000,bus_id,24'h00})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD *************************-RX test-**************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h601402310??,bus_id,8'h0,16'h0}: 
        begin
          if(responsereg == {43'h58143231000,bus_id,24'h03})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231001,bus_id,24'h123})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231002,bus_id,24'h223})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231003,bus_id,24'h323})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        {43'h601402400??,bus_id,8'h0,16'h0}:
        begin 
          if(responsereg inside{ {43'h581??2400??,bus_id,24'h???}})
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end 
        
        //// Below is the check for write operation 
        ///////**********************************///

        
        default:
        begin 
          if(responsereg == requestreg)
          begin
          $strobe("Status GOOD [BUS ID %d]- test",bus_id);
          $strobe("responsereg = responsereg [BUS ID %d]: Msg = %h",bus_id, responsereg);
        end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD *************************************************************************** Status BAD%h",requestreg);
            $strobe("Status BAD *************************************************************************** Status BAD%h",responsereg);
            $strobe("************MOPS reponded to a random message. The reponse must be checked");
            failures += 1;
          end
        end
      endcase
      
    end
  end
  
endmodule 
