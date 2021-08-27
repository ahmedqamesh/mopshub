//
// Verilog Module mopshub_lib.tb_mopshubCore
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:01:54 08/27/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_mopshubCore ;
reg             clk = 1'b0;
reg             rst   = 1'b1;
wire            start_init;
wire            osc_auto_trim;
string          info_debug_sig;     
int             adc_ch;
wire    [75:0]  bus_data;
//tbSM signals  
wire    [7:0]   bus_id;
wire            start_sign_in;
wire            end_sign_in;
wire            start_trim_sig;
reg             start_data_gen= 1'b0;
reg             test_rx = 1'b0;
reg             test_tx = 1'b0;
//wire            test_tx_end;
//wire            test_tx_start;
//wire            start_write_tx;
wire            test_rx_start;
wire            test_rx_end;
reg             test_mopshub_core=1'b0;
reg             sel_bus = 1'b0;
// MOPSHUB signals
wire    [75:0]  data_rec_uplink;
wire    [75:0]  data_tra_uplink;
wire            reqmsg;
wire            respmsg;
wire    [4:0]   can_rec_select;
wire            irq_can_rec;
wire             start_read_elink;
wire             end_read_elink; 
reg      [75:0] requestreg  = 75'h0;
reg      [75:0] responsereg = 75'h0; 
wire            irq_elink_tra;
wire     [4:0]  can_tra_select;
wire            irq_can_tra;
wire            test_elink_data_done;  
wire           buffer_en;
wire           irq_can_ack;
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
//Automated trimming signals
assign osc_auto_trim =1'b0;                    ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg

/// Top level instantiation
assign irq_can_rec = mopshub_core0.irq_can_rec;
assign irq_can_tra = mopshub_core0.irq_can_tra;
assign can_tra_select = mopshub_core0.can_tra_select;
assign can_rec_select = mopshub_core0.can_rec_select;
assign irq_elink_tra = data_generator0.irq_elink;


