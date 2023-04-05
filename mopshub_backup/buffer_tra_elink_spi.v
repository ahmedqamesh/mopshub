`resetall
`timescale 1ns/10ps
module buffer_tra_elink_spi( 
   input   wire    [4:0]   addr, 
   input   wire            buffer_en,        // enable signal
   // Port Declarations
   input   wire            clk, 
   input   wire    [7:0]   data_tra_8bitin,  // 16-bit data from each traeive register of canakari
   output  wire    [7:0]   data_tra_out, 
   input   wire            rst,              // reset active low
   output  wire    [7:0]   spi_id, 
   output  wire    [7:0]   spi_reg, 
   output  wire    [7:0]   spi_select, 
   output  wire    [31:0]  xadc_rec
);


// Internal Declarations
reg [7:0] b0;     
reg [7:0] b1;        
reg [7:0] b2;   
reg [7:0] b3; 
reg [7:0] b4;     
reg [7:0] b5;        
reg [7:0] b6;   
reg [7:0] b7; 
reg [7:0] b8;   
reg [7:0] b9; 

initial      b0 = 8'h00;     
initial      b1 = 8'h00;        
initial      b2 = 8'h00;  
initial      b3 = 8'h00;  
initial      b4 = 8'h00;     
initial      b5 = 8'h00;        
initial      b6 = 8'h00;  
initial      b7 = 8'h00;
initial      b8 = 8'h00;  
initial      b9 = 8'h00;
      
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
       5'h2 : b0  <= data_tra_8bitin[7:0]; //spi_id
       5'h3 : b1  <= data_tra_8bitin[7:0]; //spi_select        
       5'h4 : b2  <= data_tra_8bitin[7:0]; //spi_reg
       5'h5 : b3  <= data_tra_8bitin[7:0]; //data_tra  
       5'h6 : b4  <= data_tra_8bitin[7:0]; 
       5'h7 : b5  <= data_tra_8bitin[7:0];      
       5'h8 : b6  <= data_tra_8bitin[7:0]; 
       5'h9 : b7  <= data_tra_8bitin[7:0];                                                    
       5'hA : b8  <= data_tra_8bitin[7:0];          
       5'hB : b9  <= data_tra_8bitin[7:0];  
       default 
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
assign data_tra_out = b3;
assign spi_reg      = b2;
assign spi_select   = b1;
assign spi_id       = b0;
assign xadc_rec     = {b4,b5,b6,b7};
endmodule
