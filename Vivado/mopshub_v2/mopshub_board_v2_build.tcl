#*****************************************************************************************
# Vivado (TM) v2020.2 (64-bit)
#
# mopshub_board_build.tcl: Tcl script for re-creating project 'mopshub_board'
#
# Generated by Vivado on Tue Mar 26 10:20:00 CET 2024
# IP Build 3064653 on Wed Nov 18 14:17:31 MST 2020
#
# This file contains the Vivado Tcl commands for re-creating the project to the state*
# when this script was generated. In order to re-create the project, please source this
# file in the Vivado Tcl Shell.
#
# * Note that the runs in the created project will be configured the same way as the
#   original project, however they will not be launched automatically. To regenerate the
#   run results please launch the synthesis/implementation runs as needed.
#
#*****************************************************************************************

# Define a procedure for printing information with special formatting
proc specialPrint {name message color} {
    # Define ANSI color escape sequences
    set colorReset "\033\[0m"
    switch $color {
	"red" {
	    set colorCode "\033\[31m"
	}
	"green" {
	    set colorCode "\033\[32m"
	}
	"yellow" {
	    set colorCode "\033\[33m"
	}
	"blue" {
	    set colorCode "\033\[34m"
	}
	default {
	    set colorCode "\033\[0m" ;# Default to no color
	}
    }
    
    puts "\n**************************************"
    puts "*             $name           *"
    puts "**************************************\n"
    puts ">> $message"
    puts "\n**************************************\n"
}

