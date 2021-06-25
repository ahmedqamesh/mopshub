## SETUP
puts "Info: HDL Designer Synthesis run started"

## Set current project and folder
if {[string length [info commands new_project]]} {
   new_project -name tb_data_gen_elink -folder "/home/dcs/git/mopshub/mopshub_lib/ps/tb_data_gen_elink"
} else {
   set_working_dir "/home/dcs/git/mopshub/mopshub_lib/ps/tb_data_gen_elink"
}
puts "Error: You have not specified a technology. This may cause synthesis to fail."

## Design Settings
MGS_Gui::notify_gui lock
setup_design -addio=true
setup_design -use_safe_fsm=false
setup_design -retiming=false
if {[catch {setup_design -2004c_compile_mode=false}]} {
catch {setup_design -frontend_2004=false}
}

setup_design -vhdl=false
setup_design -verilog=false
setup_design -edif=true

## Read in source files
catch {source "/home/dcs/git/mopshub/mopshub_lib/ps/tb_data_gen_elink/hds/add_files.tcl"}
MGS_Gui::notify_gui unlock

## Compile & Synthesize
MGS_Gui::notify_gui lock
if {[catch compile]} {
   MGS_Gui::notify_gui unlock
} elseif {[catch synthesize]} {
   MGS_Gui::notify_gui unlock
} else {
   MGS_Gui::notify_gui unlock
}

puts "Info: HDL Designer Synthesis run finished"


