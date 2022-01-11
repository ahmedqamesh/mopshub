//
// Verilog Module mopshub_lib.rec_elink_buf
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:54:06 08/11/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps

module buffer_rec_elink( 
  // Port Declarations
  input   wire    [75:0]  data_rec_in,   // input data from the SCB or Object Dictionary side
  input   wire    [4 :0]  addr, 
  output  wire    [7:0]   data_rec_8bitout,   // Output data to be written on the CAN bus
  output  wire    [1:0]   data_rec_delimiter   // Output data to be written on the CAN bus
  );
  // Internal Declarations
  reg   [7:0] data_rec_reg = 8'h0;
  reg   [1:0] data_delimiter_reg= 2'b11;
  wire  [7:0] Kchar_eop = 8'b11011100;// K28.6
  wire  [7:0] Kchar_sop = 8'b00111100;// K28.1
  always@(*)
    case(addr)
      5'b00000  :   data_rec_reg  = 8'h0; 
      5'b00001  :   data_rec_reg  = Kchar_sop; //Add SOP
      
      5'b00010  :   data_rec_reg  = data_rec_in[75:68];    
      5'b00011  :   data_rec_reg  = data_rec_in[67:60];    
      5'b00100  :   data_rec_reg  = data_rec_in[59:52];                                
      5'b00101  :   data_rec_reg  = data_rec_in[51:44];          
      5'b00110  :   data_rec_reg  = data_rec_in[43:36];                
      5'b00111  :   data_rec_reg  = data_rec_in[35:28];  
      5'b01000  :   data_rec_reg  = data_rec_in[27:20];          
      5'b01001  :   data_rec_reg  = data_rec_in[19:12];  
      5'b01010  :   data_rec_reg  = data_rec_in[11:4];         
      5'b01011  :   data_rec_reg  = {data_rec_in[3:0],4'h0};
        
      5'b01100  :   data_rec_reg  = Kchar_eop; //Add EOP
      default   :   data_rec_reg  = 8'h00;    
    endcase
  
  
   always@(*)
    case(addr)
      5'b00000  :  data_delimiter_reg = 2'b11;
      5'b00001  :  data_delimiter_reg = 2'b10;
      
      5'b00010  :  data_delimiter_reg = 2'b00;     
      5'b00011  :  data_delimiter_reg = 2'b00;     
      5'b00100  :  data_delimiter_reg = 2'b00;                                
      5'b00101  :  data_delimiter_reg = 2'b00;      
      5'b00110  :  data_delimiter_reg = 2'b00;                    
      5'b00111  :  data_delimiter_reg = 2'b00;      
      5'b01000  :  data_delimiter_reg = 2'b00;        
      5'b01001  :  data_delimiter_reg = 2'b00;     
      5'b01010  :  data_delimiter_reg = 2'b00;            
      5'b01011  :  data_delimiter_reg = 2'b00;
      
      5'b01100  :  data_delimiter_reg = 2'b01;
      default   :  data_delimiter_reg = 2'b11;    
    endcase 
  
  
  assign data_rec_8bitout = data_rec_reg;//data_rec_regVoted;
  assign data_rec_delimiter = data_delimiter_reg;//data_rec_regVoted;
endmodule
