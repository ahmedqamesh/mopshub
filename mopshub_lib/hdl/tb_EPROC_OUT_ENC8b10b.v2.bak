//
// Verilog Module mopshub_lib.tb_EPROC_OUT_ENC8b10b
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:34:52 03/18/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_elink_proc_out_enc8b10b ;
  // Port Declarations
  // Port Declarations
  reg           rst; 
  reg           bitCLKx4;
  wire          bitCLK;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
  wire          genCLK;
  wire [7:0]    GEN_EDATA_8bit;
  wire [1:0]    delimeter;
  reg  [9:0]    GEN_EDATA_10bit; // 10 bits input code+data
  wire [7:0]    DEC_EDATA_OUT_8bit;
  reg           dataINrdy;
  wire [9:0]    enc10bit_r;
  wire [9:0]    ENC_EDATA_OUT_10bit;
  wire [1:0]    ENC_EDATA_OUT_2bit;
  wire          getDataTrig;

  //Data generator Signals
  wire        done; 
  wire        wr_en;
  reg         enable;
  assign enc10bit_r = ENC8b10b.enc10bit_r;
  data_gen_elink DataGEN(
  .clk              (genCLK),
  .rst              (~rst),
  .loop_en          (~rst),
  .done             (done),
  .tx_fifo_pfull    (1'b0),
  .dout             (GEN_EDATA_8bit),
  .delimeter        (delimeter),
  .wr_en            (wr_en)
  );
  
  elink_proc_out_enc8b10b ENC8b10b( 
  .EDATA_IN         (GEN_EDATA_10bit), 
  .EDATA_RDY        (dataINrdy), //one? CLKx4 after inp_request_trig_out
  .getDataTrig      (getDataTrig), 
  .EDATA_OUT        (ENC_EDATA_OUT_2bit), 
  .rst              (rst), 
  .bitCLK           (bitCLK),  // runs the counters as a normal FIFO clk
  .bitCLKx4         (bitCLKx4),
  .swap_outbits     (1'b0), //No swap equal to 0
  .fhCR_REVERSE_10B (1'b0)//normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  ); 
  
  EMCI_Emulator Emulator( 
  .bitCLKx4         (bitCLKx4),
  .bitCLKx2         (1'b0),
  .bitCLK           (bitCLK),
  .rst              (rst), 
  .fifo_rd_en       (), 
  .efifoEmpty       (), 
  .efifoFull        (), 
  .fifo_dout        (),
  .tx_elink2bit     (ENC_EDATA_OUT_2bit),
  .DATA1bitIN       (1'b0),
  .swap_tx_bits      (1'b0),
  .reverse_stream_10b (1'b0),
  .HGFEDCBA         (DEC_EDATA_OUT_8bit),
  .ISK              (),
  .enc10bit_out_dbg (ENC_EDATA_OUT_10bit),
  .data_10b_in      (10'b1),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en      (1'b0)
  );
    
  // clocks    
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; //Equivalent to the rd_clk faster
  end
  
  //Freq. bitCLK = Freq. bitCLKx4 / 4 [=40 MHz] Fast 
  clock_divider #(4) div_0(
  .clock_in(bitCLKx4),
  .clock_out(bitCLK)//Equivalent to the wr_clk
  );
  
  
  //Freq. genCLK = Freq. bitCLKx4 / 8 [=20 MHz] Slow
  clock_divider #(16) div_1(
  .clock_in(bitCLKx4),
  .clock_out(genCLK)//Equivalent to rd_clk in the fifoTXelink_wrap Module
  );
  
  
  //Initialization
  initial 
  begin
    dataINrdy= 0;
    enable = 0;
    GEN_EDATA_10bit = 10'b0;
    rst = 1'b1;
    #4 rst=!rst;
    enable = 1;
  end
  
  
  always@(posedge getDataTrig)
  begin
    GEN_EDATA_10bit = {delimeter,GEN_EDATA_8bit};
    dataINrdy= 1;
    #4;
    dataINrdy= 0;
  end  
endmodule
