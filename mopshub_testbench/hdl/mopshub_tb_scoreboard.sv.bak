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
module mopshub_tb_scoreboard( 
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
   input wire       test_spi,
   input wire       random1000,

   input wire       test_advanced,
   input wire       test_advanced_start,
   input wire       test_advanced_end ,
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
int failures  = 0;   // Number of BAD reponses from the chip
int status    = 0;
time time_start; 
time time_signal; 
reg      [75:0] requestreg  = 75'h0;
reg      [75:0] responsereg = 75'h0; 
integer         file;
reg [999:0] filename;
import "DPI-C" function string getenv(input string env_name);
string HOME; 

/////*******Save results to a file****/////
initial begin 
  //$timeformat(unit#, prec#, "unit", minwidth);
  $timeformat(-9, 2, " ns", 10); 
  time_start = $realtime;
  HOME = getenv("HOME");
  $display("$HOME = %s\n", HOME);
  $sformat(filename, "%s/tb_mopshub_top_%i_buses.csv",HOME,n_buses);
  $strobeh("\t Opening File%s\n",filename);
  file = $fopen(filename,"w");
  $fwrite(file,"time,test_rx,test_tx,test_advanced,bus_id,can_tra_select,can_rec_select,reqmsg,requestreg,respmsg,responsereg,status\n");
end
  /////******* prints bus activity ******///
  always@(posedge clk)
  if (!rst)
    begin
      requestreg  <= 0;
      responsereg <= 0;
    end
  else 
    begin
      responsereg <= response_data;
      if (reqmsg) requestreg <= request_data; 
      else if (start_trim_osc && osc_auto_trim_mopshub && !test_rx ) 
        begin 
          requestreg <= {76'h555aaaaaaaaaaaaaaaa};  
          $strobeh("\t Oscillator Trimming Test[BUS ID %d]:",power_bus_cnt);
        end 
      else if (start_init)       $strobeh("\t initialization [BUS ID %d]:",can_tra_select); 
      //else if (start_trim_osc)            
      else if (end_trim_bus)     $strobeh("\t Sign In Message[BUS ID %d (%h)]: \t request %h \t response %h \t",bus_id,bus_id,requestreg,responsereg);
      else if (test_rx_start && test_spi) $strobeh("\t Start SPI test[CAN SPI]");     
      else if (test_tx_start && test_spi) $strobeh("\t Start SPI test[Elink SPI]");     
      else if (test_rx_end || end_init ||test_tx_end || test_advanced_end ||test_rx_start||test_tx_start)
        begin
            $strobe("*****************************************************************************");
        end        
      else if (respmsg && osc_auto_trim_mopshub && !test_rx)$strobeh("\t Oscillator Trimming [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);   
      else if (respmsg && test_rx)    $strobeh("\t Receive RX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
      else if (respmsg && test_tx)    $strobeh("\t Transmit TX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg); 
      else if (no_respmsg && (test_rx || test_advanced)) $strobeh("\t Counter RX signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
      else if (respmsg && random1000) $strobeh("\t Receive Random signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
      else if (respmsg && test_spi)   $strobeh("\t Receive SPI signals [BUS ID %d]: \t request %h \t response %h",bus_id,requestreg,responsereg);
    end  
  //// ********* Score board for RX*************////
  always@(posedge clk)
  begin  
  if (respmsg)
    begin 
      casez(requestreg)
        75'h701??00000000000000:   //////// Node guard / status ////
        begin  
          if(responsereg == 75'h701?500000000000000)
          begin
          $strobe("Status GOOD");
          status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end  
        end
        75'h20?????????????????:
        begin 
          if(responsereg inside{75'h20?????????????????})
            begin
              $strobe("Status GOOD");
              status=1;
            end
          else
            begin
              $display("Current simulation time is: ", $realtime);
              $strobe("Status BAD ***************************************************************************** Status BAD=%h",responsereg);
              failures += 1;
            end
        end 
        75'h608????????????????:
        begin 
          if(responsereg inside{75'h608????????????????})
            begin
              $strobe("Status GOOD");
              status=1;
            end
          else
            begin
              $display("Current simulation time is: ", $realtime);
              $strobe("Status BAD ***************************************************************************** Status BAD=%h",responsereg);
              failures += 1;
            end
        end       
        75'h6014010000000000000:
        begin 
          if(responsereg == 75'h5814310000000000191)
          begin
          $strobe("Status GOOD");
          status=1;
          end
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
          begin
            $strobe("Status GOOD");
            status=1;
          end
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
          begin
            $strobe("Status GOOD");
            status=1;
          end
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
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401018??00000000:
        begin 
          
          if(responsereg == 75'h5814310180000000001 ||responsereg == 75'h5814310180087654321)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401200??00000000:
        begin 
          if(responsereg == 75'h5814312000000000002 || responsereg == 75'h5814312000100000601|| responsereg == 75'h5814312000200000581)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401800??00000000:
        begin 
          if(responsereg == 75'h5814318000000000006 || responsereg == 75'h5814318000100000181 || responsereg == 75'h58143180002000000FE
           ||responsereg == 75'h5814318000300000000 || responsereg == 75'h5814318000400000000 || responsereg == 75'h5814318000500000000
           ||responsereg == 75'h5814318000600000000)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401801??00000000:
        begin 
          if(responsereg == 75'h5814318010000000006 || responsereg == 75'h5814318010100000281 || responsereg == 75'h58143180102000000FE
           ||responsereg == 75'h5814318010300000000 || responsereg == 75'h5814318010400000000 || responsereg == 75'h5814318010500000000
           ||responsereg == 75'h5814318010600000000)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401A00??00000000:
        begin 
          if(responsereg == 75'h581431A000000000001 || responsereg == 75'h581431A000121000020)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h601401A01??00000000:
        begin 
          if(responsereg == 75'h581431A010000000001 || responsereg == 75'h581431A010121010030)
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        75'h6014020010000000000:
        begin 
          if(responsereg == {75'h58143200100000000,2'b00,24'h00})//I replaced adc_trim here
          begin
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200200,bus_id,24'h0}:
        begin 
          if(responsereg == {43'h58143200200,bus_id,24'h01})// {75'h58143200200000000,8'h01})
          
          begin
            $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200300,bus_id,24'h0}:
        begin 
          if(responsereg == {43'h58143200300,bus_id,24'h01})// {75'h58143200300000000,8'h01})
          begin
            $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h60140200400,bus_id,24'h0}:
        begin 
          if(responsereg == {43'h58143200400,bus_id,24'h00})
          begin
            $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
            status=1;
          end
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
          begin
            $strobe("Status GOOD [BUS ID %d]- Trimming Osc test",bus_id);
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************[Trimming Osc test]************************************************* Status BAD");
            $strobe("******************** Please check SDO abort codes to understand why write operation failed");
            failures += 1;
          end
        end 
        {43'h60140??401?,3'h0,can_tra_select,24'h0}:
        begin
          if(responsereg inside{ {43'h5818000401?,3'h0,can_tra_select,24'h???}})
          begin
            
            $strobe("Status GOOD [BUS ID %d] - TX Test",can_tra_select);;
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test [BUS ID %d]****************** Status BAD %h",can_tra_select,requestreg);
            failures += 1;
          end
      end
        {43'h60140002???,3'h0,can_tra_select,24'h???}:
        begin
          if(responsereg inside{ {43'h58180002???,3'h0,can_tra_select,24'h???}})
          begin
            $strobe("Status GOOD [BUS ID %d] - TX Test",can_tra_select);;
            status=1;
          end          
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ********************************[TX Test [BUS ID %d]****************** Status BAD",can_tra_select);
            failures += 1;
          end
        end
        
        {43'h60140210000,bus_id,24'h0}: 
        begin 
          if(responsereg == {43'h58143210000,bus_id,24'h00})
          begin
            $strobe("Status GOOD [BUS ID %d] - RX Test",bus_id);;
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h601402310??,bus_id,24'h0}: 
        begin
          if(responsereg == {43'h58143231000,bus_id,24'h03} || responsereg == {43'h58143231001,bus_id,24'h123} 
          || responsereg == {43'h58143231002,bus_id,24'h223}|| responsereg == {43'h58143231003,bus_id,24'h323})
          begin
            $strobe("Status GOOD [BUS ID %d] - RX Test",bus_id);;
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        {43'h601402400??,bus_id,24'h0}:
        begin 
          if(responsereg inside{ {43'h581??2400??,bus_id,24'h???}})
          begin
            $strobe("Status GOOD [BUS ID %d] - RX Test",bus_id);;
            status=1;
          end
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
           begin
            $strobe("Status GOOD [BUS ID %d]- Sign-in test",bus_id);
            $strobe("Status GOOD");
            status=1;
          end
          else
          begin
            $display("Current simulation time is: ", $realtime);
            $strobe("Sign-in test:Status BAD ***************************************************************************** Status BAD");
            failures += 1;
          end
        end
        default:
        begin 
          status=0;
          if(responsereg == requestreg ||(responsereg[75:8] ==requestreg[75:8]))
            $strobe("Status GOOD [BUS ID %d]- RX-TX test",bus_id);
          else if (responsereg == {44'h70105000000,3'h0,can_rec_select,24'h0}) //{43'h701?5000000,can_rec_select,24'h0}}
            begin   
              //$strobe("*****************************************************************************");                  
              $strobeh("\t Sign In Message    [BUS ID %d]: \t response %h \t",can_rec_select,responsereg);
              $strobe("*****************************************************************************");
            end 
          //else if (test_advanced ==1)
          //  begin   
              //$strobe("*****************************************************************************");                  
              //$strobeh("\t Costum Message test   [BUS ID %d]: \t response %h \t",can_rec_select,responsereg);
          //    $strobe("Status ---- [BUS ID %d]- Advanced test",can_rec_select);
              //$strobe("*****************************************************************************");
          // end 
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
      time_signal = $realtime - time_start;
      $fwrite(file,"%d,%d,%d,%d,%d,%d,%d,%d,%h,%d,%h,%d\n",time_signal,test_rx,test_tx,test_advanced,bus_id,can_tra_select,can_rec_select,respmsg,requestreg,respmsg,responsereg,status);
    end
  end

endmodule