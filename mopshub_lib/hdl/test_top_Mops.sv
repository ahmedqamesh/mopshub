`resetall
`timescale 1ns/10ps
module test_top_Mops();
reg             clk = 1'b0;
wire            clk_low;
reg             rst   = 1'b1;
wire            sign_on_sig;
wire            osc_auto_trim;
reg             startsmreg= 1'b0; 
string          info_debug_sig;     
int             ch;
wire    [75:0]  bus_data;
//tbSM signals  
wire            indic_sign_in;
wire            start_trim_sig;
wire            read_adc_start;
wire            read_adc_end;
// MOPSHUB signals

wire    [75:0]  data_rec_uplink;
wire    [75:0]  request;
wire            reqmsg;
wire    [75:0]  response;
wire            respmsg;
reg     [4:0]   can_rec_select = 5'b11110;
wire            irq_can_rec;
reg             end_write_elink= 1'b1;


reg             elink_test=1'b0;
wire            irq_elink;
wire            start_read_elink;
wire            end_read_elink; 
wire     [75:0] data_tra_uplink;
reg      [75:0] requestreg  = 75'h0;
reg      [75:0] responsereg = 75'h0; 
wire     [4:0]  can_tra_select;
wire            irq_can_tra;
wire            send_mes_can_done;
wire            buffer_en; //Enable the tra_buffer
wire            done;    // dbg  
// Generator signals 
int failures = 0;                             // Number of BAD reponses from the chip  
wire            tx;
wire            rx;
wire            tx_mopshub;
//Internal assignments  
assign request = requestreg;
assign response = responsereg;
//Automated trimming signals
assign osc_auto_trim =1'b1;                    ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg

/// Top level instantiation
assign irq_can_rec = mopshub.irqsucrec;
assign irq_can_tra = mopshub.irqsuctra;

