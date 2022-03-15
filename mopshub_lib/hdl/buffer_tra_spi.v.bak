//
// Verilog Module mopshub_lib.buffer_tra_spi
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:52:34 01/27/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_tra_spi(
   // Port Declarations
   input   wire           clk, 
   input   wire    [7:0]  data_tra_8bitin,   // 16-bit data from each traeive register of canakari
   input   wire           buffer_en,            // enable signal
   input   wire           rst,           // reset active low
   input   wire    [4 :0] addr,        
   output  wire    [31:0] data_tra_out  // complete CAN message output. 11-bit b0 and 4 data-bytes

);

// Internal Declarations
reg [7:0] b0 = 8'h00;      // CAN b0 is 11-bits.  Here 3 Hex values are used to reprent COB-b0
reg [7:0] b1 = 8'h00;         // Data bytes 1...8
reg [7:0] b2 = 8'h00;   
reg [7:0] b3 = 8'h00;   
always@(posedge clk)
begin 
  if(!rst)
   begin 
   b0 <= 8'h00;
   b1 <= 8'h00;
   b2 <= 8'h00;
   b3 <= 8'h00;
   end
   if(buffer_en)
    begin
      case(addr)
       5'b00010 : b0  <= data_tra_8bitin[7:0];        
       5'b00011 : b1  <= data_tra_8bitin[7:0];         
       5'b00100 : b2  <= data_tra_8bitin[7:0];
       5'b00101 : b3  <= data_tra_8bitin[7:0];                                              
       default 
        begin
         b0 <= 8'h00;
         b1 <= 8'h00;
         b2 <= 8'h00;
         b3 <= 8'h00;
        end 
      endcase
    end  
    else
     begin
          b0 <= b0;
          b1 <= b1;
          b2 <= b2;    
          b3 <= b3;
     end 
end 

//Output assigments
assign data_tra_out = {b0,b1,b2,b3};

endmodule
