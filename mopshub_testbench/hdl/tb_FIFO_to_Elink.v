`resetall
`timescale 1ns/10ps
module tb_FIFO_to_Elink ;
  parameter DATA_WIDTH=8;
  parameter DATA_OUT_WIDTH = 10;
  reg                            rst; 
  reg                            bitCLKx4;
  wire                           bitCLKx2;
  wire                           bitCLK; 
  wire                           genCLK;
    
  wire [DATA_WIDTH-1:0] GEN_EDATA_8bit;
  wire [1:0]            delimeter;
  wire [DATA_WIDTH-1:0] DEC_EDATA_OUT_8bit;
  wire [1:0]            ISK;
  //FIFO_to_Elink Signals
  wire                         DATA1bitOUT; 
  wire    [1:0]                elink2bit;
  
  wire           doutRdy;
  wire           getDataTrig;
  wire           DATA_RDY;
  wire           tx_fifo_pfull;
  wire           wr_en; 
  wire           done; 
  reg            enable;
  
  assign doutRdy = MUT.doutRdy;
  assign getDataTrig = MUT.efifoRE;
  
  data_gen_elink DataGEN(
  .clk_usr          (genCLK),
  .enable           (enable),
  .loop_en          (enable),
  .done             (done),
  .tx_fifo_pfull    (tx_fifo_pfull),
  .dout             (GEN_EDATA_8bit),
  .delimeter        (delimeter),
  .wr_en            (wr_en)
  );
  
  FIFO_to_Elink MUT(
  .wr_clk           (bitCLK),
  .bitCLKx2         (bitCLKx2),
  .bitCLKx4         (bitCLKx4),
  .rst              (rst),
  .fifo_flush       (rst),
  .efifoWr          (wr_en),
  .efifoDin         ({delimeter,GEN_EDATA_8bit}),
  .efifoPfull       (tx_fifo_pfull),
  .DATA1bitOUT      (DATA1bitOUT),
  .elink2bit        (elink2bit),
  .reverse_tx(1'b0),
  .swap_output(1'b0)
  );

   mopshub_decoder Emulator( 
  .bitCLKx4         (bitCLKx4),
  .bitCLKx2         (bitCLKx2),
  .bitCLK           (bitCLK),
  .rst              (rst), 
  .efifoRe          (), 
  .efifoEmpty       (), 
  .efifoFull        (), 
  .efifoDout        (),
  .EDATA_2bit       (elink2bit),
  .DATA1bitIN       (1'b0),
  .swap_input       (1'b0),
  .reverse_rx       (1'b0),
  .enc10bit_out_dbg (),
  .HGFEDCBA         (DEC_EDATA_OUT_8bit),
  .ISK(ISK),
  .datain_valid     (~rst),
  .data_10b_in      (10'b0),//{enc10bit_r[0],enc10bit_r[1],enc10bit_r[2],enc10bit_r[3],enc10bit_r[4],enc10bit_r[5],enc10bit_r[6],enc10bit_r[7],enc10bit_r[8],enc10bit_r[9]}), 
  .data_10b_en      (1'b0)
  );
//   
  //bitCLK to FIFO //40 Mb 
  //Freq. bitCLK = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_0(
  .clock_in(bitCLKx4),
  .clock_out(bitCLK)//Equivalent to the bitCLK
  );
  
  //Generator clk
  //Freq. genCLK = Freq. bitCLKx4 / 4 [=40 MHz]
  clock_divider #(4) div_1(
  .clock_in(bitCLKx4),
  .clock_out(genCLK)//Equivalent to the bitCLK
  );
  //Generator bitCLKx2 // 80 Mb
  //Freq. bitCLKx2 = Freq. bitCLKx4 / 2 [=80 MHz]
  clock_divider #(2) div_2(
  .clock_in(bitCLKx4),
  .clock_out(bitCLKx2)//Equivalent to the bitCLKx2
  );
  
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; //Equivalent to the bitCLKx4
  end
  
  initial 
  begin 
    rst = 1'b1;
    #10 rst=!rst;
  end 
  always@(done)
    begin
      enable =0;
      #16;
      enable =1;
    end
endmodule
