////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_sequencer.sv
// Author       : Leduc
// Tool         : -
// Description  : Sequencer of UVM Agent for Avalon Interface of the Canakari
// Commentary   : 
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 02.06.2020 | created
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

class avalon_sequencer extends uvm_sequencer #(avalon_item);

    //macros
    `uvm_component_utils(avalon_sequencer)

    // constructor
    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

    function void start_of_simulation_phase (uvm_phase phase);
        `uvm_info(get_type_name(), {"Start of simulation for ", get_full_name()}, UVM_HIGH)
    endfunction : start_of_simulation_phase

endclass : avalon_sequencer