//
// Module mopshub_lib.elink_proc_out_enc8b10b.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:32:26 06/23/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
// 8b10b encoder for EPROC_OUT module
module elink_proc_out_enc8b10b( 
   // Port Declarations
   // Port Declarations
   input   wire           clk, 
   input   wire    [9:0]  data_10bit_in,  //Data stored in the FIFO
   input   wire           data_in_rdy, 
   input   wire           rst,            // reset all the counters and data
   output  wire           get_data_trig, 
   output  wire    [1:0]  data_2bit_out, 
   input   wire    [9:0]  COMMAn,         // K28.1 3C
   input   wire    [9:0]  COMMAp,         // K28.1 3C
   input   wire    [7:0]  Kchar_comma, 
   input   wire    [7:0]  Kchar_eop, 
   input   wire    [7:0]  Kchar_sop
);

// Local declarations
  
  // Internal signal declarations
  // Internal Declarations
// Internal Declarations


// Local declarations

// Internal signal declarations
// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [9:0] enc10bit;
reg   [9:0] enc10bit_r;
reg   [1:0] zeros2bit;
reg   [2:0] send_count;


// Instances 
//  Instances
//     -------------------------------------------------------------------------------------------
//     -- 8b10b encoding
//     -------------------------------------------------------------------------------------------
// 
// 
// 
// 
// 
enc8b10b_wrap enc8b10b_wrap10( 
   .clk              (clk), 
   .rst              (rst), 
   .data_code        (data_10bit_in[9:8]), 
   .data_in          (data_10bit_in[7:0]), 
   .data_in_rdy      (data_in_rdy), 
   .enc_10b_data_out (enc10bit), 
   .Kchar_comma      (Kchar_comma), 
   .Kchar_eop        (Kchar_eop), 
   .Kchar_sop        (Kchar_sop), 
   .COMMAp           (COMMAp), 
   .COMMAn           (COMMAn)
); 

mux8_Nbit bitMUX( 
   .data0    (enc10bit_r[1:0]), 
   .data1    (enc10bit_r[3:2]), 
   .data2    (enc10bit_r[5:4]), 
   .data3    (enc10bit_r[7:6]), 
   .data4    (enc10bit_r[9:8]), 
   .data5    (zeros2bit), 
   .data6    (zeros2bit), 
   .data7    (zeros2bit), 
   .sel      (send_count), 
   .data_out (data_2bit_out)
); 

triger_counter triger_counter1( 
   .rst          (rst), 
   .clk          (clk), 
   .request_trig (get_data_trig)
); 

// HDL Embedded Text Block 3 eb3
initial zeros2bit   = 2'b0;
initial send_count  = 1'b0;
    
  //Fill the register enc10bit_r with data 
always @(posedge clk)
begin
  if (!rst)
  enc10bit_r <= COMMAp;
  else if (get_data_trig  == 1) //Trigger after cycle 5 CLKs
  begin
    enc10bit_r <= enc10bit;
  end
end

//-------------------------------------------------------------------------------------------
//-- sending out 2 bits @ bitCLK using a MUX
//-------------------------------------------------------------------------------------------
// Counter over the select signal
always @(posedge clk)
begin
  if (!rst)
  send_count <= 3'b0;
  else
  begin
    if (get_data_trig == 1)
    send_count <= 3'b0;
    else  
    send_count <= send_count + 1;
  end
end                                   




































































endmodule // elink_proc_out_enc8b10b
// EPROC_OUT_ENC8b10b
// EPROC_OUT_ENC8b10b
