onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/select_bus
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/test_advanced
add wave -noupdate /tb_mopshub_top/data_generator0/txgen
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/rx_mopshub0
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/rx_mopshub1
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/rx_mopshub2
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/txmops
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/tx_mopshub
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/tx_mopshub0
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/tx_mopshub1
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/tx_mopshub2
add wave -noupdate -radix binary /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/irqsucrec_signals
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/bus_rec_select
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/ireqsucrec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/irqsucrec0
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/irqsucrec1
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/irqsucrec2
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/en_irqsucrec_read
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/read_can_mode
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/enable_cs
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/read_can
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/read_sig_can_n
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/start_bus_loop
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/can_rec_counter
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {9931888 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
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
WaveRestoreZoom {3818432 ns} {4081278 ns}
