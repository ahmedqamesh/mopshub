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
  reg   rst; 
  wire   bitCLK;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
  reg   bitCLKx4;  //bitCLKx4 for Triggering the signal [clk_160 MB/s]
  //EPROC OUT ENC8b10b Signals
  wire [1:0] ENC_EDATA_OUT_2bit;
  wire getDataTrig;
  reg [9:0] GEN_EDATA_10bit; // 10 bits input code+data
  reg dataINrdy;
  reg enable;
  
  //GBTX Emulator
  //wire [7:0]  DEC_EDATA_OUT_8bit;
  wire [9:0]  ENC_EDATA_OUT_10bit;
  wire        efifoEmpty;
  wire        efifoFull;
  wire [9:0]  din_dbg;
  wire        wrEn_dbg;
  wire [9:0]  efifoDout;
  
  //Data generator Signals
  wire [7:0] GEN_EDATA_8bit;
  wire [1:0] delimeter;
  wire         gen_clk;
  wire        done; 
  wire        wr_en;

  data_generator DataGEN(
  .clk_usr  (gen_clk),
  .enable   (enable),
  .loop_en  (~rst),
  .done     (done),
  .tx_fifo_pfull(1'b0),
  .dout     (GEN_EDATA_8bit),
  .delimeter(delimeter),
  .wr_en      (wr_en)
  );
  
  EPROC_OUT_ENC8b10b ENC8b10b( 
  .edataIN       (GEN_EDATA_10bit), 
  .DATA_RDY      (dataINrdy), //one? CLKx4 after inp_request_trig_out
  .getDataTrig   (getDataTrig), 
  .EDATA_OUT     (ENC_EDATA_OUT_2bit), 
  .rst           (rst), 
  .bitCLK        (bitCLK),  // runs the counters as a normal FIFO clk
  .bitCLKx4      (bitCLKx4),
  .swap_outbits  (1'b1), //No swap equal to 0
  .fhCR_REVERSE_10B(1'b1)//normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  ); 
  
  EMCI_Emulator Emulator( 
  .bitCLKx2         (bitCLKx2),
  .bitCLK           (bitCLK),
  .wrEn_dbg         (wrEn_dbg), 
  .efifoEmpty       (efifoEmpty), 
  .efifoFull         (efifoFull), 
  .din_dbg           (din_dbg),
  .dout_dbg         (ENC_EDATA_OUT_10bit),
  .rst              (rst), 
  .datain_valid     (~rst),
  .EDATA_2bit       (ENC_EDATA_OUT_2bit),
  .DATA1bitIN       (1'b0),
  .swap_input       (1'b1),//No swap equal to 0
  .efifoDout        (efifoDout),
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
  .clock_out(bitCLK)//Equivalent to the wr_clk
  );
  
  
  //Freq. gen_clk = Freq. bitCLKx4 / 8 [=20 MHz]
  clock_divider #(8) div_1(
  .clock_in(bitCLKx4),
  .clock_out(gen_clk)//Equivalent to rd_clk in the fifoTXelink_wrap Module
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
    GEN_EDATA_10bit = 10'b0;
    enable = 0;
    rst = 1'b1;
    #4 rst=!rst;
    #2;
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
