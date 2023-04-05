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
       5'h2 : b0  <= data_tra_8bitin[7:0];        
       5'h3 : b1  <= data_tra_8bitin[7:0];         
       5'h4 : b2  <= data_tra_8bitin[7:0];                                  
       5'h5 : b3  <= data_tra_8bitin[7:0];        
       5'h6 : b4  <= data_tra_8bitin[7:0];                     
       5'h7 : b5  <= data_tra_8bitin[7:0];       
       5'h8 : b6  <= data_tra_8bitin[7:0];           
       5'h9 : b7  <= data_tra_8bitin[7:0];      
       5'hA : b8  <= data_tra_8bitin[7:0];            
       5'hB : b9  <= data_tra_8bitin[7:0];            
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
          b0 <= b0;
          b1 <= b1;
          b2 <= b2;
          b3 <= b3;
          b4 <= b4;
          b5 <= b5;
          b6 <= b6;
          b7 <= b7;
          b8 <= b8;
          b9 <= b9;      
     end 
end 

//Output assigments
assign data_tra_out = {b0,b1,b2,b3,b4,b5,b6,b7,b8,b9[3:0]};

endmodule
