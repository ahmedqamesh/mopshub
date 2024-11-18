//
// Module mopshub_lib.buffer_rec_spi_data
//
// Created:
//          by - Ahmed Qamesh (University of Wuppertal)
//          at - 14:00:44 11/13/24
//=============================================================


`resetall
`timescale 1ns/10ps
module buffer_rec_spi_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire            rst,            // reset active low
   input   wire            buffer_en,      // reset active low
   input   wire    [4:0]   addr, 
   input   wire    [11:0] xadc_rec_in,
   input   wire    [7 :0] spi_id_in,
   input   wire    [7 :0] spi_reg,   
   input   wire    [7 :0] data_rec_in,    // 8-bit data from SPI
   input   wire    [7 :0] spi_select,      // enable signal 
   output  wire    [75:0] data_rec_out 
);

// Internal Declarations
reg [7:0] b3;
reg [7:0] b4;
reg [7:0] b5;
reg [7:0] b6;
reg [7:0] b7;

initial  b3 = 8'h0;
initial  b4 = 8'h0;
initial  b5 = 8'h0;
initial  b6 = 8'h0;
initial  b7 = 8'h0;


always@(posedge clk)
begin 
  if(!rst)
   begin 
   b3 <= 8'h00;
   b4 <= 8'h00;
   b5 <= 8'h00;
   b6 <= 8'h00;
   b7 <= 8'h00;
   end
  if(buffer_en)
  begin  
    case(addr)
        5'h3  :   b3  <= data_rec_in;
        5'h4  :   b4  <= data_rec_in;    
        5'h5  :   b5  <= data_rec_in;
        5'h6  :   b6  <= data_rec_in;    
        5'h7  :   b7  <= data_rec_in;      
       default 
        begin   
          b3 <= 8'h0;
          b4 <= 8'h0;
          b5 <= 8'h0;
          b6 <= 8'h0;    
          b7 <= 8'h0;
        end  
    endcase
  end 
   else
   begin   
        b3 <= b3;
        b4 <= b4;
        b5 <= b5;
        b6 <= b6;    
        b7 <= b7;

   end
end 
assign data_rec_out = {spi_id_in,spi_select,spi_reg,b3,b4,b5,b6,b7,xadc_rec_in};
endmodule
