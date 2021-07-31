//
// Verilog Module mopshub_lib.bit_shifter
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:29:29 07/26/21
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module bit_shifter#(
  // synopsys template
  parameter bit_size = 32
  )
  ( 
  // Port Declarations
  input   wire                    ext_rst, 
  input   wire                    rst, 
  input   wire                    data_bit, 
  output  wire    [bit_size-1:0]  data_out, 
  input   wire                    clk, 
  input   wire                    cnt_enable
  );
  
  // Internal Declarations
  reg [bit_size-1:0] data_out_reg;
  assign data_out = data_out_reg ;
  
  always @(posedge clk)
  if (!rst | ext_rst) 
  begin
    data_out_reg <= 32'b1 ; 
  end 
  else 
  begin
    if (cnt_enable) 
    begin
      data_out_reg <= {data_out_reg[bit_size-2:0],data_bit};
      data_out_reg[0]  <=  data_out_reg[31];
    end
    else
    data_out_reg <= data_out_reg;
  end
  
endmodule 