

set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *core_resets_i/pma_reset_pipe_reg*}] -filter {REF_PIN_NAME =~ PRE}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *core_resets_i/pma_reset_pipe*[0]}] -filter {REF_PIN_NAME =~ D}]






# false path constraints to async inputs coming directly to synchronizer
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *SYNC_*/data_sync*}] -filter {REF_PIN_NAME =~ D}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *sync_block_reset_done/data_sync_reg1}] -filter {REF_PIN_NAME =~ D}]
set_false_path -to [get_pins -of [get_cells -hierarchical -filter {NAME =~ *reset_sync*}] -filter {REF_PIN_NAME =~ PRE}]



create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */gpcs_pma_inst/USE_ROCKET_IO.RX_RST_SM_TXOUTCLK.MGT_RX_RESET_INT_reg*}] -filter {name =~ *C}]\
 -to [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_gtwiz_reset_rx_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */gpcs_pma_inst/USE_ROCKET_IO.MGT_TX_RESET_INT_reg*}] -filter {name =~ *C}]\
 -to [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_gtwiz_reset_tx_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}]\

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */*_data_rx/reset_sync6*}] -filter {name =~ *C}]\
 -to [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_gtwiz_reset_*x_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_*x_done_inst/rst_in_out_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_gtwiz_reset_*x_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-12} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-12 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_*x_done_inst/rst_in_out_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_reset_controller_internal.gen_single_instance.gtwiz_reset_inst/reset_synchronizer_gtwiz_reset_*x_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */transceiver_inst/gtwiz_reset_*x_done_*_int_reg_reg*}] -filter {name =~ *C}]\
 -to [get_pins -of [get_cells -hier -filter {name =~ */reset_synchronizer_gtwiz_reset_*x_*_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */reset_synchronizer_rx_done_inst/rst_in_out_reg*}] -filter {name =~ *C}]\
 -to [get_pins -of [get_cells -hier -filter {name =~ */sync_block_reset_done/data_sync_reg1*}] -filter {name =~ *D}] 

create_waiver -internal -scope -quiet -type CDC -id {CDC-11} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-11 warning is waived as this is within the GT Wizard"\
 -from [get_pins -of [get_cells -hier -filter {name =~ */U_TXOUTCLK_FREQ_COUNTER/state_reg[0]*}] -filter {name =~ *C}]\
 -to [list [get_pins -of [get_cells -hier -filter {name =~ */U_TXOUTCLK_FREQ_COUNTER/reset_synchronizer_testclk_rst_inst/rst_in_meta_reg*}] -filter {name =~ *PRE}] [get_pins -of [get_cells -hier -filter {name =~ */U_TXOUTCLK_FREQ_COUNTER/tstclk_rst_dly1_reg*}] -filter {name =~ *D}] ]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard" -from [get_pins -of [get_cells -hier -filter {name =~ */gen_gtwizard_*.gen_rx_buffer_bypass_internal.gen_single_instance.gtwiz_buffbypass_rx_inst/gen_gtwiz_buffbypass_rx_main.gen_auto_mode.gtwiz_buffbypass_rx_done_out_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */sync_block_reset_done/data_sync_reg1*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard" -from [get_pins -of [get_cells -hier -filter {name =~ */SYNC_UNIDIRECTIONAL_ENABLE_RXOUTCLK_INST/data_sync_reg6*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_XMIT_*_TXOUTCLK/data_sync_reg1*}] -filter {name =~ *D}]

#create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard" -from [get_pins -of [get_cells -hier -filter {name =~ */AUTO_NEG_RX_INST/XMIT_DATA_INT_reg*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */SYNC_XMIT_*_TXOUTCLK/data_sync_reg1*}] -filter {name =~ *D}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-13} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-13 warning is waived as this is within the GT Wizard" -from [get_pins -of [get_cells -hier -filter {name =~ */reclock_encommaalign/reset_sync6*}] -filter {name =~ *C}] -to [get_pins -of [get_cells -hier -filter {name =~ */gt*_channel_gen.gen_gt*_channel_inst[0].GT*_CHANNEL_PRIM_INST*}] -filter {name =~ *RX*COMMAALIGNEN}]

create_waiver -internal -scope -quiet -type CDC -id {CDC-10} -user "gig_ethernet_pcs_pma" -tags "11999" -desc "The CDC-10 warning is waived as this is within the GT Wizard" -from [get_pins  -of [get_cells -hier -filter {name =~ */reset_synchronizer_tx_done_inst/rst_in_out_reg*}] -filter {name =~ *C}] -to [get_pins  -of [get_cells -hier -filter {name =~ */sync_block_reset_done/data_sync_reg1*}] -filter {name =~ *D}]

