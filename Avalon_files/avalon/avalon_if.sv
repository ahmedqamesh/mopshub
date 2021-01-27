////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_if.sv
// Author       : Leduc
// Tool         : -
// Description  : Virtual Interface for Avalon Interface of the Canakari
// Commentary   : The data reads in collect_item task are from logic to bit, keep in mind X and Z
//                values are converted to 0. Additionally the adress is checked in type cast for
//                correct enum value i.e. valid adress.
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 02.06.2020 | created
// -------------------------------------------------------------------------------------------------
// 1.1     | Leduc              | 25.06.2020 | rewrote class for hard reset compatibility
// -------------------------------------------------------------------------------------------------
// 1.2     | Leduc              | 29.06.2020 | included data read back in sent_to_dut task
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

interface avalon_if (input clock, input reset );
//timeunit 1ns;
//timeprecision 100ps;

import uvm_pkg::*;
`include "uvm_macros.svh"

import avalon_pkg::*;

  // Actual Signals
  logic [ 4:0]  in_adress;
  logic [15:0]  in_writedata;
  logic [15:0]  out_readdata;
  logic         in_read_n;
  logic         in_write_n;
  logic         in_cs;

  // flags to activate transaction recording
  bit monstart, drvstart;
  
  // reset task 
  task avalon_reset();
    @(negedge reset);         // low active
    in_adress       <= 5'b0000_0;
    in_writedata    <= 16'h0000;
    in_read_n         <= 1'b1;  // low active
    in_write_n        <= 1'b1;  // low active
    in_cs           <= 1'b0;
    disable send_to_dut;      // disable send task
    //disable collect_item;
  endtask   

  // BFM task: gets item and drives it on interface
  task send_to_dut(input  reg_t       addr,
                          bit         read_n,
                          bit         write_n,
                          int         delay,
                          bit [15:0]  writedata,
                   output bit [15:0]  readdata);

    `uvm_info("Avalon_if: send_to_dut:", "Sending data", UVM_HIGH)                

    // Start transmission on pos clock
    @(posedge clock);

    // Enable flag for transaction recording
    drvstart = 1'b1;

    // Drive the interface signals
    in_adress     <= addr;
    in_writedata  <= writedata;
    in_read_n     <= read_n;
    in_write_n    <= write_n;
    in_cs 			  <= 1'b0;

    // Drive cs for DUT data transfer
    @(posedge clock);
    in_cs <= 1'b1;  

    // Return control signals to default
    @(posedge clock)
    // in_adress       <= 5'b0000_0;
    // in_writedata    <= 16'h0000;
    in_read_n         <= 1'b1;        // low active
    in_write_n        <= 1'b1;        // low active
    in_cs             <= 1'b0;
    
    // Read data in case of READ_COMMAND
    if (read_n == 1'b0) begin
      if ($isunknown(out_readdata)) begin 
        `uvm_fatal ("avalon_if: send_to_dut:", "$isunknown(out_readdata) call failed - maybe X or Z values")
        end
      else begin
        readdata <= out_readdata;
      end
    end

    // Wait for item delay before next transaction
    repeat(delay)
    @(posedge clock);

    // Reset flag for transaction recording
    drvstart = 1'b0;

  endtask : send_to_dut

  // Collects BFM transmission from interface
  task collect_item(output  reg_t       addr,
                            bit         read_n,
                            bit         write_n,
                            int         delay,
                            bit [15:0]  writedata,
                            bit [15:0]  readdata);

    //@(posedge in_cs);   // wait on cs from driver
    //@(posedge clock);   // wait on next pos clock

    @(negedge clock iff (in_cs == 1'b1))  // config later for readdata

    `uvm_info("avalon_if: collect_item:", "Collecting data", UVM_LOW)

    // trigger for transaction recording
    monstart = 1'b1;

    // Read item data values   
    writedata  = in_writedata;
    read_n     = in_read_n;
    write_n    = in_write_n;   
    //addr       = reg_t'(in_adress);	
    
    // explicit type cast for address
    if (!$cast(addr, in_adress))
          `uvm_fatal ("avalon_if:", "$cast(addr, in_adress) call failed")

    // collect readdata
    if ($isunknown(out_readdata)) begin 
      `uvm_fatal ("avalon_if: collect_item:", "$isunknown(out_readdata) call failed - maybe X or Z values")
      end
    else begin
      readdata <= out_readdata;
    end

    // reset flag for transaction recording
    monstart = 1'b0;

  endtask : collect_item  

endinterface : avalon_if