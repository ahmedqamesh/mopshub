# Memory Device :is25lp128f-spi-x1_x2_x4
#SPI power signals
set_property IOSTANDARD LVCMOS33 [get_ports cs_c*]
set_property PACKAGE_PIN F13 [get_ports cs_c0_0]
set_property PACKAGE_PIN F15 [get_ports cs_c1_0]
set_property PACKAGE_PIN F18 [get_ports cs_c2_0]
set_property PACKAGE_PIN E19 [get_ports cs_c3_0]
set_property PACKAGE_PIN F21 [get_ports cs_c4_0]
set_property PACKAGE_PIN M15 [get_ports cs_c5_0]
set_property PACKAGE_PIN M17 [get_ports cs_c6_0]
set_property PACKAGE_PIN M20 [get_ports cs_c7_0]
set_property PACKAGE_PIN M22 [get_ports cs_c8_0]
set_property PACKAGE_PIN R16 [get_ports cs_c9_0]
set_property PACKAGE_PIN V18 [get_ports cs_c10_0]
set_property PACKAGE_PIN AA20 [get_ports cs_c11_0]
set_property PACKAGE_PIN AB22 [get_ports cs_c12_0]
set_property PACKAGE_PIN V15 [get_ports cs_c13_0]
set_property PACKAGE_PIN Y12 [get_ports cs_c14_0]
set_property PACKAGE_PIN AB12 [get_ports cs_c15_0]


set_property IOSTANDARD LVCMOS33 [get_ports sck_c_0]
set_property PACKAGE_PIN W10 [get_ports sck_c_0]
set_property PACKAGE_PIN V10 [get_ports miso_c_0]
set_property PACKAGE_PIN W11 [get_ports mosi_c_0]
#set_property DIRECTION IN [get_ports miso_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_c_0]
#set_property DIRECTION OUT [get_ports mosi_c_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_c_0]

#SPI Monitor signals
set_property IOSTANDARD LVCMOS33 [get_ports cs_m*]
set_property PACKAGE_PIN D14 [get_ports cs_m0_0]
set_property PACKAGE_PIN C15 [get_ports cs_m1_0]
set_property PACKAGE_PIN E17 [get_ports cs_m2_0]
set_property PACKAGE_PIN C19 [get_ports cs_m3_0]
set_property PACKAGE_PIN D22 [get_ports cs_m4_0]
set_property PACKAGE_PIN H15 [get_ports cs_m5_0]
set_property PACKAGE_PIN K17 [get_ports cs_m6_0]
set_property PACKAGE_PIN L19 [get_ports cs_m7_0]
set_property PACKAGE_PIN K22 [get_ports cs_m8_0]
set_property PACKAGE_PIN P15 [get_ports cs_m9_0]
set_property PACKAGE_PIN Y18 [get_ports cs_m10_0]
set_property PACKAGE_PIN W20 [get_ports cs_m11_0]
set_property PACKAGE_PIN Y22 [get_ports cs_m12_0]
set_property PACKAGE_PIN U16 [get_ports cs_m13_0]
set_property PACKAGE_PIN V13 [get_ports cs_m14_0]
set_property PACKAGE_PIN AA13 [get_ports cs_m15_0]

set_property PACKAGE_PIN AA10 [get_ports sck_m_0]
set_property PACKAGE_PIN AB10 [get_ports mosi_m_0]
set_property PACKAGE_PIN AA9 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports sck_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports sck_m_0]
#set_property DIRECTION IN [get_ports miso_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports miso_m_0]
#set_property DIRECTION OUT [get_ports mosi_m_0]
set_property IOSTANDARD LVCMOS33 [get_ports mosi_m_0]

## Define Master clk in (system clock)
set_property PACKAGE_PIN K18 [get_ports clk_sys]
set_property IOSTANDARD LVCMOS33 [get_ports clk_sys]

#Input clk_elink
#Get the clk_elink from the ethernet socket
set_property PACKAGE_PIN V4 [get_ports clk_ext_clk_p]
set_property PACKAGE_PIN W4 [get_ports clk_ext_clk_n]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_ext_clk_p]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_ext_clk_n]

## Input rx_elink
#Get the rx_elink to the ethernet socket
set_property PACKAGE_PIN T1 [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports rx_elink_n_0]

## Output tx_elink
#Get the tx_elink of the ethernet socket
set_property PACKAGE_PIN AB3 [get_ports {tx_elink_p_0[0]}]
set_property PACKAGE_PIN AB2 [get_ports {tx_elink_n_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_p_0[0]}]
set_property SLEW SLOW [get_ports {tx_elink_n_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_p_0[0]}]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports {tx_elink_n_0[0]}]


## Define clk out
#Get the clock out of the ethernet socket
#set_property PACKAGE_PIN V4 [get_ports clk_out_p_0]
#set_property PACKAGE_PIN W4 [get_ports clk_out_n_0]
#set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_p_0]
#set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_n_0]
#AUX2 P/N gives output a differential signal from the FPGA.
#AUX1 and AUX3 have a 100 Ohm termination resistor between the P and N lines as they were meant for differential input signals.
set_property PACKAGE_PIN AB7 [get_ports clk_out_p_0]
set_property PACKAGE_PIN AB6 [get_ports clk_out_n_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_p_0]
set_property IOSTANDARD DIFF_SSTL15_R [get_ports clk_out_n_0]

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