# Check file required for this script exists
proc checkRequiredFiles { origin_dir} {
  set status true
  set files [list \
   "$origin_dir/ip_repo/xadc_wiz_0/xadc_wiz_0.xci" \
   "$origin_dir/ip_repo/sem_0/sem_0.xci" \
   #"/run/media/dcs/data2/workspaces/mopshub_board/mopshub_board.srcs/sources_1/bd/mopshub_board_v2/mopshub_board_v2.bd" \
   "$origin_dir/src/constrs_1/multiboot_specifications.xdc" \
   "$origin_dir/src/constrs_1/mopshub_board_16bus_v2.xdc" \
  ]
  foreach ifile $files {
    if { ![file isfile $ifile] } {
      puts " Could not find local file $ifile "
      set status false
    }
  }

  set files [list \
   "$origin_dir/../../mopshub-canakari/Accumulator_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Add_PID_VTR.v" \
   "$origin_dir/../../mopshub-canakari/CLK_Counter_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Control_FSM_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Control_Sys_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Diff_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Ftrim_En_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Multi_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Multi_i_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Output_Scaling_VTR.v" \
   "$origin_dir/../../mopshub-canakari/PID_Regler_VTR.v" \
   "$origin_dir/../../mopshub-canakari/Phasenfehler_Reg_VTR.v" \
   "$origin_dir/../../mopshub-canakari/accmaskreg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/biterrordetect2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/bittime2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/bittiming2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/can2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/counter2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/decapsulation2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/destuffing2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/edgepuffer2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/encapsulation2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/equal_id2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/erbcount2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/fastshift2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/faultfsm2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/fce2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/fsm_register2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/generalregister2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/interruptregister2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/interruptunit2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/iocpuavalon2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/llc2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/llc_fsm2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/mac2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/macfsm2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/prescale2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/prescalereg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/rcrc_cell2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/rcrc_top2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/read_mux2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/ready_counter_VTR.v" \
   "$origin_dir/../../mopshub-canakari/rec2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/recarbitreg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/recmescontrolreg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/recmeslen2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/recregister2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/reset_mac2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/resetgen2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/rshift_cell2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/rshift_top2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/meslencompare2_VTR.v" \   
   "$origin_dir/../../mopshub-canakari/multiplexeravalon2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/smpldbit_reg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/stuffing2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/sum2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tcrc_cell2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tcrc_top2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tec2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/timecount2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/transmesconreg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/transmitreg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tseg_reg2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tshift_cell2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/tshift_top2_VTR.v" \
   "$origin_dir/../../mopshub-canakari/write_demux2_VTR.v" \
   "$origin_dir/../../mopshub_lib/hdl/ip_buf.v" \
   "$origin_dir/../../mopshub_lib/hdl/bitstream_shift_register.v" \
   "$origin_dir/../../mopshub_lib/hdl/bridge_controller_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/buffer_rec_spi_data.v" \
   "$origin_dir/../../mopshub_lib/hdl/buffer_tristate_busid.v" \
   "$origin_dir/../../mopshub_lib/hdl/buffer_tristate_elink.v" \
   "$origin_dir/../../mopshub_lib/hdl/bus_rec_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/can_elink_bridge_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/can_interface_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/can_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/canakari_0_7_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/canakari_interface_mopshub_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/canakari_top_16bus_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/caninterface.v" \
   "$origin_dir/../../mopshub_lib/hdl/counter_enable.v" \
   "$origin_dir/../../mopshub_lib/hdl/counter_trigger.v" \
   "$origin_dir/../../mopshub_lib/hdl/debug_uart_core_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/debug_uart_receiver.v" \
   "$origin_dir/../../mopshub_lib/hdl/debug_uart_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/debug_uart_transmitter.v" \
   "$origin_dir/../../mopshub_lib/hdl/dec16_1_16bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/dec1_1_32bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/dec_8b10b_mopshub.v" \
   "$origin_dir/../../mopshub_lib/hdl/demux1_16_16bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/demux1_16_1bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_core_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_data_gen_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_interface_rec_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_interface_tra_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_proc_in_dec8b10b_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_proc_out_enc8b10b_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_receiver_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/elink_transmitter_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/enc_8b10b_mopshub.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_async.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_core_wrapper_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_mem.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_rptr_empty.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_sync_r2w.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_sync_w2r.v" \
   "$origin_dir/../../mopshub_lib/hdl/fifo_wptr_full.v" \
   "$origin_dir/../../mopshub_lib/hdl/ip_output_diff_clk_wrapper.v" \
   "$origin_dir/../../mopshub_lib/hdl/ip_xadc_wrapper.v" \
   "$origin_dir/../../mopshub_lib/hdl/mopshub_top_16bus_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/mux16_1_16bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/mux16_1_1bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/mux8_1_8bit.v" \
   "$origin_dir/../../mopshub_lib/hdl/mux8_Nbit.v" \
   "$origin_dir/../../mopshub_lib/hdl/node_rec_mux_16_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/node_tra_demux_16_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/osc_trim_sm_fsm.v" \   
   "$origin_dir/../../mopshub_lib/hdl/rec_elink_buf.v" \
   "$origin_dir/../../mopshub_lib/hdl/rec_mes_buf.v" \
   "$origin_dir/../../mopshub_lib/hdl/spi_control_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/spi_core_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/spi_interface_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/spi_master.v" \
   "$origin_dir/../../mopshub_lib/hdl/sync_detector_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/timeout_rst_watchdog.v" \
   "$origin_dir/../../mopshub_lib/hdl/timeoutrst_module.v" \
   "$origin_dir/../../mopshub_lib/hdl/top_led_enable_sm_fsm.v" \
   "$origin_dir/../../mopshub_lib/hdl/top_led_for_synth_struct.v" \
   "$origin_dir/../../mopshub_lib/hdl/tra_elink_buf.v" \
   "$origin_dir/../../mopshub_lib/hdl/tra_mes_buf.v" \
   "$origin_dir/../../mopshub_lib/hdl/ipbus_decode_ipbus_mopshub.vhd" \
   "$origin_dir/../../mopshub_lib/hdl/emp_elink_mem_interface_regs_pkg.vhd" \
   "$origin_dir/../../mopshub_lib/hdl/mopshub_top_board_16bus_struct.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/seu_shift_combined_struct.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/seu_shift_reg.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/seu_shift_reg_tmr.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_cfg.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_fifo.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_piso.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_sipo.v" \
   "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_controller_wrapper.v" \
  ]
  foreach ifile $files {
    if { ![file isfile $ifile] } {
      puts " Could not find remote file $ifile "
      set status false
    }
  }
  
  set paths [list \
   [file normalize "$origin_dir/ip_repo"] \
  ]
  foreach ipath $paths {
    if { ![file isdirectory $ipath] } {
      puts " Could not access $ipath "
      set status false
    }
  }  

  return $status
}

# Set the reference directory for source file relative paths (by default the value is script directory path)
set origin_dir [file dirname [info script]]

# Use origin directory path location variable, if specified in the tcl shell
if { [info exists ::origin_dir_loc] } {
  set origin_dir $::origin_dir_loc
}

# Set the project name
set _xil_proj_name_ "mopshub_board_v2"

# Use project name variable, if specified in the tcl shell
if { [info exists ::user_project_name] } {
  set _xil_proj_name_ $::user_project_name
}

