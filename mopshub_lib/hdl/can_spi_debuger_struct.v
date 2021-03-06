//
// Module mopshub_lib.can_spi_debuger.struct
//
// Created:
//          by - dcs.dcs (localhost)
//          at - 14:22:39 05/30/22
//
// Generated by Mentor Graphics' HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module can_spi_debuger( 
   // Port Declarations
   input   wire    [7:0]  Kchar_comma, 
   input   wire    [7:0]  Kchar_eop, 
   input   wire    [7:0]  Kchar_sop, 
   input   wire           clk, 
   input   wire    [9:0]  data_rec_can_10bitout, 
   input   wire           rst, 
   input   wire           spi_can_irq, 
   output  wire    [9:0]  data_rec_spi_can_10bitout, 
   output  wire           spi_can_mode
);


// Internal Declarations


// Local declarations

// Internal signal declarations
reg  [5:0] cnt_out;
reg  [9:0] data_rec_spi_can_10bitout_reg;
reg        spi_can_mode_reg;


// Instances 
// HDL Embedded Text Block 10 rdy1
//Part to debug spi from CAN
assign data_rec_spi_can_10bitout = data_rec_spi_can_10bitout_reg;
assign spi_can_mode = spi_can_mode_reg;
initial spi_can_mode_reg =1'b0;
initial cnt_out =6'b0;
initial data_rec_spi_can_10bitout_reg = 10'b0;
always @(posedge clk)
begin
  if (!rst) cnt_out <= 6'b0;
  if (spi_can_mode == 1'b0 && spi_can_irq == 1'b1) 
  begin 
   spi_can_mode_reg <=1'b1;
   cnt_out <= 6'b0;
  end
  else if (spi_can_mode ==1'b1 ||spi_can_irq == 1'b1)
    begin
      if (cnt_out == 6'h15)spi_can_mode_reg <=1'b0;
      else cnt_out <= cnt_out + 1'b1;
    end
  else cnt_out <= 6'b0;
end



always @(posedge clk)
begin
  if (!rst)   data_rec_spi_can_10bitout_reg <= 10'b0;
  else if (cnt_out > 6'h06 && cnt_out <= 6'h08) data_rec_spi_can_10bitout_reg  <={2'b01,Kchar_eop};
  else if (cnt_out >= 6'h09 && cnt_out <= 6'h14) data_rec_spi_can_10bitout_reg <= {2'b11,Kchar_comma};
  else 
   data_rec_spi_can_10bitout_reg <= data_rec_can_10bitout;
end








































































































































endmodule // can_spi_debuger

