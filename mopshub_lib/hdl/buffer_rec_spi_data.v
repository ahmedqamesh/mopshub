//
// Verilog Module mopshub_lib.buffer_rec_spi_data
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:22:48 01/28/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_rec_spi_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire            rst,            // reset active low
   input   wire    [11 :0] spi_id_in,
   input   wire    [7 :0]  spi_reg,   
   input   wire    [7:0]   data_rec_in,    // 16-bit data from each receive register of canakari
   input   wire            buffer_en,      // enable signal 
   output  wire            end_read_miso,
   output  wire    [31:0]  data_rec_out    // complete CAN message output. 11-bit ID and 4 data-bytes

);

// Internal Declarations
reg [11:0] id = 12'd0;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
reg [7:0] b1 = 8'h0 ;       // Data bytes 1...8
reg [7:0] b2 = 8'h0;
reg end_read_miso_reg = 1'b0;
//Triplication signals 
wire [11:0] idVoted = id;
wire [7:0] b1Voted  = b1;
wire [7:0] b2Voted  = b2;

always@(posedge clk)
begin 
  if(!rst)
   begin 
   id <= 12'h000;
   b1 <= 8'h00;
   b2 <= 8'h00;
   end_read_miso_reg =1'b0;
   end
  if(buffer_en)
    begin
      id  <= spi_id_in;        // 5-bit selection line is the address of corresponding registers in Cankari. ID register data
      b1  <= spi_reg;            // first  data byte          
      b2  <= data_rec_in;             // second data byte
      end_read_miso_reg =1'b1;
      end
  else
    begin
      id <= idVoted;
      b1 <= b1Voted;
      b2 <= b2Voted;
      end_read_miso_reg =1'b0;
    end        
end 

//Output assigments
assign data_rec_out = {idVoted,b1Voted,b2Voted,4'b0};

endmodule