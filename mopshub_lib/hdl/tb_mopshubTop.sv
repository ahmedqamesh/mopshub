`resetall
`timescale 1ns/10ps
module tb_mopshubTop();
reg             clk = 1'b0;
reg             rst   = 1'b1;
wire            start_init;
reg             sel_bus = 1'b1;
string          info_debug_sig;     
reg             power_bus_on =1'b0;
wire            sign_on_sig;

//tbSM signals  
wire    [75:0]  bus_data;
wire    [7:0]   bus_id;
int             adc_ch;

reg             start_data_gen= 1'b0;
wire            sign_in_start;
wire            sign_in_end;
//Automated trimming signals
reg             osc_auto_trim =1'b1; ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg
wire            trim_sig_start;
wire            trim_sig_end;
wire            start_trim_osc;

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
wire     [4:0]  can_tra_select;
wire     [75:0] data_rec_emulator_in;
wire            irq_elink_tra;
wire            irq_elink_rec;
reg      [75:0] requestreg  = 75'h0;
wire            reqmsg;
reg      [75:0] responsereg = 75'h0; 
wire            respmsg;
wire [1:0] tx_mopshub_2bit; 
wire       tx_mopshub_1bit; 
wire [1:0] rx_mopshub_2bit; 
wire       rx_mopshub_1bit;
// Generator signals 
int failures = 0;   // Number of BAD reponses from the chip  
wire            rx0;
wire            rx1;
//wire            rx2;
//wire            rx3;
//wire            rx4;
//wire            rx5;
//wire            rx6;
//wire            rx7;
wire            tx0;
wire            tx1;
//wire            tx2;
//wire            tx3;
//wire            tx4;
//wire            tx5;
//wire            tx6;
//wire            tx7;
//Internal assignments  
assign can_tra_select = mopshub0.can_tra_select;
assign can_rec_select = mopshub0.can_rec_select;
assign data_rec_uplink = mopshub0.data_rec_uplink;
assign data_tra_uplink = mopshub0.data_tra_uplink;

assign data_tra_emulator_out = data_generator0.data_tra_76bit_reg;
assign data_rec_emulator_in = data_generator0.data_rec_76bit_reg;
assign irq_elink_tra = mopshub0.irq_elink_tra;
assign irq_elink_rec = mopshub0.irq_elink_rec;
mopshub_top#(
.max_cnt_size (5),
.n_buses (5'b01))mopshub0(
.clk(clk),
.rst(rst), 
.start_init(start_init),  
.power_bus_on(power_bus_on), 
.start_trim_osc(start_trim_osc),
.sign_on_sig(sign_on_sig),                         
.end_cnt_dbg(1'b1),               
.tx_elink2bit(tx_mopshub_2bit),
.tx_elink1bit(tx_mopshub_1bit),
.rx_elink1bit(rx_mopshub_1bit),
.rx_elink2bit(rx_mopshub_2bit),        
.rx0(rx0),        
.rx1(rx1),        
//.rx2(rx2),        
//.rx3(rx3),        
//.rx4(rx4),        
//.rx5(rx5),        
//.rx6(rx6),        
//.rx7(rx7),              
.tx1(tx1),
//.tx2(tx2),
//.tx3(tx3),
//.tx4(tx4),
//.tx5(tx5),
//.tx6(tx6),
//.tx7(tx7),
.tx0(tx0));  

data_generator#(
.n_buses (5'b01))data_generator0(
.clk(clk),
.rst(rst),
.loop_en(1'b0),
//Start SM
.start_data_gen(start_data_gen),
//OScillation Triming Signals
.osc_auto_trim(osc_auto_trim),
.trim_sig_start(trim_sig_start),
.trim_sig_end (trim_sig_end),
.sign_in_start(sign_in_start), 
.sign_in_end(sign_in_end),
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
.tx0(tx0),
.tx1(tx1), 
// Generator Signals
//RX-TX signals
.rx0(rx0),
.rx1(rx1),
//Decoder Signals [Listen always to the bus ]
.bus_data(bus_data),
//read data from Elink and send it to the bus
.sel_bus(sel_bus),
.bus_cnt(5'b0),// test Bus 0
.test_mopshub_core(1'b0),
.irq_can_ack(1'b0),
.bus_id(bus_id),
.buffer_en(),
//EMCI EMulator
.tx_elink1bit(rx_mopshub_1bit),
.tx_elink2bit(rx_mopshub_2bit),
.rx_elink1bit(tx_mopshub_1bit),
.rx_elink2bit(tx_mopshub_2bit));
//////////****// Clock generation////////////////
always #50 clk = ~clk;   
//////////////////////////////////////////////// 
 
  /////******* Reset Generator task--low active ****/////
  initial 
  begin
    rst = 1'b0;
    #200
    rst = 1'b1;
    if (osc_auto_trim ==1'b1)
    begin
      #100000
      start_data_gen =1'b1;
    end
    else if (power_bus_on ==1'b1)
    begin
     #1000000
    start_data_gen =1'b1;
    end
    else
    start_data_gen =1'b1;
 end
  
  /////*******Start Full SM for Data Generation ****/////
  always@(posedge clk)
  begin 
    if(sign_in_start ==1)
      osc_auto_trim  = 1'b0; 
    if(sign_in_end ==1)//Done with Initialisation
    begin
      test_rx =1'b1;
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
      $strobeh("\t initialization [BUS ID %d ]  ",can_tra_select);
    end  
    /////*********************************Oscillator Trimming*********************************///// 
    if(start_trim_osc||trim_sig_start)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {"<:Oscillator Trimming [BUS ID ",$sformatf("%h",bus_id)," ]:>"};
      $strobeh("\t Oscillator Trimming [BUS ID %d ]  ",bus_id);
    end       
    if(trim_sig_end)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end
    /////*********************************  Oscillator Reg Test *********************************///// 
    if(sign_in_start)
    begin 
      info_debug_sig = {"<:Oscillator Reg Test [BUS ID ",$sformatf("%h",bus_id)," ]:>"};
      $strobeh("\t Oscillator Reg Test [BUS ID %d ]  :",bus_id);
    end 
    if(sign_in_end)
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
    else if(respmsg && osc_auto_trim  && !test_rx && !test_tx)
    begin
      responsereg <= data_rec_uplink;
       $strobeh("\t Oscillator trimming [BUS ID %d]: \t request %h \t response %h \t",bus_id,requestreg,responsereg);
    end  
    else if(reqmsg && osc_auto_trim  && !test_rx && !test_tx)
    begin
      requestreg <= bus_data; 
    end  
    //test RX Response part 
    else if(reqmsg && test_rx)
    begin
      requestreg <= data_rec_uplink; 
    end
    else if (respmsg && test_rx)
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
          if(responsereg == {75'h58143200100000000,2'b00,000000})
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
            $strobe("Status BAD ********************************[TX Test****************************** Status BAD %h",responsereg);
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        {43'h60140??401?,3'h0,can_tra_select,8'h0,16'h0}:begin
          if(responsereg inside{ {43'h5818000401?,3'h0,can_tra_select,24'h???}})
          $strobe("Status GOOD [BUS ID %d] - TX Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test****************************** Status BAD %h",responsereg);
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
        
        default:
        begin 
          if(responsereg == requestreg)
          begin
          $strobe("Status GOOD [BUS ID %d]- test",bus_id);
          $strobe("Status GOOD [BUS ID %h]:",responsereg);
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

