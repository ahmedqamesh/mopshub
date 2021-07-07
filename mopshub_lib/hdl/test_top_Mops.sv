`resetall
`timescale 1ns/10ps
module test_top_Mops();
///Internal registers
reg clock = 1'b0;
reg rst   = 1'b1;
reg startsmreg= 1'b0; 
reg startreg = 1'b0;
reg sign_in_msg_reg = 1'b0;
int ch;
int failures = 0;                             // Number of BAD reponses from the chip 
reg [75:0] requestreg = 75'h0;
reg [75:0] responsereg = 75'h0;
reg [75:0] sign_in = 75'h0;
reg [5:0]  ftrim_pads_reg = 6'b111100;        
/******** This "ftrim_pads_reg"value must be assigned correctly in order to run the testbench smoothly for both cases
i.e Automated trimming enabled / disabled. The value is dependent on "mops_osc" module because this is from where the MOPS 
chip gets the OSC / CLK signal. e.g if Automated trimming is enabled and Canakari generates trimming code of "111100" then this is 
the value which should be used for "ftrim_pads_reg" to correctly trim the dummy oscillator and get the correct frequecny in the case
automated trimming is disabled.
*/
//Instantiation signal wires common
wire            clk;
wire            rst_n;
wire            clk_low;
wire    [10:0]id = 11'h601;                 // here define the node id for the chip to communicate with 
wire            tx;
wire            rx;
wire            sign_in_msg;
//MOPS signals
wire            txmops;
wire    [5:0]   adc_trim;
wire    [6:0]   can_nodeid;
wire    [39:0]  adc_select;
wire            adc_soc;
wire            adc_eoc;
wire    [11:0]  adc_data;
wire            osc_auto_trim;
wire    [5:0]   ftrim_pads;
wire    [5:0]   ftrim_osc;
wire            clk_osc;
wire            ready_osc;

//tbSM signals  
wire startsm;
wire nextran;
wire respmsg;
wire reqmsg;
wire [31:0]taildata;  
wire [10:0]customcanid;                      // This is a custom CAN id which can be defined in the tbSM
wire indic_sign_in;
wire read_adc_end;
wire        buffer_en; //Enable the tra_buffer

// CANdecoder signals
wire    [75:0]  bus_data;
wire    [75:0]  request;
wire    [75:0]  response;
wire            txdec;
wire            irq_can_rec;
wire            sign_on_sig;
// Generator signals 
wire     start;
wire     txgen;
wire     read;                // From state machine to prepare a read request
wire     write;               // From state machine to prepare a write request 
wire     random1000;          // from state machine to prepare 1000 random messages
wire [23:0]indexsubindex;       // from state machine index and subindex to write and read. Index bytes are sent LSB first 
wire     rstchip;             // prepare reset chip request 
wire     readadc;             // from state machine to read ADC
wire     allch;               // Indication from SM to read all channels 
//wire     ch;                  // From SM to read a specific channel 
wire     custommsg;           // Indication from SM to prepare custom message
wire [3:0]dlc;                 // DLC value in the custom message 
wire [63:0]data;                // 8 bytes of data to be sent 
wire doneran;
wire finranmes;
// oscillator debug signals
real time_new, time_old, freq;

//Internal assignments
assign rst_n = rst;
assign clk = clock;
assign dlc = 4'h8;   //// "1" = wait for oscillator trimming before sign-in message  
assign rx =  ~(rst_n ^ (txdec & txgen & txmops));
assign tx = txdec | txmops;
assign startsm = startsmreg;
assign can_nodeid = 7'b0000001;
assign request = requestreg;
assign response = responsereg;
assign sign_in_msg = sign_in_msg_reg;
//Automated trimming signals
assign osc_auto_trim =1'b1;                    ////Active high. Enable /disable automated trimming. If disabled then take care of ftrim_pads_reg
assign ftrim_pads = ftrim_pads_reg;

/// Top level instantiation
//top_level DUT( 
//   // Port Declarations
//            .clk(clk_osc),
//            .rst_n(rst_n),
//            .osc_reset_n(),
//            .can_rx(rx),
//            .can_tx(txmops),
//            .can_nodeid(can_nodeid),
//            .adc_clk(),
//            .adc_reset(),
//            .adc_trim(adc_trim), 
//            .adc_select(adc_select),
//            .adc_soc(adc_soc),
//            .adc_eoc(adc_eoc),  
//            .adc_data(adc_data),
//            .osc_auto_trim(osc_auto_trim),
//            .ftrim_pads(ftrim_pads),
//            .ftrim_osc(ftrim_osc),
//            .ready_osc(ready_osc)
//              
//);


/// Top level instantiation
mops_top_level DUT( 
            .clk(clk),
            .rst_n(rst_n),
            .can_rx(rx),
            .can_tx(txmops),
            .osc_auto_trim(osc_auto_trim),
            .ftrim_pads(ftrim_pads),
            .can_nodeid(can_nodeid),
            .ready_osc(ready_osc),
            .ftrim_osc(ftrim_osc),             
            .adc_select(adc_select),
            .adc_soc(adc_soc),
            .adc_eoc(adc_eoc),  
            .adc_data(adc_data)
);


mops_osc mops_osc0 (
 .ftrim(ftrim_osc),
 .reset(rst),
 .clk(clk_osc)
);

always@(posedge clk_osc)
begin
 time_old=time_new;
 time_new=$realtime();
 if(time_old!=time_new)
  freq=1e3/(time_new-time_old);
