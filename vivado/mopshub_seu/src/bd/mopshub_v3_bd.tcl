
################################################################
# This is a generated script based on design: mopshub_board_v3
#
# Though there are limitations about the generated script,
# the main purpose of this utility is to make learning
# IP Integrator Tcl commands easier.
################################################################

namespace eval _tcl {
proc get_script_folder {} {
   set script_path [file normalize [info script]]
   set script_folder [file dirname $script_path]
   return $script_folder
}
}
variable script_folder
set script_folder [_tcl::get_script_folder]

################################################################
# Check if script is running in correct Vivado version.
################################################################
set scripts_vivado_version 2020.2
set current_vivado_version [version -short]

if { [string first $scripts_vivado_version $current_vivado_version] == -1 } {
   puts ""
   catch {common::send_gid_msg -ssname BD::TCL -id 2041 -severity "ERROR" "This script was generated using Vivado <$scripts_vivado_version> and is being run in <$current_vivado_version> of Vivado. Please run the script in Vivado <$scripts_vivado_version> then open the design in Vivado <$current_vivado_version>. Upgrade the design by running \"Tools => Report => Report IP Status...\", then run write_bd_tcl to create an updated script."}

   return 1
}

################################################################
# START
################################################################

# To test this script, run the following commands from Vivado Tcl console:
# source mopshub_board_v3_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# ip_buf, mopshub_top_board_16bus, sem_controller_wrapper

# Please add the sources of those modules before sourcing this Tcl script.

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:ila:6.2\
xilinx.com:ip:proc_sys_reset:5.0\
xilinx.com:ip:selectio_wiz:5.1\
xilinx.com:ip:xlconstant:1.1\
"

   set list_ips_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2011 -severity "INFO" "Checking if the following IPs exist in the project's IP catalog: $list_check_ips ."

   foreach ip_vlnv $list_check_ips {
      set ip_obj [get_ipdefs -all $ip_vlnv]
      if { $ip_obj eq "" } {
         lappend list_ips_missing $ip_vlnv
      }
   }

   if { $list_ips_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2012 -severity "ERROR" "The following IPs are not found in the IP Catalog:\n  $list_ips_missing\n\nResolution: Please add the repository containing the IP(s) to the project." }
      set bCheckIPsPassed 0
   }

}

##################################################################
# CHECK Modules
##################################################################
set bCheckModules 1
if { $bCheckModules == 1 } {
   set list_check_mods "\ 
ip_buf\
mopshub_top_board_16bus\
sem_controller_wrapper\
"

   set list_mods_missing ""
   common::send_gid_msg -ssname BD::TCL -id 2020 -severity "INFO" "Checking if the following modules exist in the project's sources: $list_check_mods ."

   foreach mod_vlnv $list_check_mods {
      if { [can_resolve_reference $mod_vlnv] == 0 } {
         lappend list_mods_missing $mod_vlnv
      }
   }

   if { $list_mods_missing ne "" } {
      catch {common::send_gid_msg -ssname BD::TCL -id 2021 -severity "ERROR" "The following module(s) are not found in the project: $list_mods_missing" }
      common::send_gid_msg -ssname BD::TCL -id 2022 -severity "INFO" "Please add source files for the missing module(s) above."
      set bCheckIPsPassed 0
   }
}

if { $bCheckIPsPassed != 1 } {
  common::send_gid_msg -ssname BD::TCL -id 2023 -severity "WARNING" "Will not continue with creation of design due to the error(s) above."
  return 3
}

##################################################################
# DESIGN PROCs
##################################################################



