//////////////////////////////////////////////////////////////////////
// File Downloaded from http://www.nandland.com
//////////////////////////////////////////////////////////////////////
 
// This testbench will exercise both the UART Tx and Rx.
// It sends out byte 0xAB over the transmitter
// It then exercises the receive by receiving byte 0x3F
`timescale 1ns/10ps
module tb_debug_uart_core();

  // Testbench uses a 10 MHz clock
  // Want to interface to 115200 baud UART
  // 10000000 / 115200 = 87 Clocks Per Bit.
  parameter c_CLKS_PER_BIT    = 87;
  wire             clk_40;
  wire             clk_m;
  wire             clk_uart;
  reg              rst   = 1'b0;  
  wire   [7:0]     out_rx_byte_dbg;
  wire            out_rx_dv_dbg;
  wire            w_tx_done;
  wire            out_tx_serial;
  reg in_rx_serial = 1;
  wire [7:0] out_rx_byte;
assign out_rx_byte = debug_uart_core0.out_rx_byte;
assign w_tx_done = debug_uart_core0.w_tx_done;
   debug_uart_core #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) debug_uart_core0
    ( .clk_40(clk_40),
      .rstn(rst),
      .clk_uart(clk_uart),
     //tx part
     .out_tx_serial(out_tx_serial),
     //rx part
     .in_rx_serial(in_rx_serial),
    .statedeb_main(8'ha), 
    .statedeb_can(8'hb), 
    .statedb_can_mux (8'hc), 
    .statedeb_osc_trim (8'hd), 
     .statedeb_elink_tra(8'he), 
    .statedeb_elink_rec (8'hf), 
    .statedeb_spi(8'h1A));
 
 debug_uart_receiver #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) debug_uart_receiver0( 
   .i_Clock     (clk_uart), 
   .i_Rx_Serial (out_tx_serial), 
   .o_Rx_DV     (out_rx_dv_dbg), 
   .o_Rx_Byte   (out_rx_byte_dbg)
); 

  // Takes in input byte and serializes it 
  task automatic generate_uart_data(
    input byte data[$]
    );
    
    // Baud rate and Baud time ticks
    parameter real BAUD_RATE = 115200;
    parameter real BAUD_TICKS = $ceil((1 / BAUD_RATE)*1e9);  
    for (int i = 0; i < data.size(); i++) begin
        $display("Sent frame = %h", data[i]);
        // Start bit
        in_rx_serial = 0; 
        #BAUD_TICKS;
        //#1000;
        for (int j = 0; j < 8; j++ ) begin
            // Data bit
            in_rx_serial = data[i][j];
            #BAUD_TICKS;
        end
        // Stop bit
        in_rx_serial = 1;
        #BAUD_TICKS;
    end
endtask

  //Clock Generators and Dividers master
clock_generator #(
  .freq(160))
  clock_generator0( 
  .clk  (clk_m), 
  .enable (1'b1)
  ); 
  clock_divider #(28'd16)
  clock_divider0( 
  .clock_in  (clk_m), 
  .clock_out (clk_uart)
  );  
   
  clock_divider #(28'd4)
  clock_divider1( 
  .clock_in  (clk_m), 
  .clock_out (clk_40)
  ); 
  // Main Testing:
  initial
    begin
   /////******* Reset Generator task--low active ****/////
      begin
        rst = 1'b0;
        #10
        rst = 1'b1;
        generate_uart_data({8'h0,8'h1,8'h2,8'h3,8'h4,8'h5,8'h6,8'h7});    
      end        
      // Send a command to the UART (exercise Rx)
      @(posedge clk_uart);
      // Check that the correct command was received
      if (out_rx_byte == 8'h0||8'h1||8'h2||8'h3||8'h4 || 8'h5 || 8'h6 ||8'h7)
        $display("Test Passed - Correct Byte Received");
      else
        $display("Test Failed - Incorrect Byte Received");

    end
   
endmodule