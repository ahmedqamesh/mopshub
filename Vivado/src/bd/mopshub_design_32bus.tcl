
################################################################
# This is a generated script based on design: mopshub_design_32bus
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
set scripts_vivado_version 2020.1
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
# source mopshub_design_32bus_script.tcl


# The design that will be created by this Tcl script contains the following 
# module references:
# mopsbub_top_board_32bus

# Please add the sources of those modules before sourcing this Tcl script.

# If there is no project opened, this script will create a
# project, but make sure you do not have an existing project
# <./myproj/project_1.xpr> in the current working folder.

set list_projs [get_projects -quiet]
if { $list_projs eq "" } {
   create_project project_1 myproj -part xc7a200tfbg484-2
}


# CHANGE DESIGN NAME HERE
variable design_name
set design_name mopshub_design_32bus

# If you do not already have an existing IP Integrator design open,
# you can create a design using the following command:
#    create_bd_design $design_name

# Creating design if needed
set errMsg ""
set nRet 0

set cur_design [current_bd_design -quiet]
set list_cells [get_bd_cells -quiet]

if { ${design_name} eq "" } {
   # USE CASES:
   #    1) Design_name not set

   set errMsg "Please set the variable <design_name> to a non-empty value."
   set nRet 1

} elseif { ${cur_design} ne "" && ${list_cells} eq "" } {
   # USE CASES:
   #    2): Current design opened AND is empty AND names same.
   #    3): Current design opened AND is empty AND names diff; design_name NOT in project.
   #    4): Current design opened AND is empty AND names diff; design_name exists in project.

   if { $cur_design ne $design_name } {
      common::send_gid_msg -ssname BD::TCL -id 2001 -severity "INFO" "Changing value of <design_name> from <$design_name> to <$cur_design> since current design is empty."
      set design_name [get_property NAME $cur_design]
   }
   common::send_gid_msg -ssname BD::TCL -id 2002 -severity "INFO" "Constructing design in IPI design <$cur_design>..."

} elseif { ${cur_design} ne "" && $list_cells ne "" && $cur_design eq $design_name } {
   # USE CASES:
   #    5) Current design opened AND has components AND same names.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 1
} elseif { [get_files -quiet ${design_name}.bd] ne "" } {
   # USE CASES: 
   #    6) Current opened design, has components, but diff names, design_name exists in project.
   #    7) No opened design, design_name exists in project.

   set errMsg "Design <$design_name> already exists in your project, please set the variable <design_name> to another value."
   set nRet 2

} else {
   # USE CASES:
   #    8) No opened design, design_name not in project.
   #    9) Current opened design, has components, but diff names, design_name not in project.

   common::send_gid_msg -ssname BD::TCL -id 2003 -severity "INFO" "Currently there is no design <$design_name> in project, so creating one..."

   create_bd_design $design_name

   common::send_gid_msg -ssname BD::TCL -id 2004 -severity "INFO" "Making design <$design_name> as current_bd_design."
   current_bd_design $design_name

}

common::send_gid_msg -ssname BD::TCL -id 2005 -severity "INFO" "Currently the variable <design_name> is equal to \"$design_name\"."

if { $nRet != 0 } {
   catch {common::send_gid_msg -ssname BD::TCL -id 2006 -severity "ERROR" $errMsg}
   return $nRet
}

