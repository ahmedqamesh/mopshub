//
// Verilog Module mopshub_lib.node_rec_decoder
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 15:06:18 01/13/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module dec32_Nbit( 
  input   wire            clk, 
  input   wire            rst, 
  input   wire            Input0, 
  input   wire            Input1, 
  input   wire            Input2, 
  input   wire            Input3, 
  input   wire            Input4, 
  input   wire            Input5, 
  input   wire            Input6, 
  input   wire            Input7, 
  input   wire            Input8,    
  input   wire            Input9, 
  input   wire            Input10, 
  input   wire            Input11, 
  input   wire            Input12, 
  input   wire            Input13, 
  input   wire            Input14, 
  input   wire            Input15, 
  input   wire            Input16, 
  input   wire            Input17,    
  input   wire            Input18, 
  input   wire            Input19, 
  input   wire            Input20, 
  input   wire            Input21, 
  input   wire            Input22, 
  input   wire            Input23, 
  input   wire            Input24, 
  input   wire            Input25,
  input   wire            Input26, 
  input   wire            Input27, 
  input   wire            Input28, 
  input   wire            Input29, 
  input   wire            Input30, 
  input   wire            Input31, 
  output wire   [31:0]  data_tra_out
  
  );
  reg     [31:0]  output_bus_reg ;
  wire    [31:0]  irqsucrec_signals;
  initial output_bus_reg = 32'd0;
  assign    irqsucrec_signals[0] = Input0;
  assign    irqsucrec_signals[1] = Input1;
  assign    irqsucrec_signals[2] = Input2;
  assign    irqsucrec_signals[3] = Input3;
  assign    irqsucrec_signals[4] = Input4;
  assign    irqsucrec_signals[5] = Input5;
  assign    irqsucrec_signals[6] = Input6;
  assign    irqsucrec_signals[7] = Input7;
  assign    irqsucrec_signals[8] = Input8;   
  assign    irqsucrec_signals[9] = Input9;
  assign    irqsucrec_signals[10] = Input10;
  assign    irqsucrec_signals[11] = Input11;
  assign    irqsucrec_signals[12] = Input12;
  assign    irqsucrec_signals[13] = Input13;
  assign    irqsucrec_signals[14] = Input14;
  assign    irqsucrec_signals[15] = Input15;
  assign    irqsucrec_signals[16] = Input16;
  assign    irqsucrec_signals[17] = Input17;    
  assign    irqsucrec_signals[18] = Input18;
  assign    irqsucrec_signals[19] = Input19;
  assign    irqsucrec_signals[20] = Input20;
  assign    irqsucrec_signals[21] = Input21;
  assign    irqsucrec_signals[22] = Input22;
  assign    irqsucrec_signals[23] = Input23;
  assign    irqsucrec_signals[24] = Input24;
  assign    irqsucrec_signals[25] = Input25;
  assign    irqsucrec_signals[26] = Input26;
  assign    irqsucrec_signals[27] = Input27;
  assign    irqsucrec_signals[28] = Input28;
  assign    irqsucrec_signals[29] = Input29;
  assign    irqsucrec_signals[30] = Input30;
  assign    irqsucrec_signals[31] = Input31; 
assign data_tra_out = output_bus_reg;
  
always@(posedge clk )
begin 
 if(!rst)
  begin
    output_bus_reg <= 32'd0;
  end
 else output_bus_reg <= irqsucrec_signals; //fill the array with signals
end    
endmodule
  