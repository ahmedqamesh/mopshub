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
module buffer_rec_spi(  
  // Port Declarations
  input   wire    [31:0]  data_rec_in,   
  input   wire    [4 :0]  addr, 
  output  wire    [7:0]   data_rec_8bitout,  
  output  wire    [1:0]   data_rec_delimiter,   
  input   wire    [7 :0]  Kchar_sop,
  input   wire    [7 :0]  Kchar_eop,
  input   wire    [7 :0]  Kchar_comma
  );
  // Internal Declarations
  reg   [7:0] data_rec_reg;
  reg   [1:0] data_delimiter_reg;
 
  initial 
    begin
    data_rec_reg= 8'b0;
    data_delimiter_reg= 2'b11;
    end
  
 
  always@(*)
    case(addr)
      5'b00000  :   data_rec_reg  = Kchar_comma; 
      5'b00001  :   data_rec_reg  = Kchar_sop; //Add SOP
      5'b00010  :   data_rec_reg  = data_rec_in[31:24];    
      5'b00011  :   data_rec_reg  = data_rec_in[23:16];    
      5'b00100  :   data_rec_reg  = data_rec_in[15:8];                                
      5'b00101  :   data_rec_reg  = data_rec_in[7:0];                  
      5'b01100  :   data_rec_reg  = Kchar_eop; //Add EOP
      default   :   data_rec_reg  = Kchar_comma;    
    endcase
  
  
   always@(*)
    case(addr)
      5'b00000  :  data_delimiter_reg = 2'b11;
      5'b00001  :  data_delimiter_reg = 2'b10;
      
      5'b00010  :  data_delimiter_reg = 2'b00;     
      5'b00011  :  data_delimiter_reg = 2'b00;     
      5'b00100  :  data_delimiter_reg = 2'b00;                                
      5'b00101  :  data_delimiter_reg = 2'b00;      

      5'b01100  :  data_delimiter_reg = 2'b01;
      default   :  data_delimiter_reg = 2'b11;    
    endcase 
  
  
  assign data_rec_8bitout = data_rec_reg;
  assign data_rec_delimiter = data_delimiter_reg;
endmodule