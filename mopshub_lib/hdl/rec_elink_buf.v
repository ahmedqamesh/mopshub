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

module rec_elink_buf( 
  // Port Declarations
  // input   wire            clk, 
  // input   wire            rst,
  input   wire    [75:0]  data_rec_in,   // input data from the SCB or Object Dictionary side
  // input   wire            buffer_en,     // enable signal 
  input   wire    [4 :0]  addr, 
  output  wire    [7:0]   data_rec_8bitout,   // Output data to be written on the CAN bus
  output  wire    [1:0]   data_rec_delimiter   // Output data to be written on the CAN bus
  );
  // Internal Declarations
  reg [7:0] data_rec_reg;
  reg [1:0] data_delimiter_reg;
  always@(*)
  case(addr)
    5'b00000  :  begin data_rec_reg  = 8'h00; 
      data_delimiter_reg = 2'b11;
    end
    5'b00001  :  begin data_rec_reg  = 8'h00; 
      data_delimiter_reg = 2'b10;
    end
    5'b00010  :  begin data_rec_reg  = data_rec_in[75:68]; 
      data_delimiter_reg = 2'b00;
    end      
    5'b00011  :  begin data_rec_reg  = data_rec_in[67:60];  
      data_delimiter_reg = 2'b00;
    end         
    5'b00100  :  begin data_rec_reg  = data_rec_in[59:52];  
      data_delimiter_reg = 2'b00;
    end                                  
    5'b00101  :  begin data_rec_reg  = data_rec_in[51:44];  
      data_delimiter_reg = 2'b00;
    end        
    5'b00110  :  begin data_rec_reg  = data_rec_in[43:36];  
      data_delimiter_reg = 2'b00;
    end                     
    5'b00111  :  begin data_rec_reg  = data_rec_in[35:28];  
      data_delimiter_reg = 2'b00;
    end       
    5'b01000  :  begin data_rec_reg  = data_rec_in[27:20];  
      data_delimiter_reg = 2'b00;
    end           
    5'b01001  :  begin data_rec_reg  = data_rec_in[19:12];  
      data_delimiter_reg = 2'b00;
    end      
    5'b01010  :  begin data_rec_reg  = data_rec_in[11:4];  
      data_delimiter_reg = 2'b00;
    end            
    5'b01011  :  begin data_rec_reg  = {data_rec_in[3:0],4'h0};  
      data_delimiter_reg = 2'b00;
    end
    5'b01100  :  begin data_rec_reg  = 8'h00; 
      data_delimiter_reg = 2'b01;
    end
  endcase
  assign data_rec_8bitout = data_rec_reg;//data_rec_regVoted;
  assign data_rec_delimiter = data_delimiter_reg;//data_rec_regVoted;
endmodule
