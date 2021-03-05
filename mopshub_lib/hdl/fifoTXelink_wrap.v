//
// Verilog Module mopshub_lib.fifoTXelink_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 17:11:06 03/02/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module fifoTXelink_wrap #(
// FIFO parameters
   parameter DATA_IN_WIDTH  = 18,
   parameter DATA_OUT_WIDTH = 10
)
( 
   // Port Declarations
   input   wire    [DATA_IN_WIDTH-1:0]  din,        //DATA = 2bits +16bits
   input   wire                         fifoFLUSH,  // x-link wrapper signal
   input   wire                         rd_clk, 
   input   wire                         rd_en,      // 1 clk trigger feeded from the EPROC_Out block
   // Port Declarations
   input   wire                         rst, 
   input   wire                         wr_clk, 
   input   wire                         wr_en, 
   output  wire    [DATA_OUT_WIDTH-1:0]   dout, 
   output  wire                         doutRdy, 
   output  wire                         empty, 
   output  wire                         full, 
   output  wire                         prog_full
   );
   // Internal Declarations
   reg prog_full_s;
   reg [DATA_OUT_WIDTH-1:0] dout_r;
   reg doutRdy_r;
   reg OE, rst_state, byte_cnt,byte_rdy;
   reg [DATA_OUT_WIDTH-1:0]dout18bit;
   reg [DATA_IN_WIDTH-1:0] din_r = {2'b11, 16'b0}; // The default input has commas (2'b11) as a wordcode
   
   reg [1:0] byte0_code,byte1_code;
   reg empty_efifo1,empty_efifo2,empty_efifo3;
   reg wr_en_r = 0;

  wire [9:0] byte0= {2'b11, 8'b0};
  wire [9:0] byte1= {2'b11, 8'b0};
  wire [1:0] word16_code;
  wire       rd_en_s;
  wire       empty_efifo; 
  
  assign doutRdy = doutRdy_r;
  assign dout =dout_r;
//-------------------------------------------------------------------------------------------
//-- write pipeline
//-------------------------------------------------------------------------------------------
always @ (posedge wr_clk)
  begin
    wr_en_r <= wr_en;
    din_r   <= din;
  end
//-------------------------------------------------------------------------------------------
//-- Instantiate FIFO - ip
//-------------------------------------------------------------------------------------------
fh_epath_fifo2K_18bit_wide DRAM_2K_18bit( .rst(fifoFLUSH)
                                        , .wr_clk(wr_clk)
                                        , .rd_clk(rd_clk)
                                        , .din(din_r)
                                        , .wr_en(wr_en_r)
                                        , .rd_en(rd_en_s)
                                        , .prog_full_thresh_assert()
                                        , .prog_full_thresh_negate()
                                        , .dout(dout18bit)
                                        , .full(full)
                                        , .almost_full() // almost full
                                        , .empty(empty_efifo)
                                        , .prog_full(prog_full_s));    
//-------------------------------------------------------------------------------------------
//-- re pulse [Reading Data]
//-------------------------------------------------------------------------------------------
always @ (posedge rd_clk,rst)
  begin
  	if (rst)
  	 byte_cnt <= 0;
  	else if (rd_en)//-- 1 clk trigger       
    byte_cnt <= !byte_cnt; 
  end

assign rd_en_s = rd_en & (!byte_cnt) & (!empty_efifo);//-- only when byte_cnt = 0
assign word16_code = dout18bit[17:16];

 
//Assigning the word16_code
always @ (word16_code,empty_efifo1,empty_efifo2)
  begin
    if(empty_efifo1 == 1)//The FIFO is empty
      begin
        byte0_code =2'b11; //Idle mode sends only Comma
        byte1_code =2'b11;
      end
    else
      if(word16_code == 2'b10)//start of message
        begin
          byte0_code =2'b11; //Comma
          byte1_code =2'b10; //start of message
        end
      else if (word16_code == 2'b01)//end of message
         begin
          byte0_code =2'b01; //end of message
          byte1_code =2'b11; //Comma
        end
      else //00 data       
         begin
          byte0_code = {empty_efifo1, empty_efifo1}; 
          byte1_code = {empty_efifo2, empty_efifo2}; 
        end
  end

assign byte0 = {byte0_code , dout18bit[15:8]};
assign byte1 =  {byte1_code , dout18bit[7 : 0]};

// Generate Dout
always @(byte_cnt,byte0,byte1)
  begin
  	if (byte_cnt ==1)
  	 dout_r = byte0;
  	else  
     dout_r = byte1;
  end 

// deliver a byte_rdy signal
always @ (posedge rd_clk)
  begin
    byte_rdy =byte_cnt;
  end

//-------------------------------------------------------------------------------------------
//-- re-pulse [Empty FIFO]
//-------------------------------------------------------------------------------------------
always @ (posedge rd_clk)
 begin
    doutRdy_r = rd_en;   
    empty_efifo1 = empty_efifo;
    empty_efifo2 = empty_efifo1;  
    empty_efifo3 = empty_efifo2; 
  end 

assign empty_efifo = empty;
 
always @ (posedge rd_clk)
 begin
    rst_state = rst | fifoFLUSH;
    OE = !rst_state;
  end 

assign prog_full =prog_full_s & OE; // Take the signal out of the FIFO

endmodule