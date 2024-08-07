//
// Verilog Module mopshub_testbench.tb_reconfig_core
//
// Created:
//          by - dcs.dcs (chipdev2.physik.uni-wuppertal.de)
//          at - 08:58:04 06/06/23
//
// using Mentor Graphics HDL Designer(TM) 2019.4 (Build 4)
//

`resetall
`timescale 1ns/10ps
module tb_reconfig_core ;
  logic clk,clk_40;
  reg rstn;
  logic uart_tx;
  wire data_received_elink;
  wire [7:0] data_rx_elink;
  wire [7:0] address_elink;
  wire uart_new_data_rx;
  wire [7:0] uart_data_rx;
  
  reconfig_mopshub_core reconfig_mopshub_core0 (
    .clk(clk),
    .clk_40(clk_40),
    .rstn(rstn),
    .data_rx(uart_data_rx),
    .new_data_rx(uart_new_data_rx),
    .data_received_elink(data_received_elink),
    .data_rx_elink(data_rx_elink),
    .address_elink(address_elink),
    .address(),
    .data(),
    .data_received()
  );
uart_interface uart_interface0(
    .clk(clk),
    .rstn(rstn),
    .uart_txd_in(uart_tx),
    .new_data_tx(), //Ready for transmission
    .data_tx(), //Data for transmission
    .uart_rxd_out(),
    .busy(),
    .new_data_rx(uart_new_data_rx), //Data received
    .data_rx(uart_data_rx) //Received data 
);


  task automatic generate_uart_data(
    input byte data[$]
    );
    
    // Baud rate and Baud time ticks
    parameter real BAUD_RATE = 100000;// 115200;
    parameter real BAUD_TICKS = $ceil((1 / BAUD_RATE)*1e9);  
    for (int i = 0; i < data.size(); i++) begin
//    foreach (data[i][j]) begin
        $display("frame = %h", data[i]);
        // Start bit
        uart_tx = 0; 
        #BAUD_TICKS;
        for (int j = 0; j < 8; j++ ) begin
            // Data bit
            uart_tx = data[i][j];
            #BAUD_TICKS;
        end
        // Stop bit
        uart_tx = 1;
        #BAUD_TICKS;
    end
  endtask

  task automatic generate_uart_bitstream(
    input byte addr,
    input byte bitstream_frame[$]
    );
    parameter byte flag = 8'h7E;
     // Calculate data length
    automatic byte frame_len = bitstream_frame.size();
    // Concatenate data to form frame
    automatic byte frame[$] = {flag, addr, frame_len, bitstream_frame, flag};
    generate_uart_data(frame);
  endtask
  
    
 task assemble_message(
  input byte addr,
  input byte data[$]
  );
    parameter byte flag = 8'h7E;
    automatic byte bitstream_frame[$];
     // Calculate data length
    automatic byte data_len = data.size();
    // Concatenate data to form frame
    automatic byte frame[$] = {flag, addr, data_len, data, flag};
    for (int i = 0; i < data.size(); i++) begin
      for (int j = 0; j < 100; j++ )begin 
        bitstream_frame[i+j] = data[i];
      end 
    end
    
    generate_uart_bitstream(.addr(addr),.bitstream_frame({bitstream_frame,8'hDE, 8'hAD}));
    //generate_uart_data(frame);
      
endtask
    
clock_generator #(
  .freq(160))
  clock_generator0( 
  .clk  (clk_m), 
  .enable (1'b1)
  ); 
  clock_divider #(28'd16)
  clock_divider0( 
  .clock_in  (clk_m), 
  .clock_out (clk)
  );  
   
  clock_divider #(28'd4)
  clock_divider1( 
  .clock_in  (clk_m), 
  .clock_out (clk_40)
  );       
initial begin
    
    rstn = 0;
    #10;
    rstn = 1;
    $display("Starting testbench...");
//    assemble_message(.addr(8'h00), .data({8'h01, 8'h7E, 8'h02, 8'h7E, 8'h7E}));
//    assemble_message(.addr(8'h00), .data({8'hBB, 8'hCC, 8'hDD}));
    assemble_message(.addr(8'h00), .data({8'hAA, 8'h99, 8'h55, 8'h66}));
    //assemble_message(.addr(8'h00), .data({8'hff}));
    //assemble_message(.addr(8'h00), .data({8'hff})); 
    //assemble_message(.addr(8'h01), .data({8'h04}));
    //assemble_message(.addr(8'h00), .data({8'h01, 8'h7E, 8'h02, 8'h7E, 8'h7E}));
   // #1000;

    $display("Finished testbench.");
   //$finish();
 end
 
endmodule
