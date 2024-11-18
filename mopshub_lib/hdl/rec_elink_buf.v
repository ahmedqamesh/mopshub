//
// Verilog Module mopshub_lib.rec_elink_buf
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 12:54:06 08/11/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

module buffer_rec_elink( 
  // Port Declarations
  input   wire            clk, 
  input   wire            rst,  
  input   wire    [75:0]  data_rec_in,
  input   wire    [4 :0]  addr, 
  output  wire    [9:0]   data_rec_10bitout,
  input   wire    [7 :0]  Kchar_sop,
  input   wire    [7 :0]  Kchar_eop,
  input   wire    [7 :0]  Kchar_comma
  );
  // Internal Declarations
  reg   [9:0] data_rec_reg;
  initial data_rec_reg= {2'b11,8'b10111100};
  always@(posedge clk)
  if(!rst)data_rec_reg   <=  {2'b11,Kchar_comma}; 
   else
    case(addr)
      5'h0  :   data_rec_reg   <=  {2'b11,Kchar_comma};
       //Add SOP 
      5'h1  :   data_rec_reg   <=  {2'b10,Kchar_sop};
      //Send 10 Bytes of Payload
      5'h2  :   data_rec_reg   <=  {2'b00,data_rec_in[75:68]};    
      5'h3  :   data_rec_reg   <=  {2'b00,data_rec_in[67:60]};    
      5'h4  :   data_rec_reg   <=  {2'b00,data_rec_in[59:52]};                                
      5'h5  :   data_rec_reg   <=  {2'b00,data_rec_in[51:44]};          
      5'h6  :   data_rec_reg   <=  {2'b00,data_rec_in[43:36]};                
      5'h7  :   data_rec_reg   <=  {2'b00,data_rec_in[35:28]};  
      5'h8  :   data_rec_reg   <=  {2'b00,data_rec_in[27:20]};          
      5'h9  :   data_rec_reg   <=  {2'b00,data_rec_in[19:12]};  
      5'hA  :   data_rec_reg   <=  {2'b00,data_rec_in[11:4]};         
      5'hB  :   data_rec_reg   <=  {2'b00,4'h0,data_rec_in[3:0]};
      //Add EOP 
      5'hC  :   data_rec_reg   <=  {2'b01,Kchar_eop}; 
      default   :   data_rec_reg   <=  {2'b11,Kchar_comma};    
    endcase
  assign data_rec_10bitout = data_rec_reg;
endmodule
