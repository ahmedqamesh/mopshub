############################################################
# Physical Constraints                                     #
############################################################
#Rx CAN signals
set_property PACKAGE_PIN B21 [get_ports rx0_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx0_0]

#Tx CAN signals
set_property PACKAGE_PIN A20 [get_ports tx0_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx0_0]

## DBG Signals
#GPIO_LED_0 [DS38.2]
set_property PACKAGE_PIN AG14 [get_ports rx_data_rdy_0]
#GPIO_LED_1 [DS37.2]
set_property PACKAGE_PIN AF13 [get_ports led_0]
#GPIO_LED_2 [DS39.2]
set_property PACKAGE_PIN AE13 [get_ports tx_data_rdy_0]
#GPIO_LED_3 [DS40.2]
set_property PACKAGE_PIN AJ14 [get_ports irq_elink_dbg_0]
#GPIO_LED_4 [DS41.2]
set_property PACKAGE_PIN AJ15 [get_ports irq_elink_rec_0]
#GPIO_LED_5 [DS42.2]
set_property PACKAGE_PIN AH13 [get_ports irq_elink_tra_0]
#GPIO_LED_6 [DS43.2]
set_property PACKAGE_PIN AH14 [get_ports irq_can_rec_0]
#GPIO_LED_7 [DS44.2]
set_property PACKAGE_PIN AL12 [get_ports irq_can_tra_0]

set_property IOSTANDARD LVCMOS33 [get_ports led_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx_data_rdy_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_dbg_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_elink_tra_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_can_rec_0]
set_property IOSTANDARD LVCMOS33 [get_ports irq_can_tra_0]
set_property IOSTANDARD LVCMOS33 [get_ports rx_data_rdy_0]
#GPIO_SW_N (SW18.3)
set_property package_pin AG15 [get_ports endwait_all_0]
#GPIO_SW_C (SW15.3)
set_property PACKAGE_PIN AG13 [get_ports osc_auto_trim_mopshub_0]
#GPIO_SW_E (SW17.3)
set_property PACKAGE_PIN AE14 [get_ports dbg_elink_0]

set_property IOSTANDARD LVCMOS33 [get_ports osc_auto_trim_mopshub_0]
set_property IOSTANDARD LVCMOS33 [get_ports endwait_all_0]
set_property IOSTANDARD LVCMOS33 [get_ports dbg_elink_0]

#set_property IOSTANDARD LVCMOS33 [get_ports seialize_data_stream_0]
#set_property PACKAGE_PIN AF15 [get_ports seialize_data_stream_0]
set_property PACKAGE_PIN AM13 [get_ports reset]
############################################################
# MOPSHUB to/from EMCI                                     #
############################################################
##TX pins using ODDRE1 [FMC J2 P=29/n=30] LA29 _N/P gets rx_darkgreen/rx_lightkgreen from MOOPSHUB board
# To go to HP0
set_property PACKAGE_PIN U9 [get_ports tx_elink_p_0]
set_property PACKAGE_PIN U8 [get_ports tx_elink_n_0]
# To go to HP1
#set_property PACKAGE_PIN W12 [get_ports tx_elink_p_0]
#set_property PACKAGE_PIN W11 [get_ports tx_elink_n_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports tx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports tx_elink_n_0]

##RX pins Using IDDRE1 [FMC J1 n=29/p=30] LA28 _N/P gets tx_ligtorange/tx_darkorange from MOOPSHUB board
##RX pins Using IDDRE1 [FMC J1 n=33/p=34] LA30 _N/P gets tx_ligtorange/tx_darkorange from MOOPSHUB board
# To go to HP0
set_property PACKAGE_PIN V6 [get_ports rx_elink_p_0]
set_property PACKAGE_PIN U6 [get_ports rx_elink_n_0]
# To go to HP1
#set_property PACKAGE_PIN T13 [get_ports rx_elink_p_0]
#set_property PACKAGE_PIN R13 [get_ports rx_elink_n_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports rx_elink_n_0]


############################################################
# Clock Period Constraints                                 #
############################################################
# To go to HP0 [FMC J2 p=5/n=6] LA00_CC
# Elink clock
set_property PACKAGE_PIN Y4 [get_ports CLK_IN1_D_0_clk_p]
#Internal clock
#set_property PACKAGE_PIN AL8 [get_ports CLK_IN1_D_0_clk_p]
#set_property PACKAGE_PIN AL7 [get_ports CLK_IN1_D_0_clk_n]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports CLK_IN1_D_0_clk_p]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports CLK_IN1_D_0_clk_n]

#clock outputs go to HP1
set_property PACKAGE_PIN AE5 [get_ports clk_out_p_0]
#set_property PACKAGE_PIN Y4 [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL12_DCI [get_ports clk_out_n_0]

#Internal clock
set_property IOSTANDARD DIFF_SSTL12 [get_ports user_si570_sysclk_*]
set_property PACKAGE_PIN AL8 [get_ports user_si570_sysclk_clk_p]
set_property PACKAGE_PIN AL7 [get_ports user_si570_sysclk_clk_n]
############################################################
# Ethernet Core Constraints                                 #
############################################################
set_property PACKAGE_PIN C8 [get_ports gtrefclk_in_0_clk_p]

# System clock (125MHz)
set_property IOSTANDARD LVDS_25 [get_ports sysclk_p_0]
set_property IOSTANDARD LVDS_25 [get_ports sysclk_n_0]
set_property PACKAGE_PIN G21 [get_ports sysclk_p_0]
set_property PACKAGE_PIN F21 [get_ports sysclk_n_0]

set_property LOC GTHE4_CHANNEL_X1Y14 [get_cells -hier -filter name=~mopshub_top_debug_16bus_i/*GTHE4_CHANNEL_PRIM_INST]
# SFP0 tx enable
set_property PACKAGE_PIN A12 [get_ports sfp_enable_0]
set_property IOSTANDARD LVCMOS25 [get_ports sfp_enable_0]
# user DIP switches
set_property IOSTANDARD LVCMOS33 [get_ports {dip_sw_0[*]}]
set_property PACKAGE_PIN AN14 [get_ports {dip_sw_0[0]}]
set_property PACKAGE_PIN AP14 [get_ports {dip_sw_0[1]}]
set_property PACKAGE_PIN AM14 [get_ports {dip_sw_0[2]}]
set_property PACKAGE_PIN AN13 [get_ports {dip_sw_0[3]}]
## UART interface
set_property IOSTANDARD LVCMOS25 [get_ports in_rx_serial_0]
set_property IOSTANDARD LVCMOS25 [get_ports out_tx_serial_0]
set_property PACKAGE_PIN E13 [get_ports in_rx_serial_0]
set_property PACKAGE_PIN F13 [get_ports out_tx_serial_0]

############################################################
# Debug Core Constraints                                 #
############################################################
