//
// Verilog Module mopshub_lib.upstreamFIFO
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 13:45:04 04/03/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module fifo_upstream #(
   // synopsys template
   // synopsys template
   parameter DATA_WIDTH          = 10,
   parameter ADDRESS_WIDTH       = 11,
   parameter FIFO_DEPTH          = (1 << ADDRESS_WIDTH),
   parameter f_almost_full_value = (FIFO_DEPTH-2),
   parameter f_prog_full_value   = FIFO_DEPTH
)
( 
   // Port Declarations
   output  wire     [DATA_WIDTH-1:0]  dout, 
   output  wire                      full,         //FIFO is full. Write requests are ignored when is full is non-destructive to the contents of the FIFO. T
   output  wire                      empty,  // If DIff = 0
   output  wire                      prog_full,    //The signal is asserted when the number of entries in the FIFO is greater than or equal to the user-defined assert threshold. W
   output  wire                      almost_full,  //  this signal indicates that only one more write can be performed before the FIFO is full.
                                                   //It defines when the signal is deasserted. 
                                                   //The threshold can be dynamically set in-circuit during reset.
   input   wire    [DATA_WIDTH-1:0]  din, 
   input   wire                      wr_en,        //If the FIFO is not full, asserting this signal causes data to be written to the FIFO. This signal is active high
   input   wire                      rd_en,        // Control the  read operation 
   input   wire                      rd_clk, 
   input   wire                      wr_clk, 
   input   wire                      rst
);

// Internal signal declarations
wire  [ADDRESS_WIDTH-1:0] r_ptr;
wire  [ADDRESS_WIDTH-1:0] w_ptr;
reg                       r_next_en;
reg                       w_next_en;
reg   [ADDRESS_WIDTH-1:0] ptr_diff;
reg   [DATA_WIDTH-1:0]    f_memory  [FIFO_DEPTH-1:0];
reg   [DATA_WIDTH-1:0]    dout_r = {2'b11,8'b0};

wire rd_en_s;
// Instances 
// instantiate address counters
// 
binary_counter r_b_counter (
   .c_out (r_ptr), 
   .c_rst (rst), 
   .c_clk (rd_clk), 
   .en    (r_next_en)
); 

binary_counter w_b_counter( 
   .c_out (w_ptr), 
   .c_rst (rst), 
   .c_clk (wr_clk), 
   .en    (w_next_en)
); 

// HDL Embedded Text Block 1 eb1
assign full=(ptr_diff==(FIFO_DEPTH-1)); //assign FIFO status
assign empty=(ptr_diff==0);
assign almost_full=(ptr_diff==f_almost_full_value);
assign prog_full=(ptr_diff==f_prog_full_value);
assign rd_en_s = (rd_en == 1) ? 1:0;
// HDL Embedded Text Block 2 eb2
//---------------------------------------------------------
  
  always @(posedge wr_clk) //write to memory
  begin 
    if(wr_en) begin   
      if(!full)  
        f_memory[w_ptr]<=din; 
    end 
  end
// HDL Embedded Text Block 3 eb3
//---------------------------------------------------------
  always @(posedge rd_clk) //read from memory
  begin    
    if(rst)
      dout_r<=0; //f_memory[r_ptr];
    else if(rd_en_s) begin
      if(!empty)
        dout_r<=f_memory[r_ptr]; 
      end
    else dout_r<=0; 
  end
// HDL Embedded Text Block 4 eb4
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
// HDL Embedded Text Block 5 eb5
//---------------------------------------------------------
 //Never Read from an empty FIFO
  always @(*) //after empty flag activated fifo read counter should not increment;
  begin if(rd_en_s && (!empty))
    r_next_en=1;
    
    else r_next_en=0;  
  end
// HDL Embedded Text Block 6 eb6
//--------------------------------------------------------
 //Never write to a full FIFO
  always @(*) //after full flag activated fifo write counter should not increment;
  begin if(wr_en && (!full))
    w_next_en=1; 
    else w_next_en=0;
  end
assign dout = dout_r; 
endmodule // fh_epath_fifo2K_18bit_wide

