////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : debug_if.sv
// Author       : Leduc
// Tool         : -
// Description  : Virtual Interface for the debug signals of the Canakari
// Commentary   : 
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 11.07.2020 | created
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

interface debug_if (input clock, input reset );
//timeunit 1ns;
//timeprecision 100ps;

//import uvm_pkg::*;
//`include "uvm_macros.svh"

    // Actual Signals
    logic       out_irq;
    logic       out_irqstatus;
    logic       out_irqsuctra;
    logic       out_irqsucrec;
    logic       out_Prescale_EN_debug;
    logic [7:0] out_statedeb;
    logic [6:0] out_bitst;

// wait for state
task wait_for_status( input byte waitstatus);
    begin
       // `uvm_info("debug_if", "Executing task wait_for_status", UVM_LOW)
        wait(out_statedeb == waitstatus);
    end
endtask : wait_for_status

// wait for complete hard reset
task wait_for_reset;
    begin
       // `uvm_info("debug_if", "Executing task wait_for_reset", UVM_LOW)
        @(negedge reset)
		@(posedge reset)
		//`uvm_info("debug_if", "Dropped reset detected: Continue Simulation", UVM_LOW)
    end
endtask : wait_for_reset

endinterface : debug_if