mopshub_core#(
.max_cnt_size (5),
.n_buses (5'b11111))mopshub(
.clk(clk),
.rst(rst), 
.sign_on_sig(sign_on_sig),               
.end_write_elink(end_write_elink),        
.endwait(),
.can_rec_select(can_rec_select),
.data_rec_uplink(data_rec_uplink),        
.send_mes_elink(),        
.start_write_elink(),

.end_can_proc(), 
.end_cnt_dbg(1'b1),
.irq_elink(irq_elink), 
.data_tra_uplink(data_tra_uplink),      
.can_tra_select(can_tra_select), 
.start_read_elink(start_read_elink),    
.end_read_elink(end_read_elink),    
.send_mes_can_done(send_mes_can_done), 
.buffer_en(buffer_en),  
.priority_sig( ), 
//  .rx1(rx1),        
//  .rx2(rx2),        
//  .rx3(rx3),        
//  .rx4(rx4),        
//  .rx5(rx5),        
//  .rx6(rx6),        
//  .rx7(rx7),
.rx(rx),              
.tx(tx_mopshub));  

clkdiv clkdiv0( 
.clk     (clk), 
.clk_low (clk_low), 
.rst_n   (rst)
); 

data_generator data_generator0(
.clk(clk),
.rst(rst),
.loop_en(1'b0),
.read_adc(1'b1),
//Sign on Signal
.sign_on_sig(sign_on_sig),
//Start SM
.startsm(startsmreg),
//OScillation Triming Signals
.osc_auto_trim(osc_auto_trim),
.start_trim_sig(start_trim_sig),
.indic_sign_in(indic_sign_in), 
//Read ADC channels from MOPS and send it to MOPSHUB rx
.read_adc_start(read_adc_start),
.read_adc_end(read_adc_end),
.respmsg(respmsg),
.reqmsg(reqmsg),
.ch(ch),  
// Acknowledgement bit from the MOPSHUB
.tx_mopshub(tx_mopshub), 
// Generator Signals
.clk_low(clk_low),
//RX-TX signals
.tx(tx),
.rx(rx),
//Decoder SIgnals
.bus_data(bus_data),
//read data from Elink and send it to the bus
.elink_test(elink_test),
.irq_elink(irq_elink),
.start_read_elink(start_read_elink),
.end_read_elink(end_read_elink),
.send_mes_can_done(send_mes_can_done),
.payload(data_tra_uplink),
.buffer_en(buffer_en),
.done(done));

//////////****// Clock generation////////////////
always #50 clk = ~clk;   
//////////////////////////////////////////////// 

/////******* Reset Generator task--low active ****/////
task genrst;
  begin
    rst = 1'b0;
    @(negedge clk)
    rst = 1'b0;
    #200
    rst = 1'b1;
  end 
endtask


/////*******Start SM for Data Generation ****/////
initial 
begin
genrst; 
#200000
startsmreg <= 1'b1;
#50
startsmreg <= 1'b0;
end

always@(posedge clk)
begin 
  if(read_adc_end ==1)
      elink_test =1'b1;
end

/////******* This prints bus activity ******///
always@(posedge clk or negedge rst)
if (!rst)
  begin
    requestreg <= 0;
    responsereg <= 0;
    info_debug_sig = "<:RESET>";
  end
else 
begin
  if(start_trim_sig)
    begin 
      info_debug_sig = "<:Oscillator Trimming:>";
      $strobeh("\t Oscillator Trimming: %h ",data_rec_uplink);
    end  
  if(indic_sign_in)
    begin 
      info_debug_sig = "<:Signing in:>";
      $strobeh("\t Sign-in message: %h ",data_rec_uplink);
    end 
  if(read_adc_start)
    begin 
      info_debug_sig = "<:       RECEIVE RX signals      :>";
    end 
  if(start_read_elink)
    begin 
      info_debug_sig = "<:       Transmit RX signals     :>";
    end  
  else if (respmsg)
    begin
      responsereg <= data_rec_uplink;
      $strobeh("\t Request %h \t Response %h",request,response);
    end
  else if(reqmsg)
    begin
      requestreg <= data_rec_uplink; 
    end
  
end

//// ********* Score board *************////
always@(*)
begin 
  if (respmsg)
   begin
     #500
      casez(request)
        75'h0: begin    //////// Reset request////
                if(response inside {75'h701?500000000000000})
                  begin                     
                    $strobe("Status GOOD");
                  end 
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end  
               end
        75'h701??00000000000000:   //////// Node guard / status ////
               begin 
                if(response == 75'h701?500000000000000)
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
                if(response == 75'h5814310000000000191)
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
                if(response == 75'h5814310010000000000)
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
                if(response == 75'h5814310050000000080)
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
                if(response == 75'h5814310140000000081)
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
                
                if(response == 75'h5814310180000000001)
                  $strobe("Status GOOD");
                else if (response == 75'h5814310180087654321)
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
                if(response == 75'h5814312000000000002)
                  $strobe("Status GOOD");
                else if (response == 75'h5814312000100000601)
                  $strobe("Status GOOD");
                else if (response == 75'h5814312000200000581)
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
                if(response == 75'h5814318000000000006)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318000100000181)
                  $strobe("Status GOOD");
                else if(response == 75'h58143180002000000FE)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318000300000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318000400000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318000500000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318000600000000)
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
                if(response == 75'h5814318010000000006)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318010100000281)
                  $strobe("Status GOOD");
                else if(response == 75'h58143180102000000FE)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318010300000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318010400000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318010500000000)
                  $strobe("Status GOOD");
                else if(response == 75'h5814318010600000000)
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
                if(response == 75'h581431A000000000001)
                  $strobe("Status GOOD");
                else if(response == 75'h581431A000121000020)
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
                if(response == 75'h581431A010000000001)
                  $strobe("Status GOOD");
                else if(response == 75'h581431A010121010030)
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
                if(response == {75'h58143200100000000,2'b00,000000})//I replaced adc_trim here
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end
               end
        75'h6014020020000000000:
               begin 
                if(response == {75'h58143200200000000,8'h01})
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end
               end
        75'h6014020030000000000:
               begin 
                if(response == {75'h58143200300000000,8'h01})
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end
               end
        75'h6014020040000000000:
               begin 
                if(response == {75'h58143200400000000,8'h0})
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end
               end
        75'h6014021000000000000:
               begin 
                if(response == 75'h5814321000000000000)
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    failures += 1;
                  end
               end
        75'h601402310??00000000:
               begin 
                if(response == 75'h5814323100000000003)
                  $strobe("Status GOOD");
                else if(response == 75'h5814323100100000123)
                  $strobe("Status GOOD");
                else if(response == 75'h5814323100200000223)
                  $strobe("Status GOOD");
                else if(response == 75'h5814323100300000323)
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    $strobe("******************** Please check SDO abort codes to understand why write operation failed");
                    failures += 1;
                  end
               end
        75'h601402400??00000000:
               begin 
                if(response inside{ 75'h581??2400??00000???})
                  $strobe("Status GOOD");
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
        75'h60123??????????????:
               begin 
                if(response inside {75'h58160??????00000000})
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    $strobe("******************** Please check SDO abort codes to understand why write operation failed");
                    failures += 1;
                  end
               end
        default:
              begin 
                if(response == request)
                  $strobe("Status GOOD");
                else
                  begin
                    $display("Current simulation time is: ", $realtime);
                    $strobe("Status BAD ***************************************************************************** Status BAD");
                    $strobe("************MOPS reponded to a random message. The reponse must be checked");
                    failures += 1;
                  end
               end
      endcase

   end
end

endmodule 

