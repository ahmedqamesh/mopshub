onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:adc_ch
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:bus_dec_data
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:bus_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:clk_40_m
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:rxmops
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:txgen
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:tx_mopshub1
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:tx_mopshub2
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:tx_mopshub
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:tx_mopshub0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:rx_mopshub0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:rxmops
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:txmops
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:sign_on_sig
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:info_debug_sig
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:data_generator0:can_net_decoder_Gen:ext_trim_mops
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:clk_mops
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:data_generator0:ext_rst_mops
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:rst_bus
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:start_power_init
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:entimeout_trim
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:timeoutrst_trim
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:skip_osc_trim
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:irq_trim_bus_osc
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:start_trim_ack
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:start_trim_osc
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:end_write
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:send_mes_can_trim
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:irq_can_rec
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:end_read
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:end_can_proc
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:end_trim_bus
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:power_bus_cnt
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:power_bus_en
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:reset_irq_can_trim
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:reset_irq_osc_can
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:reset_irq_can_done
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:start_trim_osc
add wave -noupdate -group trim_mopshub -radix hexadecimal :tb_mopshub_top_32bus:start_osc_cnt
add wave -noupdate -group trim_mopshub :tb_mopshub_top_32bus:mopshub0:bridge_controller0:end_power_init
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:end_power_init
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:endwait_all
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:osc_auto_trim_mopshub
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:ready_osc
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:rst_bus
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:start_init
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:spi_dat_m
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:spi_dat_p
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:addr_can
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:write_sig_can_n
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:write_can
add wave -noupdate -group Initialization :tb_mopshub_top_32bus:mopshub0:enable_cs
add wave -noupdate -group Initialization :tb_mopshub_top_32bus:clk_40_m
add wave -noupdate -group Initialization :tb_mopshub_top_32bus:mopshub0:canakari_top_32bus0:cancari_block0_7:clk
add wave -noupdate -group Initialization :tb_mopshub_top_32bus:mopshub0:canakari_top_32bus0:cancari_block0_7:can_0:cs
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:can_tra_select
add wave -noupdate -group Initialization :tb_mopshub_top_32bus:mopshub0:bridge_controller0:canakari_interface0:end_cnt
add wave -noupdate -group Initialization -radix hexadecimal :tb_mopshub_top_32bus:end_init
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:reqmsg
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_bus_activity0:requestreg
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:respmsg
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:can_bus_activity0:responsereg
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_rec_uplink
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:can_rec_select
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:start
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:test_rx
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:test_rx_start
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:test_rx_end
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:canakari_top_32bus0:enable_cs_sig
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:addr_write
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_can_10bitout
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_10bitout
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_ewrite
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:irq_elink_rec
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_rec_en
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:read_can_mode
add wave -noupdate -group rx_rec_mopshub -radix hexadecimal -childformat {{{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[75]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[74]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[73]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[72]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[71]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[70]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[69]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[68]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[67]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[66]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[65]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[64]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[63]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[62]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[61]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[60]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[59]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[58]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[57]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[56]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[55]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[54]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[53]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[52]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[51]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[50]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[49]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[48]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[47]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[46]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[45]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[44]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[43]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[42]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[41]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[40]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[39]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[38]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[37]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[36]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[35]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[34]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[33]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[32]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[31]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[30]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[29]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[28]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[27]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[26]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[25]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[24]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[23]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[22]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[21]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[20]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[19]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[18]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[17]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[16]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[15]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[14]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[13]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[12]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[11]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[10]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[9]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[8]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[7]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[6]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[5]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[4]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[3]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[2]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[1]} -radix hexadecimal} {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[0]} -radix hexadecimal}} -subitemconfig {{:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[75]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[74]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[73]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[72]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[71]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[70]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[69]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[68]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[67]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[66]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[65]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[64]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[63]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[62]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[61]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[60]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[59]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[58]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[57]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[56]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[55]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[54]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[53]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[52]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[51]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[50]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[49]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[48]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[47]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[46]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[45]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[44]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[43]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[42]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[41]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[40]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[39]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[38]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[37]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[36]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[35]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[34]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[33]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[32]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[31]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[30]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[29]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[28]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[27]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[26]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[25]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[24]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[23]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[22]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[21]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[20]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[19]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[18]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[17]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[16]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[15]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[14]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[13]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[12]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[11]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[10]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[9]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[8]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[7]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[6]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[5]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[4]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[3]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[2]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[1]} {-height 17 -radix hexadecimal} {:tb_mopshub_top_32bus:mopshub0:data_rec_uplink[0]} {-height 17 -radix hexadecimal}} :tb_mopshub_top_32bus:mopshub0:data_rec_uplink
add wave -noupdate -group tx_tra_emulator -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:start_write_emulator
add wave -noupdate -group tx_tra_emulator -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:emulator_rec_in
add wave -noupdate -group tx_tra_emulator -radix hexadecimal :tb_mopshub_top_32bus:test_tx
add wave -noupdate -group tx_tra_emulator -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:reqmsg
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_10bitin
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_sop
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:respmsg
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:can_tra_select
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:data_tra_downlink
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_read_elink
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_read_elink
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_elink_proc
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_elink_tra
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:start_write
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:bridge_controller0:irq_can_tra
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:test_tx_end
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:test_tx_start
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_packet
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_eop
add wave -noupdate -group tx_tra_mopshub -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_eread
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {12233645 ns} 0} {{Cursor 2} {215105280 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 191
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 1
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ns} {441 ms}
