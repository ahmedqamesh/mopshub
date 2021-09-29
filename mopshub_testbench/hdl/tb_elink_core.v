`resetall
`timescale 1ns/10ps
module tb_elink_core ;
  // Port Declarations
  reg          rst; 
  reg          bitCLKx4;  //bitCLKx4 [clk_160 MB/s]    
  wire         clk_80;  //clk_80 [clk_80 MB/s]
  wire         clk_40;    //clk_40   [clk_40 MB/s]
  //EPROC OUT ENC8b10b Signals
  wire  [7:0]  gen_edata_8bit;
  wire  [1:0]  delimeter;
  wire  [75:0] data_gen_rec;
  wire  [75:0] data_gen_tra;
  wire  [75:0] data_emci_rec;
  wire  [75:0] data_emci_tra;
  //EMCI Emulator
  wire         start_write_elink;
  wire         end_write_elink;
  reg         start_read_elink =1'b0;
  assign gen_edata_8bit   = emci_decoder0.data_rec_8bitout;
  assign delimeter        = emci_decoder0.data_rec_delimiter;
  assign data_emci_tra    = emci_decoder0.data_tra_76bit_reg ; 
  assign data_emci_rec    = emci_decoder0.data_rec_76bit_reg;
  assign end_write_elink  = emci_decoder0.end_write_emulator;
 

  //Generate 8b data 
emci_decoder #(
  .max_cnt(1))emci_decoder0(
  .rst                    (rst),
  .bitCLKx4               (bitCLKx4),
  .clk_80                 (clk_80),
  .clk_40                 (clk_40),//I will use here bitCLK if I need to test elink_proc_out
  .loop_en                (1'b0),
  .start_write_emulator   (start_write_elink),
  .data_tra_out          (data_gen_tra), 
  .data_rec_in           (data_gen_rec), 
  .ISK                    (),
  .enc10bit_out_dbg       (),
  .tx_elink8bit_dec_dbg   (),
  .tx_fifo_pfull_gen      (1'b0),
  .swap_tx_bits           (1'b0),
  .reverse_stream_10b     (1'b1),
  .data_10b_in            (10'b0),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en            (1'b0)
  );

  // clocks    
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; //Equivalent to the rd_clk
  end
  
  //Freq. bitCLK = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_4(
  .clock_in(bitCLKx4),
  .clock_out(clk_40)
  );
  
  //Freq. bitCLK = Freq. clk_80 / 2 [=80 MHz]
  clock_divider #(2) div_2(
  .clock_in(bitCLKx4),
  .clock_out(clk_80)//Equivalent to the 80
  );
  initial 
  begin
    rst = 1'b0;
    #10 rst=!rst;
  end
endmodule