variable script_file
set script_file "mopshub_board_v2_build.tcl"

# Help information for this script
proc print_help {} {
  variable script_file
  puts "\nDescription:"
  puts "Recreate a Vivado project from this script. The created project will be"
  puts "functionally equivalent to the original project for which this script was"
  puts "generated. The script contains commands for creating a project, filesets,"
  puts "runs, adding/importing sources and setting properties on various objects.\n"
  puts "Syntax:"
  puts "$script_file"
  puts "$script_file -tclargs \[--origin_dir <path>\]"
  puts "$script_file -tclargs \[--project_name <name>\]"
  puts "$script_file -tclargs \[--help\]\n"
  puts "Usage:"
  puts "Name                   Description"
  puts "-------------------------------------------------------------------------"
  puts "\[--origin_dir <path>\]  Determine source file paths wrt this path. Default"
  puts "                       origin_dir path value is \".\", otherwise, the value"
  puts "                       that was set with the \"-paths_relative_to\" switch"
  puts "                       when this script was generated.\n"
  puts "\[--project_name <name>\] Create project with the specified name. Default"
  puts "                       name is the name of the project from where this"
  puts "                       script was generated.\n"
  puts "\[--help\]               Print help information for this script"
  puts "-------------------------------------------------------------------------\n"
  exit 0
}

if { $::argc > 0 } {
  for {set i 0} {$i < $::argc} {incr i} {
    set option [string trim [lindex $::argv $i]]
    switch -regexp -- $option {
      "--origin_dir"   { incr i; set origin_dir [lindex $::argv $i] }
      "--project_name" { incr i; set _xil_proj_name_ [lindex $::argv $i] }
      "--help"         { print_help }
      default {
        if { [regexp {^-} $option] } {
          puts "ERROR: Unknown option '$option' specified, please type '$script_file -tclargs --help' for usage info.\n"
          return 1
        }
      }
    }
  }
}

# Set the directory path for the original project from where this script was exported
#set orig_proj_dir "[file normalize "$origin_dir/../../../../../../run/media/dcs/data2/workspaces/mopshub_board"]"

# Check for paths and files needed for project creation
set validate_required 0
if { $validate_required } {
  if { [checkRequiredFiles $origin_dir] } {
    puts "Tcl file $script_file is valid. All files required for project creation is accesable. "
  } else {
    puts "Tcl file $script_file is not valid. Not all files required for project creation is accesable. "
    return
  }
}

# Create project
#create_project ${_xil_proj_name_} ./${_xil_proj_name_} -part xc7a200tfbg484-2
specialPrint "Build" "Project: ${_xil_proj_name_} $origin_dir/${_xil_proj_name_}" "green"

create_project ${_xil_proj_name_} $origin_dir/${_xil_proj_name_} -part xc7a200tfbg484-2

# Set the directory path for the new project
set proj_dir [get_property directory [current_project]]

# Set project properties
set obj [current_project]
set_property -name "default_lib" -value "xil_defaultlib" -objects $obj
set_property -name "enable_vhdl_2008" -value "1" -objects $obj
set_property -name "ip_cache_permissions" -value "read write" -objects $obj
set_property -name "ip_output_repo" -value "$proj_dir/${_xil_proj_name_}.cache/ip" -objects $obj
set_property -name "mem.enable_memory_map_generation" -value "1" -objects $obj
set_property -name "part" -value "xc7a200tfbg484-2" -objects $obj
set_property -name "platform.board_id" -value "zed_fmc_lpc_connector_xm105_hpc_connector" -objects $obj
set_property -name "sim.central_dir" -value "$proj_dir/${_xil_proj_name_}.ip_user_files" -objects $obj
set_property -name "sim.ip.auto_export_scripts" -value "1" -objects $obj
set_property -name "simulator_language" -value "Mixed" -objects $obj
set_property -name "target_simulator" -value "Questa" -objects $obj
set_property -name "webtalk.activehdl_export_sim" -value "128" -objects $obj
set_property -name "webtalk.ies_export_sim" -value "128" -objects $obj
set_property -name "webtalk.modelsim_export_sim" -value "128" -objects $obj
set_property -name "webtalk.questa_export_sim" -value "128" -objects $obj
set_property -name "webtalk.questa_launch_sim" -value "4" -objects $obj
set_property -name "webtalk.riviera_export_sim" -value "128" -objects $obj
set_property -name "webtalk.vcs_export_sim" -value "128" -objects $obj
set_property -name "webtalk.xcelium_export_sim" -value "1" -objects $obj
set_property -name "webtalk.xsim_export_sim" -value "128" -objects $obj
set_property -name "xpm_libraries" -value "XPM_CDC XPM_MEMORY" -objects $obj

