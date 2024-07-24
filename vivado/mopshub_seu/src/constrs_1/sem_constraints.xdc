####################################################################################################################################
## Constraints on logic placement. The controller and its
## shims, which are the soft error mitigation solution, need
## to be reasonably area constrained.  This keeps everything
## near the configuration logic and also helps in generating
## a reasonable slice count estimate for reliability estimates.
set_property IOSTANDARD LVCMOS33 [get_ports status_heartbeat_0]
set_property IOSTANDARD LVCMOS33 [get_ports status_initialization_0]
set_property IOSTANDARD LVCMOS33 [get_ports status_observation_0]
set_property IOSTANDARD LVCMOS33 [get_ports status_correction_0]
set_property IOSTANDARD LVCMOS33 [get_ports status_essential_0]
set_property IOSTANDARD LVCMOS33 [get_ports status_uncorrectable_0]

#LED1
set_property PACKAGE_PIN G13 [get_ports status_heartbeat_0]
#LED2
set_property PACKAGE_PIN K13 [get_ports status_initialization_0]
#LED3
set_property PACKAGE_PIN L13 [get_ports status_observation_0]
#LED4
set_property PACKAGE_PIN L14 [get_ports status_correction_0]
#LED5
set_property PACKAGE_PIN L15 [get_ports status_essential_0]
#LED6
set_property PACKAGE_PIN M13 [get_ports status_uncorrectable_0]
#LED7

create_pblock SEM_CONTROLLER
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells -quiet [list mopshub_board_seu_sem_i/sem_controller_wrapp_0/inst/sem_0_sem_controller0]]
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells -quiet mopshub_board_seu_sem_i/sem_controller_wrapp_0/inst/sem_0_sem_controller0/*]
## Force ICAP to the required (top) site in the device.
## Force FRAME_ECC to the required (only) site in the device.
set_property LOC FRAME_ECC_X0Y0 [get_cells mopshub_board_seu_sem_i/sem_controller_wrapp_0/inst/sem_0_sem_cfg0/frame_ecc_init0]
set_property LOC ICAP_X0Y1 [get_cells mopshub_board_seu_sem_i/sem_controller_wrapp_0/inst/sem_0_sem_cfg0/icap_init0]
####################################################################################################################################
#Constraints related to POST_CRC checking (Source: https://support.xilinx.com/s/article/978877?language=en_US)
set_property POST_CRC ENABLE [current_design]
#Enables the Post CRC checking
set_property POST_CRC_SOURCE PRE_COMPUTED [current_design]
#Determines an expected CRC value from the bitstream
set_property POST_CRC_ACTION CORRECT_AND_CONTINUE [current_design]
#Even if a CRC error is detected, continue CRC checking.
#Other options include HALT, CORRECT_AND_CONTINUE and CORRECT_AND_HALT
set_property POST_CRC_INIT_FLAG ENABLE [current_design]
#Leaves the INIT_B pin enabled as a source of the CRC error signal. Useful especially if FRAME_ECC is not used
