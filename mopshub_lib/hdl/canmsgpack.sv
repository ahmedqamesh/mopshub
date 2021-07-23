`resetall
`timescale 1ns/10ps
//Created by: Rizwan Ahmad (rahmad@uni-wuppertal.de)
//Date: 16.03.2020

/*The purpose of this package is to generate CAN messages to be sent over the CAN bus to the MOPS digital logic.
This package generates both random and specific messages for the MOPS chip.
There are two classes defined:
CAN_messagerand     (This generates random CAN messages)
CAN_message_MOPS    (This generates CAN messages specific to the MOPS chip to read and write values)

Below mentioned is the simple procedure to make use of these classes.

CAN_messagerand:
* In the module where this class is called or used please define the variable of type (CAN_Messagerand)
* Any number of variables can be defined. e.g if one defines 10 then it will produce 10 random CAN messages
* Call the function 'framecan' (variable.framecan) and then read the array 'canframe' (variable.canframe)

CAN_message_MOPS:
* In the module where this class is called or used please define the variable of type (CAN_Message_MOPS)
* To prepare a message to read ADC channel. call the function 'radc' using (CAN_Message_MOPS)variable.radc(int ch, logic [10:0] id). Where  'ch' is the number of ADC 
channel to read and 'id' is the '600+nodeid' 
* To reset the MOPS chip, make a call to task 'rst_mops'
* To build a custom CAN message, call the task 'msgcustom'
* To intentionaly introduce an error in a CAN frame use the task 'errframe'


*/




//Defined below is the class for a random CAN message. The random CAN message (canmsgrand) structure is used inside the class to define CAN message
class CAN_Messagerand;
  //Defined below is the structure for a random CAN message
  typedef struct {
  logic          SOF;      // Start of frame
  randc logic [10:0]   ID;       // 11-bit identifier
  logic          RTR;      // reply required?
  logic  [1:0]   RSVD;     // "reserved for expansion" bits
  randc logic  [3:0]   DLC;      // 4-bit Data Length Code
  randc logic          dataran [];  // 8 bytes of random data
  logic [14:0]   CRC;      // 15-bit checksum
  logic          CRCDEL;   // CRC delimiter
  logic          ACK;      // Acknowledgment bit 
  logic          ACKDEL;   // Acknowledgment delimiter
  logic [6:0]    EOF;      // End of frame bit 
} canmsgrand;

rand  canmsgrand message;
logic [18:0]   head;                 // Head of the message frame
logic [9:0]    tail;                 // Tail of the message frame
logic          frame4crc[];          // Part of the message frame which is used to calculate 15-bit CRC code 
logic          framewithcrc[];       // Part of the messageframe including CRC code  
logic          framewithstuff[];     // CAN frame before stuffing bits 
logic          canframe[];           // CAN frame ready to be sent over the bus 
int            dlen;                 // data length (number of bits)... also used to define lengths of different dynamic frames

// Contraint random values
constraint c1 {(message.DLC inside {[0:8]}) & (message.DLC!=0);}
constraint c2 {message.dataran.size() == message.DLC*8;}

// Set sof,rtr,rsvd bits in a CAN frame and initialize other parts of the CAN frame
task set_val;
  message.SOF     = 1'b0;           
  message.RTR     = 1'b0;
  message.RSVD    = 2'b00;
  message.CRCDEL  = 1'b1;
  message.ACK     = 1'b1;
  message.ACKDEL  = 1'b1;
  message.EOF     = 7'b1111111;
  dlen            = message.DLC*8;
  message.CRC     = 15'h0; 
  frame4crc       = new[19+dlen];                 // Define length of dynamic array
  //frame4crc       = '{default:0};                 // Initialize dynamic array
  framewithcrc    = new[frame4crc.size()+15];     // Define length of dynamic array
  //framewithcrc    = '{default:0};                 // Initialize dynamic array
  framewithstuff  = new[framewithcrc.size()+20];  //    Size of the frame will change depending upon the number of stuff bits required and will be changed dynamically
  //framewithstuff  = '{default:0};                 //    ----
  canframe        = new[framewithstuff.size()+10];     // Size of the frame will change depending upon the number of stuff bits required and will be changed dynamically
  //canframe        = '{default:0};                             
  
endtask

