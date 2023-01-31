////////////////////////////////////////////////////////////////////////////////////////////////////
//
// Interessengruppe fuer Mikroelektronik und Eingebettete Systeme (IMES)
// Fachhochschule Dortmund
//
// Filename     : avalon_item.sv
// Author       : Leduc
// Tool         : -
// Description  : Data item for Avalon Interface of the Canakari
// Commentary   : 
// Changelog:
// -------------------------------------------------------------------------------------------------
// Version | Author             | Date       | Changes
// -------------------------------------------------------------------------------------------------
// 1.0     | Leduc              | 03.05.2020 | created
// -------------------------------------------------------------------------------------------------
////////////////////////////////////////////////////////////////////////////////////////////////////

// Type Enumerations
/*typedef enum bit 	   {WRITE_COMMAND = 1'b0, 
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
						INTERRUPT					= 5'b10010
						}	reg_t;		*/

class avalon_item extends uvm_sequence_item;

  // Request data properties
  rand reg_t  		addr;	
  rand bit   [15:0]	writedata;
  bit 				write_n;	
  bit 				read_n;
   
  // Response data properties
  bit [15:0] readdata;

  // Control knobs
  rand command_t command_type;	// specify if read or write command
  rand int	delay;			// delay after item transaction

// Enable automation of the item's fields 
  `uvm_object_utils_begin(avalon_item)
	`uvm_field_int(readdata, UVM_ALL_ON)
	`uvm_field_int(writedata, UVM_ALL_ON)
	`uvm_field_int(read_n, UVM_ALL_ON)	
	`uvm_field_int(write_n, UVM_ALL_ON)	
	`uvm_field_enum(command_t, command_type, UVM_ALL_ON)
	`uvm_field_enum(reg_t, addr, UVM_ALL_ON)
   `uvm_object_utils_end
 	
   // Constructor 
	function new (string name = "avalon_item");
		super.new(name);
	endfunction : new
	
   // Constraints
   constraint adress_space {addr <  5'b10011;} // limted adress space of canakari
   constraint default_delay {delay >= 1; delay < 10; }
  
  // Set read write data based on command type
  function void set_rw();	
  if (command_type == WRITE_COMMAND) begin
	 write_n = 1'b0;
	 read_n  = 1'b1; 
	 end
  else if (command_type == READ_COMMAND) begin	
	 write_n = 1'b1;
	 read_n  = 1'b0; 
	 end
   endfunction : set_rw

  // reset writedata if read command
  function void set_writedata();
	if(command_type == READ_COMMAND) begin
		writedata = 16'h00;
	end
  endfunction
  
   // post_randomize: Call read write set
   function void post_randomize();
	 set_rw();
	 set_writedata();
   endfunction : post_randomize

endclass : avalon_item
