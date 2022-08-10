`resetall
`timescale 1ns/10ps
module buffer_tra_spi(
   // Port Declarations
   input   wire           clk, 
   input   wire    [7:0]  data_tra_8bitin,   // 16-bit data from each traeive register of canakari
   input   wire           buffer_en,            // enable signal
   input   wire           rst,           // reset active low
   input   wire    [4 :0] addr,        
   output  wire    [7:0]   spi_id,
   output  wire    [7:0]   spi_reg,
   output  wire    [7:0]   spi_select,
   output  wire    [7:0]   data_tra_out   
);

// Internal Declarations
reg [7:0] b0;     
reg [7:0] b1;        
reg [7:0] b2;   
reg [7:0] b3; 


  initial 
    begin
      b0 = 8'h00;     
      b1 = 8'h00;        
      b2 = 8'h00;  
      b3 = 8'h00;  
    end
      
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
       5'b00010 : b0  <= data_tra_8bitin[7:0]; //spi_id
       5'b00011 : b1  <= data_tra_8bitin[7:0]; //spi_select        
       5'b00100 : b2  <= data_tra_8bitin[7:0]; //spi_reg
       5'b00101 : b3  <= data_tra_8bitin[7:0]; //data_tra                                            
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
assign data_tra_out = b3;
assign spi_reg      = b2;
assign spi_select   = b1;
assign spi_id       = b0;
endmodule