// Create message frame to calculate crc
task frameheadtail;
  head = {message.SOF, message.ID, message.RTR, message.RSVD, message.DLC};
  tail = {message.CRCDEL,message.ACK,message.ACKDEL,message.EOF};
endtask

// Task to prepare part of the CAN message which will be used to calculate CRC checksum
task frameforcrc; 
  for(int i = 18; i>=0;i--)
  begin 
    frame4crc[18-i] = '{head[i]};
  end
  
  for(int j=dlen; j>0; j--)
  begin
    frame4crc[(dlen+19)-j] = '{message.dataran[dlen-j]};
  end
endtask

// CRC calculation function 
function [14:0] CRC15;
  
  input Data;
  input [14:0] crc;
  reg   [0:0] d;
  reg   [14:0] c;
  reg   [14:0] newcrc;
  begin
    d[0] = Data;
    c = crc;
    newcrc[0]  = d[0] ^ c[14];
    newcrc[1]  = c[0];
    newcrc[2]  = c[1];
    newcrc[3]  = d[0] ^ c[2] ^ c[14];
    newcrc[4]  = d[0] ^ c[3] ^ c[14];
    newcrc[5]  = c[4];
    newcrc[6]  = c[5];
    newcrc[7]  = d[0] ^ c[6] ^ c[14];
    newcrc[8]  = d[0] ^ c[7] ^ c[14];
    newcrc[9]  = c[8];
    newcrc[10] = d[0] ^ c[9] ^ c[14];
    newcrc[11] = c[10];
    newcrc[12] = c[11];
    newcrc[13] = c[12];
    newcrc[14] = d[0] ^ c[13] ^ c[14];
    CRC15 = newcrc;
  end
endfunction

// 15-bit CRC calculator
function void calculatecrc;        
  for(int k=0;k<=(dlen+18);k++)
  begin 
    message.CRC = CRC15(frame4crc[k],message.CRC);
  end
endfunction

// Task to include CRC code in the message frame  
task framecrc;
  for(int i = 0; i<=(dlen+18);i++)
  begin 
    framewithcrc[i] = '{frame4crc[i]};
  end
  
  for(int j=14; j>=0; j--)
  begin
    framewithcrc[(dlen+19)+(14-j)] = '{message.CRC[j]};
  end
endtask


