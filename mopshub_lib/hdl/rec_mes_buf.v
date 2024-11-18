//
// Verilog Module mopshub_lib.buffer_rec_data
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 12:54:06 08/11/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_rec_data( 
  // Port Declarations
  input   wire            clk, 
  input   wire    [15:0]  data_rec_in,    // 16-bit data from each receive register of canakari
  input   wire    [4 :0]  can_rec_select, // CAN Bus ID
  input   wire            buffer_en,      // enable signal
  input   wire            rst,            // reset active low
  input   wire            debug_mode,     // If using readoutboard
  input   wire    [4 :0]  addr,           // same address of register as in canakari
  output  wire    [75:0]  data_rec_out    // Complete CAN message output. 11-bit ID and 4 data-bytes
  
  );
  // Internal Declarations
  reg [11:0] id;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
  reg [7:0] b1 ;       // Data bytes 1...8
  reg [7:0] b2 ;
  reg [7:0] b3 ;
  reg [7:0] b4 ;
  reg [7:0] b5 ;
  reg [7:0] b6 ;
  reg [7:0] b7 ;
  reg [7:0] b8 ;
  
  initial 
  begin
    id = 12'd0;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
    b1 = 8'h0 ;       // Data bytes 1...8
    b2 = 8'h0;
    b3 = 8'h0;
    b4 = 8'h0;
    b5 = 8'h0;
    b6 = 8'h0;
    b7 = 8'h0;
    b8 = 8'h0;
  end
  
  always@(posedge clk)
  begin 
    if(!rst)
    begin 
      id <= 12'h000;
      b1 <= 8'h00;
      b2 <= 8'h00;
      b3 <= 8'h00;
      b4 <= 8'h00;
      b5 <= 8'h00;
      b6 <= 8'h00;
      b7 <= 8'h00;
      b8 <= 8'h00;
    end
    else
    begin
      if(buffer_en)
      begin
        case(addr)// 5-bit selection line is the address of corresponding registers in Cankari
        5'h5 : id[10:0] <= data_rec_in[15:5];   //ID register data data_rec_out[75:64]
        5'h3 :begin 
          b2  <= data_rec_in[7:0];     // second data byte data_rec_out[47:40]
          b1  <= data_rec_in[15:8];    // first  data byte data_rec_out[63:56]
        end
        5'h2 :begin 
          b4  <= data_rec_in[7:0];             // fourth data byte  data_rec_out[39:32]
          b3  <= data_rec_in[15:8];            // third data byte   data_rec_out[55:48]
        end                                    
        5'h1 :begin 
          b6  <= data_rec_in[7:0];             // sixth data byte   data_rec_out[15:8]
          b5  <= data_rec_in[15:8];            // fifth data byte   data_rec_out[7:0]
        end                    
        5'h0 :begin 
          if (debug_mode) b8  <= data_rec_in[7:0];       // Eigth // holds the bus Id data_rec_out[31:24]
          else            b8  <= {3'b0,can_rec_select};  // Eigth // holds the bus Id
          b7  <= data_rec_in[15:8];            // Seventh                           data_rec_out[23:16]
        end             
        default 
        begin
          id <= id;
          b1 <= b1;
          b2 <= b2;
          b3 <= b3;
          b4 <= b4;
          b5 <= b5;
          b6 <= b6;
          b7 <= b7;
          b8 <= b8;
        end 
      endcase
    end        
  end 
end 

//Output assigments
assign data_rec_out = {id,b1,b3,b2,b4,b8,b7,b6,b5};

endmodule
