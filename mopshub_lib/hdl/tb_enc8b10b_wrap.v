//
// Verilog Module mopshub_lib.tb_enc8b10b_wrap
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 14:03:15 03/16/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_enc8b10b_wrap ;
  // Port Declarations
  
  
  
  reg [1:0] GEN_Code;
  reg   rst; 
  reg   bitCLKx4; 
  
  wire [9:0] ENC_EDATA_OUT_10bit;
  wire encDataOutrdy;
  
  
  wire [1:0] dataCode_s;
  wire [7:0]  byte;
  wire isk;
  
  wire [7:0]DEC_EDATA_OUT_8bit;
  wire ko;
  wire code_err;
  wire disp_err;
  
  //Data generator Signals
  reg         gen_clk;
  wire        done; 
  wire        wen;
  reg        dataINrdy;
  wire [17:0] GEN_EDATA_18bit;
  reg [7:0] GEN_EDATA_8bit;
  
  // Instances 
  assign dataCode_s = U_0.dataCode_s;  
  
  assign isk = U_0.isk;  
  assign byte= U_0.byte;
  
  enc8b10b_wrap U_0( 
  .dataIN        (GEN_EDATA_8bit), 
  .dataINrdy     (dataINrdy),
  .dataCode      (GEN_Code), 
  .encDataOut    (ENC_EDATA_OUT_10bit), 
  .encDataOutrdy (encDataOutrdy),
  .rst           (rst), 
  .clk           (bitCLKx4)
  ); 
  
  GBTX_Emulator U_1( 
  .ko          (ko), 
  .code_err    (code_err), 
  .disp_err   (disp_err), 
  .dataout      (DEC_EDATA_OUT_8bit), 
  .rst           (rst), 
  .EDATA_2bit    (), 
  .enc10bit_out_sig (), 
  .bitCLK        (bitCLKx4), 
  .data_10b_in       (ENC_EDATA_OUT_10bit), 
  .data_10b_en (1'b1),
  .datain_valid(~rst)
  );
  data_generator DataGEN(
  .clk_usr  (gen_clk),
  .enable   (~rst),
  .loop_en  (~rst),
  .done     (done),
  .tx_fifo_pfull(1'b0),
  .dout     (GEN_EDATA_18bit),
  .wen      (wen)
  );
  
  initial begin 
    bitCLKx4=0; 
    forever #1 bitCLKx4=~bitCLKx4; 
  end
  
  //Generator clk
  initial begin 
    gen_clk=0; 
    forever #1 gen_clk=~gen_clk; //Equivalent to rd_clk in the fifoTXelink_wrap Module
  end
  
  initial 
  begin
    //Intialise signals
    dataINrdy = 0;
    rst = 1'b1;
    #10 rst=!rst;
  end
  
  //initial 
  always@(GEN_EDATA_18bit)
  begin
    GEN_Code = GEN_EDATA_18bit[17:16];
    GEN_EDATA_8bit = GEN_EDATA_18bit[15:8];
    #3
    //Wait three clk cycles
    GEN_Code = GEN_EDATA_18bit[17:16];
    GEN_EDATA_8bit = GEN_EDATA_18bit[7:0];
  end

   always@(GEN_EDATA_8bit)
    begin
      dataINrdy= 0;
      #gen_clk;
      dataINrdy= 1;
    end          
endmodule