`resetall
`timescale 1ns/10ps
module rec_mes_buf( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [15:0]  data_rec_in,   // 16-bit data from each receive register of canakari
   input   wire    [4:0]  data_rec_req,
   input   wire            en,            // enable signal
   input   wire            rst,           // reset active low
   input   wire    [4:0]   addr,          // same address of register as in canakari
   
   output  wire    [7:0]   sdocmd,        // SDO command byte to tell write or read operation
   output  wire    [75:0]  data_rec_out,  // complete CAN message output. 11-bit ID and 4 data-bytes
   output  wire    [10:0]  idprev         // ID of the message on which bridge controller is working at the moment
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg [11:0] id;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
reg [7:0] b1;       // Data bytes 1...8
reg [7:0] b2;
reg [7:0] b3;
reg [7:0] b4;
reg [7:0] b5;
reg [7:0] b6;
reg [7:0] b7;
reg [7:0] b8;


//Triplication signals 
wire [11:0] idVoted = id;
wire [7:0] b1Voted  = b1;
wire [7:0] b2Voted  = b2;
wire [7:0] b3Voted  = b3;
wire [7:0] b4Voted  = b4;
wire [7:0] b5Voted  = b5;
wire [7:0] b6Voted  = b6;
wire [7:0] b7Voted  = b7;
wire [7:0] b8Voted  = b8;




always@(posedge clk or negedge rst)
begin 
  if(!rst)
   begin 
   id <= 12'h000;
   b1 <= 8'h00;
   b2 <= 8'h00;
   b3 <= 8'h00;
   b4 <= 8'h00;
   b5 <= 8'h00;
   b6 <= 8'h00;
   b7 <= 8'h00;
   b8 <= 8'h00;
   
   end
  else
   begin
        id <= idVoted;
        b1 <= b1Voted;
        b2 <= b2Voted;
        b3 <= b3Voted;
        b4 <= b4Voted;
        b5 <= b5Voted;
        b6 <= b6Voted;
        b7 <= b7Voted;
        b8 <= b8Voted;
   if(en)
    begin
    case(addr)
     5'b00101 : id[10:0] <= data_rec_in[15:5];        // 5-bit selection line is the address of corresponding registers in Cankari. ID register data

     5'b00011 :begin 
                 b2  <= data_rec_in[7:0];             // first data byte
                 b1  <= data_rec_in[15:8];            // second data byte
               end
     5'b00010 :begin 
                 b4  <= data_rec_in[7:0];             // third
                 b3  <= data_rec_in[15:8];            // fourth
               end                                    
     5'b00001 :begin 
                 b6  <= data_rec_in[7:0];             // fifth 
                 b5  <= data_rec_in[15:8];            //sixth
               end                    
     5'b00000 :begin 
                 b8  <= data_rec_in[7:0];             // Seventh
                 b7  <= data_rec_in[15:8];            // Eigth
               end             
     default 
      begin
        id <= idVoted;
        b1 <= b1Voted;
        b2 <= b2Voted;
        b3 <= b3Voted;
        b4 <= b4Voted;
        b5 <= b5Voted;
        b6 <= b6Voted;
        b7 <= b7Voted;
        b8 <= b8Voted;
        
      end 
    endcase
    end        
   end 
end 

//Output assigments
assign idprev = idVoted[10:0];
assign data_rec_out = {idVoted,b1Voted,b2Voted,b3Voted,b4Voted,b5Voted,b6Voted,b7Voted,b8Voted};
assign sdocmd = b1Voted;

endmodule
