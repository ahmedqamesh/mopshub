//
// Module mopshub_lib.elink_proc_out.struct
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:59:20 10/04/21
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module elink_proc_out( 
   // Port Declarations
   input   wire    [9:0]  EDATA_IN, 
   input   wire           EDATA_RDY, 
   input   wire           clk, 
   input   wire           enc_stream, 
   input   wire           reverse_stream_10b, 
   input   wire           rst, 
   input   wire           swap_outbits, 
   output  wire    [1:0]  EDATA_OUT, 
   output  wire           get_data_trig
);


// Internal Declarations


// Local declarations

// Internal signal declarations
wire        direct_data_trig;
wire  [1:0] edata_8b10b;
wire  [1:0] edata_direct;
wire        enc_data_trig;


// Instances 
elink_proc_out_direct elink_proc_out_direct0( 
   .EDATA_IN      (EDATA_IN), 
   .clk           (clk), 
   .rst           (rst), 
   .EDATA_OUT     (edata_direct), 
   .get_data_trig (direct_data_trig)
); 

//  Instances
// 
elink_proc_out_enc8b10b elink_proc_out_enc8b10b0( 
   .clk                (clk), 
   .EDATA_IN           (EDATA_IN), 
   .EDATA_RDY          (EDATA_RDY), 
   .reverse_stream_10b (reverse_stream_10b), 
   .swap_outbits       (swap_outbits), 
   .rst                (rst), 
   .get_data_trig      (enc_data_trig), 
   .EDATA_OUT          (edata_8b10b)
); 

// HDL Embedded Text Block 10 eb10
// HDL Embedded Text Block 8 enc_doutrdy
// enc_doutrdy 8  
assign EDATA_OUT = (enc_stream ==1) ? edata_8b10b : edata_direct;
assign get_data_trig = (enc_stream ==1) ? enc_data_trig : direct_data_trig;





endmodule // elink_proc_out
