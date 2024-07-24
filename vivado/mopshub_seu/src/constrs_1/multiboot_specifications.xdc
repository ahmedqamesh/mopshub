#MultiBoot Bitstream Properties
#enables the Fallback option. [This enables loading the default bitstream when configuration attempt fails].
set_property BITSTREAM.CONFIG.CONFIGFALLBACK ENABLE [current_design]
# allows the FPGA to use an internal configuration mode for configuration.
set_property BITSTREAM.CONFIG.PROG_MODE INTERNAL [current_design]
#This command tells Vivado that the SPI flash memory you are using for configuration can handle 32-bit addresses.
#This allows you to access a larger storage space within the flash memory
#The FPGA is configured to reboot (restart) itself automatically after loading a new configuration
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x001A49CC [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00349398 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x004EDD64 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00692730 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x008370FC [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x009DBAC8 [current_design]
#set_property BITSTREAM.CONFIG.NEXT_CONFIG_ADDR 0x00B80494 [current_design]

set_property BITSTREAM.SEU.ESSENTIALBITS yes [current_design]
set_property BITSTREAM.GENERAL.COMPRESS TRUE [current_design]
set_property BITSTREAM.CONFIG.SPI_BUSWIDTH 4 [current_design]
set_property BITSTREAM.CONFIG_MODE SPIx4 [current_design]

