//
// Verilog Module mopshub_testbench.can_bus_activity
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 15:59:08 12/09/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module can_bus_activity ( 
   input  wire       clk,
   input  wire       rst,
   input wire    [7:0]   bus_id,
   input wire    [4:0]   can_tra_select,
   input wire    [4:0]   can_rec_select,
   input wire    [4:0]   power_bus_cnt,
   //Step name
   input wire       start_init,
   input wire       end_init,
   input wire       trim_sig_start,
   input wire       trim_sig_end, 

   input wire       test_tx,
   input wire       test_tx_start,
   input wire       test_tx_end,
      
   input wire       test_rx,
   input wire       test_rx_start,
   input wire       test_rx_end,

   input wire       test_mopshub_core,
   
   
   input wire       test_advanced,
   input wire       costum_msg_start,
   input wire       costum_msg_end,
      
   input wire       osc_auto_trim, 
   input wire       osc_auto_trim_mopshub,     
   input wire       end_trim_bus,
   input wire       start_trim_osc,
   input wire    [75:0]  data_rec_uplink,
   input wire    [75:0]  data_tra_downlink,
   input wire    [75:0]  bus_dec_data,
   input wire            reqmsg,
   input wire            respmsg
);
int failures = 0;   // Number of BAD reponses from the chip  
reg      [75:0] requestreg  = 75'h0;
reg      [75:0] responsereg = 75'h0; 
  /////******* prints bus activity ******///
  always@(posedge clk)
  if (!rst)
  begin
    requestreg  <= 0;
    responsereg <= 0;
  end
  else 
  begin
    responsereg <= data_rec_uplink;
    if(start_init)     $strobeh("\t initialization [BUS ID %d]:",can_tra_select); 
    if(trim_sig_start) $strobeh("\t Oscillator Trimming [BUS ID %d]:",bus_id);  
    if(start_trim_osc) $strobeh("\t Oscillator Trimming [BUS ID %d]:",power_bus_cnt);         
       /////*********************************  Sign In message print *********************************
    if(end_trim_bus)
      $strobeh("\t Sign In Message[BUS ID %d (%h)]: \t request %h \t response %h \t",can_rec_select,can_rec_select,requestreg,responsereg);
    if(test_rx_end || end_init ||test_tx_end ||(end_trim_bus||trim_sig_end || costum_msg_end ))
    begin 
      $strobe("*****************************************************************************");
    end         
    /////*********************************  Test Osc Trim  Response part  *********************************
    if((reqmsg|| start_trim_osc ) && (osc_auto_trim ||osc_auto_trim_mopshub) && !test_rx && !test_mopshub_core )
    begin
      requestreg <= {76'h555aaaaaaaaaaaaaaaa};  
    end 
    if(respmsg && osc_auto_trim && !test_rx && !test_mopshub_core )
      $strobeh("\t Oscillator Trimming [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);   
     /////********************************* test RX part  *********************************
    if(reqmsg && test_rx) requestreg <= data_rec_uplink; 
    else if (respmsg && test_rx) $strobeh("\t Receive RX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
     /////********************************* test TX part  *********************************
    if(reqmsg && (test_mopshub_core||test_tx)) requestreg <= data_tra_downlink;
    else if (respmsg && (test_mopshub_core || test_tx)) $strobeh("\t Transmit TX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg); 
    /////********************************* costum msg part *********************************
    if (reqmsg  && test_advanced) requestreg <= data_tra_downlink;//bus_dec_data ;
    //else if (respmsg && test_advanced) 
    //  $strobeh("\t Costumom TX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
    /////********************************* Default *********************************
    else if (reqmsg  && !test_mopshub_core && !test_tx && !test_rx) requestreg <= data_rec_uplink; 
    else if (respmsg && !test_mopshub_core && !test_tx && !test_rx&& !test_advanced)
      $strobeh("\t [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
  end  
  // ### Please start your Verilog code here ### 
  //// ********* Score board for RX*************////
  always@(*)
  begin  
  if (respmsg)
    begin 
      casez(requestreg)
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
        //Check Osc test
        {76'h555aaaaaaaaaaaaaaaa}:
        begin 
          if(responsereg inside{{43'h555aaaaaaaa,bus_id,24'haaaaaa}})
          $strobe("Status GOOD [BUS ID %d]- Trimming Osc test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************[Trimming Osc test]************************************************* Status BAD");
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
            failures += 1;
          end
      end
        {43'h60140002???,3'h0,can_tra_select,24'h???}:begin
          if(responsereg inside{ {43'h58180002???,3'h0,can_tra_select,24'h???}})
          $strobe("Status GOOD [BUS ID %d] - TX Test",can_tra_select);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test [BUS ID %d]****************** Status BAD",can_tra_select);

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
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h601402310??,bus_id,8'h0,16'h0}: 
        begin
          if(responsereg == {43'h58143231000,bus_id,24'h03})
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
            failures += 1;
          end
        end 
        {43'h60123??????,bus_id,24'h??}:
        begin 
          if(responsereg inside {{43'h58160??????,bus_id,8'h??,16'h0}})//75'h581 60?? ?? ?? 0000 0000})
          $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Sign-in test:Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        default:
        begin 
          if(responsereg == requestreg ||(responsereg[75:8] ==requestreg[75:8]))
          $strobe("Status GOOD [BUS ID %d]- RX-TX test",bus_id);
          if (responsereg == {44'h70105000000,3'h0,can_rec_select,24'h0}) //{43'h701?5000000,can_rec_select,24'h0}}
            begin   
              $strobe("*****************************************************************************");                  
              $strobeh("\t Sign In Message    [BUS ID %d]: \t response %h \t",can_rec_select,responsereg);
              $strobe("*****************************************************************************");
            end 
          if (test_advanced ==1)
            begin   
              $strobe("*****************************************************************************");                  
              $strobeh("\t Costum Message test   [BUS ID %d]: \t response %h \t",can_rec_select,responsereg);
              $strobe("*****************************************************************************");
            end 
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD **************************[RX-TX test [BUS ID %d]****************** Status BAD %h",can_rec_select,requestreg);
            $strobe("Status BAD **************************[RX-TX test [BUS ID %d]****************** Status BAD %h",can_tra_select,responsereg);
            $strobe("************MOPS reponded to a costumom message. The reponse must be checked");
            failures += 1;
          end
        end
      endcase
      
    end
  end
  
endmodule