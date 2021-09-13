////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_agent.sv
// Author       : Leduc
// Tool         : -
// Description  : UVM Agent for Avalon Interface of the Canakari
// Commentary   : 
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 02.06.2020 | created
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

class avalon_agent extends uvm_agent;

// uvm_active_passive_enum is_active = UVM_ACITVE

    avalon_monitor     monitor;
    avalon_sequencer   sequencer;
    avalon_driver      driver;

    // macros
    `uvm_component_utils_begin(avalon_agent)
        `uvm_field_enum(uvm_active_passive_enum, is_active, UVM_ALL_ON)
    `uvm_component_utils_end

    // constructor
    function new (string name, uvm_component parent);
        super.new (name, parent);
    endfunction : new

    // UVM build phase
    function void build_phase (uvm_phase phase);
        super.build_phase(phase);
        monitor = avalon_monitor::type_id::create("monitor", this);
        if (is_active == UVM_ACTIVE) begin
            sequencer = avalon_sequencer::type_id::create("sequencer", this);
            driver = avalon_driver::type_id::create("driver", this);
        end 
    endfunction : build_phase

    // UVM connect phase
    function void connect_phase (uvm_phase phase);
        if(is_active == UVM_ACTIVE) begin
            driver.seq_item_port.connect(sequencer.seq_item_export);
        end
    endfunction : connect_phase

    function void start_of_simulation_phase (uvm_phase phase);
        `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH)
    endfunction : start_of_simulation_phase

endclass : avalon_agent
