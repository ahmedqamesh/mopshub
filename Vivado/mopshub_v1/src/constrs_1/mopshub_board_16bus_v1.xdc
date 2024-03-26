# Memory Device :mt25ql128-spi-x1_x2_x4
#SPI power signals
set_property IOSTANDARD LVCMOS33 [get_ports cs_c*]
set_property PACKAGE_PIN D19 [get_ports cs_c0_0]
set_property PACKAGE_PIN B15 [get_ports cs_c1_0]
set_property PACKAGE_PIN A16 [get_ports cs_c2_0]
set_property PACKAGE_PIN F20 [get_ports cs_c3_0]
set_property PACKAGE_PIN M17 [get_ports cs_c4_0]
set_property PACKAGE_PIN B21 [get_ports cs_c5_0]
set_property PACKAGE_PIN E22 [get_ports cs_c6_0]
set_property PACKAGE_PIN F18 [get_ports cs_c7_0]
set_property PACKAGE_PIN A19 [get_ports cs_c8_0]
set_property PACKAGE_PIN G20 [get_ports cs_c9_0]
set_property PACKAGE_PIN K21 [get_ports cs_c10_0]
set_property PACKAGE_PIN N22 [get_ports cs_c11_0]
set_property PACKAGE_PIN K19 [get_ports cs_c12_0]
set_property PACKAGE_PIN J19 [get_ports cs_c13_0]
set_property PACKAGE_PIN J21 [get_ports cs_c14_0]
set_property PACKAGE_PIN N20 [get_ports cs_c15_0]


set_property IOSTANDARD LVCMOS33 [get_ports sck_c_0]
set_property PACKAGE_PIN R19 [get_ports sck_c_0]
set_property PACKAGE_PIN R18 [get_ports miso_c_0]
set_property PACKAGE_PIN P19 [get_ports mosi_c_0]
#set_property DIRECTION IN [get_ports miso_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_c_0]
#set_property DIRECTION OUT [get_ports mosi_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_c_0]

#SPI Monitor signals
set_property IOSTANDARD LVCMOS33 [get_ports cs_m*]
set_property PACKAGE_PIN E19 [get_ports cs_m0_0]
set_property PACKAGE_PIN F19 [get_ports cs_m1_0]
set_property PACKAGE_PIN A15 [get_ports cs_m2_0]
set_property PACKAGE_PIN D17 [get_ports cs_m3_0]
set_property PACKAGE_PIN J16 [get_ports cs_m4_0]
set_property PACKAGE_PIN A21 [get_ports cs_m5_0]
set_property PACKAGE_PIN D21 [get_ports cs_m6_0]
set_property PACKAGE_PIN G22 [get_ports cs_m7_0]
set_property PACKAGE_PIN A18 [get_ports cs_m8_0]
set_property PACKAGE_PIN A13 [get_ports cs_m9_0]
set_property PACKAGE_PIN J22 [get_ports cs_m10_0]
set_property PACKAGE_PIN M22 [get_ports cs_m11_0]
set_property PACKAGE_PIN H17 [get_ports cs_m12_0]
set_property PACKAGE_PIN L21 [get_ports cs_m13_0]
set_property PACKAGE_PIN J20 [get_ports cs_m14_0]
set_property PACKAGE_PIN C14 [get_ports cs_m15_0]

set_property PACKAGE_PIN U18 [get_ports sck_m_0]
set_property PACKAGE_PIN U17 [get_ports mosi_m_0]
set_property PACKAGE_PIN P14 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports sck_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports sck_m_0]
#set_property DIRECTION IN [get_ports miso_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports mosi_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_m_0]

## Define Master clk in (system clock)
set_property PACKAGE_PIN R4 [get_portsclk_sys_clk_p]
set_property PACKAGE_PIN T4 [get_ports clk_sys_clk_n]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_sys_clk_p]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_sys_clk_n]

#Input clk_elink
#Get the clk_elink from the ethernet socket
#set_property PACKAGE_PIN W9 [get_ports clk_ext_clk_p]
#set_property PACKAGE_PIN Y9 [get_ports clk_ext_clk_n]
#set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_ext_clk_p]
#set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_ext_clk_n]

