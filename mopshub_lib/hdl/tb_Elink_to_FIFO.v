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
  wire        genCLK;
  
  //EPROC OUT ENC8b10b Signals
  wire  [7:0] GEN_EDATA_8bit;
  wire  [1:0] delimeter;
  reg   [9:0] GEN_EDATA_10bit; // 10 bits input code+data
  wire  [1:0] ENC_EDATA_OUT_2bit;
  wire  [9:0] din_dbg;
  wire        getDataTrig;
  reg         dataINrdy;
  reg         enable;
  
  //GBTX Emulator
  //wire [7:0]  DEC_EDATA_OUT_8bit;
  wire        efifoEmpty;
  wire        efifoFull;
  reg         efifoRe;
  wire [9:0]  efifoDout;
  
  //Data generator Signals
  wire        done; 
  wire        wr_en;
   
   assign din_dbg =  Emulator.din_dbg;
  //Generate 8b data 
  data_generator DataGEN(
  .clk_usr        (genCLK),
  .enable         (enable),
  .loop_en        (~rst),
  .done           (done),
  .tx_fifo_pfull  (1'b0),
  .dout           (GEN_EDATA_8bit),
  .delimeter      (delimeter),
  .wr_en          (wr_en)
  );
  //Produce a stream of 2bits 
  EPROC_OUT_ENC8b10b ENC8b10b( 
  .rst              (rst), 
  .bitCLK           (bitCLK),
  .bitCLKx4         (bitCLKx4),
  .EDATA_IN          (GEN_EDATA_10bit), 
  .EDATA_RDY         (dataINrdy), //one? CLKx4 after inp_request_trig_out
  .getDataTrig      (getDataTrig), 
  .EDATA_OUT        (ENC_EDATA_OUT_2bit), 
  .swap_outbits     (1'b0), //No swap equal to 0
  .fhCR_REVERSE_10B (1'b1)//normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  ); 
  
  EMCI_Emulator Emulator( 
  .bitCLKx4         (bitCLKx4),
  .bitCLKx2         (bitCLKx2),
  .bitCLK           (bitCLK),
  .rst              (rst), 
  .efifoRe          (efifoRe), 
  .efifoEmpty       (efifoEmpty), 
  .efifoFull        (efifoFull), 
  .efifoDout        (efifoDout),
  .EDATA_2bit       (ENC_EDATA_OUT_2bit),
  .DATA1bitIN       (1'b0),
  .swap_input       (1'b0),
  .reverse_rx       (1'b0),
  .HGFEDCBA         (),
  .ISK              (),
  .datain_valid     (),
  .enc10bit_out_dbg (),
  .data_10b_in      (10'b0),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en      (1'b0)
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
  
  //Freq. genCLK = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_1(
  .clock_in(bitCLKx4),
  .clock_out(genCLK)
  );
  
  //Freq. bitCLK = Freq. bitCLKx2 / 2 [=80 MHz]
  clock_divider #(2) div_2(
  .clock_in(bitCLKx4),
  .clock_out(bitCLKx2)//Equivalent to the 80
  );
  
  
  //Initialization
  initial 
  begin
    dataINrdy= 0;
    efifoRe= 0;
    GEN_EDATA_10bit = 10'b0;
    enable = 0;
    rst = 1'b1;
    #10 rst=!rst;
    enable = 1;
  end
  
  always@(posedge getDataTrig)
  begin
    GEN_EDATA_10bit = {delimeter,GEN_EDATA_8bit};
    dataINrdy= 1;
    efifoRe = 0;
    #4;
    dataINrdy= 0;
    efifoRe = 1;
  end  
endmodule