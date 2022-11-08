//`resetall
//`timescale 1ns/10ps

module buffer_rec_data( 
   // Port Declarations
   input   wire            clk, 
   input   wire    [15:0]  data_rec_in,    // 16-bit data from each receive register of canakari
   input   wire    [4 :0]  can_rec_select,
   input   wire            buffer_en,      // enable signal
   input   wire            rst,            // reset active low
   input   wire    [4 :0]  addr,           // same address of register as in canakari
   output  wire    [75:0]  data_rec_out    // complete CAN message output. 11-bit ID and 4 data-bytes

);
// Internal Declarations
reg [11:0] id;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
reg [7:0] b1 ;       // Data bytes 1...8
reg [7:0] b2 ;
reg [7:0] b3 ;
reg [7:0] b4 ;
reg [7:0] b5 ;
reg [7:0] b6 ;
reg [7:0] b7 ;
reg [7:0] b8 ;


initial 
begin
  id = 12'd0;      // CAN ID is 11-bits.  Here 3 Hex values are used to reprent COB-ID
  b1 = 8'h0 ;       // Data bytes 1...8
  b2 = 8'h0;
  b3 = 8'h0;
  b4 = 8'h0;
  b5 = 8'h0;
  b6 = 8'h0;
  b7 = 8'h0;
  b8 = 8'h0;
end

//Voter
//tmrg triplicate id
//tmrg triplicate b1
//tmrg triplicate b2
//tmrg triplicate b3
//tmrg triplicate b4
//tmrg triplicate b5
//tmrg triplicate b6
//tmrg triplicate b7
//tmrg triplicate b8
wire [11:0] id_v = id;
wire [7:0] b1_v = b1;
wire [7:0] b2_v = b2;
wire [7:0] b3_v = b3;
wire [7:0] b4_v = b4;
wire [7:0] b5_v = b5;
wire [7:0] b6_v = b6;
wire [7:0] b7_v = b7;
wire [7:0] b8_v = b8;
//Voter

always@(posedge clk)
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
   if(buffer_en)
    begin
    case(addr)
     5'b00101 : id[10:0] <= data_rec_in[15:5];        // 5-bit selection line is the address of corresponding registers in Cankari. ID register data

     5'b00011 :begin 
                 b2  <= data_rec_in[7:0];             // second data byte
                 b1  <= data_rec_in[15:8];            // first  data byte
               end
     5'b00010 :begin 
                 b4  <= data_rec_in[7:0];             // fourth
                 b3  <= data_rec_in[15:8];            // third 
               end                                    
     5'b00001 :begin 
                 b6  <= data_rec_in[7:0];             // sixth 
                 b5  <= data_rec_in[15:8];            // fifth 
               end                    
     5'b00000 :begin 
                 b8  <= {3'b0,can_rec_select};       // Eigth // holds the bus Id
                 b7  <= data_rec_in[15:8];            // Seventh 
               end             
     default 
      begin
        id <= id_v;
        b1 <= b1_v;
        b2 <= b2_v;
        b3 <= b3_v;
        b4 <= b4_v;
        b5 <= b5_v;
        b6 <= b6_v;
        b7 <= b7_v;
        b8 <= b8_v;
      end 
    endcase
    end        
   end 
end 

//Output assigments
assign data_rec_out = {id_v,b1_v,b3_v,b2_v,b4_v,b8_v,b7_v,b6_v,b5_v};

endmodule