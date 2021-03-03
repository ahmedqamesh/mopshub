//
// Verilog Module mopshub_lib.EPROC_OUT_ENC8b10b
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:52:27 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
// 8b10b encoder for EPROC_OUT module
module EPROC_OUT_ENC8b10b #(
   // synopsys template
   parameter zeros2bit = 2'b0
)
( 
   input   wire           bitCLK,            //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
   input   wire           bitCLKx4,          //bitCLKx4 for 8b/10b encoding [clk_160 MB/s]
   input   wire           rst, 
   output  wire           getDataTrig,       //output Trig signal will enable reading from fifo (rd_en=1)
   input   wire    [9:0]  edataIN,           //Data stored in the FIFO
   input   wire           edataINrdy, 
   input   wire           fhCR_REVERSE_10B, 
   output  wire    [1:0]  EdataOUT           // Genrated 2bits output data
);


// Internal Declarations
wire inp_request_trig, inp_request_trig_out;

reg [2:0] request_cycle_cnt, send_count;
reg send_out_trig = 0; 
reg [9:0] enc10bit, enc10bit_r;

 
//------------------------------------------------------------------------------------------------------
//-- input handshaking, request cycle 5 CLKs
// Asynchronous Systems(no global clock) operate at varying rates and communicate locally via handshaking
//-------------------------------------------------------------------------------------------------------
// Counter over the Clock signal
always @(posedge bitCLK)
  begin
  	if (rst)
  	   request_cycle_cnt <= 3'b0;
  	else 
  	 begin 
  	   if (inp_request_trig ==1)//-- 1 clk trigger       
        request_cycle_cnt <= 3'b0;
      else
        request_cycle_cnt <= request_cycle_cnt + 1;
    end
  end

assign inp_request_trig = (request_cycle_cnt == 3'b100) ? 1:0;  //cycle 5 CLKs 
  
//generates a one clk-pulse pd clkss after trigger rising edge
pulse_pdxx_pwxx #(.pd(0), .pw(1))  pulse_pd (.clk(bitCLKx4)
                                            ,.trigger(inp_request_trig) // equals to 1 every cycle 5 CLKs
                                            ,.pulseout(inp_request_trig_out)); //output Trig signal will enable reading from fifo (rd_en=1)
assign getDataTrig = inp_request_trig_out; 

                                  
always @(posedge bitCLK)
  begin
    send_out_trig <= inp_request_trig; //send_out_trig will be used later when sending out 2bits @bitCLK
  end

//-------------------------------------------------------------------------------------------
//-- 8b10b encoding
//-------------------------------------------------------------------------------------------
enc8b10bx  enc8b10_wrap(.clk(bitCLKx4)
                      	,.rst(rst)
                      	,.dataCode(edataIN[9:8])// -- 00"data, 01"eop, 10"sop, 11"comma
                      	,.dataIN(edataIN[7:0])
                      	,.dataINrdy(edataINrdy)// -- one? CLKx4 after inp_request_trig_out
                      	,.encDataOut(enc10bit)
                      	);

always @(posedge bitCLK)
  begin
  	if (rst)
  	   enc10bit_r <= 10'b0;
  	else if (send_out_trig == 1)
  	   begin
         if (fhCR_REVERSE_10B == 0)//LSB send first 
          enc10bit_r <= {enc10bit[0],enc10bit[1],enc10bit[2],enc10bit[3],enc10bit[4],enc10bit[5],enc10bit[6],enc10bit[7],enc10bit[8],enc10bit[9]};
        else //MSB send first 
          enc10bit_r <= enc10bit;
      end
  end
//-------------------------------------------------------------------------------------------
//-- sending out 2 bits @ bitCLK using a MUX
//-------------------------------------------------------------------------------------------
// Counter over the select signal
always @(posedge bitCLK)
  begin
  	if (rst)
  	   send_count <= 3'b0;
  	else 
  	 begin 
      send_count <= send_count + 1;
    end
  end
  
mux8_Nbit #(.N(2))bitMUX( .data0(enc10bit_r[1:0])
                         ,.data1(enc10bit_r[3:2]) 
                         ,.data2(enc10bit_r[5:4]) 
                         ,.data3(enc10bit_r[7:6]) 
                         ,.data4(enc10bit_r[9:8]) 
                         ,.data5(zeros2bit) 
                         ,.data6(zeros2bit) 
                         ,.data7(zeros2bit)
                         ,.sel(send_count)    //select signal             
                         ,.data_out(data_out)); //output Trig signal will enable reading from fifo (rd_en=1)
                        
endmodule