//Bit stuffing. This task will generate and stuff the message frame with stuffing bits when 5 bits of same logic level accur in succession
task stuff;
  int countone=0, countzero=0,l=0, stuffbits=0;
  
  for(int k = 0; k <= (framewithcrc.size()); k++)
  begin
    if(countone==5)
    begin
      framewithstuff[l] = 1'b0;
      l += 1;
      stuffbits += 1;
      countone = 0;
      countzero += 1;
    end
    
    if(countzero==5)
    begin
      framewithstuff[l] = 1'b1;
      l += 1;
      stuffbits += 1;
      countzero = 0;
      countone += 1;
    end
    
    
    /*if((framewithcrc[k] == 1'b1) & (countone==5))
    begin
      framewithstuff[l] = 1'b0;
      framewithstuff[l+1] = framewithcrc[k];
      l += 2;
      stuffbits += 1;
      countone = 1;
      countzero = 0;
    end
    else if((framewithcrc[k] == 1'b0) & (countzero==5))
    begin
      framewithstuff[l] = 1'b1;
      framewithstuff[l+1] = framewithcrc[k];
      l += 2;
      stuffbits += 1;
      countone = 0;
      countzero = 1;
    end
    else
    begin*/
      framewithstuff[l] = framewithcrc[k];
      l += 1;
      if((framewithcrc[k] == 1'b1))
      begin
        countone += 1;
        countzero = 0;
      end
      else
      begin
        countzero += 1;
        countone = 0;
      end
      //end
    end   
    framewithstuff = new[framewithcrc.size()+stuffbits](framewithstuff); // Resizing the array index to include actual stuff bits and delete extra indeces
  endtask 
  
  // Top level task to make call to all other tasks.   
  task framecan; 
    set_val;                                                // Call to all tasks in the class
    frameheadtail;
    frameforcrc;
    calculatecrc;
    framecrc;
    stuff;
    
    for(int i=0; i<(framewithstuff.size()); i++)              // Loop to copy data into the frame including stuff bits
    begin
      canframe[i] = '{framewithstuff[i]};
    end
    
    for(int j=9;j>=0;j--)                                   // Loop to copy tail 
    begin
      canframe[(framewithstuff.size()+(9-j))] = '{tail[j]};
    end
    canframe        = new[framewithstuff.size()+10](canframe);    // Array resizing
  endtask     
  
  endclass: CAN_Messagerand
  
  
  
  
  
  
  
  
  
  
  
  ////************Here Starts another class *****************
  
  
  
  
  
  
  
  //Defined below is the class for a CAN message specific to our chip
  class CAN_Message_MOPS;
    //Defined below is the structure for a CAN message specific to our chip
    typedef struct {
  logic          SOF;      // Start of frame
  logic [10:0]   ID;       // 11-bit identifier
  logic          RTR;      // reply required?
  logic  [1:0]   RSVD;     // "reserved for expansion" bits
  logic  [3:0]   DLC;      // 4-bit Data Length Code
  logic          data [];  // Dynamic array to change data length dynamically 
  logic [14:0]   CRC;      // 15-bit checksum
  logic          CRCDEL;   // CRC delimiter
  logic          ACK;      // Acknowledgment bit 
  logic          ACKDEL;   // Acknowledgment delimiter
  logic [6:0]    EOF;      // End of frame bit 
} canmsg;


canmsg message;                      // A variable of type 'canmsg' structure
int            dlen;                 // data length (number of bits)... also used to define lengths of different dynamic frames
logic [18:0]   head;                 // Head of the message frame
logic [9:0]    tail;                 // Tail of the message frame
logic          frame4crc[];          // Part of the message frame which is used to calculate 15-bit CRC code 
logic          framewithcrc[];       // Part of the messageframe including CRC code  
logic          framewithstuff[];     // CAN frame before stuffing bits 
logic          canframe[];           // CAN frame ready to be sent over the bus
// Create message frame to calculate crc
task frameheadtail;
  head = {message.SOF, message.ID, message.RTR, message.RSVD, message.DLC};
  tail = {message.CRCDEL,message.ACK,message.ACKDEL,message.EOF};
endtask

// Set sof,rtr,rsvd bits in a CAN frame and initialize other parts of the CAN frame
task set_val(input logic [3:0] dlcval, logic rtr); 
  message.SOF     = 1'b0;           
  message.RTR     = rtr;
  message.RSVD    = 2'b00;
  message.DLC     = dlcval;
  message.CRCDEL  = 1'b1;
  message.ACK     = 1'b1;
  message.ACKDEL  = 1'b1;
  message.EOF     = 7'b1111111;
  message.CRC     = 15'h0;
  dlen            = message.DLC*8;                // Changing size of DLC will also effect the size of frame. Default is set to 8 bytes of data
  message.data    = new[dlen];
  //message.data    = '{default:0};
  frame4crc       = new[19+dlen];                 // Define length of dynamic array
  //frame4crc       = '{default:0};                 // Initialize dynamic array
  framewithcrc    = new[frame4crc.size()+15];     // Define length of dynamic array
  //framewithcrc    = '{default:0};                 // Initialize dynamic array
  framewithstuff  = new[framewithcrc.size()+20];  //    Size of the frame will change depending upon the number of stuff bits required and will be changed dynamically
  //framewithstuff  = '{default:0};                 //    ----
  canframe        = new[framewithstuff.size()+10];     // Size of the frame will change depending upon the number of stuff bits required and will be changed dynamically
  //canframe        = '{default:0};                             
endtask
// Task to provide data for a custom CAN message. user has to provide RTR,ID, DLC and data 


// Task to prepare part of the CAN message which will be used to calculate CRC checksum
task frameforcrc; 
  for(int i = 18; i>=0;i--)
  begin 
    frame4crc[18-i] = '{head[i]};
  end
  
  for(int j=dlen; j>0; j--)
  begin
    frame4crc[(dlen+19)-j] = '{message.data[dlen-j]};
  end
endtask

// CRC calculation function 
function [14:0] CRC15;
  
  input Data;
  input [14:0] crc;
  reg   [0:0] d;
  reg   [14:0] c;
  reg   [14:0] newcrc;
  begin
    d[0] = Data;
    c = crc;
    newcrc[0]  = d[0] ^ c[14];
    newcrc[1]  = c[0];
    newcrc[2]  = c[1];
    newcrc[3]  = d[0] ^ c[2] ^ c[14];
    newcrc[4]  = d[0] ^ c[3] ^ c[14];
    newcrc[5]  = c[4];
    newcrc[6]  = c[5];
    newcrc[7]  = d[0] ^ c[6] ^ c[14];
    newcrc[8]  = d[0] ^ c[7] ^ c[14];
    newcrc[9]  = c[8];
    newcrc[10] = d[0] ^ c[9] ^ c[14];
    newcrc[11] = c[10];
    newcrc[12] = c[11];
    newcrc[13] = c[12];
    newcrc[14] = d[0] ^ c[13] ^ c[14];
    CRC15 = newcrc;
  end
endfunction

// 15-bit CRC calculator
function void calculatecrc;        
  
  for(int k=0;k<=(dlen+18);k++)
  begin 
    message.CRC = CRC15(frame4crc[k],message.CRC);
  end
endfunction

// Task to include CRC code in the message frame  
task framecrc;
  for(int i = 0; i<=(dlen+18);i++)
  begin 
    framewithcrc[i] = '{frame4crc[i]};
  end
  
  for(int j=14; j>=0; j--)
  begin
    framewithcrc[(dlen+19)+(14-j)] = '{message.CRC[j]};
  end
endtask

//Bit stuffing. This task will generate and stuff the message frame with stuffing bits when 5 bits of same logic level accur in succession
task stuff;
  int countone=0, countzero=0,l=0, stuffbits=0;
  
  for(int k = 0; k <= (framewithcrc.size()); k++)
  begin
    if(countone==5)
    begin
      framewithstuff[l] = 1'b0;
      l += 1;
      stuffbits += 1;
      countone = 0;
      countzero += 1;
    end
    
    if(countzero==5)
    begin
      framewithstuff[l] = 1'b1;
      l += 1;
      stuffbits += 1;
      countzero = 0;
      countone += 1;
    end
    
    
    /*if((framewithcrc[k] == 1'b1) & (countone==5))
    begin
      framewithstuff[l] = 1'b0;
      framewithstuff[l+1] = framewithcrc[k];
      l += 2;
      stuffbits += 1;
      countone = 1;
      countzero = 0;
    end
    else if((framewithcrc[k] == 1'b0) & (countzero==5))
    begin
      framewithstuff[l] = 1'b1;
      framewithstuff[l+1] = framewithcrc[k];
      l += 2;
      stuffbits += 1;
      countone = 0;
      countzero = 1;
    end
    else
    begin*/
      framewithstuff[l] = framewithcrc[k];
      l += 1;
      if((framewithcrc[k] == 1'b1))
      begin
        countone += 1;
        countzero = 0;
      end
      else if ((framewithcrc[k] == 1'b0))
      begin
        countzero += 1;
        countone = 0;
      end
      //end
    end   
    framewithstuff = new[framewithcrc.size()+stuffbits](framewithstuff); // Resizing the array index to include actual stuff bits and delete extra indeces
  endtask  
  
  //    for(int k = 0; k < (framewithcrc.size()); k++)          // Loop to introduce stuffing bits 
  //      begin
    //        if((framewithcrc[k] == 1'b1) & (countone!=5))
    //          begin    
      //            countone             += 1;
      //            countzero             = 0;
      //            framewithstuff[l]     = framewithcrc[k]; 
      //            l                    += 1;
      //          end
      //        else if((framewithcrc[k] == 1'b0) & (countzero != 5))
      //          begin    
        //            countone             = 0;
        //            countzero           += 1;
        //            framewithstuff[l]    = framewithcrc[k];
        //            l                   += 1;
        //          end
        //        else
        //          begin 
          //            if(framewithcrc[k] == 1'b1)
          //              begin
            //                framewithstuff[l]  = 1'b0;
            //                l                 += 1;
            //                k                 -= 1;
            //                stuffbits         += 1;
            //                countone           = 0;
            //                countzero          = 0;
            //              end 
            //            else 
            //              begin
              //                framewithstuff[l]  = 1'b1;
              //                l                 += 1;
              //                k                 -= 1;
              //                stuffbits         += 1;
              //                countone           = 0;
              //                countzero          = 0;
              //              end 
              //          end 
              //      end
              //    framewithstuff = new[framewithcrc.size()+stuffbits](framewithstuff);  // Resizing the array index to include actual stuff bits and delete extra indeces
              //    
              
              //  endtask  
              
              // Top level task to make call to all other tasks.   
              task framecan;                                                 // Call to all tasks in the class
                frameheadtail;
                frameforcrc;
                calculatecrc;
                framecrc;
                stuff;
                
                for(int i=0; i<(framewithstuff.size()); i++)              // Loop to copy data into the frame including stuff bits
                begin
                  canframe[i] = '{framewithstuff[i]};
                end
                
                for(int j=9;j>=0;j--)                                   // Loop to copy tail 
                begin
                  canframe[(framewithstuff.size()+(9-j))] = '{tail[j]};
                end
                canframe        = new[framewithstuff.size()+10](canframe);    // Array resizing
              endtask     
              
              /* Task to read ADC channels. input can be from 0-34. 
              */
              task radc(input int ch, input logic [10:0]id);
                
                logic [63:0] ch0 = 64'h4010230100000000;
                logic [63:0] ch1 = 64'h4010230200000000;
                logic [63:0] ch2 = 64'h4010230300000000;
                logic [63:0] ch3 = 64'h4000240100000000;
                logic [63:0] ch4 = 64'h4000240200000000;
                logic [63:0] ch5 = 64'h4000240300000000;
                logic [63:0] ch6 = 64'h4000240400000000;
                logic [63:0] ch7 = 64'h4000240500000000;
                logic [63:0] ch8 = 64'h4000240600000000;
                logic [63:0] ch9 = 64'h4000240700000000;
                logic [63:0] ch10 = 64'h4000240800000000;
                logic [63:0] ch11 = 64'h4000240900000000;
                logic [63:0] ch12 = 64'h4000240A00000000;
                logic [63:0] ch13 = 64'h4000240B00000000;
                logic [63:0] ch14 = 64'h4000240C00000000;
                logic [63:0] ch15 = 64'h4000240D00000000;
                logic [63:0] ch16 = 64'h4000240E00000000;
                logic [63:0] ch17 = 64'h4000240F00000000;
                logic [63:0] ch18 = 64'h4000241000000000;
                logic [63:0] ch19 = 64'h4000241100000000;
                logic [63:0] ch20 = 64'h4000241200000000;
                logic [63:0] ch21 = 64'h4000241300000000;
                logic [63:0] ch22 = 64'h4000241400000000;
                logic [63:0] ch23 = 64'h4000241500000000;
                logic [63:0] ch24 = 64'h4000241600000000;
                logic [63:0] ch25 = 64'h4000241700000000;
                logic [63:0] ch26 = 64'h4000241800000000;
                logic [63:0] ch27 = 64'h4000241900000000;
                logic [63:0] ch28 = 64'h4000241A00000000;
                logic [63:0] ch29 = 64'h4000241B00000000;
                logic [63:0] ch30 = 64'h4000241C00000000;
                logic [63:0] ch31 = 64'h4000241D00000000;
                logic [63:0] ch32 = 64'h4000241E00000000;
                logic [63:0] ch33 = 64'h4000241F00000000;
                logic [63:0] ch34 = 64'h4000242000000000;
                logic [63:0] ch35 = 64'h4000242100000000;
                logic [63:0] ch36 = 64'h4000242200000000;
                logic [63:0] ch37 = 64'h4000242300000000;
                logic [63:0] ch38 = 64'h4000242400000000;
                logic [63:0] ch39 = 64'h4000242500000000;
                
                message.ID = id;                              // Assign ID to the frame 
                set_val(.dlcval(4'b1000),.rtr(0));            // Call to the function to set other bits and dlc value to set data bytes to 8
                unique case(ch)
                0:      foreach(message.data[i])
                message.data[i] = '{ch0[63-i]};
                1:      foreach(message.data[i])
                message.data[i] = '{ch1[63-i]};
                2:      foreach(message.data[i])
                message.data[i] = '{ch2[63-i]};
                3:      foreach(message.data[i])
                message.data[i] = '{ch3[63-i]};
                4:      foreach(message.data[i])
                message.data[i] = '{ch4[63-i]};
                5:      foreach(message.data[i])
                message.data[i] = '{ch5[63-i]};
                6:      foreach(message.data[i])
                message.data[i] = '{ch6[63-i]};
                7:      foreach(message.data[i])
                message.data[i] = '{ch7[63-i]};
                8:      foreach(message.data[i])
                message.data[i] = '{ch8[63-i]};
                9:      foreach(message.data[i])
                message.data[i] = '{ch9[63-i]};
                10:      foreach(message.data[i])
                message.data[i] = '{ch10[63-i]};
                11:      foreach(message.data[i])
                message.data[i] = '{ch11[63-i]};
                12:      foreach(message.data[i])
                message.data[i] = '{ch12[63-i]};
                13:      foreach(message.data[i])
                message.data[i] = '{ch13[63-i]};
                14:      foreach(message.data[i])
                message.data[i] = '{ch14[63-i]};
                15:      foreach(message.data[i])
                message.data[i] = '{ch15[63-i]};
                16:      foreach(message.data[i])
                message.data[i] = '{ch16[63-i]};
                17:      foreach(message.data[i])
                message.data[i] = '{ch17[63-i]};
                18:      foreach(message.data[i])
                message.data[i] = '{ch18[63-i]};
                19:      foreach(message.data[i])
                message.data[i] = '{ch19[63-i]};
                20:      foreach(message.data[i])
                message.data[i] = '{ch20[63-i]};
                21:      foreach(message.data[i])
                message.data[i] = '{ch21[63-i]};
                22:      foreach(message.data[i])
                message.data[i] = '{ch22[63-i]};
                23:      foreach(message.data[i])
                message.data[i] = '{ch23[63-i]};
                24:      foreach(message.data[i])
                message.data[i] = '{ch24[63-i]};
                25:      foreach(message.data[i])
                message.data[i] = '{ch25[63-i]};
                26:      foreach(message.data[i])
                message.data[i] = '{ch26[63-i]};
                27:      foreach(message.data[i])
                message.data[i] = '{ch27[63-i]};
                28:      foreach(message.data[i])
                message.data[i] = '{ch28[63-i]};
                29:      foreach(message.data[i])
                message.data[i] = '{ch29[63-i]};
                30:      foreach(message.data[i])
                message.data[i] = '{ch30[63-i]};
                31:      foreach(message.data[i])
                message.data[i] = '{ch31[63-i]};
                32:      foreach(message.data[i])
                message.data[i] = '{ch32[63-i]};
                33:      foreach(message.data[i])
                message.data[i] = '{ch33[63-i]};
                34:      foreach(message.data[i])
                message.data[i] = '{ch34[63-i]};
                35:      foreach(message.data[i])
                message.data[i] = '{ch35[63-i]};
                36:      foreach(message.data[i])
                message.data[i] = '{ch36[63-i]};
                37:      foreach(message.data[i])
                message.data[i] = '{ch37[63-i]};
                38:      foreach(message.data[i])
                message.data[i] = '{ch38[63-i]};
                39:      foreach(message.data[i])
                message.data[i] = '{ch39[63-i]};
                default: message.data = '{64'h0000000000000000};
              endcase
              framecan;                                                 //call to the function which will make all the information into a complete CAN frame.
            endtask
            
            // Reset MOPS chip using CAN message
            task rst_mops;
              set_val(.dlcval(4'h0),.rtr(0));    // set DLC to 0 because no data byte is required  
              message.ID  = 11'h0;
              framecan;                         // call to the function to make final CAN frame 
            endtask  
            
            // Set trimming bits inside the ADC 
            task trim_adc(input logic [10:0]id, input logic [7:0] trimdata);
              set_val(.dlcval(4'h1),.rtr(0));
              message.ID = id;
              for(int i = dlen; i>0;i--)
              begin
                message.data[8-i] = trimdata[i-1];
              end   
              framecan;
            endtask
            
            // Custom  CAN message
            task msgcustom(input logic [10:0]id, input logic rtr, input logic [3:0] dlcval, input logic [64:0]datain );
              if(rtr == 1'b1)
              set_val(.dlcval(4'h0),.rtr(rtr));
              else  
              set_val(.dlcval(dlcval),.rtr(0));
              message.ID = id;
              for(int i = dlen; i>0;i--)
              begin
                message.data[dlen-i] = datain[i-1];
              end   
              framecan;
            endtask
            
            // Task to introduce specific error in the frame
            task errframe;
            endtask
            endclass: CAN_Message_MOPS
            
            
            
            
            
            
            
            