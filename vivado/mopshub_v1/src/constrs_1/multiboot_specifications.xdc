#MultiBoot Bitstream Properties
#enables the Fallback option. [This enables loading the default bitstream when configuration attempt fails].
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
# allows the FPGA to use an internal configuration mode for configuration.
set_property BITSTREAM.CONFIG.PROG_MODE INTERNAL [current_design]
#This command tells Vivado that the SPI flash memory you are using for configuration can handle 32-bit addresses.
#This allows you to access a larger storage space within the flash memory
#set_property BITSTREAM.CONFIG.SPI_32BIT_ADDR YES [current_design] #Causes error
#The FPGA is configured to reboot (restart) itself automatically after loading a new configuration
set_property BITSTREAM.CONFIG.NEXT_CONFIG_REBOOT ENABLE [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00510000 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00A20000 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG_MODE SPIx4 [current_design]
#set_property BITSTREAM.CONFIG.CONFIGRATE 40 [current_design]
set_property bitstream.seu.essentialbits yes [current_design]
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
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells -quiet mopshub_board_v1_i/sem_controller_wrapp_0/sem_0_sem_controller0/*]
add_cells_to_pblock [get_pblocks SEM_CONTROLLER] [get_cells mopshub_board_v1_i/sem_controller_wrapp_0/sem_0_sem_controller0]
## Force ICAP to the required (top) site in the device.
## Force FRAME_ECC to the required (only) site in the device.
set_property LOC FRAME_ECC_X0Y0 [get_cells mopshub_board_v1_i/sem_controller_wrapp_0/sem_0_sem_cfg0/frame_ecc_init0]
set_property LOC ICAP_X0Y1 [get_cells mopshub_board_v1_i/sem_controller_wrapp_0/sem_0_sem_cfg0/icap_init0]
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




############################################################
# Debug Core Constraints                                 #
############################################################
