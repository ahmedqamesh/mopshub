//
// Verilog Module mopshub_lib.fifoTXelink_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:39:01 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//
//EPATH FIFO 18 bit wide, 1K depth
`resetall
`timescale 1ns/10ps
module fifoTXelink_wrap 
// elink Group Parameters
#(
  // FIFO parameters
  parameter DATA_IN_WIDTH=18, //FIFO width
  parameter DATA_OUT_WIDTH=10, //FIFO width
  // Message delimeters
  parameter [9:0] comma_byte = "1100000000",
  //Enable all Egroups from 0 to 5 with 8b10bencoding
  parameter module_enable = 1,
  parameter GENERATE_FEI4B = 0
)
// IO ports
( 
   input   wire            rst, 
   input   wire            fifoFLUSH, // x-link wrapper signal

   input   wire            wr_clk, 
   input   wire            wr_en, 
   input   wire    [DATA_IN_WIDTH-1:0]  din,  //DATA = 2bits +16bits

   input   wire            rd_clk, 
   input   wire            rd_en, // 1 clk trigger feeded from the EPROC_Out block
   
   output  wire    [DATA_OUT_WIDTH:0]   dout, 
   output  wire            doutRdy, 
   output  wire            full, 
   output  wire            empty, 
   output  wire            prog_full
);
// Internal Declarations
reg rd_en_s, empty_efifo, prog_full_s;
reg OE, rst_state, byte_cnt,byte_mux_sel,byte_rdy,rd_en1,rd_en2 = 0;
reg [9:0]dout18bit;
reg [9:0] byte0, byte1= 10'b1100000000;

reg [1:0] byte0_code,byte1_code,word16_code;
reg empty_efifo1,empty_efifo2,empty_efifo3;

reg wr_en_r = 0;
reg [17:0] din_r = 18'b110000000000000000;


// Instantiate DRAM Block
fifo_to_2K_18bit_wide DRAM_2K_18bit(.rst(fifoFLUSH)
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
                              
always @ (*)
// Module Enabled
  if(module_enable  == 1)
    begin
      @(posedge wr_clk)
      begin
      
       wr_en_r   <= 0;
      end
    end
  
  else
// Module Disabled
    begin
      dout            <= 10'd0;
      doutRdy         <= 0;
      full            <= 0;
      empty           <= 1;
      prog_full       <= 0;
    end
endmodule

