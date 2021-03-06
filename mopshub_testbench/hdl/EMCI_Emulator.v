`resetall
`timescale 1ns/10ps
module mopshub_decoder( 
   // Port Declarations
   input   wire           bitCLK, 
   input   wire           data_10b_en, 
   input   wire    [9:0]  data_10b_in, 
   input   wire           datain_valid, 
   input   wire           rst, 
   output  wire    [9:0]  enc10bit_out_sig, 
   output  wire    [7:0]  dataout, 
   output  wire    [1:0]  ISK, 
   output  wire           BUSY, 
   output  wire           code_err, 
   output  wire           disp_err, 
   input   wire    [1:0]  EDATA_2bit
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire  [9:0] enc10bit_out;
reg   [9:0] datain_enc10bit;
reg   [9:0] enc10bit_r;
wire        inp_request_trig;
reg         send_out_trig;
reg   [2:0] request_cycle_cnt   = 0;
reg   [2:0] send_count;


// Instances 
dec_8b10b_wrap U_0( 
   .ABCDEIFGHJ_IN (datain_enc10bit), 
   .RBYTECLK      (bitCLK), 
   .datain_valid  (datain_valid), 
   .reset         (rst), 
   .BUSY          (BUSY), 
   .HGFEDCBA      (dataout), 
   .ISK           (ISK), 
   .code_err      (code_err), 
   .disp_err      (disp_err)
); 

demux8_Nbit U_1( 
   .sel          (send_count), 
   .EDATA_2bit   (EDATA_2bit), 
   .enc10bit_out (enc10bit_out)
); 

// HDL Embedded Text Block 2 eb2
always@(posedge bitCLK)
begin
if (data_10b_en ==1)
 datain_enc10bit <= data_10b_in;
else
   datain_enc10bit <= enc10bit_out_sig;     
end
// HDL Embedded Text Block 3 eb3
// HDL Embedded Text Block 2 eb2
// eb2 2      
always @(posedge bitCLK)
  begin
   if (rst)
      enc10bit_r <= 10'b0;
   else if (send_out_trig  == 1)
      begin
        enc10bit_r <= {enc10bit_out[0],enc10bit_out[1],enc10bit_out[2],enc10bit_out[3],enc10bit_out[4],enc10bit_out[5],enc10bit_out[6],enc10bit_out[7],enc10bit_out[8],enc10bit_out[9]};                                  
      end
  end
// HDL Embedded Text Block 4 eb4
// HDL Embedded Text Block 3 eb3
// eb3 3
assign   enc10bit_out_sig =  enc10bit_r;
// HDL Embedded Text Block 4 eb4
// eb4 4
assign inp_request_trig = (request_cycle_cnt == 3'b100) ? 1:0;  //cycle 5 CLKs
// HDL Embedded Text Block 5 eb5
always @(posedge bitCLK)
  begin
    send_out_trig <= inp_request_trig; //send_out_trig will be used later when sending out 2bits @bitCLK
  end
// HDL Embedded Text Block 6 eb6
// HDL Embedded Text Block 5 eb5
// eb5 5 
// Counter over the Clock signal
always @(posedge bitCLK)
  begin
     if (rst)
        request_cycle_cnt <= 3'b0;
     else 
      begin
      if  (inp_request_trig == 1)
          request_cycle_cnt <= 3'b0;
      else
          request_cycle_cnt <= request_cycle_cnt + 1'b1;
    end
  end
// HDL Embedded Text Block 7 eb7
// HDL Embedded Text Block 6 bitcounter
// eb6 6      
// Counter over the select signal
always @(posedge bitCLK)
  begin
     if (send_out_trig == 1)
        send_count <= 3'b0; 
     else  
      send_count <= send_count + 1'b1;
  end

endmodule // EMCI_Emulator
