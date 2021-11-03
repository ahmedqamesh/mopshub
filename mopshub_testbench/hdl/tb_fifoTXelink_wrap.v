`resetall
`timescale 1ns/10ps
module tb_fifo_TXelink_wrap; 
  parameter DATA_WIDTH           =8;
  parameter Byte_OUT_WIDTH       = 10;
  //clks
  reg                            bitCLKx4;
  wire                           bitClk;
  wire                           genCLK;
  reg                            rst;
  
  wire [DATA_WIDTH-1:0]          GEN_EDATA_8bit;
  wire [1:0]                     delimeter;
  wire [Byte_OUT_WIDTH-1:0]      dout_efifo; 
  wire                           dout_rdy_efifo;
  reg                            rd_en;
  wire                           empty_efifo;
  wire                           rd_en_s;
  // Data Generator Signals
  wire                           done; 
  wire                           wr_en;
  reg                            enable; 
  
  assign rd_en_s = TXelink_wrap.rd_en_s;  
  // Instances 
  data_generator DataGEN(
  .clk_usr        (genCLK),
  .enable         (enable),
  .loop_en        (enable),
  .done           (done),
  .tx_fifo_pfull  (1'b0),
  .dout           (GEN_EDATA_8bit),
  .delimeter      (delimeter),
  .wr_en          (wr_en)
  );  
  
  fifo_TXelink_wrap_old TXelink_wrap( 
  .din            ({delimeter,GEN_EDATA_8bit}), 
  .flush_fifo     (rst), 
  .rd_clk         (bitCLKx4), 
  .rd_en          (rd_en), //Equivalent to getDataTrig
  .rst            (rst), 
  .bitClk         (bitClk), 
  .wr_en          (wr_en), 
  .dout_efifo     (dout_efifo), 
  .dout_rdy_efifo (dout_rdy_efifo), 
  .empty_efifo    (empty_efifo), 
  .full_efifo     (), 
  .prog_full      ()
  ); 
  
  
  // rd_clk from FIFO //160 Mb
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; 
  end
  
  //bitClk to FIFO 
  //Freq. bitClk = Freq. rd_clk / 4 [=40 MHz]
  clock_divider #(4) div_0(
  .clock_in(bitCLKx4),
  .clock_out(bitClk)//Equivalent to the bitCLK
  );
  
  
  //Generator clk 
  //Freq. gen_clk = Freq. rd_clk / 4 [=40 MHz]
  clock_divider #(4) div_1(
  .clock_in(bitCLKx4),
  .clock_out(genCLK)//Equivalent to the bitClk
  );
  
  initial 
  begin 
    rd_en= 0;
    enable = 0;
    rst = 1;
    #4 rst =0;
    enable =1;
  end
  //Generate enable signal 
  always@(GEN_EDATA_8bit)
  begin
    rd_en= 1; 
    #4//Should depend on the gen_clk 4 ns for one clk cycle which is twice the factor
    rd_en= 0;
  end 
  
  //Loop data Generation
  always@(done)
  begin
    enable =0;
    #16;
    enable =1;
  end  
endmodule
