`resetall
`timescale 1ns/10ps
module tb_fifo_downstream ;
  
  parameter DATA_WIDTH=10;
  
  reg rd_en,rd_clk;
  wire wr_clk;
  reg rst;

  wire [8-1:0]          GEN_EDATA_8bit;
  wire [1:0]            delimeter;  
  wire [DATA_WIDTH-1:0] FIFO_EDATA_10bit;
  wire almost_full,full,empty;
  wire prog_full;
  wire done;          
  wire wr_en;
  reg enable;
  
  fifo_downstream #(10)FIFOdownstream(
                        .dout       (FIFO_EDATA_10bit),
                        .full       (full),
                        .empty      (empty),
                        .prog_full  (prog_full),
                        .almost_full(almost_full),
                        .din        ({delimeter,GEN_EDATA_8bit}),
                        .rd_en      (rd_en),
                        .wr_en      (wr_en),
                        .rd_clk     (rd_clk),
                        .wr_clk     (wr_clk),
                        .rst        (rst));
  
  data_gen_elink DataGEN(
                        .clk_usr      (wr_clk),
                        .enable       (enable),
                        .loop_en      (enable),
                        .done         (done),
                        .tx_fifo_pfull(1'b0),
                        .dout         (GEN_EDATA_8bit),
                        .delimeter    (delimeter),
                        .wr_en        (wr_en)); 
                        
  //clocks
  initial begin 
    rd_clk=0; 
    forever #1 rd_clk=~rd_clk; 
  end
  
  //Wr_clk to FIFO 
  //Freq. Wr_clk = Freq. rd_clk / 4 [=40 MHz]
  clock_divider #(4) div_0(
  .clock_in(rd_clk),
  .clock_out(wr_clk) //Equivalent to Gen_clk
  );
  
  initial 
  begin 
    rd_en= 0;
    enable = 0;
    rst=1;
    #1 rst=0;
    enable = ~rst;    
  end   
  //Generate enable signal 
  always@(GEN_EDATA_8bit)
  begin 
    rd_en= 0;
    #1;
    rd_en= 1;
  end
  
  
  
endmodule