`resetall
`timescale 1ns/10ps
module can_interface( 
   input   wire            clock, 
   input   wire            rst, 
   input   wire    [4:0]   addr,          // Address of the Cankari register
   input   wire    [15:0]  data_init,     // Data coming from the intial block for initial configuration of the registers
   input   wire            initi,         // Initialization command
   input   wire            read,    
   input   wire            write, 
   input   wire            bus_comp,  
   input   wire            reset_can,       
   input   wire    [15:0]  read_can,      // Data coming from Cankari
   input   wire    [75:0]  data_tra_mes, 
   input   wire    [4:0]  can_rec_select,    
   input   wire    [4:0]  data_tra_select,   
   
   output  wire    [15:0]  write_can,     // Data written to Cankari
   output  wire    [4:0]  can_tra_select,
   output  wire    [4:0] can_tra_comp,
   output  wire    [4:0] can_rec_comp
);

// Internal Declarations           
reg  [15:0] write_can_reg;
reg  [4 :0] can_rec_reg;
reg  [4 :0] can_tra_reg= 5'h0;
reg  [4 :0] can_tra_comp_reg= 5'h0;
reg  [4 :0] can_rec_comp_reg= 5'h0;
wire [15:0] tra_control; 
wire [15:0] rst_irq;
wire [15:0] gen_data;
wire [4:0]  cmd;               // This is a 4 bit concatenated command of signals coming from the state machine i.e initial,read,write

assign write_can = write_can_reg;

assign can_tra_comp = can_tra_comp_reg;
assign can_rec_comp = can_rec_comp_reg;
assign tra_control  = 16'h8008; //16'b1 000000000 00 1000
assign rst_irq      = 16'h8070;
assign gen_data     = 16'h9C; //16'b0000000010011100
//assign can_tra_select = can_tra_reg;
assign cmd  = {initi,read,write,bus_comp,reset_can};               //initi is active high while read and write are active low
assign can_tra_select  = (cmd == 5'b01000 | cmd == 5'b11000 ) ? can_tra_reg: can_rec_reg;
////This is purely combinational block to read and write values to Canakari node
always@(*)
begin
  write_can_reg = 16'h0000;
 // can_rec_reg  = can_rec_select;
  can_tra_reg  = data_tra_select;
  case(cmd)
    5'b11000 : begin
               write_can_reg = data_init;              // Initialize
               can_tra_reg  = data_tra_select;
              end
              
    5'b00100 :  begin  // read canankari register.. Multiplexing for complete message in done rec_mes_buf register
               can_rec_reg = can_rec_select;

               end     
                                                
    5'b01000 :  begin   // write canakari register 
                can_tra_reg        = data_tra_select;//data_tra_mes[28:24];// data_tra_mes[4:0];
                case(addr)
                  5'b01100 : begin  // Transmission Identifier 1
                              write_can_reg[15:5] = data_tra_mes[74:64];
                              write_can_reg[4:0]  = 5'h0; 
                             end
                  
                  5'b01010 : begin  // Transmission Data 1-2
                              write_can_reg[15:8] = data_tra_mes[63:56];
                              write_can_reg[7:0]  = data_tra_mes[47:40];
                             end
                             
                  5'b01001 : begin   // Transmission Data 3-4
                              write_can_reg[15:8] = data_tra_mes[55:48];
                              write_can_reg[7:0]  = data_tra_mes[39:32];
                             end
                             
                  5'b01000 : begin   // Transmission Data 5-6*
                              write_can_reg[15:8] = data_tra_mes[7:0];
                              write_can_reg[7:0]  = data_tra_mes[15:8];
                             end
                             
                  5'b00111 : begin   // Transmission Data 7-8*
                              write_can_reg[15:8] = data_tra_mes[23:16];
                              write_can_reg[7:0]  = data_tra_mes[31:24];
                             end
                             
                  5'b01110 : begin //general
                              write_can_reg = gen_data;
                             end 
//                             
//                  5'b10010 : begin // Interrupt
//                              write_can_reg = rst_irq; 
//                             end
                             
                  5'b01111 : begin //Confirm bus Id
                              can_tra_reg = data_tra_select; 
                             end                           

                  5'b01101 : begin  // Transmisigssion Control
                              write_can_reg = tra_control;
                             end
                 default    :begin
                              write_can_reg = 16'h0;
                              can_tra_reg = 5'h0;
                              can_rec_reg  = 5'h0;
                             end
                endcase 
               end      
    5'b01001 :  begin     // reset Bus
                can_tra_reg        = can_rec_select;
                case(addr)
                             
                  5'b01110 : begin //general
                              write_can_reg = gen_data;
                             end 
                             
                  5'b10010 : begin // Interrupt
                              write_can_reg = rst_irq; 
                             end
                endcase                              
                end  
                
    5'b00110 :  begin                                    // Compare Bus ID
                  can_tra_comp_reg        = data_tra_select;//data_tra_mes[28:24];
                  can_rec_comp_reg        = can_rec_select;
                end                                
  endcase
end
endmodule