## Input rx_elink
#Get the rx_elink to the ethernet socket
set_property PACKAGE_PIN AA8 [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_n_0]

## Output tx_elink
#Get the tx_elink of the ethernet socket
set_property PACKAGE_PIN AB7 [get_ports {tx_elink_p_0[0]}]
set_property PACKAGE_PIN AB6 [get_ports {tx_elink_n_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_p_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_n_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_p_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_n_0[0]}]


## Define clk out
#Get the clock out of the ethernet socket
set_property PACKAGE_PIN W9 [get_ports clk_out_p_0]
set_property PACKAGE_PIN Y9 [get_ports clk_out_n_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_n_0]
#AUX2 P/N gives output a differential signal from the FPGA.
#AUX1 and AUX3 have a 100 Ohm termination resistor between the P and N lines as they were meant for differential input signals.
#set_property PACKAGE_PIN P16 [get_ports clk_out_p_0]
#set_property PACKAGE_PIN R17 [get_ports clk_out_n_0]
#set_property IOSTANDARD TMDS_33 [get_ports clk_out_p_0]
#set_property IOSTANDARD TMDS_33 [get_ports clk_out_n_0]

#set_property PACKAGE_PIN U19 [get_ports rx_fifo_full_rdy_0]
#Rx CAN signals
set_property IOSTANDARD LVCMOS33 [get_ports rx0_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx1_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx2_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx3_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx4_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx5_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx6_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx7_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx8_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx9_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx10_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx11_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx12_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx13_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx14_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx15_0]


set_property PACKAGE_PIN N19 [get_ports rx15_0]
set_property PACKAGE_PIN M21 [get_ports rx14_0]
set_property PACKAGE_PIN H18 [get_ports rx13_0]
set_property PACKAGE_PIN G16 [get_ports rx12_0]
set_property PACKAGE_PIN C20 [get_ports rx11_0]
set_property PACKAGE_PIN C15 [get_ports rx10_0]
set_property PACKAGE_PIN H22 [get_ports rx9_0]
set_property PACKAGE_PIN G21 [get_ports rx8_0]
set_property PACKAGE_PIN E21 [get_ports rx7_0]
set_property PACKAGE_PIN C19 [get_ports rx6_0]
set_property PACKAGE_PIN B18 [get_ports rx5_0]
set_property PACKAGE_PIN A14 [get_ports rx4_0]
set_property PACKAGE_PIN B22 [get_ports rx3_0]
set_property PACKAGE_PIN A20 [get_ports rx2_0]
set_property PACKAGE_PIN C17 [get_ports rx1_0]
set_property PACKAGE_PIN D16 [get_ports rx0_0]

#Tx CAN signals
set_property IOSTANDARD LVCMOS33 [get_ports tx0_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx1_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx2_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx3_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx4_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx5_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx6_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx7_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx8_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx9_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx10_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx11_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx12_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx13_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx14_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx15_0]

