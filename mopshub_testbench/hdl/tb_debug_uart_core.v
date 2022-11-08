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
  parameter c_CLOCK_PERIOD_NS = 100;
  parameter c_CLKS_PER_BIT    = 87;
  parameter c_BIT_PERIOD      = 8600;
  wire             clk;
  reg              rst   = 1'b0;  
  reg             r_Clock = 0;
  reg   [7:0]     in_tx_byte = 0;
  reg             in_tx_dv = 0;
  wire            w_tx_done;
  wire            out_tx_serial;

  reg in_rx_serial = 1;
  wire [7:0] out_rx_byte;

 
  // Takes in input byte and serializes it 
  task UART_WRITE_BYTE;
    input [7:0] i_Data;
    integer     ii;
    begin
       
      // Send Start Bit
      in_rx_serial <= 1'b0;
      #(c_BIT_PERIOD);
      #1000;
       
       
      // Send Data Byte
      for (ii=0; ii<8; ii=ii+1)
        begin
          in_rx_serial <= i_Data[ii];
          #(c_BIT_PERIOD);
        end
       
      // Send Stop Bit
      in_rx_serial <= 1'b1;
      #(c_BIT_PERIOD);
     end
  endtask // UART_WRITE_BYTE
   
   debug_uart_core #(.CLKS_PER_BIT(c_CLKS_PER_BIT)) debug_uart_core0
    ( .clk(clk),
      .rst(rst),
      .clk_dbg(r_Clock),
     //tx part
     .in_tx_dv(in_tx_dv),
     .in_tx_byte(in_tx_byte),
     .w_tx_active(),
     .out_tx_serial(out_tx_serial),
     .w_tx_done(w_tx_done),
     //rx part
     .in_rx_serial(in_rx_serial),
     .out_rx_dv(),
     .out_rx_byte(out_rx_byte)
     );
 
   
   
  //Clock Generators and Dividers master
  clock_generator #(
  .freq(40))
  clock_generator0( 
  .clk  (clk), 
  .enable (1'b1)
  );    
  always
    #(c_CLOCK_PERIOD_NS/2) r_Clock <= !r_Clock;
 
   
  // Main Testing:
  initial
    begin
   /////******* Reset Generator task--low active ****/////
      begin
        rst = 1'b0;
        #10
        rst = 1'b1;
      end      
      // Tell UART to send a command (exercise Tx)
      @(posedge r_Clock);
      @(posedge r_Clock);
      in_tx_dv <= 1'b1;
      in_tx_byte <= 8'hAB;
      @(posedge r_Clock);
      in_tx_dv <= 1'b0;
      @(posedge w_tx_done);
       
      // Send a command to the UART (exercise Rx)
      @(posedge r_Clock);
      UART_WRITE_BYTE(8'h3F);
      @(posedge r_Clock);
             
      // Check that the correct command was received
      if (out_rx_byte == 8'h3F)
        $display("Test Passed - Correct Byte Received");
      else
        $display("Test Failed - Incorrect Byte Received");
       
    end
   
endmodule