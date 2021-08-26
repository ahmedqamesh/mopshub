//
// Verilog Module mopshub_lib.tra_elink_buf
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:42:25 08/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module buffer_tra_elink(
   // Port Declarations
   input   wire           clk, 
   input   wire    [7:0]  data_tra_8bitin,   // 16-bit data from each traeive register of canakari
   input   wire           buffer_en,            // enable signal
   input   wire           rst,           // reset active low
   input   wire    [4 :0] addr,        
   output  wire    [75:0] data_tra_out  // complete CAN message output. 11-bit b0 and 4 data-bytes

);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [7:0] b0;      // CAN b0 is 11-bits.  Here 3 Hex values are used to reprent COB-b0
reg [7:0] b1;       // Data bytes 1...8
reg [7:0] b2;
reg [7:0] b3;
reg [7:0] b4;
reg [7:0] b5;
reg [7:0] b6;
reg [7:0] b7;
reg [7:0] b8;
reg [7:0] b9;

//Triplication signals 
wire [7:0] b0Voted  = b0;
wire [7:0] b1Voted  = b1;
wire [7:0] b2Voted  = b2;
wire [7:0] b3Voted  = b3;
wire [7:0] b4Voted  = b4;
wire [7:0] b5Voted  = b5;
wire [7:0] b6Voted  = b6;
wire [7:0] b7Voted  = b7;
wire [7:0] b8Voted  = b8;
wire [7:0] b9Voted  = b9;


always@(posedge clk or negedge rst)
begin 
  if(!rst)
   begin 
   b0 <= 8'h00;
   b1 <= 8'h00;
   b2 <= 8'h00;
   b3 <= 8'h00;
   b4 <= 8'h00;
   b5 <= 8'h00;
   b6 <= 8'h00;
   b7 <= 8'h00;
   b8 <= 8'h00;
   b9 <= 8'h00;
   end
  else
   begin
        b0 <= b0Voted;
        b1 <= b1Voted;
        b2 <= b2Voted;
        b3 <= b3Voted;
        b4 <= b4Voted;
        b5 <= b5Voted;
        b6 <= b6Voted;
        b7 <= b7Voted;
        b8 <= b8Voted;
        b9 <= b9Voted;
   if(buffer_en)
    begin
    case(addr)
//     5'b00000 : b0  <= data_tra_8bitin[7:0];    
//     5'b00001 : b1  <= data_tra_8bitin[7:0];        
//     5'b00010 : b2  <= data_tra_8bitin[7:0];         
//     5'b00011 : b3  <= data_tra_8bitin[7:0];                                  
//     5'b00100 : b4  <= data_tra_8bitin[7:0];        
//     5'b00101 : b5  <= data_tra_8bitin[7:0];                     
//     5'b00110 : b6  <= data_tra_8bitin[7:0];       
//     5'b00111 : b7  <= data_tra_8bitin[7:0];           
//     5'b01000 : b8  <= data_tra_8bitin[7:0];      
//     5'b01001 : b9  <= data_tra_8bitin[7:0];            
//     5'b01010 : b9  <= data_tra_8bitin[7:0]; 
     
     5'b00010 : b0  <= data_tra_8bitin[7:0];        
     5'b00011 : b1  <= data_tra_8bitin[7:0];         
     5'b00100 : b2  <= data_tra_8bitin[7:0];                                  
     5'b00101 : b3  <= data_tra_8bitin[7:0];        
     5'b00110 : b4  <= data_tra_8bitin[7:0];                     
     5'b00111 : b5  <= data_tra_8bitin[7:0];       
     5'b01000 : b6  <= data_tra_8bitin[7:0];           
     5'b01001 : b7  <= data_tra_8bitin[7:0];      
     5'b01010 : b8  <= data_tra_8bitin[7:0];            
     5'b01011 : b9  <= data_tra_8bitin[7:0];            
     default 
      begin
        b0 <= b0Voted;
        b1 <= b1Voted;
        b2 <= b2Voted;
        b3 <= b3Voted;
        b4 <= b4Voted;
        b5 <= b5Voted;
        b6 <= b6Voted;
        b7 <= b7Voted;
        b8 <= b8Voted;
        b9 <= b9Voted;
      end 
    endcase
    end        
   end 
end 

//Output assigments
assign data_tra_out = {b0Voted,b1Voted,b2Voted,b3Voted,b4Voted,b5Voted,b6Voted,b7Voted,b8Voted,b9Voted[7:4]};

endmodule
