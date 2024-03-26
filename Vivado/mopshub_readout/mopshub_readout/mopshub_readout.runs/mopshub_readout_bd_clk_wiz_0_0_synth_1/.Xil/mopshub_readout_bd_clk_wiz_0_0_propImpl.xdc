set_property SRC_FILE_INFO {cfile:/home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_clk_wiz_0_0/mopshub_readout_bd_clk_wiz_0_0_board.xdc rfile:../../../mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_clk_wiz_0_0/mopshub_readout_bd_clk_wiz_0_0_board.xdc id:1 order:EARLY used_in_board:yes scoped_inst:inst prop_thru_buffer:yes} [current_design]
set_property SRC_FILE_INFO {cfile:/home/dcs/git/mopshub/Vivado/mopshub_readout/mopshub_readout/mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_clk_wiz_0_0/mopshub_readout_bd_clk_wiz_0_0.xdc rfile:../../../mopshub_readout.gen/sources_1/bd/mopshub_readout_bd/ip/mopshub_readout_bd_clk_wiz_0_0/mopshub_readout_bd_clk_wiz_0_0.xdc id:2 order:EARLY scoped_inst:inst} [current_design]
current_instance inst
set_property src_info {type:SCOPED_XDC file:1 line:5 export:INPUT save:INPUT read:READ} [current_design]
set_property BOARD_PIN {CPU_RESET} [get_ports reset]
set_property src_info {type:SCOPED_XDC file:2 line:57 export:INPUT save:INPUT read:READ} [current_design]
set_input_jitter [get_clocks -of_objects [get_ports clk_in1_p]] 0.033330000000000005