set bCheckIPsPassed 1
##################################################################
# CHECK IPs
##################################################################
set bCheckIPs 1
if { $bCheckIPs == 1 } {
   set list_check_ips "\ 
xilinx.com:ip:xadc_wiz:3.3\
xilinx.com:ip:clk_wiz:6.0\
xilinx.com:ip:ila:6.2\
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
mopsbub_top_board_32bus\
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
  variable design_name

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
  set CLK_IN1_D_0 [ create_bd_intf_port -mode Slave -vlnv xilinx.com:interface:diff_clock_rtl:1.0 CLK_IN1_D_0 ]
  set_property -dict [ list \
   CONFIG.FREQ_HZ {200000000} \
   ] $CLK_IN1_D_0


  # Create ports
  set clk_out_n_0 [ create_bd_port -dir O clk_out_n_0 ]
  set clk_out_p_0 [ create_bd_port -dir O clk_out_p_0 ]
  set cs_c0_0 [ create_bd_port -dir O cs_c0_0 ]
  set cs_c10_0 [ create_bd_port -dir O cs_c10_0 ]
  set cs_c11_0 [ create_bd_port -dir O cs_c11_0 ]
  set cs_c12_0 [ create_bd_port -dir O cs_c12_0 ]
  set cs_c13_0 [ create_bd_port -dir O cs_c13_0 ]
  set cs_c14_0 [ create_bd_port -dir O cs_c14_0 ]
  set cs_c15_0 [ create_bd_port -dir O cs_c15_0 ]
  set cs_c16_0 [ create_bd_port -dir O cs_c16_0 ]
  set cs_c17_0 [ create_bd_port -dir O cs_c17_0 ]
  set cs_c18_0 [ create_bd_port -dir O cs_c18_0 ]
  set cs_c19_0 [ create_bd_port -dir O cs_c19_0 ]
  set cs_c1_0 [ create_bd_port -dir O cs_c1_0 ]
  set cs_c20_0 [ create_bd_port -dir O cs_c20_0 ]
  set cs_c21_0 [ create_bd_port -dir O cs_c21_0 ]
  set cs_c22_0 [ create_bd_port -dir O cs_c22_0 ]
  set cs_c23_0 [ create_bd_port -dir O cs_c23_0 ]
  set cs_c24_0 [ create_bd_port -dir O cs_c24_0 ]
  set cs_c25_0 [ create_bd_port -dir O cs_c25_0 ]
  set cs_c26_0 [ create_bd_port -dir O cs_c26_0 ]
  set cs_c27_0 [ create_bd_port -dir O cs_c27_0 ]
  set cs_c28_0 [ create_bd_port -dir O cs_c28_0 ]
  set cs_c29_0 [ create_bd_port -dir O cs_c29_0 ]
  set cs_c2_0 [ create_bd_port -dir O cs_c2_0 ]
  set cs_c30_0 [ create_bd_port -dir O cs_c30_0 ]
  set cs_c31_0 [ create_bd_port -dir O cs_c31_0 ]
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
  set cs_m16_0 [ create_bd_port -dir O cs_m16_0 ]
  set cs_m17_0 [ create_bd_port -dir O cs_m17_0 ]
  set cs_m18_0 [ create_bd_port -dir O cs_m18_0 ]
  set cs_m19_0 [ create_bd_port -dir O cs_m19_0 ]
  set cs_m1_0 [ create_bd_port -dir O cs_m1_0 ]
  set cs_m20_0 [ create_bd_port -dir O cs_m20_0 ]
  set cs_m21_0 [ create_bd_port -dir O cs_m21_0 ]
  set cs_m22_0 [ create_bd_port -dir O cs_m22_0 ]
  set cs_m23_0 [ create_bd_port -dir O cs_m23_0 ]
  set cs_m24_0 [ create_bd_port -dir O cs_m24_0 ]
  set cs_m25_0 [ create_bd_port -dir O cs_m25_0 ]
  set cs_m26_0 [ create_bd_port -dir O cs_m26_0 ]
  set cs_m27_0 [ create_bd_port -dir O cs_m27_0 ]
  set cs_m28_0 [ create_bd_port -dir O cs_m28_0 ]
  set cs_m29_0 [ create_bd_port -dir O cs_m29_0 ]
  set cs_m2_0 [ create_bd_port -dir O cs_m2_0 ]
  set cs_m30_0 [ create_bd_port -dir O cs_m30_0 ]
  set cs_m31_0 [ create_bd_port -dir O cs_m31_0 ]
  set cs_m3_0 [ create_bd_port -dir O cs_m3_0 ]
  set cs_m4_0 [ create_bd_port -dir O cs_m4_0 ]
  set cs_m5_0 [ create_bd_port -dir O cs_m5_0 ]
  set cs_m6_0 [ create_bd_port -dir O cs_m6_0 ]
  set cs_m7_0 [ create_bd_port -dir O cs_m7_0 ]
  set cs_m8_0 [ create_bd_port -dir O cs_m8_0 ]
  set cs_m9_0 [ create_bd_port -dir O cs_m9_0 ]
  set irq_can_rec_0 [ create_bd_port -dir O irq_can_rec_0 ]
  set irq_can_tra_0 [ create_bd_port -dir O irq_can_tra_0 ]
  set irq_elink_rec_0 [ create_bd_port -dir O irq_elink_rec_0 ]
  set irq_elink_tra_0 [ create_bd_port -dir O irq_elink_tra_0 ]
  set miso_c_0 [ create_bd_port -dir I miso_c_0 ]
  set miso_m_0 [ create_bd_port -dir I miso_m_0 ]
  set mosi_c_0 [ create_bd_port -dir O mosi_c_0 ]
  set mosi_m_0 [ create_bd_port -dir O mosi_m_0 ]
  set rx0_0 [ create_bd_port -dir I rx0_0 ]
  set rx10_0 [ create_bd_port -dir I rx10_0 ]
  set rx11_0 [ create_bd_port -dir I rx11_0 ]
  set rx12_0 [ create_bd_port -dir I rx12_0 ]
  set rx13_0 [ create_bd_port -dir I rx13_0 ]
  set rx14_0 [ create_bd_port -dir I rx14_0 ]
  set rx15_0 [ create_bd_port -dir I rx15_0 ]
  set rx16_0 [ create_bd_port -dir I rx16_0 ]
  set rx17_0 [ create_bd_port -dir I rx17_0 ]
  set rx18_0 [ create_bd_port -dir I rx18_0 ]
  set rx19_0 [ create_bd_port -dir I rx19_0 ]
  set rx1_0 [ create_bd_port -dir I rx1_0 ]
  set rx20_0 [ create_bd_port -dir I rx20_0 ]
  set rx21_0 [ create_bd_port -dir I rx21_0 ]
  set rx22_0 [ create_bd_port -dir I rx22_0 ]
  set rx23_0 [ create_bd_port -dir I rx23_0 ]
  set rx24_0 [ create_bd_port -dir I rx24_0 ]
  set rx25_0 [ create_bd_port -dir I rx25_0 ]
  set rx26_0 [ create_bd_port -dir I rx26_0 ]
  set rx27_0 [ create_bd_port -dir I rx27_0 ]
  set rx28_0 [ create_bd_port -dir I rx28_0 ]
  set rx29_0 [ create_bd_port -dir I rx29_0 ]
  set rx2_0 [ create_bd_port -dir I rx2_0 ]
  set rx30_0 [ create_bd_port -dir I rx30_0 ]
  set rx31_0 [ create_bd_port -dir I rx31_0 ]
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
  set tx0_0 [ create_bd_port -dir O tx0_0 ]
  set tx10_0 [ create_bd_port -dir O tx10_0 ]
  set tx11_0 [ create_bd_port -dir O tx11_0 ]
  set tx12_0 [ create_bd_port -dir O tx12_0 ]
  set tx13_0 [ create_bd_port -dir O tx13_0 ]
  set tx14_0 [ create_bd_port -dir O tx14_0 ]
  set tx15_0 [ create_bd_port -dir O tx15_0 ]
  set tx16_0 [ create_bd_port -dir O tx16_0 ]
  set tx17_0 [ create_bd_port -dir O tx17_0 ]
  set tx18_0 [ create_bd_port -dir O tx18_0 ]
  set tx19_0 [ create_bd_port -dir O tx19_0 ]
  set tx1_0 [ create_bd_port -dir O tx1_0 ]
  set tx20_0 [ create_bd_port -dir O tx20_0 ]
  set tx21_0 [ create_bd_port -dir O tx21_0 ]
  set tx22_0 [ create_bd_port -dir O tx22_0 ]
  set tx23_0 [ create_bd_port -dir O tx23_0 ]
  set tx24_0 [ create_bd_port -dir O tx24_0 ]
  set tx25_0 [ create_bd_port -dir O tx25_0 ]
  set tx26_0 [ create_bd_port -dir O tx26_0 ]
  set tx27_0 [ create_bd_port -dir O tx27_0 ]
  set tx28_0 [ create_bd_port -dir O tx28_0 ]
  set tx29_0 [ create_bd_port -dir O tx29_0 ]
  set tx2_0 [ create_bd_port -dir O tx2_0 ]
  set tx30_0 [ create_bd_port -dir O tx30_0 ]
  set tx31_0 [ create_bd_port -dir O tx31_0 ]
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

  # Create instance: XADC_IP, and set properties
  set XADC_IP [ create_bd_cell -type ip -vlnv xilinx.com:ip:xadc_wiz:3.3 XADC_IP ]
  set_property -dict [ list \
   CONFIG.ADC_CONVERSION_RATE {770} \
   CONFIG.AVERAGE_ENABLE_TEMPERATURE {true} \
   CONFIG.AVERAGE_ENABLE_VBRAM {false} \
   CONFIG.AVERAGE_ENABLE_VCCINT {false} \
   CONFIG.AVERAGE_ENABLE_VP_VN {true} \
   CONFIG.BIPOLAR_VAUXP14_VAUXN14 {false} \
   CONFIG.BIPOLAR_VAUXP7_VAUXN7 {false} \
   CONFIG.BIPOLAR_VP_VN {true} \
   CONFIG.CHANNEL_ENABLE_CALIBRATION {false} \
   CONFIG.CHANNEL_ENABLE_TEMPERATURE {true} \
   CONFIG.CHANNEL_ENABLE_VAUXP14_VAUXN14 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP15_VAUXN15 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP6_VAUXN6 {false} \
   CONFIG.CHANNEL_ENABLE_VAUXP7_VAUXN7 {false} \
   CONFIG.CHANNEL_ENABLE_VBRAM {false} \
   CONFIG.CHANNEL_ENABLE_VCCINT {false} \
   CONFIG.CHANNEL_ENABLE_VP_VN {true} \
   CONFIG.DCLK_FREQUENCY {40} \
   CONFIG.ENABLE_RESET {false} \
   CONFIG.EXTERNAL_MUX_CHANNEL {VP_VN} \
   CONFIG.INTERFACE_SELECTION {ENABLE_DRP} \
   CONFIG.OT_ALARM {false} \
   CONFIG.SEQUENCER_MODE {Continuous} \
   CONFIG.SINGLE_CHANNEL_SELECTION {TEMPERATURE} \
   CONFIG.USER_TEMP_ALARM {false} \
   CONFIG.VCCAUX_ALARM {false} \
   CONFIG.VCCINT_ALARM {false} \
   CONFIG.XADC_STARUP_SELECTION {channel_sequencer} \
 ] $XADC_IP

  # Create instance: clk_wiz_s, and set properties
  set clk_wiz_s [ create_bd_cell -type ip -vlnv xilinx.com:ip:clk_wiz:6.0 clk_wiz_s ]
  set_property -dict [ list \
   CONFIG.CLKIN1_JITTER_PS {50.0} \
   CONFIG.CLKOUT1_JITTER {213.786} \
   CONFIG.CLKOUT1_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT1_REQUESTED_OUT_FREQ {40.000} \
   CONFIG.CLKOUT1_USED {true} \
   CONFIG.CLKOUT2_JITTER {185.331} \
   CONFIG.CLKOUT2_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT2_REQUESTED_OUT_FREQ {80.000} \
   CONFIG.CLKOUT2_USED {true} \
   CONFIG.CLKOUT3_JITTER {162.464} \
   CONFIG.CLKOUT3_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT3_REQUESTED_OUT_FREQ {160.000} \
   CONFIG.CLKOUT3_USED {true} \
   CONFIG.CLKOUT4_JITTER {185.331} \
   CONFIG.CLKOUT4_PHASE_ERROR {196.976} \
   CONFIG.CLKOUT4_REQUESTED_OUT_FREQ {80.000} \
   CONFIG.CLKOUT4_USED {true} \
   CONFIG.CLKOUT5_JITTER {144.719} \
   CONFIG.CLKOUT5_PHASE_ERROR {114.212} \
   CONFIG.CLKOUT5_USED {false} \
   CONFIG.CLK_OUT1_PORT {clk_40} \
   CONFIG.CLK_OUT2_PORT {clk_tx_m} \
   CONFIG.CLK_OUT3_PORT {clk_rx_m} \
   CONFIG.CLK_OUT4_PORT {clk_m} \
   CONFIG.MMCM_CLKFBOUT_MULT_F {24.000} \
   CONFIG.MMCM_CLKIN1_PERIOD {5.000} \
   CONFIG.MMCM_CLKIN2_PERIOD {10.0} \
   CONFIG.MMCM_CLKOUT0_DIVIDE_F {24.000} \
   CONFIG.MMCM_CLKOUT1_DIVIDE {12} \
   CONFIG.MMCM_CLKOUT2_DIVIDE {6} \
   CONFIG.MMCM_CLKOUT3_DIVIDE {12} \
   CONFIG.MMCM_CLKOUT4_DIVIDE {1} \
   CONFIG.MMCM_DIVCLK_DIVIDE {5} \
   CONFIG.NUM_OUT_CLKS {4} \
   CONFIG.PRIM_IN_FREQ {200.000} \
   CONFIG.PRIM_SOURCE {Differential_clock_capable_pin} \
   CONFIG.USE_LOCKED {true} \
   CONFIG.USE_RESET {false} \
 ] $clk_wiz_s

  # Create instance: ila_0, and set properties
  set ila_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:ila:6.2 ila_0 ]
  set_property -dict [ list \
   CONFIG.ALL_PROBE_SAME_MU_CNT {2} \
   CONFIG.C_ADV_TRIGGER {true} \
   CONFIG.C_DATA_DEPTH {2048} \
   CONFIG.C_ENABLE_ILA_AXI_MON {false} \
   CONFIG.C_EN_STRG_QUAL {1} \
   CONFIG.C_MONITOR_TYPE {Native} \
   CONFIG.C_NUM_OF_PROBES {3} \
   CONFIG.C_PROBE0_MU_CNT {2} \
   CONFIG.C_PROBE0_WIDTH {1} \
   CONFIG.C_PROBE1_MU_CNT {2} \
   CONFIG.C_PROBE1_WIDTH {5} \
   CONFIG.C_PROBE2_MU_CNT {2} \
   CONFIG.C_PROBE3_MU_CNT {2} \
   CONFIG.C_PROBE4_MU_CNT {2} \
 ] $ila_0

  # Create instance: mopsbub_top_board_32_0, and set properties
  set block_name mopsbub_top_board_32bus
  set block_cell_name mopsbub_top_board_32_0
  if { [catch {set mopsbub_top_board_32_0 [create_bd_cell -type module -reference $block_name $block_cell_name] } errmsg] } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2095 -severity "ERROR" "Unable to add referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   } elseif { $mopsbub_top_board_32_0 eq "" } {
     catch {common::send_gid_msg -ssname BD::TCL -id 2096 -severity "ERROR" "Unable to referenced block <$block_name>. Please add the files for ${block_name}'s definition into the project."}
     return 1
   }
  
  # Create instance: selectio_wiz_0, and set properties
  set selectio_wiz_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_wiz_0 ]
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
 ] $selectio_wiz_0

  # Create instance: selectio_wiz_1, and set properties
  set selectio_wiz_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:selectio_wiz:5.1 selectio_wiz_1 ]
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
 ] $selectio_wiz_1

  # Create instance: xlconstant_0, and set properties
  set xlconstant_0 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_0 ]

  # Create instance: xlconstant_1, and set properties
  set xlconstant_1 [ create_bd_cell -type ip -vlnv xilinx.com:ip:xlconstant:1.1 xlconstant_1 ]
  set_property -dict [ list \
   CONFIG.CONST_VAL {0} \
 ] $xlconstant_1

  # Create interface connections
  connect_bd_intf_net -intf_net CLK_IN1_D_0_1 [get_bd_intf_ports CLK_IN1_D_0] [get_bd_intf_pins clk_wiz_s/CLK_IN1_D]

  # Create port connections
  connect_bd_net -net XADC_IP_channel_out [get_bd_pins XADC_IP/channel_out] [get_bd_pins ila_0/probe1]
  connect_bd_net -net XADC_IP_eoc_out [get_bd_pins XADC_IP/eoc_out] [get_bd_pins ila_0/probe2]
  connect_bd_net -net XADC_IP_eos_out [get_bd_pins XADC_IP/eos_out] [get_bd_pins ila_0/probe0]
  connect_bd_net -net clk_wiz_s_clk_40_s [get_bd_pins XADC_IP/dclk_in] [get_bd_pins clk_wiz_s/clk_40] [get_bd_pins ila_0/clk] [get_bd_pins mopsbub_top_board_32_0/clk_40] [get_bd_pins selectio_wiz_0/clk_div_in] [get_bd_pins selectio_wiz_1/clk_div_in]
  connect_bd_net -net clk_wiz_s_clk_m [get_bd_pins clk_wiz_s/clk_m] [get_bd_pins mopsbub_top_board_32_0/clk_m]
  connect_bd_net -net clk_wiz_s_clk_rx_m [get_bd_pins clk_wiz_s/clk_rx_m] [get_bd_pins selectio_wiz_1/clk_in]
  connect_bd_net -net clk_wiz_s_clk_tx_m [get_bd_pins clk_wiz_s/clk_tx_m] [get_bd_pins selectio_wiz_0/clk_in]
  connect_bd_net -net clk_wiz_s_locked [get_bd_pins clk_wiz_s/locked] [get_bd_pins mopsbub_top_board_32_0/locked]
  connect_bd_net -net miso_c_0_1 [get_bd_ports miso_c_0] [get_bd_pins mopsbub_top_board_32_0/miso_c]
  connect_bd_net -net miso_m_0_1 [get_bd_ports miso_m_0] [get_bd_pins mopsbub_top_board_32_0/miso_m]
  connect_bd_net -net mopsbub_top_board_32_0_clk_out_n [get_bd_ports clk_out_n_0] [get_bd_pins mopsbub_top_board_32_0/clk_out_n]
  connect_bd_net -net mopsbub_top_board_32_0_clk_out_p [get_bd_ports clk_out_p_0] [get_bd_pins mopsbub_top_board_32_0/clk_out_p]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c0 [get_bd_ports cs_c0_0] [get_bd_pins mopsbub_top_board_32_0/cs_c0]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c1 [get_bd_ports cs_c1_0] [get_bd_pins mopsbub_top_board_32_0/cs_c1]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c2 [get_bd_ports cs_c2_0] [get_bd_pins mopsbub_top_board_32_0/cs_c2]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c3 [get_bd_ports cs_c3_0] [get_bd_pins mopsbub_top_board_32_0/cs_c3]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c4 [get_bd_ports cs_c4_0] [get_bd_pins mopsbub_top_board_32_0/cs_c4]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c5 [get_bd_ports cs_c5_0] [get_bd_pins mopsbub_top_board_32_0/cs_c5]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c6 [get_bd_ports cs_c6_0] [get_bd_pins mopsbub_top_board_32_0/cs_c6]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c7 [get_bd_ports cs_c7_0] [get_bd_pins mopsbub_top_board_32_0/cs_c7]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c8 [get_bd_ports cs_c8_0] [get_bd_pins mopsbub_top_board_32_0/cs_c8]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c9 [get_bd_ports cs_c9_0] [get_bd_pins mopsbub_top_board_32_0/cs_c9]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c10 [get_bd_ports cs_c10_0] [get_bd_pins mopsbub_top_board_32_0/cs_c10]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c11 [get_bd_ports cs_c11_0] [get_bd_pins mopsbub_top_board_32_0/cs_c11]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c12 [get_bd_ports cs_c12_0] [get_bd_pins mopsbub_top_board_32_0/cs_c12]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c13 [get_bd_ports cs_c13_0] [get_bd_pins mopsbub_top_board_32_0/cs_c13]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c14 [get_bd_ports cs_c14_0] [get_bd_pins mopsbub_top_board_32_0/cs_c14]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c15 [get_bd_ports cs_c15_0] [get_bd_pins mopsbub_top_board_32_0/cs_c15]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c16 [get_bd_ports cs_c16_0] [get_bd_pins mopsbub_top_board_32_0/cs_c16]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c17 [get_bd_ports cs_c17_0] [get_bd_pins mopsbub_top_board_32_0/cs_c17]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c18 [get_bd_ports cs_c18_0] [get_bd_pins mopsbub_top_board_32_0/cs_c18]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c19 [get_bd_ports cs_c19_0] [get_bd_pins mopsbub_top_board_32_0/cs_c19]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c20 [get_bd_ports cs_c20_0] [get_bd_pins mopsbub_top_board_32_0/cs_c20]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c21 [get_bd_ports cs_c21_0] [get_bd_pins mopsbub_top_board_32_0/cs_c21]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c22 [get_bd_ports cs_c22_0] [get_bd_pins mopsbub_top_board_32_0/cs_c22]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c23 [get_bd_ports cs_c23_0] [get_bd_pins mopsbub_top_board_32_0/cs_c23]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c24 [get_bd_ports cs_c24_0] [get_bd_pins mopsbub_top_board_32_0/cs_c24]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c25 [get_bd_ports cs_c25_0] [get_bd_pins mopsbub_top_board_32_0/cs_c25]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c26 [get_bd_ports cs_c26_0] [get_bd_pins mopsbub_top_board_32_0/cs_c26]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c27 [get_bd_ports cs_c27_0] [get_bd_pins mopsbub_top_board_32_0/cs_c27]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c28 [get_bd_ports cs_c28_0] [get_bd_pins mopsbub_top_board_32_0/cs_c28]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c29 [get_bd_ports cs_c29_0] [get_bd_pins mopsbub_top_board_32_0/cs_c29]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c30 [get_bd_ports cs_c30_0] [get_bd_pins mopsbub_top_board_32_0/cs_c30]
  connect_bd_net -net mopsbub_top_board_32_0_cs_c31 [get_bd_ports cs_c31_0] [get_bd_pins mopsbub_top_board_32_0/cs_c31]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m0 [get_bd_ports cs_m0_0] [get_bd_pins mopsbub_top_board_32_0/cs_m0]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m1 [get_bd_ports cs_m1_0] [get_bd_pins mopsbub_top_board_32_0/cs_m1]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m2 [get_bd_ports cs_m2_0] [get_bd_pins mopsbub_top_board_32_0/cs_m2]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m3 [get_bd_ports cs_m3_0] [get_bd_pins mopsbub_top_board_32_0/cs_m3]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m4 [get_bd_ports cs_m4_0] [get_bd_pins mopsbub_top_board_32_0/cs_m4]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m5 [get_bd_ports cs_m5_0] [get_bd_pins mopsbub_top_board_32_0/cs_m5]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m6 [get_bd_ports cs_m6_0] [get_bd_pins mopsbub_top_board_32_0/cs_m6]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m7 [get_bd_ports cs_m7_0] [get_bd_pins mopsbub_top_board_32_0/cs_m7]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m8 [get_bd_ports cs_m8_0] [get_bd_pins mopsbub_top_board_32_0/cs_m8]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m9 [get_bd_ports cs_m9_0] [get_bd_pins mopsbub_top_board_32_0/cs_m9]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m10 [get_bd_ports cs_m10_0] [get_bd_pins mopsbub_top_board_32_0/cs_m10]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m11 [get_bd_ports cs_m11_0] [get_bd_pins mopsbub_top_board_32_0/cs_m11]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m12 [get_bd_ports cs_m12_0] [get_bd_pins mopsbub_top_board_32_0/cs_m12]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m13 [get_bd_ports cs_m13_0] [get_bd_pins mopsbub_top_board_32_0/cs_m13]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m14 [get_bd_ports cs_m14_0] [get_bd_pins mopsbub_top_board_32_0/cs_m14]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m15 [get_bd_ports cs_m15_0] [get_bd_pins mopsbub_top_board_32_0/cs_m15]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m16 [get_bd_ports cs_m16_0] [get_bd_pins mopsbub_top_board_32_0/cs_m16]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m17 [get_bd_ports cs_m17_0] [get_bd_pins mopsbub_top_board_32_0/cs_m17]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m18 [get_bd_ports cs_m18_0] [get_bd_pins mopsbub_top_board_32_0/cs_m18]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m19 [get_bd_ports cs_m19_0] [get_bd_pins mopsbub_top_board_32_0/cs_m19]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m20 [get_bd_ports cs_m20_0] [get_bd_pins mopsbub_top_board_32_0/cs_m20]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m21 [get_bd_ports cs_m21_0] [get_bd_pins mopsbub_top_board_32_0/cs_m21]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m22 [get_bd_ports cs_m22_0] [get_bd_pins mopsbub_top_board_32_0/cs_m22]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m23 [get_bd_ports cs_m23_0] [get_bd_pins mopsbub_top_board_32_0/cs_m23]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m24 [get_bd_ports cs_m24_0] [get_bd_pins mopsbub_top_board_32_0/cs_m24]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m25 [get_bd_ports cs_m25_0] [get_bd_pins mopsbub_top_board_32_0/cs_m25]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m26 [get_bd_ports cs_m26_0] [get_bd_pins mopsbub_top_board_32_0/cs_m26]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m27 [get_bd_ports cs_m27_0] [get_bd_pins mopsbub_top_board_32_0/cs_m27]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m28 [get_bd_ports cs_m28_0] [get_bd_pins mopsbub_top_board_32_0/cs_m28]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m29 [get_bd_ports cs_m29_0] [get_bd_pins mopsbub_top_board_32_0/cs_m29]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m30 [get_bd_ports cs_m30_0] [get_bd_pins mopsbub_top_board_32_0/cs_m30]
  connect_bd_net -net mopsbub_top_board_32_0_cs_m31 [get_bd_ports cs_m31_0] [get_bd_pins mopsbub_top_board_32_0/cs_m31]
  connect_bd_net -net mopsbub_top_board_32_0_irq_can_rec [get_bd_ports irq_can_rec_0] [get_bd_pins mopsbub_top_board_32_0/irq_can_rec]
  connect_bd_net -net mopsbub_top_board_32_0_irq_can_tra [get_bd_ports irq_can_tra_0] [get_bd_pins mopsbub_top_board_32_0/irq_can_tra]
  connect_bd_net -net mopsbub_top_board_32_0_irq_elink_rec [get_bd_ports irq_elink_rec_0] [get_bd_pins mopsbub_top_board_32_0/irq_elink_rec]
  connect_bd_net -net mopsbub_top_board_32_0_irq_elink_tra [get_bd_ports irq_elink_tra_0] [get_bd_pins mopsbub_top_board_32_0/irq_elink_tra]
  connect_bd_net -net mopsbub_top_board_32_0_mosi_c [get_bd_ports mosi_c_0] [get_bd_pins mopsbub_top_board_32_0/mosi_c]
  connect_bd_net -net mopsbub_top_board_32_0_mosi_m [get_bd_ports mosi_m_0] [get_bd_pins mopsbub_top_board_32_0/mosi_m]
  connect_bd_net -net mopsbub_top_board_32_0_rx_data_rdy [get_bd_ports rx_data_rdy_0] [get_bd_pins mopsbub_top_board_32_0/rx_data_rdy]
  connect_bd_net -net mopsbub_top_board_32_0_sck_c [get_bd_ports sck_c_0] [get_bd_pins mopsbub_top_board_32_0/sck_c]
  connect_bd_net -net mopsbub_top_board_32_0_sck_m [get_bd_ports sck_m_0] [get_bd_pins mopsbub_top_board_32_0/sck_m]
  connect_bd_net -net mopsbub_top_board_32_0_tx0 [get_bd_ports tx0_0] [get_bd_pins mopsbub_top_board_32_0/tx0]
  connect_bd_net -net mopsbub_top_board_32_0_tx1 [get_bd_ports tx1_0] [get_bd_pins mopsbub_top_board_32_0/tx1]
  connect_bd_net -net mopsbub_top_board_32_0_tx2 [get_bd_ports tx2_0] [get_bd_pins mopsbub_top_board_32_0/tx2]
  connect_bd_net -net mopsbub_top_board_32_0_tx3 [get_bd_ports tx3_0] [get_bd_pins mopsbub_top_board_32_0/tx3]
  connect_bd_net -net mopsbub_top_board_32_0_tx4 [get_bd_ports tx4_0] [get_bd_pins mopsbub_top_board_32_0/tx4]
  connect_bd_net -net mopsbub_top_board_32_0_tx5 [get_bd_ports tx5_0] [get_bd_pins mopsbub_top_board_32_0/tx5]
  connect_bd_net -net mopsbub_top_board_32_0_tx6 [get_bd_ports tx6_0] [get_bd_pins mopsbub_top_board_32_0/tx6]
  connect_bd_net -net mopsbub_top_board_32_0_tx7 [get_bd_ports tx7_0] [get_bd_pins mopsbub_top_board_32_0/tx7]
  connect_bd_net -net mopsbub_top_board_32_0_tx8 [get_bd_ports tx8_0] [get_bd_pins mopsbub_top_board_32_0/tx8]
  connect_bd_net -net mopsbub_top_board_32_0_tx9 [get_bd_ports tx9_0] [get_bd_pins mopsbub_top_board_32_0/tx9]
  connect_bd_net -net mopsbub_top_board_32_0_tx10 [get_bd_ports tx10_0] [get_bd_pins mopsbub_top_board_32_0/tx10]
  connect_bd_net -net mopsbub_top_board_32_0_tx11 [get_bd_ports tx11_0] [get_bd_pins mopsbub_top_board_32_0/tx11]
  connect_bd_net -net mopsbub_top_board_32_0_tx12 [get_bd_ports tx12_0] [get_bd_pins mopsbub_top_board_32_0/tx12]
  connect_bd_net -net mopsbub_top_board_32_0_tx13 [get_bd_ports tx13_0] [get_bd_pins mopsbub_top_board_32_0/tx13]
  connect_bd_net -net mopsbub_top_board_32_0_tx14 [get_bd_ports tx14_0] [get_bd_pins mopsbub_top_board_32_0/tx14]
  connect_bd_net -net mopsbub_top_board_32_0_tx15 [get_bd_ports tx15_0] [get_bd_pins mopsbub_top_board_32_0/tx15]
  connect_bd_net -net mopsbub_top_board_32_0_tx16 [get_bd_ports tx16_0] [get_bd_pins mopsbub_top_board_32_0/tx16]
  connect_bd_net -net mopsbub_top_board_32_0_tx17 [get_bd_ports tx17_0] [get_bd_pins mopsbub_top_board_32_0/tx17]
  connect_bd_net -net mopsbub_top_board_32_0_tx18 [get_bd_ports tx18_0] [get_bd_pins mopsbub_top_board_32_0/tx18]
  connect_bd_net -net mopsbub_top_board_32_0_tx19 [get_bd_ports tx19_0] [get_bd_pins mopsbub_top_board_32_0/tx19]
  connect_bd_net -net mopsbub_top_board_32_0_tx20 [get_bd_ports tx20_0] [get_bd_pins mopsbub_top_board_32_0/tx20]
  connect_bd_net -net mopsbub_top_board_32_0_tx21 [get_bd_ports tx21_0] [get_bd_pins mopsbub_top_board_32_0/tx21]
  connect_bd_net -net mopsbub_top_board_32_0_tx22 [get_bd_ports tx22_0] [get_bd_pins mopsbub_top_board_32_0/tx22]
  connect_bd_net -net mopsbub_top_board_32_0_tx23 [get_bd_ports tx23_0] [get_bd_pins mopsbub_top_board_32_0/tx23]
  connect_bd_net -net mopsbub_top_board_32_0_tx24 [get_bd_ports tx24_0] [get_bd_pins mopsbub_top_board_32_0/tx24]
  connect_bd_net -net mopsbub_top_board_32_0_tx25 [get_bd_ports tx25_0] [get_bd_pins mopsbub_top_board_32_0/tx25]
  connect_bd_net -net mopsbub_top_board_32_0_tx26 [get_bd_ports tx26_0] [get_bd_pins mopsbub_top_board_32_0/tx26]
  connect_bd_net -net mopsbub_top_board_32_0_tx27 [get_bd_ports tx27_0] [get_bd_pins mopsbub_top_board_32_0/tx27]
  connect_bd_net -net mopsbub_top_board_32_0_tx28 [get_bd_ports tx28_0] [get_bd_pins mopsbub_top_board_32_0/tx28]
  connect_bd_net -net mopsbub_top_board_32_0_tx29 [get_bd_ports tx29_0] [get_bd_pins mopsbub_top_board_32_0/tx29]
  connect_bd_net -net mopsbub_top_board_32_0_tx30 [get_bd_ports tx30_0] [get_bd_pins mopsbub_top_board_32_0/tx30]
  connect_bd_net -net mopsbub_top_board_32_0_tx31 [get_bd_ports tx31_0] [get_bd_pins mopsbub_top_board_32_0/tx31]
  connect_bd_net -net mopsbub_top_board_32_0_tx_data_rdy [get_bd_ports tx_data_rdy_0] [get_bd_pins mopsbub_top_board_32_0/tx_data_rdy]
  connect_bd_net -net mopsbub_top_board_32_0_tx_elink2bit [get_bd_pins mopsbub_top_board_32_0/tx_elink2bit] [get_bd_pins selectio_wiz_0/data_out_from_device]
  connect_bd_net -net mopshub_top_board_0_tx_elink_n [get_bd_ports tx_elink_n_0] [get_bd_pins selectio_wiz_0/data_out_to_pins_n]
  connect_bd_net -net mopshub_top_board_0_tx_elink_p [get_bd_ports tx_elink_p_0] [get_bd_pins selectio_wiz_0/data_out_to_pins_p]
  connect_bd_net -net rx0_0_1 [get_bd_ports rx0_0] [get_bd_pins mopsbub_top_board_32_0/rx0]
  connect_bd_net -net rx10_0_1 [get_bd_ports rx10_0] [get_bd_pins mopsbub_top_board_32_0/rx10]
  connect_bd_net -net rx11_0_1 [get_bd_ports rx11_0] [get_bd_pins mopsbub_top_board_32_0/rx11]
  connect_bd_net -net rx12_0_1 [get_bd_ports rx12_0] [get_bd_pins mopsbub_top_board_32_0/rx12]
  connect_bd_net -net rx13_0_1 [get_bd_ports rx13_0] [get_bd_pins mopsbub_top_board_32_0/rx13]
  connect_bd_net -net rx14_0_1 [get_bd_ports rx14_0] [get_bd_pins mopsbub_top_board_32_0/rx14]
  connect_bd_net -net rx15_0_1 [get_bd_ports rx15_0] [get_bd_pins mopsbub_top_board_32_0/rx15]
  connect_bd_net -net rx16_0_1 [get_bd_ports rx16_0] [get_bd_pins mopsbub_top_board_32_0/rx16]
  connect_bd_net -net rx17_0_1 [get_bd_ports rx17_0] [get_bd_pins mopsbub_top_board_32_0/rx17]
  connect_bd_net -net rx18_0_1 [get_bd_ports rx18_0] [get_bd_pins mopsbub_top_board_32_0/rx18]
  connect_bd_net -net rx19_0_1 [get_bd_ports rx19_0] [get_bd_pins mopsbub_top_board_32_0/rx19]
  connect_bd_net -net rx1_0_1 [get_bd_ports rx1_0] [get_bd_pins mopsbub_top_board_32_0/rx1]
  connect_bd_net -net rx20_0_1 [get_bd_ports rx20_0] [get_bd_pins mopsbub_top_board_32_0/rx20]
  connect_bd_net -net rx21_0_1 [get_bd_ports rx21_0] [get_bd_pins mopsbub_top_board_32_0/rx21]
  connect_bd_net -net rx22_0_1 [get_bd_ports rx22_0] [get_bd_pins mopsbub_top_board_32_0/rx22]
  connect_bd_net -net rx23_0_1 [get_bd_ports rx23_0] [get_bd_pins mopsbub_top_board_32_0/rx23]
  connect_bd_net -net rx24_0_1 [get_bd_ports rx24_0] [get_bd_pins mopsbub_top_board_32_0/rx24]
  connect_bd_net -net rx25_0_1 [get_bd_ports rx25_0] [get_bd_pins mopsbub_top_board_32_0/rx25]
  connect_bd_net -net rx26_0_1 [get_bd_ports rx26_0] [get_bd_pins mopsbub_top_board_32_0/rx26]
  connect_bd_net -net rx27_0_1 [get_bd_ports rx27_0] [get_bd_pins mopsbub_top_board_32_0/rx27]
  connect_bd_net -net rx28_0_1 [get_bd_ports rx28_0] [get_bd_pins mopsbub_top_board_32_0/rx28]
  connect_bd_net -net rx29_0_1 [get_bd_ports rx29_0] [get_bd_pins mopsbub_top_board_32_0/rx29]
  connect_bd_net -net rx2_0_1 [get_bd_ports rx2_0] [get_bd_pins mopsbub_top_board_32_0/rx2]
  connect_bd_net -net rx30_0_1 [get_bd_ports rx30_0] [get_bd_pins mopsbub_top_board_32_0/rx30]
  connect_bd_net -net rx31_0_1 [get_bd_ports rx31_0] [get_bd_pins mopsbub_top_board_32_0/rx31]
  connect_bd_net -net rx3_0_1 [get_bd_ports rx3_0] [get_bd_pins mopsbub_top_board_32_0/rx3]
  connect_bd_net -net rx4_0_1 [get_bd_ports rx4_0] [get_bd_pins mopsbub_top_board_32_0/rx4]
  connect_bd_net -net rx5_0_1 [get_bd_ports rx5_0] [get_bd_pins mopsbub_top_board_32_0/rx5]
  connect_bd_net -net rx6_0_1 [get_bd_ports rx6_0] [get_bd_pins mopsbub_top_board_32_0/rx6]
  connect_bd_net -net rx7_0_1 [get_bd_ports rx7_0] [get_bd_pins mopsbub_top_board_32_0/rx7]
  connect_bd_net -net rx8_0_1 [get_bd_ports rx8_0] [get_bd_pins mopsbub_top_board_32_0/rx8]
  connect_bd_net -net rx9_0_1 [get_bd_ports rx9_0] [get_bd_pins mopsbub_top_board_32_0/rx9]
  connect_bd_net -net rx_elink_n_0_1 [get_bd_ports rx_elink_n_0] [get_bd_pins selectio_wiz_1/data_in_from_pins_n]
  connect_bd_net -net rx_elink_p_0_1 [get_bd_ports rx_elink_p_0] [get_bd_pins selectio_wiz_1/data_in_from_pins_p]
  connect_bd_net -net selectio_wiz_1_data_in_to_device [get_bd_pins mopsbub_top_board_32_0/rx_elink2bit] [get_bd_pins selectio_wiz_1/data_in_to_device]
  connect_bd_net -net xlconstant_0_dout [get_bd_pins selectio_wiz_1/bitslip] [get_bd_pins xlconstant_0/dout]
  connect_bd_net -net xlconstant_1_dout [get_bd_pins selectio_wiz_0/io_reset] [get_bd_pins selectio_wiz_1/io_reset] [get_bd_pins xlconstant_1/dout]

  # Create address segments


  # Restore current instance
  current_bd_instance $oldCurInst

  validate_bd_design
  save_bd_design
}
# End of create_root_design()


##################################################################
# MAIN FLOW
##################################################################

create_root_design ""