set_property PACKAGE_PIN M20 [get_ports tx15_0]
set_property PACKAGE_PIN K18 [get_ports tx14_0]
set_property PACKAGE_PIN H19 [get_ports tx13_0]
set_property PACKAGE_PIN G15 [get_ports tx12_0]
set_property PACKAGE_PIN D20 [get_ports tx11_0]
set_property PACKAGE_PIN K22 [get_ports tx10_0]
set_property PACKAGE_PIN H20 [get_ports tx9_0]
set_property PACKAGE_PIN D22 [get_ports tx8_0]
set_property PACKAGE_PIN E18 [get_ports tx7_0]
set_property PACKAGE_PIN C18 [get_ports tx6_0]
set_property PACKAGE_PIN B17 [get_ports tx5_0]
set_property PACKAGE_PIN F21 [get_ports tx4_0]
set_property PACKAGE_PIN C22 [get_ports tx3_0]
set_property PACKAGE_PIN B20 [get_ports tx2_0]
set_property PACKAGE_PIN B16 [get_ports tx1_0]
set_property PACKAGE_PIN E16 [get_ports tx0_0]
#UART signals
#AUX[3]
set_property PACKAGE_PIN N17 [get_ports out_tx_serial_0]
#AUX[4]
set_property PACKAGE_PIN N15 [get_ports in_rx_serial_0]
set_property IOSTANDARD LVCMOS33 [get_ports out_tx_serial_0]
set_property IOSTANDARD LVCMOS33 [get_ports in_rx_serial_0]
## DBG Signals
set_property IOSTANDARD LVCMOS33 [get_ports tx_data_rdy_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_data_rdy_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_tra_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_can_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_can_tra_0]
#set_property IOSTANDARD LVCMOS33 [get_ports endwait_all_0]
#set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_dbg_0]
#set_property IOSTANDARD LVCMOS33 [get_ports seialize_data_stream_0]
#set_property IOSTANDARD LVCMOS33 [get_ports tx_fifo_full_rdy_0]
#LED1
set_property PACKAGE_PIN E14 [get_ports irq_elink_tra_0]
#LED2
set_property PACKAGE_PIN E13 [get_ports irq_elink_rec_0]
#LED3
set_property PACKAGE_PIN D15 [get_ports tx_data_rdy_0]
#LED4
set_property PACKAGE_PIN D14 [get_ports rx_data_rdy_0]
#LED5
set_property PACKAGE_PIN C13 [get_ports irq_can_rec_0]
#LED6
set_property PACKAGE_PIN B13 [get_ports irq_can_tra_0]
#LED7
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
####################################################################################################################################
# TMR shift Register
#AUX[1]
set_property PACKAGE_PIN P15 [get_ports simple_out_0]
#AUX[2]
set_property PACKAGE_PIN P16 [get_ports tmr_out_0]
#AUX_N[1]
set_property PACKAGE_PIN R16 [get_ports shift_data_0]
#AUX_N[2]
set_property PACKAGE_PIN R17 [get_ports shift_mode_0]
#AUX_N[3]
set_property PACKAGE_PIN P17 [get_ports shift_clk_0]
set_property IOSTANDARD LVCMOS33 [get_ports simple_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_mode_0]
set_property IOSTANDARD LVCMOS33 [get_ports tmr_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_data_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_clk_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mopshub_design_16bus_i/mopshub_top_board_16_0/inst/seu_shift_combined0/clk]
####################################################################################################################################
#MultiBoot Bitstream Properties
#enables the Fallback option. [This enables loading the default bitstream when configuration attempt fails].
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
# allows the FPGA to use an internal configuration mode for configuration.
set_property BITSTREAM.CONFIG.PROG_MODE INTERNAL [current_project]
#This command tells Vivado that the SPI flash memory you are using for configuration can handle 32-bit addresses.
#This allows you to access a larger storage space within the flash memory
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design] # This causes error
#The FPGA is configured to reboot (restart) itself automatically after loading a new configuration
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT ENABLE [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00510000 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00A20000 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property CONFIG_MODE SPIx4 [current_design]
set_property BITSTREAM.CONFIG.CONFIGRATE 40 [current_design]
#  used to configure the time that the FPGA waits for the configuration process to complete before transitioning to user mode.
#This timer is important because it ensures that the configuration process has been successfully completed before the FPGA starts running your user logic.
#set_property BITSTREAM.CONFIG.TIMER_CFG 0x10000 [current_design]
####################################################################################################################################
## Constraints on logic placement. The controller and its
## shims, which are the soft error mitigation solution, need
## to be reasonably area constrained.  This keeps everything
## near the configuration logic and also helps in generating
## a reasonable slice count estimate for reliability estimates.
create_pblock SEM_CONTROLLER
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells -quiet mopshub_design_16bus_i/sem_controller_wrapp_0/inst/sem_0_sem_controller0/*]
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells mopshub_design_16bus_i/sem_controller_wrapp_0/inst/sem_0_sem_controller0]
## Force ICAP to the required (top) site in the device.
## Force FRAME_ECC to the required (only) site in the device.
set_property LOC FRAME_ECC_X0Y0 [get_cells mopshub_design_16bus_i/sem_controller_wrapp_0/inst/sem_0_sem_cfg0/frame_ecc_init0]
set_property LOC ICAP_X0Y1 [get_cells mopshub_design_16bus_i/sem_controller_wrapp_0/inst/sem_0_sem_cfg0/icap_init0]


############################################################
# Debug Core Constraints                                 #
############################################################

