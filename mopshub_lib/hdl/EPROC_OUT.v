//
// Verilog Module mopshub_lib.EPROC_OUT
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:53:03 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

//E-link processor, 2bit output
module EPROC_OUT #(
   // synopsys template
   // synopsys template
// synopsys template
// synopsys template
   parameter DATA_IN_WIDTH = 10
)
( 
   input   wire                         bitCLK, 
   input   wire                         bitCLKx4, 
   input   wire                         rst, 
   input   wire                         swap_outbits,      //A signal to swap the bits
   output  wire                         getDataTrig,       //-- @ bitCLKx4
   output  wire    [1:0]                EDATA_OUT, 
   input   wire                         fhCR_REVERSE_10B, 
   input   wire    [DATA_IN_WIDTH-1:0]  DATA_IN, 
   input   wire                         DATA_RDY
);


// Internal Declarations
reg          getDataTrig_ENC8b10b_r;
reg    [1:0] edata_out_s;
reg    [1:0] edata_out_r;
assign EDATA_OUT =edata_out_r;

assign getDataTrig = getDataTrig_ENC8b10b_r;

EPROC_OUT_ENC8b10b ENC8b10b( .rst(rst)
                            , .bitCLK(bitCLK)
                            , .bitCLKx4(bitCLKx4)
                            , .getDataTrig(getDataTrig_ENC8b10b_r)// out 
                            , .edataIN(DATA_IN)
                            , .edataINrdy(DATA_RDY)
                            , .fhCR_REVERSE_10B(fhCR_REVERSE_10B)
                            , .EdataOUT(data_out_s));  //out data from ENC8b10b   
                                        
// buffer the output data
always @ (swap_outbits, edata_out_s)
  begin
  	if (swap_outbits)
  	 edata_out_r <= {edata_out_s[0],edata_out_s[1]};
  	else     
    edata_out_r <= edata_out_s;
  end

endmodule
