`resetall
`timescale 1ns/10ps
module caninterface( 
   input   wire            clock, 
   input   wire            rst, 
   input   wire    [4:0]   addr,          // Address of the Cankari register
   input   wire    [15:0]  data_init,     // Data coming from the intial block for initial configuration of the registers
   input   wire    [75:0]  data_tra_mes, 
   input   wire            initi,         // Initialization command
   input   wire            read, 
   input   wire    [15:0]  read_can,      // Data coming from Cankari
   input   wire            write, 
   output  wire    [15:0]  write_can,     // Data written to Cankari
   output  wire    [7:0]   sdocmdnew,     // SDO command of the new message
   input   wire            id_comp,       // command to compare IDs
   output  wire    [10:0]  newid          // ID of the new message
);

//tmrg default triplicate
//tmrg tmr_error false
// Internal Declarations
reg   [7:0] sdocmdreg;            // combinational 
reg   [7:0] sdocmdsto;            // sequential storing element
reg  [10:0] newidreg;              // combinational 
reg  [10:0] newidsto;              // sequential storing element
reg  [15:0] write_canreg;
wire [15:0] tra_con; 
wire [15:0] rst_irq;
wire [3:0]  cmd;                                    // This is a 4 bit concatenated command of signals coming from the state machine i.e initial,read,write,id_comp



//Triplication 
wire [7:0] sdocmdstoVoted = sdocmdsto;
wire [10:0] newidstoVoted = newidsto;

assign sdocmdnew = sdocmdstoVoted;
assign newid = newidstoVoted;
assign write_can = write_canreg;

assign tra_con = 16'b1000000000001000;
assign rst_irq = 16'h8070;
assign cmd  = {initi,read,write,id_comp};               //initi and id_comp are active high while read and write are active low





////This is purely combinational block to read and write values to Canakari node
always@(*)
begin
  write_canreg = 16'h0000;
  newidreg  = 11'h0;
  sdocmdreg = 8'h0;
  case(cmd)
    4'b1100 :  begin
                  write_canreg = data_init;              // Initialize
                  sdocmdreg = 8'h0;
                  newidreg  = 11'h0;
               end
    4'b0010 :  begin                                     // read canankari register.. Multiplexing for complete message in done rec_mes_buf register
                if(addr == 5'b00011)
                  begin
                    sdocmdreg = read_can[15:8];
                    newidreg  = newidreg;
                  end
                else
                  begin
                    sdocmdreg = sdocmdreg;
                    newidreg  = newidreg;
                  end 
               end                                      
    4'b0100 :  begin                                     // write canakari register 
                case(addr)
                  5'b01100 : begin
                              write_canreg[15:5] = data_tra_mes[74:64];
                              write_canreg[4:0]  = 5'h0; 

                             end
                  
                  5'b01010 : begin
                              write_canreg[15:8] = data_tra_mes[63:56];
                              write_canreg[7:0]  = data_tra_mes[47:40];
                             end
                             
                  5'b01001 : begin
                              write_canreg[15:8] = data_tra_mes[55:48];
                              write_canreg[7:0]  = data_tra_mes[39:32];
                             end
                             
                  5'b01000 : begin
                              write_canreg[15:8] = data_tra_mes[7:0];
                              write_canreg[7:0]  = data_tra_mes[15:8];
                             end
                             
                  5'b00111 : begin
                              write_canreg[15:8] = data_tra_mes[23:16];
                              write_canreg[7:0]  = data_tra_mes[31:24];
                             end
                             
                  5'b01110 : begin
                              write_canreg = 16'b0000000010011100;
                             end
                             
                  5'b10010 : begin
                              write_canreg = rst_irq;
                             end
                             
                  5'b01101 : begin
                              write_canreg = tra_con;
                             end
                 default    :begin
                              write_canreg = 16'h0;
                              sdocmdreg = sdocmdreg;
                              newidreg  = newidreg;
                             end
                endcase 
               end                                       
    4'b0011 :  begin                                    // Compare ID of message being processed and the new message in the CAN node
                if(addr == 5'b00101)
                  begin
                    newidreg[10:0] = read_can[15:5];
                    sdocmdreg = sdocmdreg;
                  end 
                else if(addr == 5'b00011)
                  begin
                    sdocmdreg = read_can[15:8];
                    newidreg  = newidreg;
                  end
                else
                   begin
                    newidreg  = newidreg;
                    sdocmdreg = sdocmdreg;
                   end
               end 
    default :  begin 
                    write_canreg = 16'h0000;                                               
                    newidreg     = newidreg;
                    sdocmdreg    = sdocmdreg;
               end 
  endcase
end


///This block stores values for the new ID and SDO command
always@(posedge clock or negedge rst)
begin 
if(!rst)
 begin 
   sdocmdsto <= 8'h0;
   newidsto  <= 11'h0;
 end  
else 
 begin
   if(cmd == 4'b0011)
    begin 
      sdocmdsto <= sdocmdreg;
      newidsto  <= newidreg;
    end
   else 
    begin 
      sdocmdsto <= sdocmdstoVoted;
      newidsto  <= newidstoVoted;
    end 
 end
end



endmodule 