# Create 'sources_1' fileset (if not found)
if {[string equal [get_filesets -quiet sources_1] ""]} {
  create_fileset -srcset sources_1
}

# Set 'sources_1' fileset object
set obj [get_filesets sources_1]
set files [list \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/ip_buf.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/bitstream_shift_register.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/bittime2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/bittiming2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Accumulator_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Add_PID_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/CLK_Counter_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Control_FSM_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Control_Sys_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Diff_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Ftrim_En_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Multi_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/counter2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/can2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Multi_i_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Output_Scaling_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/PID_Regler_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/Phasenfehler_Reg_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/accmaskreg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/decapsulation2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/destuffing2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/edgepuffer2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/biterrordetect2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/encapsulation2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/equal_id2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/erbcount2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/fastshift2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/faultfsm2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/fce2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/fsm_register2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/generalregister2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/interruptregister2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/interruptunit2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/iocpuavalon2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/llc2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/llc_fsm2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/mac2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/macfsm2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/meslencompare2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/multiplexeravalon2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/prescale2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/prescalereg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/rcrc_cell2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/rcrc_top2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/read_mux2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/ready_counter_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/recarbitreg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/recmescontrolreg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/recmeslen2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/recregister2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/reset_mac2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/resetgen2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/rshift_cell2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/rshift_top2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/rec2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/transmesconreg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/transmitreg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tcrc_cell2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tcrc_top2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tec2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/stuffing2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/smpldbit_reg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/sum2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/timecount2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tseg_reg2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tshift_cell2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/tshift_top2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub-canakari/write_demux2_VTR.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/bridge_controller_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/buffer_rec_spi_data.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/buffer_tristate_busid.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/buffer_tristate_elink.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/bus_rec_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/can_elink_bridge_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/can_interface_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/can_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/canakari_0_7_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/canakari_interface_mopshub_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/canakari_top_16bus_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/caninterface.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/counter_enable.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/counter_trigger.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/debug_uart_core_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/debug_uart_receiver.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/debug_uart_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/debug_uart_transmitter.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/dec16_1_16bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/dec1_1_32bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/dec_8b10b_mopshub.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/demux1_16_16bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/demux1_16_1bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_core_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_data_gen_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_interface_rec_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_interface_tra_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_proc_in_dec8b10b_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_proc_out_enc8b10b_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_receiver_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/elink_transmitter_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/enc_8b10b_mopshub.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_async.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_core_wrapper_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_mem.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_rptr_empty.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_sync_r2w.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_sync_w2r.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/fifo_wptr_full.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/ip_output_diff_clk_wrapper.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/ip_xadc_wrapper.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mopshub_top_16bus_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mux16_1_16bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mux16_1_1bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mux8_1_8bit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mux8_Nbit.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/node_rec_mux_16_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/node_tra_demux_16_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/osc_trim_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/rec_elink_buf.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/rec_mes_buf.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/ipbus_decode_ipbus_mopshub.vhd"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/emp_elink_mem_interface_regs_pkg.vhd"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/spi_control_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/spi_core_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/spi_interface_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/spi_master.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/sync_detector_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/timeout_rst_watchdog.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/timeoutrst_module.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/top_led_enable_sm_fsm.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/top_led_for_synth_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/tra_elink_buf.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/tra_mes_buf.v"] \
 [file normalize "${origin_dir}/../../mopshub_lib/hdl/mopshub_top_board_16bus_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/seu_shift_combined_struct.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/seu_shift_reg.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/seu_shift_reg_tmr.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_cfg.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_fifo.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_piso.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_0_sem_mon_sipo.v"] \
 [file normalize "${origin_dir}/../../mopshub-seu-test/srcs/sources/sem_src/sem_controller_wrapper.v"] \
]
add_files -norecurse -fileset $obj $files

# Add local files from the original project (-no_copy_sources specified)
set files [list \
 [file normalize "$origin_dir/ip_repo/xadc_wiz_0/xadc_wiz_0.xci" ]\
 [file normalize "$origin_dir/ip_repo/sem_0/sem_0.xci" ]\
]
set added_files [add_files -fileset sources_1 $files]


# Create block design
 source $origin_dir/src/bd/mopshub_v2_bd.tcl
 after 2000
 # Generate the wrapper
 set design_name [get_bd_designs]
 after 2000
open_bd_design $origin_dir/src/bd/$design_name.bd 
regenerate_bd_layout
validate_bd_design -force
after 2000
make_wrapper -files [get_files $design_name.bd] -top

#set file "mopshub_board_v2/mopshub_board_v2.bd"
#set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
#set_property -name "registered_with_manager" -value "1" -objects $file_obj

#call make_wrapper to create wrapper files
if { [get_property IS_LOCKED [ get_files -norecurse ${_xil_proj_name_}.bd] ] == 1  } {
  import_files -fileset sources_1 [file normalize "${origin_dir}/${_xil_proj_name_}/${_xil_proj_name_}.gen/sources_1/bd/${_xil_proj_name_}/hdl/mopshub_board_v2_wrapper.v" ]
} else {
  set wrapper_path [make_wrapper -fileset sources_1 -files [ get_files -norecurse ${_xil_proj_name_}.bd] -top]
  add_files -norecurse -fileset sources_1 $wrapper_path
}

#add_files -norecurse  "${origin_dir}/${_xil_proj_name_}/${_xil_proj_name_}.gen/sources_1/bd/${_xil_proj_name_}/hdl/mopshub_board_v2_wrapper.v" 
after 2000



# Set 'sources_1' fileset properties
set obj [get_filesets sources_1]
set_property -name "top" -value "mopshub_board_v2_wrapper" -objects $obj
set_property -name "top_auto_set" -value "0" -objects $obj



# Set 'sources_1' fileset file properties for remote files
set file "$origin_dir/../../mopshub_lib/hdl/ip_buf.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "used_in" -value "synthesis implementation" -objects $file_obj
set_property -name "used_in_simulation" -value "0" -objects $file_obj

set file "$origin_dir/../../mopshub-seu-test/srcs/sources/sem_src/sem_controller_wrapper.v"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "used_in" -value "synthesis implementation" -objects $file_obj
set_property -name "used_in_simulation" -value "0" -objects $file_obj

set file "$origin_dir/../../mopshub_lib/hdl/ipbus_decode_ipbus_mopshub.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj

set file "$origin_dir/../../mopshub_lib/hdl/emp_elink_mem_interface_regs_pkg.vhd"
set file [file normalize $file]
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "file_type" -value "VHDL" -objects $file_obj


# Set 'sources_1' fileset file properties for local files
set file "xadc_wiz_0/xadc_wiz_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj

set file "sem_0/sem_0.xci"
set file_obj [get_files -of_objects [get_filesets sources_1] [list "*$file"]]
set_property -name "generate_files_for_reference" -value "0" -objects $file_obj
set_property -name "registered_with_manager" -value "1" -objects $file_obj



specialPrint "Build" "Set File Constraints" "green"
# Create 'constrs_1' fileset (if not found)
if {[string equal [get_filesets -quiet constrs_1] ""]} {
  create_fileset -constrset constrs_1
}

# Set 'constrs_1' fileset object
set obj [get_filesets constrs_1]

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/src/constrs_1/multiboot_specifications.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "multiboot_specifications.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Add/Import constrs file and set constrs file properties
set file "[file normalize "$origin_dir/src/constrs_1/mopshub_board_16bus_v2.xdc"]"
set file_added [add_files -norecurse -fileset $obj [list $file]]
set file "mopshub_board_16bus_v2.xdc"
set file_obj [get_files -of_objects [get_filesets constrs_1] [list "*$file"]]
set_property -name "file_type" -value "XDC" -objects $file_obj

# Set 'constrs_1' fileset properties
set obj [get_filesets constrs_1]
set_property -name "target_constrs_file" -value "[get_files $origin_dir/src/constrs_1/mopshub_board_16bus_v2.xdc]" -objects $obj
set_property -name "target_part" -value "xc7a200tfbg484-2" -objects $obj
set_property -name "target_ucf" -value "[get_files $origin_dir/src/constrs_1/mopshub_board_16bus_v2.xdc]" -objects $obj

update_compile_order -fileset sources_1
set_property top mopshub_board_v2_wrapper [current_fileset]
update_compile_order -fileset sources_1
launch_runs synth_1 -jobs 3
launch_runs impl_1 -jobs 3
launch_runs impl_1 -to_step write_bitstream -jobs 3