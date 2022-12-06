////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_pkg.sv
// Author       : Leduc
// Tool         : -
// Description  : Avalon Package containing all necessary files for Avalon Agent
// Commentary   : This package has been adjusted to fit with LT CAN Tester Example!
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 28.05.2020 | created
// -------------------------------------------------------------------------------------------------
// 1.1     | Leduc              | 22.06.2020 | Removed Environment, Sequence and Virtual Sequencer
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

//`include "avalon_virtual_sequencer.sv"

package avalon_pkg;

    import uvm_pkg::*;
    `include "uvm_macros.svh"

    // declare interface type to use the command 
    // avalon_vif_config instead of full config_db command (convenience)
    typedef uvm_config_db#(virtual avalon_if) avalon_vif_config;

    // enum types for easy avalon item configuration
    typedef enum bit       {WRITE_COMMAND = 1'b0, 
							READ_COMMAND  = 1'b1
							} command_t;
    typedef enum bit [4:0] {RECEIVE_DATA_BYTE_7_to_8	= 5'b00000,
							RECEIVE_DATA_BYTE_5_to_6	= 5'b00001,
							RECEIVE_DATA_BYTE_3_to_4	= 5'b00010,
							RECEIVE_DATA_BYTE_1_to_2	= 5'b00011,
							RECEIVE_IDENTIFIER_2		= 5'b00100,
							RECEIVE_IDENTIFIER_1		= 5'b00101,
							RECEIVE_CONTROL				= 5'b00110,
							TRANSMISSION_DATA_7_to_8	= 5'b00111,
							TRANSMISSION_DATA_5_to_6	= 5'b01000,
							TRANSMISSION_DATA_3_to_4	= 5'b01001,
							TRANSMISSION_DATA_1_to_2	= 5'b01010,
							TRANSMISSION_IDENTIFIER_2	= 5'b01011,
							TRANSMISSION_IDENTIFIER_1	= 5'b01100,
							TRANSMISSION_CONTROL		= 5'b01101,
							GENERAL						= 5'b01110,
							PRESCALER					= 5'b01111,
							ACCEPTIONMASK_2				= 5'b10000,
							ACCEPTIONMASK_1				= 5'b10001,
							INTERRUPT					= 5'b10010,
							CAN_ERROR_COUNT				= 5'b10011,
							SYSTEM_ID					= 5'b10100
							}	reg_t;	

	// needed for compilation order
	//typedef class avalon_virtual_sequencer;	

    // Files for Avalon Interface
    `include "avalon_item.sv"   
    `include "avalon_monitor.sv"
    `include "avalon_sequencer.sv"
   // `include "avalon_seqs.sv"  
    `include "avalon_driver.sv"
    `include "avalon_agent.sv"
 //   `include "avalon_env.sv"

	// should be part of top.sv
 //	`include "avalon_virtual_sequencer.sv"

endpackage : avalon_pkg