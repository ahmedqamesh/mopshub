# Memory Device :is25lp128f-spi-x1_x2_x4

## Define Master clk in (system clock)
set_property PACKAGE_PIN K18 [get_ports clk_sys]
set_property IOSTANDARD LVCMOS33 [get_ports clk_sys]
#Watchdog
set_property PACKAGE_PIN AB11 [get_ports WDI_0]
set_property IOSTANDARD LVCMOS33 [get_ports WDI_0]
set_property DRIVE 12 [get_ports WDI_0]
set_property SLEW SLOW [get_ports WDI_0]

# TMR shift Register [to ML14 J5]
set_property PACKAGE_PIN A14 [get_ports data_out_0]
set_property PACKAGE_PIN D15 [get_ports data_outTMR_0]
set_property PACKAGE_PIN A20 [get_ports mode_0]
set_property PACKAGE_PIN D17 [get_ports data_in_0]
set_property PACKAGE_PIN D19 [get_ports clk_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports data_out_0]
set_property IOSTANDARD LVCMOS33 [get_ports mode_0]
set_property IOSTANDARD LVCMOS33 [get_ports data_outTMR_0]
set_property IOSTANDARD LVCMOS33 [get_ports data_in_0]
set_property IOSTANDARD LVCMOS33 [get_ports clk_in_0]

set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets clk_in_0_IBUF]


