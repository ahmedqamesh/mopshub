//
// Verilog Module mopshub_lib.select_io_module_emci
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 20:01:48 03/03/22
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module select_io_module_emci(  
  input   wire           clk, 
  input   wire           clk_80, 
  input   wire           reset, 
  input   wire           rx_elink_n, 
  input   wire           rx_elink_p, 
  output  wire    [1:0]  rx_elink2bit, 
  input   wire    [1:0]  tx_elink2bit,
  output  wire           tx_elink_p,
  output  wire           tx_elink_n
  );
  wire def_value = 1'b0;
  wire en_value = 1'b1;
  wire           tx_elink1bit;
  wire           rx_elink1bit;
  //define the output rx Signal
  ISERDESE3 #(
  .DATA_WIDTH(2),                 // Parallel data width (4,8)
  .FIFO_ENABLE("FALSE"),          // Enables the use of the FIFO
  .FIFO_SYNC_MODE("FALSE"),       // Always set to FALSE. TRUE is reserved for later use.
  .IS_CLK_B_INVERTED(1'b0),       // Optional inversion for CLK_B
  .IS_CLK_INVERTED(1'b0),         // Optional inversion for CLK
  .IS_RST_INVERTED(1'b0),         // Optional inversion for RST
  .SIM_DEVICE("ULTRASCALE_PLUS")  // Set the device version for simulation functionality (ULTRASCALE,
  // ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1, ULTRASCALE_PLUS_ES2)
  )
  ISERDESE3_inst (
  .FIFO_EMPTY(),           // 1-bit output: FIFO empty flag
  .INTERNAL_DIVCLK(), // 1-bit output: Internally divided down clock used when FIFO is
  // disabled (do not connect)
  .Q(rx_elink2bit),                 // 8-bit registered output
  .CLK(clk_80),                         // 1-bit input: High-speed clock
  .CLKDIV(clk),                   // 1-bit input: Divided Clock
  .CLK_B(!clk_80),                     // 1-bit input: Inversion of High-speed clock CLK
  .D(rx_elink1bit),                             // 1-bit input: Serial Data Input
  .FIFO_RD_CLK(clk_80),         // 1-bit input: FIFO read clock
  .FIFO_RD_EN(en_value),           // 1-bit input: Enables reading the FIFO when asserted
  .RST(reset)                          // 1-bit input: Asynchronous Reset
  );
  
  // End of ISERDESE3_inst instantiation
  //			
  
  //define the output tx Signal
  OSERDESE3 #(
  .DATA_WIDTH(2),                 // Parallel Data Width (4-8)
  .INIT(1'b0),                    // Initialization value of the OSERDES flip-flops
  .IS_CLKDIV_INVERTED(1'b0),      // Optional inversion for CLKDIV
  .IS_CLK_INVERTED(1'b0),         // Optional inversion for CLK
  .IS_RST_INVERTED(1'b0),         // Optional inversion for RST
  .SIM_DEVICE("ULTRASCALE_PLUS")  // Set the device version for simulation functionality (ULTRASCALE,
  // ULTRASCALE_PLUS, ULTRASCALE_PLUS_ES1, ULTRASCALE_PLUS_ES2)
  )
  OSERDESE3_inst (
  .OQ(tx_elink1bit),         // 1-bit output: Serial Output Data
  .T_OUT(),   // 1-bit output: 3-state control output to IOB
  .CLK(clk_80),       // 1-bit input: High-speed clock
  .CLKDIV(clk), // 1-bit input: Divided Clock
  .D(tx_elink2bit),           // 8-bit input: Parallel Data Input
  .RST(reset),       // 1-bit input: Asynchronous Reset
  .T(def_value)            // 1-bit input: Tristate input from fabric
  );
  
  // End of OSERDESE3_inst instantiation
  
  //brign the differential signals
  
  OBUFDS edout_buf (
  .I (tx_elink1bit),
  .O (tx_elink_p),
  .OB(tx_elink_n)
  );
  
  
  
  //edin buffer [Differential Input Buffer Primitives]
  IBUFDS edin_buf (
  .I (rx_elink_p),
  .IB(rx_elink_n),
  .O (rx_elink1bit)
  );
  
  

endmodule