# Procedure to create entire design; Provide argument to make
# procedure reusable. If parentCell is "", will use root.
proc create_root_design { parentCell } {

  variable script_folder

  if { $parentCell eq "" } {
     set parentCell [get_bd_cells /]
  }

  # Get object for parentCell
  set parentObj [get_bd_cells $parentCell]
  if { $parentObj == "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2090 -severity "ERROR" "Unable to find parent cell <$parentCell>!"}
     return
  }

  # Make sure parentObj is hier blk
  set parentType [get_property TYPE $parentObj]
  if { $parentType ne "hier" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2091 -severity "ERROR" "Parent <$parentObj> has TYPE = <$parentType>. Expected to be <hier>."}
     return
  }

  # Save current instance; Restore later
  set oldCurInst [current_bd_instance .]

  # Set parent object as current
  current_bd_instance $parentObj


  # Create interface ports
  set clk_ext [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 clk_ext ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {80000000} \
   ] $clk_ext


  # Create ports
  set WDI_0 [ create_bd_port -dir O WDI_0 ]
  set clk_out_n_0 [ create_bd_port -dir O clk_out_n_0 ]
  set clk_out_p_0 [ create_bd_port -dir O clk_out_p_0 ]
  set clk_sys [ create_bd_port -dir I clk_sys ]
  set cs_c0_0 [ create_bd_port -dir O cs_c0_0 ]
  set cs_c10_0 [ create_bd_port -dir O cs_c10_0 ]
  set cs_c11_0 [ create_bd_port -dir O cs_c11_0 ]
  set cs_c12_0 [ create_bd_port -dir O cs_c12_0 ]
  set cs_c13_0 [ create_bd_port -dir O cs_c13_0 ]
  set cs_c14_0 [ create_bd_port -dir O cs_c14_0 ]
  set cs_c15_0 [ create_bd_port -dir O cs_c15_0 ]
  set cs_c1_0 [ create_bd_port -dir O cs_c1_0 ]
  set cs_c2_0 [ create_bd_port -dir O cs_c2_0 ]
  set cs_c3_0 [ create_bd_port -dir O cs_c3_0 ]
  set cs_c4_0 [ create_bd_port -dir O cs_c4_0 ]
  set cs_c5_0 [ create_bd_port -dir O cs_c5_0 ]
  set cs_c6_0 [ create_bd_port -dir O cs_c6_0 ]
  set cs_c7_0 [ create_bd_port -dir O cs_c7_0 ]
  set cs_c8_0 [ create_bd_port -dir O cs_c8_0 ]
  set cs_c9_0 [ create_bd_port -dir O cs_c9_0 ]
  set cs_m0_0 [ create_bd_port -dir O cs_m0_0 ]
  set cs_m10_0 [ create_bd_port -dir O cs_m10_0 ]
  set cs_m11_0 [ create_bd_port -dir O cs_m11_0 ]
  set cs_m12_0 [ create_bd_port -dir O cs_m12_0 ]
  set cs_m13_0 [ create_bd_port -dir O cs_m13_0 ]
  set cs_m14_0 [ create_bd_port -dir O cs_m14_0 ]
  set cs_m15_0 [ create_bd_port -dir O cs_m15_0 ]
  set cs_m1_0 [ create_bd_port -dir O cs_m1_0 ]
  set cs_m2_0 [ create_bd_port -dir O cs_m2_0 ]
  set cs_m3_0 [ create_bd_port -dir O cs_m3_0 ]
  set cs_m4_0 [ create_bd_port -dir O cs_m4_0 ]
  set cs_m5_0 [ create_bd_port -dir O cs_m5_0 ]
  set cs_m6_0 [ create_bd_port -dir O cs_m6_0 ]
  set cs_m7_0 [ create_bd_port -dir O cs_m7_0 ]
  set cs_m8_0 [ create_bd_port -dir O cs_m8_0 ]
  set cs_m9_0 [ create_bd_port -dir O cs_m9_0 ]
  set disable_sw_0 [ create_bd_port -dir I disable_sw_0 ]
  set in_rx_serial_0 [ create_bd_port -dir I in_rx_serial_0 ]
  set irq_can_rec_0 [ create_bd_port -dir O irq_can_rec_0 ]
  set irq_can_tra_0 [ create_bd_port -dir O irq_can_tra_0 ]
  set irq_elink_rec_0 [ create_bd_port -dir O irq_elink_rec_0 ]
  set irq_elink_tra_0 [ create_bd_port -dir O irq_elink_tra_0 ]
  set miso_c_0 [ create_bd_port -dir I miso_c_0 ]
  set miso_m_0 [ create_bd_port -dir I miso_m_0 ]
  set mosi_c_0 [ create_bd_port -dir O mosi_c_0 ]
  set mosi_m_0 [ create_bd_port -dir O mosi_m_0 ]
  set out_tx_serial_0 [ create_bd_port -dir O out_tx_serial_0 ]
  set rx0_0 [ create_bd_port -dir I rx0_0 ]
  set rx10_0 [ create_bd_port -dir I rx10_0 ]
  set rx11_0 [ create_bd_port -dir I rx11_0 ]
  set rx12_0 [ create_bd_port -dir I rx12_0 ]
  set rx13_0 [ create_bd_port -dir I rx13_0 ]
  set rx14_0 [ create_bd_port -dir I rx14_0 ]
  set rx15_0 [ create_bd_port -dir I rx15_0 ]
  set rx1_0 [ create_bd_port -dir I rx1_0 ]
  set rx2_0 [ create_bd_port -dir I rx2_0 ]
  set rx3_0 [ create_bd_port -dir I rx3_0 ]
  set rx4_0 [ create_bd_port -dir I rx4_0 ]
  set rx5_0 [ create_bd_port -dir I rx5_0 ]
  set rx6_0 [ create_bd_port -dir I rx6_0 ]
  set rx7_0 [ create_bd_port -dir I rx7_0 ]
  set rx8_0 [ create_bd_port -dir I rx8_0 ]
  set rx9_0 [ create_bd_port -dir I rx9_0 ]
  set rx_data_rdy_0 [ create_bd_port -dir O rx_data_rdy_0 ]
  set rx_elink_n_0 [ create_bd_port -dir I rx_elink_n_0 ]
  set rx_elink_p_0 [ create_bd_port -dir I rx_elink_p_0 ]
  set sck_c_0 [ create_bd_port -dir O sck_c_0 ]
  set sck_m_0 [ create_bd_port -dir O sck_m_0 ]
  set shift_clk_0 [ create_bd_port -dir I shift_clk_0 ]
  set shift_data_0 [ create_bd_port -dir I shift_data_0 ]
  set shift_mode_0 [ create_bd_port -dir I shift_mode_0 ]
  set simple_out_0 [ create_bd_port -dir O simple_out_0 ]
  set tmr_out_0 [ create_bd_port -dir O tmr_out_0 ]
  set tx0_0 [ create_bd_port -dir O tx0_0 ]
  set tx10_0 [ create_bd_port -dir O tx10_0 ]
  set tx11_0 [ create_bd_port -dir O tx11_0 ]
  set tx12_0 [ create_bd_port -dir O tx12_0 ]
  set tx13_0 [ create_bd_port -dir O tx13_0 ]
  set tx14_0 [ create_bd_port -dir O tx14_0 ]
  set tx15_0 [ create_bd_port -dir O tx15_0 ]
  set tx1_0 [ create_bd_port -dir O tx1_0 ]
  set tx2_0 [ create_bd_port -dir O tx2_0 ]
  set tx3_0 [ create_bd_port -dir O tx3_0 ]
  set tx4_0 [ create_bd_port -dir O tx4_0 ]
  set tx5_0 [ create_bd_port -dir O tx5_0 ]
  set tx6_0 [ create_bd_port -dir O tx6_0 ]
  set tx7_0 [ create_bd_port -dir O tx7_0 ]
  set tx8_0 [ create_bd_port -dir O tx8_0 ]
  set tx9_0 [ create_bd_port -dir O tx9_0 ]
  set tx_data_rdy_0 [ create_bd_port -dir O tx_data_rdy_0 ]
  set tx_elink_n_0 [ create_bd_port -dir O -from 0 -to 0 tx_elink_n_0 ]
  set tx_elink_p_0 [ create_bd_port -dir O -from 0 -to 0 tx_elink_p_0 ]

  # Create instance: clk_wiz_0, and set properties
  set clk_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_0 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {250.0} \
   CONFIG.CLKOUT1_DRIVES {BUFG} \
   CONFIG.CLKOUT1_JITTER {180.876} \
   CONFIG.CLKOUT1_PHASE_ERROR {191.950} \
   CONFIG.CLKOUT2_DRIVES {BUFG} \
   CONFIG.CLKOUT2_JITTER {310.827} \
   CONFIG.CLKOUT2_PHASE_ERROR {168.815} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT2_USED {false} \
   CONFIG.CLKOUT3_DRIVES {BUFG} \
   CONFIG.CLKOUT4_DRIVES {BUFG} \
   CONFIG.CLKOUT5_DRIVES {BUFG} \
   CONFIG.CLKOUT6_DRIVES {BUFG} \
   CONFIG.CLKOUT7_DRIVES {BUFG} \
   CONFIG.CLK_OUT1_PORT {clk_100} \
   CONFIG.CLK_OUT2_PORT {clk_out2} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {25.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {25.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {10.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {1} \
   CONFIG.PRIM_IN_FREQ {40.000} \
   CONFIG.PRIM_SOURCE {Global_buffer} \
   CONFIG.SECONDARY_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_PHASE_ALIGNMENT {false} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_0

  # Create instance: clk_wiz_s, and set properties
  set clk_wiz_s [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_s ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {250.0} \
   CONFIG.CLKOUT1_JITTER {157.963} \
   CONFIG.CLKOUT1_PHASE_ERROR {148.669} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40.000} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_JITTER {139.663} \
   CONFIG.CLKOUT2_PHASE_ERROR {148.669} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {80.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {240.145} \
   CONFIG.CLKOUT3_PHASE_ERROR {148.669} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {11.52542} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {149.235} \
   CONFIG.CLKOUT4_PHASE_ERROR {154.081} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_JITTER {242.078} \
   CONFIG.CLKOUT5_PHASE_ERROR {154.081} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLK_OUT1_PORT {clk_40} \
   CONFIG.CLK_OUT2_PORT {clk_m} \
   CONFIG.CLK_OUT3_PORT {clk_uart} \
   CONFIG.CLK_OUT4_PORT {clk_out4} \
   CONFIG.CLK_OUT5_PORT {clk_out5} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {34.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {25.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {34.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {17} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {118} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.PRIM_IN_FREQ {40.000} \
   CONFIG.PRIM_SOURCE {Single_ended_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_s

  # Create instance: clk_wiz_s1, and set properties
  set clk_wiz_s1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_s1 ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {125.0} \
   CONFIG.CLKOUT1_DRIVES {BUFGCE} \
   CONFIG.CLKOUT1_JITTER {173.162} \
   CONFIG.CLKOUT1_PHASE_ERROR {103.963} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40.000} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_DRIVES {BUFGCE} \
   CONFIG.CLKOUT2_JITTER {147.966} \
   CONFIG.CLKOUT2_PHASE_ERROR {103.963} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {80.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_DRIVES {BUFGCE} \
   CONFIG.CLKOUT3_JITTER {128.832} \
   CONFIG.CLKOUT3_PHASE_ERROR {103.963} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {160.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_DRIVES {BUFGCE} \
   CONFIG.CLKOUT4_JITTER {200.412} \
   CONFIG.CLKOUT4_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT4_USED {false} \
   CONFIG.CLKOUT5_DRIVES {BUFGCE} \
   CONFIG.CLKOUT5_JITTER {242.078} \
   CONFIG.CLKOUT5_PHASE_ERROR {154.081} \
   CONFIG.CLKOUT5_REQUESTED_OUT_FREQ {100.000} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLKOUT6_DRIVES {BUFGCE} \
   CONFIG.CLKOUT7_DRIVES {BUFGCE} \
   CONFIG.CLK_OUT1_PORT {clk_elink} \
   CONFIG.CLK_OUT2_PORT {clk_tx_m} \
   CONFIG.CLK_OUT3_PORT {clk_rx_m} \
   CONFIG.CLK_OUT4_PORT {clk_out4} \
   CONFIG.CLK_OUT5_PORT {clk_out5} \
   CONFIG.FEEDBACK_SOURCE {FDBK_AUTO} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {12.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {12.500} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.000} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {24.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {12} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {6} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {1} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {1} \
   CONFIG.MMCM_STARTUP_WAIT {false} \
   CONFIG.NUM_OUT_CLKS {3} \
   CONFIG.OVERRIDE_MMCM {false} \
   CONFIG.PRIM_IN_FREQ {80.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_LOCKED {false} \
   CONFIG.USE_RESET {false} \
   CONFIG.USE_SAFE_CLOCK_STARTUP {true} \
 ] $clk_wiz_s1

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {8} \
 ] $ila_0

  # Create instance: ip_buf_0, and set properties
  set block_name ip_buf
  set block_cell_name ip_buf_0
  if { [catch {set ip_buf_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $ip_buf_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: mopshub_top_board_16_0, and set properties
  set block_name mopshub_top_board_16bus
  set block_cell_name mopshub_top_board_16_0
  if { [catch {set mopshub_top_board_16_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mopshub_top_board_16_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: proc_sys_reset_0, and set properties
  set proc_sys_reset_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:proc_sys_reset:5.0 proc_sys_reset_0 ]
  set_property -dict [ list \
   CONFIG.C_AUX_RST_WIDTH {1} \
   CONFIG.C_EXT_RST_WIDTH {1} \
 ] $proc_sys_reset_0

  # Create instance: selectio_wiz_0, and set properties
  set selectio_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_wiz_0 ]
  set_property -dict [ list \
   CONFIG.BUS_IO_STD {DIFF_SSTL15_R} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_FWD_IO_STD {DIFF_SSTL15_R} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.SELIO_CLK_BUF {MMCM} \
   CONFIG.SELIO_CLK_IO_STD {DIFF_SSTL15_R} \
   CONFIG.SELIO_CLK_SIG_TYPE {DIFF} \
   CONFIG.SELIO_INTERFACE_TYPE {NETWORKING} \
   CONFIG.SERIALIZATION_FACTOR {2} \
   CONFIG.SYSTEM_DATA_WIDTH {1} \
   CONFIG.USE_SERIALIZATION {true} \
 ] $selectio_wiz_0

  # Create instance: selectio_wiz_2, and set properties
  set selectio_wiz_2 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_wiz_2 ]
  set_property -dict [ list \
   CONFIG.BUS_DIR {OUTPUTS} \
   CONFIG.BUS_IO_STD {DIFF_SSTL15_R} \
   CONFIG.BUS_SIG_TYPE {DIFF} \
   CONFIG.CLK_FWD_IO_STD {DIFF_SSTL15_R} \
   CONFIG.CLK_FWD_SIG_TYPE {DIFF} \
   CONFIG.SELIO_BUS_IN_DELAY {NONE} \
   CONFIG.SELIO_CLK_BUF {MMCM} \
   CONFIG.SELIO_CLK_IO_STD {DIFF_SSTL15_R} \
   CONFIG.SELIO_CLK_SIG_TYPE {DIFF} \
   CONFIG.SELIO_INTERFACE_TYPE {NETWORKING} \
   CONFIG.SERIALIZATION_FACTOR {2} \
   CONFIG.SYSTEM_DATA_WIDTH {1} \
   CONFIG.USE_SERIALIZATION {true} \
 ] $selectio_wiz_2

  # Create instance: sem_controller_wrapp_0, and set properties
  set block_name sem_controller_wrapper
  set block_cell_name sem_controller_wrapp_0
  if { [catch {set sem_controller_wrapp_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $sem_controller_wrapp_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {2} \
   CONFIG.CONST_WIDTH {4} \
 ] $xlconstant_0

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {1} \
 ] $xlconstant_1

  # Create instance: xlconstant_bit, and set properties
  set xlconstant_bit [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_bit ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_bit

  # Create interface connections
  connect_bd_intf_net -intf_net clk_elink_m_1 [get_bd_intf_ports clk_ext] [get_bd_intf_pins clk_wiz_s1/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net clk_sys_1 [get_bd_ports clk_sys] [get_bd_pins clk_wiz_s/clk_in1]
  connect_bd_net -net clk_wiz_0_clk_100 [get_bd_pins clk_wiz_0/clk_100] [get_bd_pins sem_controller_wrapp_0/clk_icap]
  connect_bd_net -net clk_wiz_s1_clk_elink [get_bd_pins clk_wiz_s1/clk_elink] [get_bd_pins mopshub_top_board_16_0/clk_elink] [get_bd_pins selectio_wiz_0/clk_div_in] [get_bd_pins selectio_wiz_2/clk_div_in]
  connect_bd_net -net clk_wiz_s1_clk_rx_m [get_bd_pins clk_wiz_s1/clk_rx_m] [get_bd_pins selectio_wiz_0/clk_in]
  connect_bd_net -net clk_wiz_s1_clk_tx_m [get_bd_pins clk_wiz_s1/clk_tx_m] [get_bd_pins selectio_wiz_2/clk_in]
  connect_bd_net -net clk_wiz_s_clk_40 [get_bd_pins clk_wiz_0/clk_in1] [get_bd_pins clk_wiz_s/clk_40] [get_bd_pins ila_0/clk] [get_bd_pins ip_buf_0/input_wire] [get_bd_pins mopshub_top_board_16_0/clk_40] [get_bd_pins proc_sys_reset_0/slowest_sync_clk]
  connect_bd_net -net clk_wiz_s_clk_m [get_bd_pins clk_wiz_s/clk_m] [get_bd_pins mopshub_top_board_16_0/clk_m]
  connect_bd_net -net clk_wiz_s_clk_uart [get_bd_pins clk_wiz_s/clk_uart] [get_bd_pins mopshub_top_board_16_0/clk_uart]
  connect_bd_net -net clk_wiz_s_locked [get_bd_pins clk_wiz_s/locked] [get_bd_pins mopshub_top_board_16_0/locked] [get_bd_pins proc_sys_reset_0/dcm_locked]
  connect_bd_net -net disable_sw_0_1 [get_bd_ports disable_sw_0] [get_bd_pins mopshub_top_board_16_0/disable_sw]
  connect_bd_net -net in_rx_serial_0_1 [get_bd_ports in_rx_serial_0] [get_bd_pins mopshub_top_board_16_0/in_rx_serial]
  connect_bd_net -net ip_buf_0_output_wire [get_bd_ports WDI_0] [get_bd_pins ip_buf_0/output_wire]
  connect_bd_net -net miso_c_0_1 [get_bd_ports miso_c_0] [get_bd_pins mopshub_top_board_16_0/miso_c]
  connect_bd_net -net miso_m_0_1 [get_bd_ports miso_m_0] [get_bd_pins mopshub_top_board_16_0/miso_m]
  connect_bd_net -net mopshub_top_board_16_0_clk_out_n [get_bd_ports clk_out_n_0] [get_bd_pins mopshub_top_board_16_0/clk_out_n]
  connect_bd_net -net mopshub_top_board_16_0_clk_out_p [get_bd_ports clk_out_p_0] [get_bd_pins mopshub_top_board_16_0/clk_out_p]
  connect_bd_net -net mopshub_top_board_16_0_cs_c0 [get_bd_ports cs_c0_0] [get_bd_pins mopshub_top_board_16_0/cs_c0]
  connect_bd_net -net mopshub_top_board_16_0_cs_c1 [get_bd_ports cs_c1_0] [get_bd_pins mopshub_top_board_16_0/cs_c1]
  connect_bd_net -net mopshub_top_board_16_0_cs_c2 [get_bd_ports cs_c2_0] [get_bd_pins mopshub_top_board_16_0/cs_c2]
  connect_bd_net -net mopshub_top_board_16_0_cs_c3 [get_bd_ports cs_c3_0] [get_bd_pins mopshub_top_board_16_0/cs_c3]
  connect_bd_net -net mopshub_top_board_16_0_cs_c4 [get_bd_ports cs_c4_0] [get_bd_pins mopshub_top_board_16_0/cs_c4]
  connect_bd_net -net mopshub_top_board_16_0_cs_c5 [get_bd_ports cs_c5_0] [get_bd_pins mopshub_top_board_16_0/cs_c5]
  connect_bd_net -net mopshub_top_board_16_0_cs_c6 [get_bd_ports cs_c6_0] [get_bd_pins mopshub_top_board_16_0/cs_c6]
  connect_bd_net -net mopshub_top_board_16_0_cs_c7 [get_bd_ports cs_c7_0] [get_bd_pins mopshub_top_board_16_0/cs_c7]
  connect_bd_net -net mopshub_top_board_16_0_cs_c8 [get_bd_ports cs_c8_0] [get_bd_pins mopshub_top_board_16_0/cs_c8]
  connect_bd_net -net mopshub_top_board_16_0_cs_c9 [get_bd_ports cs_c9_0] [get_bd_pins mopshub_top_board_16_0/cs_c9]
  connect_bd_net -net mopshub_top_board_16_0_cs_c10 [get_bd_ports cs_c10_0] [get_bd_pins mopshub_top_board_16_0/cs_c10]
  connect_bd_net -net mopshub_top_board_16_0_cs_c11 [get_bd_ports cs_c11_0] [get_bd_pins mopshub_top_board_16_0/cs_c11]
  connect_bd_net -net mopshub_top_board_16_0_cs_c12 [get_bd_ports cs_c12_0] [get_bd_pins mopshub_top_board_16_0/cs_c12]
  connect_bd_net -net mopshub_top_board_16_0_cs_c13 [get_bd_ports cs_c13_0] [get_bd_pins mopshub_top_board_16_0/cs_c13]
  connect_bd_net -net mopshub_top_board_16_0_cs_c14 [get_bd_ports cs_c14_0] [get_bd_pins mopshub_top_board_16_0/cs_c14]
  connect_bd_net -net mopshub_top_board_16_0_cs_c15 [get_bd_ports cs_c15_0] [get_bd_pins mopshub_top_board_16_0/cs_c15]
  connect_bd_net -net mopshub_top_board_16_0_cs_m0 [get_bd_ports cs_m0_0] [get_bd_pins mopshub_top_board_16_0/cs_m0]
  connect_bd_net -net mopshub_top_board_16_0_cs_m1 [get_bd_ports cs_m1_0] [get_bd_pins mopshub_top_board_16_0/cs_m1]
  connect_bd_net -net mopshub_top_board_16_0_cs_m2 [get_bd_ports cs_m2_0] [get_bd_pins mopshub_top_board_16_0/cs_m2]
  connect_bd_net -net mopshub_top_board_16_0_cs_m3 [get_bd_ports cs_m3_0] [get_bd_pins mopshub_top_board_16_0/cs_m3]
  connect_bd_net -net mopshub_top_board_16_0_cs_m4 [get_bd_ports cs_m4_0] [get_bd_pins mopshub_top_board_16_0/cs_m4]
  connect_bd_net -net mopshub_top_board_16_0_cs_m5 [get_bd_ports cs_m5_0] [get_bd_pins mopshub_top_board_16_0/cs_m5]
  connect_bd_net -net mopshub_top_board_16_0_cs_m6 [get_bd_ports cs_m6_0] [get_bd_pins mopshub_top_board_16_0/cs_m6]
  connect_bd_net -net mopshub_top_board_16_0_cs_m7 [get_bd_ports cs_m7_0] [get_bd_pins mopshub_top_board_16_0/cs_m7]
  connect_bd_net -net mopshub_top_board_16_0_cs_m8 [get_bd_ports cs_m8_0] [get_bd_pins mopshub_top_board_16_0/cs_m8]
  connect_bd_net -net mopshub_top_board_16_0_cs_m9 [get_bd_ports cs_m9_0] [get_bd_pins mopshub_top_board_16_0/cs_m9]
  connect_bd_net -net mopshub_top_board_16_0_cs_m10 [get_bd_ports cs_m10_0] [get_bd_pins mopshub_top_board_16_0/cs_m10]
  connect_bd_net -net mopshub_top_board_16_0_cs_m11 [get_bd_ports cs_m11_0] [get_bd_pins mopshub_top_board_16_0/cs_m11]
  connect_bd_net -net mopshub_top_board_16_0_cs_m12 [get_bd_ports cs_m12_0] [get_bd_pins mopshub_top_board_16_0/cs_m12]
  connect_bd_net -net mopshub_top_board_16_0_cs_m13 [get_bd_ports cs_m13_0] [get_bd_pins mopshub_top_board_16_0/cs_m13]
  connect_bd_net -net mopshub_top_board_16_0_cs_m14 [get_bd_ports cs_m14_0] [get_bd_pins mopshub_top_board_16_0/cs_m14]
  connect_bd_net -net mopshub_top_board_16_0_cs_m15 [get_bd_ports cs_m15_0] [get_bd_pins mopshub_top_board_16_0/cs_m15]
  connect_bd_net -net mopshub_top_board_16_0_irq_can_rec [get_bd_ports irq_can_rec_0] [get_bd_pins mopshub_top_board_16_0/irq_can_rec]
  connect_bd_net -net mopshub_top_board_16_0_irq_can_tra [get_bd_ports irq_can_tra_0] [get_bd_pins mopshub_top_board_16_0/irq_can_tra]
  connect_bd_net -net mopshub_top_board_16_0_irq_elink_rec [get_bd_ports irq_elink_rec_0] [get_bd_pins mopshub_top_board_16_0/irq_elink_rec]
  connect_bd_net -net mopshub_top_board_16_0_irq_elink_tra [get_bd_ports irq_elink_tra_0] [get_bd_pins mopshub_top_board_16_0/irq_elink_tra]
  connect_bd_net -net mopshub_top_board_16_0_mosi_c [get_bd_ports mosi_c_0] [get_bd_pins mopshub_top_board_16_0/mosi_c]
  connect_bd_net -net mopshub_top_board_16_0_mosi_m [get_bd_ports mosi_m_0] [get_bd_pins mopshub_top_board_16_0/mosi_m]
  connect_bd_net -net mopshub_top_board_16_0_out_tx_serial [get_bd_ports out_tx_serial_0] [get_bd_pins mopshub_top_board_16_0/out_tx_serial]
  connect_bd_net -net mopshub_top_board_16_0_rx_data_rdy [get_bd_ports rx_data_rdy_0] [get_bd_pins mopshub_top_board_16_0/rx_data_rdy]
  connect_bd_net -net mopshub_top_board_16_0_sck_c [get_bd_ports sck_c_0] [get_bd_pins mopshub_top_board_16_0/sck_c]
  connect_bd_net -net mopshub_top_board_16_0_sck_m [get_bd_ports sck_m_0] [get_bd_pins mopshub_top_board_16_0/sck_m]
  connect_bd_net -net mopshub_top_board_16_0_simple_out [get_bd_ports simple_out_0] [get_bd_pins mopshub_top_board_16_0/simple_out]
  connect_bd_net -net mopshub_top_board_16_0_tmr_out [get_bd_ports tmr_out_0] [get_bd_pins mopshub_top_board_16_0/tmr_out]
  connect_bd_net -net mopshub_top_board_16_0_tx0 [get_bd_ports tx0_0] [get_bd_pins mopshub_top_board_16_0/tx0]
  connect_bd_net -net mopshub_top_board_16_0_tx1 [get_bd_ports tx1_0] [get_bd_pins mopshub_top_board_16_0/tx1]
  connect_bd_net -net mopshub_top_board_16_0_tx2 [get_bd_ports tx2_0] [get_bd_pins mopshub_top_board_16_0/tx2]
  connect_bd_net -net mopshub_top_board_16_0_tx3 [get_bd_ports tx3_0] [get_bd_pins mopshub_top_board_16_0/tx3]
  connect_bd_net -net mopshub_top_board_16_0_tx4 [get_bd_ports tx4_0] [get_bd_pins mopshub_top_board_16_0/tx4]
  connect_bd_net -net mopshub_top_board_16_0_tx5 [get_bd_ports tx5_0] [get_bd_pins mopshub_top_board_16_0/tx5]
  connect_bd_net -net mopshub_top_board_16_0_tx6 [get_bd_ports tx6_0] [get_bd_pins mopshub_top_board_16_0/tx6]
  connect_bd_net -net mopshub_top_board_16_0_tx7 [get_bd_ports tx7_0] [get_bd_pins mopshub_top_board_16_0/tx7]
  connect_bd_net -net mopshub_top_board_16_0_tx8 [get_bd_ports tx8_0] [get_bd_pins mopshub_top_board_16_0/tx8]
  connect_bd_net -net mopshub_top_board_16_0_tx9 [get_bd_ports tx9_0] [get_bd_pins mopshub_top_board_16_0/tx9]
  connect_bd_net -net mopshub_top_board_16_0_tx10 [get_bd_ports tx10_0] [get_bd_pins mopshub_top_board_16_0/tx10]
  connect_bd_net -net mopshub_top_board_16_0_tx11 [get_bd_ports tx11_0] [get_bd_pins mopshub_top_board_16_0/tx11]
  connect_bd_net -net mopshub_top_board_16_0_tx12 [get_bd_ports tx12_0] [get_bd_pins mopshub_top_board_16_0/tx12]
  connect_bd_net -net mopshub_top_board_16_0_tx13 [get_bd_ports tx13_0] [get_bd_pins mopshub_top_board_16_0/tx13]
  connect_bd_net -net mopshub_top_board_16_0_tx14 [get_bd_ports tx14_0] [get_bd_pins mopshub_top_board_16_0/tx14]
  connect_bd_net -net mopshub_top_board_16_0_tx15 [get_bd_ports tx15_0] [get_bd_pins mopshub_top_board_16_0/tx15]
  connect_bd_net -net mopshub_top_board_16_0_tx_data_rdy [get_bd_ports tx_data_rdy_0] [get_bd_pins mopshub_top_board_16_0/tx_data_rdy]
  connect_bd_net -net mopshub_top_board_16_0_tx_elink2bit [get_bd_pins mopshub_top_board_16_0/tx_elink2bit] [get_bd_pins selectio_wiz_2/data_out_from_device]
  connect_bd_net -net rx0_0_1 [get_bd_ports rx0_0] [get_bd_pins mopshub_top_board_16_0/rx0]
  connect_bd_net -net rx10_0_1 [get_bd_ports rx10_0] [get_bd_pins mopshub_top_board_16_0/rx10]
  connect_bd_net -net rx11_0_1 [get_bd_ports rx11_0] [get_bd_pins mopshub_top_board_16_0/rx11]
  connect_bd_net -net rx12_0_1 [get_bd_ports rx12_0] [get_bd_pins mopshub_top_board_16_0/rx12]
  connect_bd_net -net rx13_0_1 [get_bd_ports rx13_0] [get_bd_pins mopshub_top_board_16_0/rx13]
  connect_bd_net -net rx14_0_1 [get_bd_ports rx14_0] [get_bd_pins mopshub_top_board_16_0/rx14]
  connect_bd_net -net rx15_0_1 [get_bd_ports rx15_0] [get_bd_pins mopshub_top_board_16_0/rx15]
  connect_bd_net -net rx1_0_1 [get_bd_ports rx1_0] [get_bd_pins mopshub_top_board_16_0/rx1]
  connect_bd_net -net rx2_0_1 [get_bd_ports rx2_0] [get_bd_pins mopshub_top_board_16_0/rx2]
  connect_bd_net -net rx3_0_1 [get_bd_ports rx3_0] [get_bd_pins mopshub_top_board_16_0/rx3]
  connect_bd_net -net rx4_0_1 [get_bd_ports rx4_0] [get_bd_pins mopshub_top_board_16_0/rx4]
  connect_bd_net -net rx5_0_1 [get_bd_ports rx5_0] [get_bd_pins mopshub_top_board_16_0/rx5]
  connect_bd_net -net rx6_0_1 [get_bd_ports rx6_0] [get_bd_pins mopshub_top_board_16_0/rx6]
  connect_bd_net -net rx7_0_1 [get_bd_ports rx7_0] [get_bd_pins mopshub_top_board_16_0/rx7]
  connect_bd_net -net rx8_0_1 [get_bd_ports rx8_0] [get_bd_pins mopshub_top_board_16_0/rx8]
  connect_bd_net -net rx9_0_1 [get_bd_ports rx9_0] [get_bd_pins mopshub_top_board_16_0/rx9]
  connect_bd_net -net rx_elink_n_0_1 [get_bd_ports rx_elink_n_0] [get_bd_pins selectio_wiz_0/data_in_from_pins_n]
  connect_bd_net -net rx_elink_p_0_1 [get_bd_ports rx_elink_p_0] [get_bd_pins selectio_wiz_0/data_in_from_pins_p]
  connect_bd_net -net selectio_wiz_0_data_in_to_device [get_bd_pins mopshub_top_board_16_0/rx_elink2bit] [get_bd_pins selectio_wiz_0/data_in_to_device]
  connect_bd_net -net selectio_wiz_2_data_out_to_pins_n [get_bd_ports tx_elink_n_0] [get_bd_pins selectio_wiz_2/data_out_to_pins_n]
  connect_bd_net -net selectio_wiz_2_data_out_to_pins_p [get_bd_ports tx_elink_p_0] [get_bd_pins selectio_wiz_2/data_out_to_pins_p]
  connect_bd_net -net sem_controller_wrapp_0_status_classification [get_bd_pins ila_0/probe4] [get_bd_pins sem_controller_wrapp_0/status_classification]
  connect_bd_net -net sem_controller_wrapp_0_status_correction [get_bd_pins ila_0/probe3] [get_bd_pins sem_controller_wrapp_0/status_correction]
  connect_bd_net -net sem_controller_wrapp_0_status_essential [get_bd_pins ila_0/probe6] [get_bd_pins sem_controller_wrapp_0/status_essential]
  connect_bd_net -net sem_controller_wrapp_0_status_heartbeat [get_bd_pins ila_0/probe0] [get_bd_pins sem_controller_wrapp_0/status_heartbeat]
  connect_bd_net -net sem_controller_wrapp_0_status_initialization [get_bd_pins ila_0/probe1] [get_bd_pins sem_controller_wrapp_0/status_initialization]
  connect_bd_net -net sem_controller_wrapp_0_status_injection [get_bd_pins ila_0/probe5] [get_bd_pins sem_controller_wrapp_0/status_injection]
  connect_bd_net -net sem_controller_wrapp_0_status_observation [get_bd_pins ila_0/probe2] [get_bd_pins sem_controller_wrapp_0/status_observation]
  connect_bd_net -net sem_controller_wrapp_0_status_uncorrectable [get_bd_pins ila_0/probe7] [get_bd_pins sem_controller_wrapp_0/status_uncorrectable]
  connect_bd_net -net shift_clk_0_1 [get_bd_ports shift_clk_0] [get_bd_pins mopshub_top_board_16_0/shift_clk]
  connect_bd_net -net shift_data_0_1 [get_bd_ports shift_data_0] [get_bd_pins mopshub_top_board_16_0/shift_data]
  connect_bd_net -net shift_mode_0_1 [get_bd_ports shift_mode_0] [get_bd_pins mopshub_top_board_16_0/shift_mode]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins selectio_wiz_0/bitslip] [get_bd_pins xlconstant_bit/dout]
  connect_bd_net -net xlconstant_0_dout1 [get_bd_pins mopshub_top_board_16_0/mopshub_id] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins mopshub_top_board_16_0/reset] [get_bd_pins proc_sys_reset_0/mb_reset] [get_bd_pins selectio_wiz_0/io_reset] [get_bd_pins selectio_wiz_2/io_reset] [get_bd_pins sem_controller_wrapp_0/reset]
  connect_bd_net -net xlconstant_1_dout1 [get_bd_pins proc_sys_reset_0/ext_reset_in] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

}
# End of create_root_design()




proc available_tcl_procs { } {
   puts "##################################################################"
   puts "# Available Tcl procedures to recreate hierarchical blocks:"
   puts "#"
   puts "#    create_root_design"
   puts "#"
   puts "#"
   puts "# The following procedures will create hiearchical blocks with addressing "
   puts "# for IPs within those blocks and their sub-hierarchical blocks. Addressing "
   puts "# will not be handled outside those blocks:"
   puts "#"
   puts "#    create_root_design"
   puts "#"
   puts "##################################################################"
}

available_tcl_procs
