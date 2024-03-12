//
// Verilog Module mopshub_testbench.mopshub_tb_uartframe_generator
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 16:02:15 02/28/24
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module mopshub_tb_uartframe_generator#(
   parameter c_CLKS_PER_BIT = 87
)(
   input   wire            rst, 
   input   wire            clk,  
   input   wire            clk_uart,  
   output  wire            out_tx_serial, 
   input   wire            in_rx_serial

);
reg            in_rx_serial_dbg = 1;

// Internal Declarations



wire  [7:0]  statedeb_spi                = 8'h1A;     // debug signal from SPI SM
wire  [7:0]  statedeb_can                = 8'hF;      // debug signal from CAN SM
wire  [7:0]  statedeb_elink_rec          = 8'hE;      // debug signal from elink receiver SM
wire  [7:0]  statedeb_elink_tra          = 8'hD;      // debug signal from elink transmission SM
wire  [7:0]  statedb_can_mux             = 8'hC;      // debug signal from CAN Multiplexer SM
wire  [7:0]  statedeb_osc_trim           = 8'hB;      // debug signal from trimming SM
wire  [7:0]  statedeb_main               = 8'hA;      // debug signal from top SM
wire  [7:0]  dec10b_in_dbg               = 8'h1B;
wire  [7:0]  register_status;
wire         w_tx_done;
wire         out_rx_dv_dbg;
wire  [7:0]  out_rx_byte_dbg;

assign w_tx_done = mopshub_tb_uart_generator0.w_tx_done;
assign register_status = mopshub_tb_uart_generator0.register_status;

// Instances 
debug_uart_core #(c_CLKS_PER_BIT) mopshub_tb_uart_generator0( 
   .clk_40                 (clk), 
   .clk_uart               (clk_uart), 
   .counter_code_err       (), 
   .counter_dec10b_in_rdy  (), 
   .counter_disp_err       (), 
   .counter_enc10b_out_rdy (), 
   .counter_rst_mopshub    (), 
   .data13                 (), 
   .data14                 (), 
   .dec10b_in_dbg          (dec10b_in_dbg), 
   .in_rx_serial           (in_rx_serial_dbg), 
   .rst                    (rst), 
   .statedb_can_mux        (statedb_can_mux), 
   .statedeb_can           (statedeb_can), 
   .statedeb_elink_rec     (statedeb_elink_rec), 
   .statedeb_elink_tra     (statedeb_elink_tra), 
   .statedeb_main          (statedeb_main), 
   .statedeb_osc_trim      (statedeb_osc_trim), 
   .statedeb_spi           (statedeb_spi), 
   .out_tx_serial          (out_tx_serial)
); 


debug_uart_receiver debug_uart_receiver0( 
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
        in_rx_serial_dbg = 0; 
        #BAUD_TICKS;
        //#1000;
        for (int j = 0; j < 8; j++ ) begin
            // Data bit
            in_rx_serial_dbg = data[i][j];
            #BAUD_TICKS;
        end
        // Stop bit
        in_rx_serial_dbg = 1;
        #BAUD_TICKS;
      // Check that the correct command was received
      if (register_status == 8'hA||8'hB||8'hC||8'hD||8'hE || 8'hF || 8'h1A ||8'h1B)
        $display("Test %h Passed - Correct Byte Received",register_status);
      else
        $display("Test %h Failed - Incorrect Byte Received",register_status);
    end

endtask

endmodule
