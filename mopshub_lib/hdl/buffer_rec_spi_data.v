`resetall
`timescale 1ns/10ps
module buffer_rec_spi_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire            rst,            // reset active low
   input   wire            buffer_en,            // reset active low
   input   wire    [7 :0] spi_id_in,
   input   wire    [7 :0] spi_reg,   
   input   wire    [7 :0] data_rec_in,    // 8-bit data from each receive register of canakari
   input   wire    [7 :0] spi_select,      // enable signal 
   output  wire           end_read_miso,
   output  wire    [31:0] data_rec_out    // complete CAN message output. 11-bit ID and 4 data-bytes

);

// Internal Declarations
reg [7:0] id;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
reg [7:0] b1 ;       // Data bytes 1...8
reg [7:0] b2;
reg [7:0] b3;
reg [7:0] b4;
reg [7:0] b5;
reg [7:0] b6;
reg [7:0] b7;
reg end_read_miso_reg;

initial  id = 8'h0;
initial  b1 = 8'h0;
initial  b2 = 8'h0;
initial  b3 = 8'h0;
initial  b4 = 8'h0;
initial  b5 = 8'h0;
initial  b6 = 8'h0;
initial  b7 = 8'h0;
initial  end_read_miso_reg = 1'b0;
always@(posedge clk)
begin 
  if(!rst)
   begin 
   id <= 8'h00;
   b1 <= 8'h00;
   b2 <= 8'h00;
   b3 <= 8'h00;
   b4 <= 8'h00;
   b5 <= 8'h00;
   b6 <= 8'h00;
   b7 <= 8'h00;
   end_read_miso_reg =1'b0;
   end
  if(buffer_en)
    begin
      id  <= spi_id_in;       // The ID of the Monitoring SPI
      b1  <= spi_select ;     // Define the selected bus 0-16    
      b2  <= spi_reg;         // Define the Regester 
      b3  <= data_rec_in;     // Data Received 
      end_read_miso_reg =1'b1;
      end
  else
    begin
      id <= id;
      b1 <= b1;
      b2 <= b2;
      b3 <= b3;
      end_read_miso_reg =1'b0;
    end        
end 

//Output assigments
assign end_read_miso = end_read_miso_reg;
assign data_rec_out = {id,b1,b2,b3};

endmodule
