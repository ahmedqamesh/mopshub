`resetall
`timescale 1ns/10ps
module can_interface(  
   input   wire            clk, 
   input   wire            rst,      
   input   wire    [4:0]   addr,          // Address of the Cankari register
   input   wire            initi,         // Initialization command   
   input   wire            write, 
   input   wire            reset_can, 
   input   wire            trim,          
   input   wire    [75:0]  data_tra_mes,  
      
   output  wire    [3:0]   cmd,               // This is a 4 bit concatenated command of signals coming from the state machine i.e initial,read,write
   output  wire    [15:0]  write_can      // Data written to Cankari
);

// Internal Declarations           
reg  [15:0] write_can_reg ;
reg  [4 :0] can_tra_reg ;
reg [15:0] tra_control; 
reg [15:0] rst_irq;
reg [15:0] gen_data;
reg [75:0] trim_data;
initial write_can_reg   = 16'h0;
initial can_tra_reg     = 5'h0;
initial tra_control     = 16'h8008; //16'b1 000000000 00 1000
initial rst_irq         = 16'h8070;
initial gen_data        = 16'h9C; //16'b0000000010011100
initial trim_data       = {12'h555,64'hAAAAAAAAAAAAAAAA};  //Msg with the most possible transitions [660 High to low transitions]
assign write_can       = write_can_reg;
assign cmd  = {initi,write,reset_can,trim}; //initi is active high while read and write are active low
//This is a purely combinational block to read and write values to Canakari node
always@(posedge clk)
  if(!rst)write_can_reg   <=  16'h0000; 
  else
begin
  case(cmd) 
    4'b1000 :  begin  
                 case(addr)
                     5'b01111 : write_can_reg <= 16'h00FF;//16'h0033;  //  prescalar register value 5'hFF gives 125000kb/s 
                     5'b01110 : write_can_reg <= 16'h00A3;//16'h00E3;/ // general register.first 7bits<=0 then sjw,tseg1,tseg2 each 3bits [0000000 010 100 011]                     
                     5'b00101 : write_can_reg <= 16'h0000;          //ID 28-13 5'h05
                     5'b00100 : write_can_reg <= 16'h0000;          //ID 12-0  5'h04
            
                     5'b10010 : write_can_reg <= 16'h8070;          // Enable communication by setting the MSB of interrupt register and enable irqs 5'h12
            
                     5'b10001 : write_can_reg <= 16'h0000;          // acceptance mask  MSBs 28-13 5'h11
                     5'b10000 : write_can_reg <= 16'h0000;          // acceptance mask LSBs  12-0  5'h10
                     default : write_can_reg  <= 16'h0000;
                 endcase 
               end          
    4'b0000 :  begin   // write canakari register 
                case(addr)
                  5'hC : write_can_reg <=   {data_tra_mes[74:64],5'h0}; // Transmission Identifier 1 [11+5] 
                  5'hA : write_can_reg <=   {data_tra_mes[63:56],data_tra_mes[47:40]};// Transmission Data 1-2  
                  5'h9 : write_can_reg <=   {data_tra_mes[55:48],data_tra_mes[39:32]};// Transmission Data 3-4     
                  5'h8 : write_can_reg <=   {data_tra_mes[7 :0 ],data_tra_mes[15:8 ]};// Transmission Data 5-6*
                  5'h7 : write_can_reg <=   {data_tra_mes[23:16],data_tra_mes[31:24]};// Transmission Data 7-8*
                  5'hE : write_can_reg <=   gen_data;   //general
                  5'hD : write_can_reg <=   tra_control;// Transmisigssion Control
                  default  : write_can_reg <=   16'h0;
                endcase 
               end                                                
    4'b0001 :  begin   // Trim mops
                case(addr)
                  5'hC : write_can_reg <=   {trim_data[74:64],5'h0}; // Transmission Identifier 1 
                  5'hA : write_can_reg <=   {trim_data[63:56],trim_data[47:40]};// Transmission Data 1-2
                  5'h9 : write_can_reg <=   {trim_data[55:48],trim_data[39:32]};// Transmission Data 3-4                        
                  5'h8 : write_can_reg <=   {trim_data[7 :0 ],trim_data[15:8 ]};// Transmission Data 5-6*
                  5'h7 : write_can_reg <=   {trim_data[23:16],trim_data[31:24]};// Transmission Data 7-8*
                  5'hE : write_can_reg <=   gen_data;    //general 
                  5'hD : write_can_reg <=   tra_control; // Transmisigssion Control
                  default  : write_can_reg <=   16'h0;
                endcase 
               end      
    4'b0010 :  begin    // reset Bus
                case(addr)         
                  5'hE : write_can_reg <=   gen_data;// general
                  5'h12 : write_can_reg <=   rst_irq; // Interrupt
                  default  : write_can_reg <=   16'h0;
                endcase                              
               end                                 
    default:   write_can_reg    <=   16'h0;
  endcase
  end
endmodule