mopshub_core#(
.max_cnt_size (5),
.n_buses (5'b01))mopshub_core0(
.clk(clk),
.rst(rst), 
.start_init(start_init),                           
.irq_elink_tra(irq_elink_tra), 
.irq_can_ack(irq_can_ack),
.data_tra_uplink(data_tra_uplink),            
.start_read_elink(start_read_elink),
.end_read_elink(end_read_elink),
.end_write_elink(1'b1),
.data_rec_uplink(data_rec_uplink), 
.buffer_en(buffer_en),      
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
.start_trim_sig(start_trim_sig),
.sign_in_start(start_sign_in), 
.sign_in_end(end_sign_in),
//Read ADC channels from MOPS and send it to MOPSHUB rx
.test_rx(test_rx),
.test_rx_start(test_rx_start),
.test_rx_end(test_rx_end),
.start_write_emulator( ),
.test_tx(),
.test_tx_start(),
.test_tx_end( ),
.test_mopshub_core(test_mopshub_core),
.start_read_elink(start_read_elink),
.end_read_elink(end_read_elink),
.test_elink_data_done(test_elink_data_done),

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
.sel_ch(1'b1),
.sel_bus(sel_bus),
.bus_cnt(5'b0),// test Bus 0

.irq_can_ack(irq_can_ack),
.bus_payload(data_tra_uplink),
.bus_id(bus_id),
.buffer_en(buffer_en),
//EMCI EMulator
.tx_elink1bit(),
.tx_elink2bit(),
.rx_elink1bit(),
.rx_elink2bit());
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
      #200000
      start_data_gen =1'b1;
    end
    else
    start_data_gen =1'b1;
  end 
  
  /////*******Start Full SM for Data Generation ****/////
  always@(posedge clk)
  begin 
    if(end_sign_in ==1)//Done with Initialisation
    begin
      sel_bus=1'b0;
     // test_rx =1'b1;
     
      test_mopshub_core = 1'b1;
      start_data_gen =1'b0;
    end
    if(test_rx_end ==1)//Done Rx test
    begin
      test_rx =1'b0;
      test_mopshub_core =1'b1;
    end
    if (test_elink_data_done == 1)//Done Elink test 
    test_mopshub_core =1'b0; 
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
      $strobeh("\t initialization: %h ",data_rec_uplink);
    end  
    if(start_trim_sig)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = "<:Oscillator Trimming:>";
      $strobeh("\t Oscillator Trimming: %h ",data_rec_uplink);
    end  
    if(start_sign_in)
    begin 
      #500
      $strobe("*****************************************************************************");
      info_debug_sig = {"<:Signing in [BUS ID ",$sformatf("%h",bus_id)," ]:>"};
      $strobeh("\t Sign-in message [BUS ID %d ]  :",bus_id);
    end 
    if(end_sign_in)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end
    if(test_rx_start)
    begin 
      info_debug_sig = $sformatf("<:RX signals   [BUS ID %d ]  :>",bus_id);
    end 
    if(test_rx_end)
    begin 
      $strobe("*****************************************************************************");
      info_debug_sig = {""};
    end         
    if(start_read_elink && test_mopshub_core)
    begin 
      info_debug_sig = $sformatf("<:Elink test  [BUS ID %d ]  :>",bus_id);
    end  
    //test RX part 
    else if (respmsg && test_rx)
    begin
      responsereg <= data_rec_uplink;
      $strobeh("\t Receive RX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
    end
    else if(reqmsg && test_rx)
    begin
      requestreg <= data_rec_uplink; 
    end
    //Test Elink
    else if (respmsg && (test_mopshub_core))
    begin
      responsereg <= data_rec_uplink;
      $strobeh("\t Transmit TX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
    end
    else if(reqmsg && (test_mopshub_core))
    begin
      requestreg <= data_tra_uplink; 
    end
    //Default
    else if (respmsg && !test_mopshub_core && !test_rx)
    begin
      responsereg <= data_rec_uplink;
      $strobeh("\t Sign-In Signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
    end
    else if(reqmsg && !test_mopshub_core && !test_rx)
    begin
      requestreg <= data_rec_uplink; 
    end
    
  end  
  //// ********* Score board for RX*************////
  always@(*)
  begin 
    if (respmsg)
    begin
      #500
      casez(requestreg)
        75'h0: begin    //////// Reset requestreg////
          if(responsereg inside {{43'h701?5000000,bus_id,24'h0}})//{75'h701 ?500 0000 0000 0000})
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
        75'h701??00000000000000:   //////// Node guard / status ////
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
          if(responsereg == {75'h58143200100000000,2'b00,000000})//I replaced adc_trim here
          $strobe("Status GOOD");
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200200,bus_id,8'h0,16'h0}://75'h6014020020000000000:
        begin 
          if(responsereg == {43'h58143200200,bus_id,24'h01})// {75'h58143200200000000,8'h01})
          $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200300,bus_id,8'h0,16'h0}: //75'h601 40200300 00 000000:
        begin 
          if(responsereg == {43'h58143200300,bus_id,24'h01})// {75'h58143200300000000,8'h01})
          $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200400,bus_id,8'h0,16'h0}: //75'h6014020040000000000:
        begin 
          if(responsereg == {43'h58143200400,bus_id,24'h00})//{75'h5814320040000000000,8'h01})
          $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        // Check TX- Test
        {43'h60140??2?0?,3'h0,can_tra_select,8'h0,16'h0}:begin
          if(responsereg inside{ {43'h58180002?0?,3'h0,can_tra_select,24'h???}})
          $strobe("Status GOOD [BUS ID %d] - Elink Test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[Elink Test****************************** Status BAD %h",responsereg);
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        
        {43'h60140210000,bus_id,8'h0,16'h0}: //75'h6014021000000000000:
        begin 
          if(responsereg == {43'h58143210000,bus_id,24'h00})//75'h581 43 21 0000 0000 0000)
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h601402310??,bus_id,8'h0,16'h0}: //75'h601402310??00000000:
        begin
          if(responsereg == {43'h58143231000,bus_id,24'h03})//75'h581 43 23100000000003)
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231001,bus_id,24'h123})//75'h5814323100100000123)
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231002,bus_id,24'h223})//75'h5814323100200000223)
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else if(responsereg == {43'h58143231003,bus_id,24'h323})//75'h5814323100300000323)
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
        
        {43'h60123??????,bus_id,24'h??}://75'h601 23?? ???? ???? ????:
        begin 
          if(responsereg inside {{43'h58160??????,bus_id,8'h??,16'h0}})//75'h581 60?? ?? ?? 0000 0000})
          $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Sign-in test:Status BAD ***************************************************************************** Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end
        default:
        begin 
          if(responsereg == requestreg)
          $strobe("Status GOOD [BUS ID %d]- RX test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD *************************************************************************** Status BAD%h",responsereg);
            $strobe("************MOPS reponded to a random message. The reponse must be checked");
            failures += 1;
          end
        end
      endcase
      
    end
  end
  
endmodule 

