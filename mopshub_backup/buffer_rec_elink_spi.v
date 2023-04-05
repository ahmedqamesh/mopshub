//
// Verilog Module mopshub_lib.buffer_rec_spi
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:00:27 01/28/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_rec_elink_spi( 
   input   wire    [7:0]   Kchar_comma, 
   input   wire    [7:0]   Kchar_eop, 
   input   wire    [7:0]   Kchar_sop, 
   input   wire    [4:0]   addr, 
   // Port Declarations
   input   wire            clk, 
   output  wire    [9:0]   data_rec_10bitout, 
   input   wire    [31:0]  data_rec_in, 
   input   wire            rst, 
   input   wire    [31:0]  xadc_rec_in
);

// Internal Declarations
// Internal Declarations
  reg   [9:0] data_rec_reg;
 
  initial data_rec_reg= {2'b11,8'b10111100};
 
  always@(posedge clk)
   if(!rst)data_rec_reg   <=  {2'b11,Kchar_comma}; 
   else
    case(addr)
      5'h0  :   data_rec_reg  <= {2'b11,Kchar_comma};
      5'h1  :   data_rec_reg  <= {2'b10,Kchar_sop};
      
      5'h2  :   data_rec_reg  <= {2'b00,data_rec_in[31:24]};    
      5'h3  :   data_rec_reg  <= {2'b00,data_rec_in[23:16]};    
      5'h4  :   data_rec_reg  <= {2'b00,data_rec_in[15:8]};                                
      5'h5  :   data_rec_reg  <= {2'b00,data_rec_in[7:0]}; 
      
      5'h6  :   data_rec_reg  <= {2'b00,xadc_rec_in[31:24]};    
      5'h7  :   data_rec_reg  <= {2'b00,xadc_rec_in[23:16]};    
      5'h8  :   data_rec_reg  <= {2'b00,xadc_rec_in[15:8]};                                
      5'h9  :   data_rec_reg  <= {2'b00,xadc_rec_in[7:0]}; 
      5'hA  :   data_rec_reg  <= {2'b00,8'h0};         
      5'hB  :   data_rec_reg  <= {2'b00,8'h0};                            
      5'hC  :   data_rec_reg  <= {2'b01,Kchar_eop}; 
      default   :   data_rec_reg  <= {2'b11,Kchar_comma};   
    endcase
  assign data_rec_10bitout = data_rec_reg;
endmodule
