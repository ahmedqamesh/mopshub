//
// Verilog Module mopshub_lib.seu_checker
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:09:18 06/16/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module seu_checker (
  input wire rst,
  input wire clk,
  input wire [4:0]data1,
  input wire [4:0]data2,
  input wire status_uncorrectable,
  //output wire uncorrectable_txwrite,
  //output wire [7:0] uncorrectable_count_txdata,
  output wire       error_count_txwrite,
  output wire [7:0] error_count_txdata
    );

reg   [7:0] error_cycle_cnt_reg;
reg uncorrectable_txwrite_reg;
reg error_count_txwrite_reg;
wire signal_mismatch;

initial error_cycle_cnt_reg = 8'b0;
initial error_count_txwrite_reg   = 1'b0;
initial uncorrectable_txwrite_reg = 1'b0;

 // Counter over the Clock signal
 always @(posedge clk)
  begin
    if (!rst) 
        begin
            error_cycle_cnt_reg     <= 8'b0;
            error_count_txwrite_reg <= 1'b0;
        end
    else
      begin
        if  (signal_mismatch == 1'b1) 
        begin
              error_cycle_cnt_reg     <= error_cycle_cnt_reg + 1'b1; 
              error_count_txwrite_reg <=1'b1;
         end     
        else  
        begin
              error_cycle_cnt_reg       <= error_cycle_cnt_reg;
              error_count_txwrite_reg   <=1'b0;
        end
      end
  end

  always @(posedge clk)
  begin
    if (!rst) uncorrectable_txwrite_reg <= 1'b0;
    else
      begin
        if  (status_uncorrectable == 1'b1) uncorrectable_txwrite_reg <= 1'b1;     
        else  uncorrectable_txwrite_reg <= 1'b0;
      end
   end 


     
assign signal_mismatch = (data1==data2) ? 1'b0 : 1'b1 ; 
assign error_count_txdata = (uncorrectable_txwrite_reg == 1'b1) ?  8'h1f :error_cycle_cnt_reg ;
assign error_count_txwrite = error_count_txwrite_reg;
//assign uncorrectable_txwrite = uncorrectable_txwrite_reg;

endmodule
