`include "canmsgpack.sv"      // Comment out this line for NCsim while use uncommented for Questasim
`resetall
`timescale 1ns/10ps
module canframegen( 
   input   wire      clk,                // main 10 Mhz clock 
   input   wire      clk_low,            //This clock is equal to bus speed
   input   wire      rst_n, 
   input   wire      start,
   input   wire     read,                // From state machine to prepare a read request
   input   wire     write,               // From state machine to prepare a write request 
   input   wire     random1000,          // from state machine to prepare 1000 random messages
   input   wire [23:0]indexsubindex,       // from state machine index and subindex to write and read. Index bytes are sent LSB first 
   input   wire     rstchip,             // prepare reset chip request 
   input   wire     readadc,             // from state machine to read ADC
   input   wire     allch,               // Indication from SM to read all channels 
   input   wire [31:0]ch,                  // From SM to read a specific channel 
   input   wire     custommsg,           // Indication from SM to prepare custom message
   input   wire [3:0] dlc,                 // DLC value in the custom message 
   input   wire [63:0]data,                // 8 bytes of data to be sent 
   input   wire [10:0]id,                // // COBID. should be 600 + node id coming from top tb
   output  wire     txgen,
   output  wire     doneranwire,           /// Indication of 1000 random messages 
   output  wire     finranmes,
   input   wire     sendran,
   input   wire     nextran,               // To increment random message number counter 
   input   wire [31:0]taildata,
   input   wire [10:0]customcanid         // Custom CAN id from tbSM
);

// Internal Declarations

logic canframereg[];
logic [7:0]readcmd = 8'h40;        // read command in the SDO frame
logic [7:0]writecmd = 8'h23;       // write cmd in the SDO frame
logic [31:0]tailcmd = 32'h0;        // 4 bytes tail of zeros in the frame
logic txgenreg = 1'b1;        //CAN message tx bit 
logic txgenregrand = 1'b1;    //CAN message random tx bit  
int size = 0;                     // Size of the frame to be sent 
int sizeran[0:1000];
int i = 0;
int iran = 0;
int m = 0;
logic doneran = 0;                // This indicates completion of all random messages to be sent in a single state of tb_SM
logic finranmesreg = 0;                    // This indicates completion of a single random message 



// Output wire assignments
assign txgen = txgenreg & txgenregrand;
assign doneranwire = doneran;
assign finranmes  = finranmesreg;

//Variables to hold different type of MOPS specific message
CAN_Message_MOPS canmsgcustom     = new;
CAN_Message_MOPS canmsgadc        = new;
CAN_Message_MOPS canmsgrst        = new;

// Variable to hold random CAN message 
//CAN_Messagerand canmsgran  = new;
CAN_Messagerand canmsgran1[0:1000];


always@(read,write,indexsubindex,random1000,rstchip,readadc,allch,ch,custommsg,dlc,data,start) 
begin 
  if(custommsg)
    begin
      canmsgcustom.msgcustom(.id(customcanid), .rtr(1'b0), .dlcval(4'h8),.datain(data)); 
      size = canmsgcustom.canframe.size();
    end
  else if(read)
    begin
      canmsgcustom.msgcustom(.id(id), .rtr(1'b0), .dlcval(4'h8),.datain({readcmd,indexsubindex,tailcmd})); 
      size = canmsgcustom.canframe.size();
    end 
  else if(write)
    begin
      canmsgcustom.msgcustom(.id(id), .rtr(1'b0), .dlcval(4'h8),.datain({writecmd,indexsubindex,taildata})); 
      size = canmsgcustom.canframe.size();      
    end 
  else if(rstchip)
    begin
      canmsgrst.rst_mops;
      size = canmsgrst.canframe.size();
    end
  else if(readadc | allch)
    begin
      canmsgadc.radc(.ch(ch), .id(id));
      size = canmsgadc.canframe.size();
    end 
  else if(random1000)
    begin
      for (int k = 0; k < 1000; k++)
        begin 
          canmsgran1[k] = new;
          void'(canmsgran1[k].randomize());  
          canmsgran1[k].framecan;
          sizeran[k]= canmsgran1[k].canframe.size();
        end
    end
//    begin
//      canmsgran1.randomize();
//      canmsgran1.framecan;
//      sizeran = canmsgran1.canframe.size();
//    end

end


///******* This block is for a random message 
always@(posedge clk_low or negedge rst_n)
  begin 
    if(!rst_n)
      begin         
        txgenregrand <= 1'b1;
      end 
    else
      begin
        if(start & random1000)
            begin
              if ((iran < sizeran[m]) & sendran)
                begin                  
                    txgenregrand <= canmsgran1[m].canframe[iran];
                    iran <= iran + 1 ;
                    finranmesreg <= 0;
                end
              else
                begin           
                    txgenregrand <= 1'b1;
                    iran <= 0;
                    finranmesreg <= 1;  
                                   
                end 
            end  
        else 
          begin
            txgenregrand <= 1'b1;
            iran<= 0;
          end
        end
end
  
  
  
always@(posedge clk or negedge rst_n)
begin 
  if(!rst_n)
    m = 0;
  else 
    begin 
     if(nextran)
      m <= m +1;
     else 
      m <= m; 
    end 
end 
always@(posedge clk or negedge rst_n)
  begin
    if(!rst_n)
      doneran <= 0;
    else 
      if(m >= 1000)                                      /// change this limit to anwhere upto 1000 random messages
        doneran <= 1;
      else 
        doneran <= 0;
      
  end

///**** This always block is for a message specific to the MOPS chip 
always@(posedge clk_low or negedge rst_n)
  begin 
    if(!rst_n)
      begin         
        txgenreg <= 1'b1;
      end 
    else
      begin
        if(start)
          begin 
            if (i < size)
              begin
                i <= i + 1 ;
                if(custommsg)
                  txgenreg <= canmsgcustom.canframe[i];
                else if(read) 
                  txgenreg <= canmsgcustom.canframe[i];
                else if(write)
                  txgenreg <= canmsgcustom.canframe[i];
                else if(rstchip)
                  txgenreg <= canmsgrst.canframe[i];
                else if(readadc | allch)  
                  txgenreg <= canmsgadc.canframe[i];
                else 
                  txgenreg <= 1'b1;
              end
            else
              txgenreg <= 1'b1;
          end 
        else 
          begin
            txgenreg <= 1'b1;
            i<= 0;
          end
      end
  end

endmodule
