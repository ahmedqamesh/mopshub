//
// Verilog Module mopshub_lib.tb_EPROC_IN2_DEC8b10b
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:54:06 04/06/21
//
// using Mentor Graphics HDL Designer(TM) 2018.1 (Build 12)
//

`resetall
`timescale 1ns/10ps
module tb_EPROC_IN_DEC8b10b ;
  
  // Port Declarations
  reg           rst; 
  reg           bitCLKx4;
  wire          bitCLK;     //bitCLK to send the 2bits EdataOUT [clk_40 MB/s]
  wire          genCLK;
  
  wire  [7:0]   GEN_EDATA_8bit;
  wire  [1:0]   delimeter;
  reg   [9:0]   GEN_EDATA_10bit; // 10 bits input code+data
  wire  [7:0]   DEC_EDATA_8bit;
  wire  [1:0]   ISK;
  wire          align_select;
  wire  [4:0]   alignment_sreg;
  
  wire  [9:0]   DATA_OUT_dbg;
  wire          DATA_RDY ;
  wire  [9:0]   enc10bit_r;
  
  //EPROC OUT ENC8b10b Signals
  wire  [1:0]   ENC_EDATA_OUT_2bit;
  wire          getDataTrig;
  reg           dataINrdy;
  reg           enable;
  //Data generator Signals
  wire          done; 
  wire          wr_en;
  
  assign alignment_sreg   = DEC8b10b.alignment_sreg;
  assign align_select     = DEC8b10b.align_select;
  assign enc10bit_r = ENC8b10b.enc10bit_r;
  data_gen_elink DataGEN(
  .clk_usr          (genCLK),
  .enable           (enable),
  .loop_en          (~rst),
  .done             (done),
  .tx_fifo_pfull    (1'b0),
  .dout             (GEN_EDATA_8bit),
  .delimeter        (delimeter),
  .wr_en            (wr_en)
  );
  
  elink_proc_out_enc8b10b ENC8b10b( 
  .rst              (rst), 
  .bitCLK           (bitCLK),  // runs the counters as a normal FIFO clk
  .bitCLKx4         (bitCLKx4),
  .EDATA_IN         (GEN_EDATA_10bit), 
  .EDATA_RDY        (dataINrdy), //one? CLKx4 after inp_request_trig_out
  .getDataTrig      (getDataTrig), 
  .EDATA_OUT        (ENC_EDATA_OUT_2bit), 
  .swap_outbits     (1'b0), //No swap equal to 0
  .fhCR_REVERSE_10B (1'b1)//normally it is equal to 0 (//LSB send first ) enc10bit_r = enc10bit
  ); 
  
  elink_proc_in_dec8b10b DEC8b10b(
  .bitCLK           (bitCLK),
  .bitCLKx4         (bitCLKx4),
  .rst              (rst),
  .HGFEDCBA         (DEC_EDATA_8bit),
  .ISK              (ISK),
  .DATA_IN          (ENC_EDATA_OUT_2bit),
  .DATA_OUT_dbg     (DATA_OUT_dbg),
  .DATA_RDY         (DATA_RDY),
  .swap_inputbits   (1'b0),
  .thCR_REVERSE_10B (1'b0)
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
  
  //Freq. gen_clk = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_1(
  .clock_in(bitCLKx4),
  .clock_out(genCLK)
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
