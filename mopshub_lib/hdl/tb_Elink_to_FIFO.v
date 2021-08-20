//
// Verilog Module mopshub_lib.tb_Elink_to_FIFO
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 18:51:55 04/03/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module tb_Elink_to_FIFO ;
  // Port Declarations
  wire         rst; 
  reg         reset;
  reg         bitCLKx4;  //bitCLKx4 [clk_160 MB/s]    
  wire        bitCLKx2;  //bitCLKx2 [clk_80 MB/s]
  wire        bitCLK;    //bitCLK   [clk_40 MB/s]
  wire  [9:0] data_mopshub_10bit;
  wire   wr_elink_en;
  //EPROC OUT ENC8b10b Signals
  wire  [7:0] gen_edata_8bit;
  wire  [1:0] delimeter;
  wire  [1:0] tx_mopshub2bit;
  wire  [9:0] dec8b_Out_dbg;
  wire  dec8b_rdy_dbg;  
  wire  [75:0] data_mopshub_gen;
  wire  [75:0] data_emci_rec;
  //EMCI  Emulator
  wire  [1:0] tx_emci2bit;
  wire [7:0]  tx_elink8bit_dec_dbg;
  
  assign dec8b_Out_dbg =  EMCI_Emulator0.dec8b_Out_dbg;
  assign dec8b_rdy_dbg = EMCI_Emulator0.dec8b_rdy_dbg;
  assign gen_edata_8bit =  data_gen_elink0.data_rec_8bitout;
  assign delimeter = data_gen_elink0.data_rec_delimiter;
  assign data_mopshub_gen = data_gen_elink0.data_gen_76bit_reg ;
  assign data_emci_rec = EMCI_Emulator0.data_tra_out_reg;
  assign rst = ~reset;
  //Generate 8b data 
  data_gen_elink data_gen_elink0(
  .rst                (rst),
  .bitCLK             (bitCLK),
  .bitCLKx4           (bitCLKx4),
  .bitCLKx2           (bitCLKx2),
  .loop_en            (1'b0),
  .tx_fifo_pfull      (1'b0),
  .swap_tx_bits       (1'b0),
  .reverse_stream_10b (1'b1),
  .data_gen_10bitout(data_mopshub_10bit),
  .wr_elink_en (wr_elink_en),
  .tx_elink2bit_gen (tx_mopshub2bit),
  .rx_elink2bit_gen (tx_emci2bit),
  .tx_elink8bit_dec_dbg(tx_elink8bit_dec_dbg),
  .ISK                (),
  .enc10bit_out_dbg   (),
  .data_10b_in        (10'b0),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en        (1'b0)
  );
  
  EMCI_Emulator #(
  .GENERATE_FEI4B (1))EMCI_Emulator0( 
  .bitCLKx4           (bitCLKx4),
  .bitCLKx2           (bitCLKx2),
  .bitCLK             (bitCLK),
  .rst                (rst), 
  .reset              (reset), 
  .data_mopshub_10bit(data_mopshub_10bit),
  .wr_elink_en (wr_elink_en),
  .rx_elink2bit       (tx_mopshub2bit),
  .tx_elink2bit       (tx_emci2bit),
  //.rx_elink1bit       (1'b0),
  .swap_tx_bits       (1'b0),
  .reverse_stream_10b_tx (1'b1),
  .reverse_stream_10b_rx (1'b0)
  );
  
  // clocks    
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; //Equivalent to the rd_clk
  end
  
  //Freq. bitCLK = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_0(
  .clock_in(bitCLKx4),
  .clock_out(bitCLK)
  );
  
  //Freq. bitCLK = Freq. bitCLKx2 / 2 [=80 MHz]
  clock_divider #(2) div_2(
  .clock_in(bitCLKx4),
  .clock_out(bitCLKx2)//Equivalent to the 80
  );
  initial 
  begin
    reset = 1'b1;
    #10 reset=!reset;
  end
endmodule
