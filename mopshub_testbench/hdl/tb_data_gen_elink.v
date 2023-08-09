`resetall
`timescale 1ns/10ps
module tb_data_gen_elink ;
  wire clk;            // write FIFO clk
  wire clk_elink;
  reg rst = 1'b0;            // should be used through VIO
  reg loop_en; 
  wire wr_en;
  wire done;               // dbg
  wire [1:0] delimeter;
  reg  [9:0] counter10bit_limit = 10'd8;
  wire [9:0] data10bout; 
  wire [9:0] data_tra_10bitin;
  wire KI;

  wire [7:0] Kchar_comma; 
  wire [7:0] Kchar_eop; 
  wire [7:0] Kchar_sop; 
  wire [9:0] COMMAn; 
  wire [9:0] COMMAp;  
  wire [1:0] data_2bit_in;
assign Kchar_comma = 8'hBC;//K28.5  10111100
assign Kchar_eop   = 8'hDC ;// K28.6 11011100
assign Kchar_sop   = 8'h3C ;// K28.1 00111100
assign COMMAn = 10'h305; //1100000101
assign COMMAp = 10'hFA; // 0011111010;

data_gen_elink_sm data_gen_elink0(
  .clk(clk),
  .rst(rst),
  .counter10bit_limit (counter10bit_limit),
  .data10bout(data10bout),
  .loop_en(loop_en),
  .end_write_emulator(1'b1),
  .done(done),
  .tx_efifo_full(tx_efifo_full),
  .wr_en(wr_en));   

assign delimeter = data10bout[9:8];
assign KI =  delimeter[1] | delimeter[0]; //Control signal for the KI of the encoder (goes low if there is data i.e. code = 00, 01, 10)

 fifo_to_elink fifo_to_elink0( 
   .fifo_wr_en            (wr_en), 
   .clk                   (clk), 
   .fifo_din              ({delimeter, data10bout[7:0]}), 
   .fifo_flush            (1'b0), 
   .data_2bit_out         (data_2bit_in), 
   .efifo_empty           (), 
   .efifo_full            (tx_efifo_full), 
   .rst                   (rst), 
   .Kchar_comma           (Kchar_comma),  
   .data_10bit_in_dbg     (), 
   .COMMAn                (COMMAn), 
   .COMMAp                (COMMAp), 
   .data_rdy_10bit_in_dbg (), 
   .dbg_elink             (1'b0), 
   .data_in_rdy           (), 
   .data_10bit_in         (), 
   .clk_elink             (clk)
); 
 

elink_to_fifo elink_to_fifo0( 
   .fifo_flush     (1'b0), 
   .fifo_full      (), 
   .fifo_dout      (data_tra_10bitin), 
   .clk            (clk), 
   .fifo_rd_en     (!rx_fifo_empty), 
   .data_2bit_in   (data_2bit_in), 
   .rst            (rst), 
   .rx_fifo_empty  (rx_fifo_empty), 
   .dec10b_Out     (), 
   .dec10b_out_rdy (), 
   .COMMAn         (COMMAn), 
   .COMMAp         (COMMAp), 
   .Kchar_comma    (Kchar_comma), 
   .Kchar_eop      (Kchar_eop), 
   .Kchar_sop      (Kchar_sop), 
   .word10b_rdy    (), 
   .clk_elink      (clk)
); 
  clock_generator #(
  .freq(180), 
  .phase(0))
  clock_generator0( 
  .clk  (clk_elink), 
  .enable (1'b1)
  );  
  clock_divider #(28'd2)
  clock_divider_mops( 
  .clock_in  (clk_elink), 
  .clock_out (clk)
  ); 
  initial 
  begin 
    loop_en= 0;
    #5;
    rst = !rst;
    loop_en = 1;
  end
endmodule
