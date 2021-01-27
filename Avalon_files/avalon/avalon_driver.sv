////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_driver.sv
// Author       : Leduc
// Tool         : -
// Description  : Driver of UVM Agent for Avalon Interface of the Canakari
// Commentary   : The driver itself only starts working after a hard reset ont the interface, see
//                beginning of get_and_drive task.
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 02.06.2020 | created
// -------------------------------------------------------------------------------------------------
// 1.1     | Leduc              | 25.06.2020 | rewrote class for hard reset compatibility
// -------------------------------------------------------------------------------------------------
// 1.2     | Leduc              | 29.06.2020 | implemented bi-directional driver functionality
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

class avalon_driver extends uvm_driver #(avalon_item);

    // avalon_item req // built in

    // Property to count items sent
    int num_sent;

	virtual interface avalon_if vif;

    // Macros
    `uvm_component_utils_begin(avalon_driver)
		`uvm_field_int(num_sent, UVM_ALL_ON)
	`uvm_component_utils_end

    // Constructor
     function new(string name, uvm_component parent);
        super.new(name, parent);
     endfunction : new

	// UVM Connect Phase
	function void connect_phase (uvm_phase phase);
		if (!avalon_vif_config::get(this, get_full_name(),"vif", vif))
			`uvm_error("NOVIF", {"virtual interface must be set for: ", get_full_name(), ".vif"})
	endfunction : connect_phase

    // UVM start of simulation phase
    function void start_of_simulation_phase(uvm_phase phase);
        `uvm_info(get_type_name(), {"start of simulation for ", get_full_name()}, UVM_HIGH)
    endfunction : start_of_simulation_phase

	// UVM run phase
    task run_phase(uvm_phase phase);
        fork
         get_and_drive();
         reset_signals();
        join
    endtask : run_phase 

	task get_and_drive();
        // Activation after hard reset
		@(negedge vif.reset);
		@(posedge vif.reset);
		`uvm_info(get_type_name(), "Dropped reset detected: Avalon driver activated", UVM_LOW)
    
        forever begin            
            seq_item_port.get_next_item(req);   // Get new item from the sequencer    	

            `uvm_info(get_type_name(), $sformatf("Sending Avalon item :\n%s", req.sprint()), UVM_LOW)

            fork
                // Call BFM-task to send item to DUT
                vif.send_to_dut(req.addr, req.read_n, req.write_n, req.delay, req.writedata, req.readdata);     
                // Start transaction recording         
                @(posedge vif.drvstart) void'(begin_tr(req, "Driver_Avalon_Item")); 
            join

            end_tr(req);                        // End transaction recording           
            num_sent++;                         // Count item      
            seq_item_port.item_done();          // Communicate item done to the sequencer

        end
    endtask : get_and_drive

    // Reset all interface signals
	task reset_signals();
		forever 
		 vif.avalon_reset();
	endtask : reset_signals

	// UVM report_phase
	function void report_phase(uvm_phase phase);
		`uvm_info(get_type_name(), $sformatf("Report: avalon driver sent %0d items", num_sent), UVM_LOW)
	endfunction : report_phase

endclass : avalon_driver