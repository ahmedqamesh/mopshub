//
// Verilog Module mopshub_lib.tra_elink_buf
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 11:42:25 08/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

//`resetall
//`timescale 1ns/10ps

module buffer_tra_elink(
   // Port Declarations
   input   wire           clk, 
   input   wire    [7:0]  data_tra_8bitin,   // 16-bit data from each traeive register of canakari
   input   wire           buffer_en,            // enable signal
   input   wire           rst,           // reset active low
   input   wire    [4 :0] addr,        
   output  wire    [75:0] data_tra_out  // complete CAN message output. 11-bit b0 and 4 data-bytes

);

  // Internal Declarations
  reg [7:0] b0;      // CAN b0 is 11-bits.  Here 3 Hex values are used to reprent COB-b0
  reg [7:0] b1;         // Data bytes 1...8
  reg [7:0] b2;  
  reg [7:0] b3;  
  reg [7:0] b4;  
  reg [7:0] b5;  
  reg [7:0] b6;  
  reg [7:0] b7;  
  reg [7:0] b8;  
  reg [7:0] b9;  
  initial 
    begin
      b0 = 8'h00;     
      b1 = 8'h00;        
      b2 = 8'h00;  
      b3 = 8'h00;  
      b4 = 8'h00;  
      b5 = 8'h00;  
      b6 = 8'h00;  
      b7 = 8'h00;  
      b8 = 8'h00;  
      b9 = 8'h00; 
    end

//Voter
//tmrg triplicate b0
//tmrg triplicate b1
//tmrg triplicate b2
//tmrg triplicate b3
//tmrg triplicate b4
//tmrg triplicate b5
//tmrg triplicate b6
//tmrg triplicate b7
//tmrg triplicate b8
//tmrg triplicate b8
//tmrg triplicate b9
wire [7:0] b0_v = b0;
wire [7:0] b1_v = b1;
wire [7:0] b2_v = b2;
wire [7:0] b3_v = b3;
wire [7:0] b4_v = b4;
wire [7:0] b5_v = b5;
wire [7:0] b6_v = b6;
wire [7:0] b7_v = b7;
wire [7:0] b8_v = b8;
wire [7:0] b9_v = b9;
//Voter
    
    
always@(posedge clk)
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
   if(buffer_en)
    begin
      case(addr)
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
      endcase
    end  
    else
     begin
          b0 <= b0_v;
          b1 <= b1_v;
          b2 <= b2_v;
          b3 <= b3_v;
          b4 <= b4_v;
          b5 <= b5_v;
          b6 <= b6_v;
          b7 <= b7_v;
          b8 <= b8_v;
          b9 <= b9_v;      
     end 
end 

//Output assigments
assign data_tra_out = {b0_v,b1_v,b2_v,b3_v,b4_v,b5_v,b6_v,b7_v,b8_v,b9_v[7:4]};

endmodule