end



assign irq_can_rec = mopshub.irqsucrec;
mopshubCore#(
  .max_cnt_size (5),
  .n_buses (5'b11111))mopshub(
  .clk(clk),
  .rst(rst_n), 
  .sign_on_sig(sign_on_sig),           
  .data_tra_uplink(), 
  .irq_elink(),       
  .start_read_elink(),    
  .end_read_elink(),        
  .end_write_elink(1'b1),        
  .endwait(),
  .send_mes_can_done(), 
  .buffer_en(buffer_en),           
  .rx(rx),
  .can_rec_select(5'b11110),
  .can_tra_select(), 
  .end_can_proc(), 
  .end_cnt_dbg(1'b1),
  //.irq_can_tra(irq_can_tra), 
  .priority_sig( ), 
  //  .rx1(rx1),        
  //  .rx2(rx2),        
  //  .rx3(rx3),        
  //  .rx4(rx4),        
  //  .rx5(rx5),        
  //  .rx6(rx6),        
  //  .rx7(rx7),        
  .data_rec_uplink(bus_data),        
  .send_mes_elink(),        
  .start_write_elink(),        
  .tx(txdec));  
  
adcdumdata adcdumdata0(
  .clk(clk),
  .rst(rst_n),
  .soc(adc_soc),
  .eoc(adc_eoc),
  .dataout(adc_data),
  .adc_select(adc_select)
  );

clkdiv clkdiv0( 
   .clk     (clk), 
   .clk_low (clk_low), 
   .rst_n   (rst_n)
); 

data_generator_SM data_generator0(
  .clk(clk),
  .rst(rst_n),
  .loop_en(1'b0),
  .read_adc(1'b1),
  .startsm(startsm),
  .read_adc_end(read_adc_end),
  .sign_on_sig(sign_on_sig),
  .indexsubindex(indexsubindex),  // Value of index should be LSB first   
  .read(read),
  .readadc(readadc),        // indicates to read an ADC channel 
  .write(write),                  // Prepare SDO write request  
  .txdec(txdec), // Acknowledgement bit from the decoder to move to the next state
  .start(start),  
  .ch(ch),
  .respmsg(respmsg),
  .reqmsg(reqmsg),  
  .taildata(taildata),
  .data(data),  
  .custommsg(custommsg), 
  .customcanid(customcanid), 
  .osc_auto_trim(osc_auto_trim),
  .trimming_done(ready_osc),
  .indic_sign_in(indic_sign_in),  
  .buffer_en(buffer_en),
  .done(),
  .irq_elink(),
  .start_read_elink(),
  .end_read_elink(),
  .end_send_msg());
  
canframegen gen0( 
   .clk(clk),
   .read(read), 
   .clk_low(clk_low),   
   .rst_n(rst_n),
   .txgen(txgen),
   .start(start),
   .id(id),
   .write(write),                    // From state machine to prepare a write request 
   .random1000(random1000),          // from state machine to prepare 1000 random messages
   .indexsubindex(indexsubindex),    // from state machine index and subindex to write and read. Index bytes are sent LSB first 
   .rstchip(rstchip),                // prepare reset chip request 
   .readadc(readadc),                // from state machine to read ADC
   .allch(allch),                    // Indication from SM to read all channels 
   .ch(ch),                          // From SM to read a specific channel 
   .custommsg(custommsg),            // Indication from SM to prepare custom message
   .dlc(dlc),                        // DLC value in the custom message 
   .data(data),                      // 8 bytes of data to be sent 
   .doneranwire(doneran),
   .finranmes(finranmes),
   .sendran(sendran),
   .nextran(nextran),
   .taildata(taildata),
   .customcanid(customcanid)
);


 
//////////****// Clock generation////////////////
always #50 clock = ~clock;   
//////////////////////////////////////////////// 
  
/////******* Reset Generator task--low active ****/////
task genrst;
  begin
    rst = 1'b0;
    @(negedge clock)
    rst = 1'b0;
    #200
    rst = 1'b1;
  end 
endtask

initial 

begin
//test_message1 = new;

genrst; 
//#4000000
#200000
startsmreg <= 1'b1;
#50
startsmreg <= 1'b0;

end




/******* This prints bus activity ******///
always@(posedge clk or negedge rst_n)
if (!rst_n)
  begin
    requestreg <= 0;
    responsereg <= 0;
    sign_in    <= 0;
  end
else 
begin
  if(indic_sign_in)
    begin 
      sign_in <= bus_data;
      $strobeh("\t Sign-in message %h ",sign_in);
    end 
  else if (respmsg |nextran )
    begin
      responsereg <= bus_data;
      $strobeh("\t Request %h \t Response %h",request,response);
    end
  else if (reqmsg )
    begin
      requestreg <= bus_data;  
    end
  
end



//// ********* Score board *************////

//always@(posedge clk or negedge rst_n)
always@(*)
begin 
  sign_in_msg_reg = 1'b0;
  if (respmsg | nextran)
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
                if(response == {75'h58143200100000000,2'b00,adc_trim})
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
//      if( (request == 75'h0) & (response == 75'h7010500000000000000) )  
//        $strobe("Status GOOD");
//      else if( (request == 75'h6014010000000000000)& (response == 75'h5814310000000000191) )  
//        $strobe("Status GOOD");
//      else
//        $strobe("Status BAD ***************************************************************************** Status BAD");

   end
end





endmodule 


