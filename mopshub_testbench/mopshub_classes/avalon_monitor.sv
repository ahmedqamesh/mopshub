////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_driver.sv
// Author       : Leduc
// Tool         : -
// Description  : UVM Monitor of Agent for Avalon Interface of the Canakari
// Commentary   : (posedge vif.monstart) not working, fixed with recording always turned on during
//                collect_item.
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 02.06.2020 | created
// -------------------------------------------------------------------------------------------------
// 1.1     | Leduc              | 25.06.2020 | rewrote class for hard reset compatibility
// -------------------------------------------------------------------------------------------------
// 1.2     | Leduc              | 29.06.2020 | included collection of readdata in task
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

class avalon_monitor extends uvm_monitor;

    virtual interface avalon_if vif;

    // Collected Data handle
    avalon_item ami;

    // Count items collected
    int num_item_col;

    // macros
    `uvm_component_utils(avalon_monitor)

    // constructor
    function new (string name, uvm_component parent);
        super.new(name, parent);
    endfunction : new

	// UVM Connect Phase
	function void connect_phase (uvm_phase phase);
		if (!avalon_vif_config::get(this, get_full_name(),"vif", vif))
			`uvm_error("NOVIF", {"virtual interface must be set for: ", get_full_name(), ".vif"})
	endfunction : connect_phase

    // UVM start of simulation phase
    function void start_of_simulation_phase (uvm_phase phase);
        `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH)
    endfunction : start_of_simulation_phase

    // UVM run phase
    task run_phase (uvm_phase phase);
		// Look for items after hard reset
		@(negedge vif.reset)
		@(posedge vif.reset)
		`uvm_info(get_type_name(), "Dropped reset detected: Avalon monitor activated", UVM_LOW)

		forever begin 	  
		    ami = avalon_item::type_id::create("ami", this);  // Create collected item instance	 

            fork    
              void'(begin_tr(ami, "Monitor_avalon_item"));    
		      vif.collect_item(ami.addr, ami.read_n, ami.write_n, ami.delay, ami.writedata, ami.readdata);   
              //@(posedge vif.monstart) void'(begin_tr(ami, "Monitor_avalon_item"));
            join

		    derive_command_type();  // derive command type 		  
		    end_tr(ami);            // end transaction recording

		    `uvm_info(get_type_name(), $sformatf("Item Collected :\n%s", ami.sprint()), UVM_HIGH)
		    num_item_col++;              // count items
		end

    endtask : run_phase

    // Derive command type from rw signals
    task derive_command_type();
        if (ami.write_n == 1'b0 && ami.read_n == 1'b1) 
            ami.command_type = WRITE_COMMAND;
        else if (ami.write_n == 1'b1 && ami.read_n == 1'b0)
            ami.command_type = READ_COMMAND;  
    endtask : derive_command_type

    // UVM report_phase
    function void report_phase(uvm_phase phase);
      `uvm_info(get_type_name(), $sformatf("Report: avalon Monitor Collected %0d items", num_item_col), UVM_LOW)
    endfunction : report_phase

endclass : avalon_monitor
