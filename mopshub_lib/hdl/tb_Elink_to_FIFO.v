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
  reg         rst; 
  reg         bitCLKx4;  //bitCLKx4 [clk_160 MB/s]    
  wire        bitCLKx2;  //bitCLKx2 [clk_80 MB/s]
  wire        bitCLK;    //bitCLK   [clk_40 MB/s]
  
  //EPROC OUT ENC8b10b Signals
  wire  [7:0] GEN_EDATA_8bit;
  wire  [1:0] delimeter;
  wire  [1:0] ENC_EDATA_OUT_2bit;
  wire  [9:0] din_dbg;
  wire        getDataTrig;
  
  //GBTX Emulator
  wire [7:0]  DEC_EDATA_OUT_8bit;
  wire        fifo_empty;
  wire        fifo_full;
  wire         fifo_rd_en;
  wire [9:0]  fifo_dout;
  
  //Data generator Signals
  wire        done; 
  
  assign din_dbg =  Emulator.din_dbg;
  assign fifo_rd_en = !getDataTrig;
  
  //Generate 8b data 
  data_gen_elink data_gen_elink0(
  .rst            (~rst),
  .clk            (bitCLK),
  .bitCLK           (bitCLK),
  .bitCLKx4         (bitCLKx4),
  .loop_en        (~rst),
  .done           (done),
  .tx_fifo_pfull  (fifo_full),
  .dout           (GEN_EDATA_8bit),
  .delimeter      (delimeter),
  .swap_tx_bits       (1'b0),
  .reverse_stream_10b (1'b1),
  .getDataTrig      (getDataTrig), 
  .EDATA_OUT        (ENC_EDATA_OUT_2bit)
  );
  
  EMCI_Emulator #(
  .GENERATE_FEI4B (1))Emulator( 
  .bitCLKx4           (bitCLKx4),
  .bitCLKx2           (bitCLKx2),
  .bitCLK             (bitCLK),
  .rst                (rst), 
  .fifo_rd_en         (fifo_rd_en), 
  .fifo_empty         (fifo_empty), 
  .fifo_full          (fifo_full), 
  .fifo_dout          (fifo_dout),
  .tx_elink2bit       (ENC_EDATA_OUT_2bit),
  .DATA1bitIN         (1'b0),
  .swap_tx_bits       (1'b0),
  .reverse_stream_10b (1'b0),
  .HGFEDCBA           (DEC_EDATA_OUT_8bit),
  .ISK                (),
  .enc10bit_out_dbg   (),
  .data_10b_in        (10'b0),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en        (1'b0)
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
    rst = 1'b1;
    #10 rst=!rst;
  end
 
endmodule
