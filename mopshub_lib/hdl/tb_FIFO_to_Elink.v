//
// Verilog Module mopshub_lib.tb_FIFO_to_Elink
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 12:41:49 03/19/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_FIFO_to_Elink ;
  parameter DATA_WIDTH=18;
  parameter DATA_OUT_WIDTH = 10;
  reg                            rd_clk;
  reg                            wr_clk; 
  reg                            rst; 
  //FIFO_to_Elink Signals
  wire                         DATA1bitOUT; 
  wire    [1:0]                elink2bit; 
  
  //encoder Signals
  wire [1:0] dout2bit;
  //FIFO Signals
  wire [DATA_OUT_WIDTH-1:0] Dout;
  wire doutRdy;
  wire getDataTrig;
  //data Genrator Signal
  reg                            gen_clk;
  wire done;          
  wire [DATA_WIDTH-1:0] GEN_EDATA_10bit;
  wire wen; //wr_en signal
  
  //GBTX Emulator Signals
  wire [7:0] DEC_EDATA_OUT_8bit;
  wire [9:0] ENC_EDATA_OUT_10bit;
  wire ko;
  wire code_err;
  wire disp_err;
  
  
  assign Dout = MUT.efifoDout;
  assign doutRdy = MUT.doutRdy;
  assign getDataTrig = MUT.efifoRE;
  
  data_generator DataGEN(
  .clk_usr          (gen_clk),
  .enable           (~rst),
  .loop_en          (~rst),
  .done             (done),
  .tx_fifo_pfull    (1'b0),
  .dout             (GEN_EDATA_10bit),
  .wen              (wen)
  );
  
  
  FIFO_to_Elink MUT(
  .clk_usr          (wr_clk),
  .clk_80           (rd_clk),
  .rst              (rst),
  .fifo_flush       (rst),
  .efifoWe          (wen),
  .efifoDin         (GEN_EDATA_10bit),
  .efifoPfull       (),
  .DATA1bitOUT      (DATA1bitOUT),
  .elink2bit        (elink2bit)
  );
  
  
  GBTX_Emulator U_1( 
  .ko               (ko), 
  .code_err         (code_err), 
  .disp_err         (disp_err), 
  .rst              (rst), 
  .bitCLK           (wr_clk),
  .dataout          (DEC_EDATA_OUT_8bit), 
  .enc10bit_out_sig (ENC_EDATA_OUT_10bit),
  .EDATA_2bit       (elink2bit),
  .datain_valid     (~rst),
  .data_10b_in      (), 
  .data_10b_en      ()
  );
  
  //initial #5000 $stop;
  //Wr_clk to FIFO //40 Mb
  initial begin 
    wr_clk=0; 
    forever #2 wr_clk=~wr_clk; 
  end 
  
  //Generator clk // 80 Mb
  initial begin 
    gen_clk=0; 
    forever #3 gen_clk=~gen_clk; 
  end
  
  // rd_clk from FIFO //160 Mb
  initial begin 
    rd_clk=0; 
    forever #0.5 rd_clk=~rd_clk; 
  end
  
  initial 
  begin 
    //rst module
    rst = 1;
    #10 rst =0;
  end 
  
  
endmodule
