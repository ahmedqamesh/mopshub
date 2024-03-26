#SPI power signals
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
#The current active pins for mini board
set_property PACKAGE_PIN AA10 [get_ports cs_c0_0]
set_property PACKAGE_PIN W21 [get_ports cs_c1_0]
set_property PACKAGE_PIN Y22 [get_ports cs_c2_0]
set_property PACKAGE_PIN Y19 [get_ports cs_c3_0]
set_property PACKAGE_PIN U22 [get_ports cs_c4_0]
set_property PACKAGE_PIN V19 [get_ports cs_c5_0]

set_property IOSTANDARD LVCMOS33 [get_ports cs_c0_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c1_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c2_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c3_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c4_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c5_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c6_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c7_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c8_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c9_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c10_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c11_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c12_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c13_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c14_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_c15_0]

set_property IOSTANDARD LVCMOS33 [get_ports sck_c_0]
set_property PACKAGE_PIN R19 [get_ports sck_c_0]
set_property PACKAGE_PIN R18 [get_ports miso_c_0]
set_property PACKAGE_PIN P19 [get_ports mosi_c_0]
#set_property DIRECTION IN [get_ports miso_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_c_0]
#set_property DIRECTION OUT [get_ports mosi_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_c_0]

#SPI Monitor signals
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

#The current active pins for mini board
set_property PACKAGE_PIN AA11 [get_ports cs_m0_0]
set_property PACKAGE_PIN N13 [get_ports cs_m1_0]
set_property PACKAGE_PIN Y21 [get_ports cs_m2_0]
set_property PACKAGE_PIN W19 [get_ports cs_m3_0]
set_property PACKAGE_PIN V22 [get_ports cs_m4_0]
set_property PACKAGE_PIN T18 [get_ports cs_m5_0]

set_property IOSTANDARD LVCMOS33 [get_ports cs_m0_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m1_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m2_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m3_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m4_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m5_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m6_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m7_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m8_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m9_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m10_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m11_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m12_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m13_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m14_0]
set_property IOSTANDARD LVCMOS33 [get_ports cs_m15_0]


set_property PACKAGE_PIN U18 [get_ports sck_m_0]
set_property PACKAGE_PIN U17 [get_ports mosi_m_0]
set_property PACKAGE_PIN P14 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports sck_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports sck_m_0]
#set_property DIRECTION IN [get_ports miso_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports mosi_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_m_0]
## DBG Signals
## Define Master clk in
set_property PACKAGE_PIN R4 [get_ports CLK_IN1_D_0_clk_p]
set_property PACKAGE_PIN T4 [get_ports CLK_IN1_D_0_clk_n]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports CLK_IN1_D_0_clk_p]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports CLK_IN1_D_0_clk_n]

## Output tx_elink
#Get the tx_elink of the ethernet
set_property PACKAGE_PIN AB7 [get_ports {tx_elink_p_0[0]}]
set_property PACKAGE_PIN AB6 [get_ports {tx_elink_n_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_p_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_n_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_p_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_n_0[0]}]

## Define clk out
#Get the clock out of the ethernet
set_property PACKAGE_PIN W9 [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_n_0]

## Input rx_elink
#Get the rx_elink to the ethernet
set_property PACKAGE_PIN AA8 [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_n_0]


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

set_property PACKAGE_PIN Y18 [get_ports rx0_0]
set_property PACKAGE_PIN U20 [get_ports rx1_0]
set_property PACKAGE_PIN AA9 [get_ports rx2_0]
set_property PACKAGE_PIN R14 [get_ports rx3_0]
set_property PACKAGE_PIN U21 [get_ports rx4_0]
set_property PACKAGE_PIN Y17 [get_ports rx5_0]
set_property PACKAGE_PIN AA19 [get_ports rx6_0]
set_property PACKAGE_PIN Y12 [get_ports rx7_0]
#Tx CAN signals
set_property IOSTANDARD LVCMOS33 [get_ports tx0_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx1_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx2_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx3_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx7_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx4_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx5_0]
set_property IOSTANDARD LVCMOS33 [get_ports tx6_0]
set_property PACKAGE_PIN V18 [get_ports tx0_0]
set_property PACKAGE_PIN V20 [get_ports tx1_0]
set_property PACKAGE_PIN AB10 [get_ports tx2_0]
set_property PACKAGE_PIN W20 [get_ports tx3_0]
set_property PACKAGE_PIN T21 [get_ports tx4_0]
set_property PACKAGE_PIN T20 [get_ports tx5_0]
set_property PACKAGE_PIN W10 [get_ports tx6_0]
set_property PACKAGE_PIN Y11 [get_ports tx7_0]

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
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]

############################################################
# Debug Core Constraints                                 #
############################################################