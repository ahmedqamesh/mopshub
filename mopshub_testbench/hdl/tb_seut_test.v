`resetall
`timescale 1ns/100ps
module tb_seu_test ;
  // Port Declarations
  reg          rst; 
  reg          clk_m;  //clk_enable [clk_enable MB/s]    
  wire seu_core_design_0_signal_mismatch;
  wire [7:0]seu_core_design_0_error_count;
  wire seu_core_design_0_error_signal;
  wire [7:0]seu_core_design_0_out_data_uart;
  wire seu_core_design_0_request_trig;
  
  seu_core_design seu_core_design_0
       (.clk(clk_m),
        .signal_mismatch(seu_core_design_0_signal_mismatch),
        .error_count(seu_core_design_0_error_count),
        .error_signal(seu_core_design_0_error_signal),
        .inject_error(1'b0),
        .out_data_uart(seu_core_design_0_out_data_uart),
        .request_trig(seu_core_design_0_request_trig),
        .rst(rst));
  
// clocks
  initial begin 
    clk_m=0;
    forever #(1) clk_m=~clk_m; //Equivalent to the rd_clk
  end
  initial 
  begin
    rst = 1'b0;
    #10 rst=!rst;
  end
endmodule
