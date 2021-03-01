//
// Verilog Module mopshub_lib.fifo_to_1K_18bit_wide
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:44:49 02/25/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
// Asynchronous FIFO (w/ 2 asynchronous clocks).
// 18 bit wide, 2K deep[it will take at least 1000 clock cycles to read the entire thing out.]
//module fh_epath_fifo2K_18bit_wide 
//#(parameter DATA_WIDTH = 18,
//            ADDRESS_WIDTH = 11,
//            Almost_Full_limit = 14,
//            FIFO_DEPTH = (1 << ADDRESS_WIDTH))// the FIFO width is  2K (2^11)

module fh_epath_fifo2K_18bit_wide(dout,full,empty, almost_full,din,wr_en,rd_en,rd_clk,wr_clk,rst);
  parameter DATA_WIDTH=18; //FIFO width
  parameter ADDRESS_WIDTH = 11;
  parameter FIFO_DEPTH = (1 << ADDRESS_WIDTH);// the FIFO depth is  2K (2^11)
  parameter f_almost_full_value=14;
  
  output [DATA_WIDTH-1:0] dout; 
  output full,almost_full,empty;
  input [DATA_WIDTH-1:0] din;
  input rd_en,wr_en,rd_clk,wr_clk;
  input rst;

  //internal registers,wires
  reg [DATA_WIDTH-1:0] dout; //outputs
  wire [ADDRESS_WIDTH-1:0] r_ptr,w_ptr;
  reg r_next_en,w_next_en; 
  reg [ADDRESS_WIDTH-1:0] ptr_diff;
  reg [DATA_WIDTH-1:0] f_memory[FIFO_DEPTH-1:0];
  
  
  assign full=(ptr_diff==(FIFO_DEPTH-1)); //assign FIFO status
  assign empty=(ptr_diff==0);
  assign almost_full=(ptr_diff==f_almost_full_value);
  
  //---------------------------------------------------------
  
  always @(posedge wr_clk) //write to memory
  begin 
    if(wr_en) begin   
      if(!full)  
        f_memory[w_ptr]<=din; 
    end 
  end
  //---------------------------------------------------------
  always @(posedge rd_clk) //read from memory
  begin    
    if(rst)
      dout<=0; //f_memory[r_ptr];
    else if(rd_en) begin
      if(!empty)
        dout<=f_memory[r_ptr]; 
      end
    else dout<=0; 
  end
  //--------------------------------------------------------- 
  always @(*) //ptr_diff changes as read or write clock change
  begin
    if(w_ptr > r_ptr)
      ptr_diff <= w_ptr-r_ptr;
    else if(w_ptr<r_ptr)
      begin
        ptr_diff <=((FIFO_DEPTH-r_ptr)+w_ptr); 
      end
    else ptr_diff<=0; 
  end      
  //---------------------------------------------------------
  always @(*) //after empty flag activated fifo read counter should not increment;
  begin if(rd_en && (!empty))
    r_next_en=1;
    
    else r_next_en=0;  
  end
  //--------------------------------------------------------
  always @(*) //after full flag activated fifo write counter should not increment;
  begin if(wr_en && (!full))
    w_next_en=1; 
    else w_next_en=0;
  end

  //instantiate address counters
  b_counter r_b_counter(
      .c_out(r_ptr),
      .c_rst(rst),
      .c_clk(rd_clk),
      .en(r_next_en));
  b_counter w_b_counter(
      .c_out(w_ptr),
      .c_rst(rst),
      .c_clk(wr_clk),
      .en(w_next_en));
endmodule
    
//==============================================================

//b_counter.v; 4 bit asynchronous binary up counter

//==============================================================

module b_counter(c_out,c_rst,c_clk,en);     
  parameter c_width=11; //counter width    
  output [c_width-1:0] c_out; reg [c_width-1:0] c_out;   
  input c_rst,c_clk,en;
  always @(posedge c_clk or posedge c_rst) 
  if (c_rst)
  c_out <= 0;
  else if(en)  
  c_out <= c_out + 1;
endmodule
//===========================================================

//fifo_top.v; top level verilog code of FIFO

//To be used with Xilinx ISE-simulation and synthesis

//For functional simulation this module is not necessary
    
//============================================================

//module fifo_top(x,y,z,dout,full,empty, almost_full,din,rd_en,wr_en,CLKIN_IN,RST_IN,rst);
//  parameter DATA_WIDTH=18;
//  parameter ADDRESS_WIDTH = 4;
//  parameter FIFO_DEPTH = (1 << ADDRESS_WIDTH);// the FIFO depth is  2K (2^11)
//  parameter f_almost_full_value=14;
//  parameter f_almost_empty_value=2;
//  
//  output [DATA_WIDTH-1:0] dout; //reg [DATA_WIDTH-1:0] dout; //outputs
//  output full,almost_full,empty;
//  
//  output x,y,z;
//  input [DATA_WIDTH-1:0] din;
//  input rd_en,wr_en,CLKIN_IN,RST_IN;
//  input rst;
//
//  
//  fh_epath_fifo2K_18bit_wide fifo2K_18bit(dout,full,empty,
//  
//  almost_full,din,rd_en,wr_en,CLK0_OUT,CLKDV_OUT,rst); //instantiate fifo
//  
//  
//  dcm_fifo dcm_fifo1(CLKIN_IN,RST_IN,CLKDV_OUT,CLKFX_OUT,CLKIN_IBUFG_OUT,CLK0_OUT, LOCKED_OUT); //instantiate DCM
//  
//  assign x=CLKIN_IBUFG_OUT; //simply to avoid error
//  
//  assign y=LOCKED_OUT;
//  
//  assign z=CLKFX_OUT;
//  
//  
//endmodule

//=================================================

    