set_property PACKAGE_PIN AB18 [get_ports rx15_0]
set_property PACKAGE_PIN AA15 [get_ports rx14_0]
set_property PACKAGE_PIN T14 [get_ports rx13_0]
set_property PACKAGE_PIN T21 [get_ports rx12_0]
set_property PACKAGE_PIN P20 [get_ports rx11_0]
set_property PACKAGE_PIN R18 [get_ports rx10_0]
set_property PACKAGE_PIN N13 [get_ports rx9_0]
set_property PACKAGE_PIN G22 [get_ports rx8_0]
set_property PACKAGE_PIN H19 [get_ports rx7_0]
set_property PACKAGE_PIN G17 [get_ports rx6_0]
set_property PACKAGE_PIN H13 [get_ports rx5_0]
set_property PACKAGE_PIN A21 [get_ports rx4_0]
set_property PACKAGE_PIN A18 [get_ports rx3_0]
set_property PACKAGE_PIN B17 [get_ports rx2_0]
set_property PACKAGE_PIN A15 [get_ports rx1_0]
set_property PACKAGE_PIN A13 [get_ports rx0_0]

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

set_property PACKAGE_PIN AB17 [get_ports tx15_0]
set_property PACKAGE_PIN Y16 [get_ports tx14_0]
set_property PACKAGE_PIN T15 [get_ports tx13_0]
set_property PACKAGE_PIN V22 [get_ports tx12_0]
set_property PACKAGE_PIN U20 [get_ports tx11_0]
set_property PACKAGE_PIN T18 [get_ports tx10_0]
set_property PACKAGE_PIN N14 [get_ports tx9_0]
set_property PACKAGE_PIN H22 [get_ports tx8_0]
set_property PACKAGE_PIN J19 [get_ports tx7_0]
set_property PACKAGE_PIN H17 [get_ports tx6_0]
set_property PACKAGE_PIN J14 [get_ports tx5_0]
set_property PACKAGE_PIN B22 [get_ports tx4_0]
set_property PACKAGE_PIN A19 [get_ports tx3_0]
set_property PACKAGE_PIN C17 [get_ports tx2_0]
set_property PACKAGE_PIN A16 [get_ports tx1_0]
set_property PACKAGE_PIN B13 [get_ports tx0_0]
#UART signals
#IO6 Pin2 RXD
set_property PACKAGE_PIN C20 [get_ports out_tx_serial_0]
#IO4 pin3 TXD
set_property PACKAGE_PIN E13 [get_ports in_rx_serial_0]
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
set_property PACKAGE_PIN G13 [get_ports irq_elink_tra_0]
#LED2
set_property PACKAGE_PIN K13 [get_ports irq_elink_rec_0]
#LED3
set_property PACKAGE_PIN L13 [get_ports tx_data_rdy_0]
#LED4
set_property PACKAGE_PIN L14 [get_ports rx_data_rdy_0]
#LED5
set_property PACKAGE_PIN L15 [get_ports irq_can_rec_0]
#LED6
set_property PACKAGE_PIN M13 [get_ports irq_can_tra_0]
#LED7
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property CFGBVS VCCO [current_design]
#DIP SW
#set_property PACKAGE_PIN W1 [get_ports disable_sw_0]
#set_property IOSTANDARD LVCMOS15 [get_ports disable_sw_0]

# TMR shift Register [to ML14 J5]
set_property PACKAGE_PIN A14 [get_ports simple_out_0]
set_property PACKAGE_PIN D15 [get_ports tmr_out_0]
set_property PACKAGE_PIN D17 [get_ports shift_data_0]
set_property PACKAGE_PIN A20 [get_ports shift_mode_0]
set_property PACKAGE_PIN D19 [get_ports shift_clk_0]
set_property IOSTANDARD LVCMOS33 [get_ports simple_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_mode_0]
set_property IOSTANDARD LVCMOS33 [get_ports tmr_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_data_0]
set_property IOSTANDARD LVCMOS33 [get_ports shift_clk_0]

#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {mopshub_board_v3TMR_i/ip_buf_0/inst/output_wire}]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets {mopshub_board_v3TMR_i/ip_buf_1/inst/output_wire}]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mopshub_board_v3TMR_i/clk_wiz_s/inst/clk_in1_mopshub_board_v3TMR_clk_wiz_s_0]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets shift_clk_0_IBUF]
#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets mopshub_board_v3TMR_i/mopshub_top_board_16_0/inst/seu_shift_combined0/clk]
# ignored during timing analysis of clk_uart and clk_40 since it is handled by the FIFO
# ignored during timing analysis of clk_1000 and clk_40
set_false_path -from [get_clocks clk_40_mopshub_board_v3TMR_clk_wiz_s_0] -to [get_clocks clk_uart_mopshub_board_v3TMR_clk_wiz_s_0] 
set_false_path -from [get_clocks clk_uart_mopshub_board_v3TMR_clk_wiz_s_0] -to [get_clocks clk_40_mopshub_board_v3TMR_clk_wiz_s_0]
set_false_path -from [get_clocks clk_40_mopshub_board_v3TMR_clk_wiz_s_0] -to [get_clocks clk_100_mopshub_board_v3TMR_clk_wiz_1_0] 
set_false_path -from [get_clocks clk_100_mopshub_board_v3TMR_clk_wiz_1_0] -to [get_clocks clk_40_mopshub_board_v3TMR_clk_wiz_s_0]


#Watchdog
set_property PACKAGE_PIN AB11 [get_ports WDI_0]
set_property IOSTANDARD LVCMOS33 [get_ports WDI_0]
set_property DRIVE 12 [get_ports WDI_0]
set_property SLEW SLOW [get_ports WDI_0]

