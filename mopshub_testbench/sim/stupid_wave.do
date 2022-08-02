onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/rst
add wave -noupdate /tb_mopshub_top/data_generator0/costum_msg_start
add wave -noupdate /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/can_rec_select
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/irq_can_tra
add wave -noupdate /tb_mopshub_top/data_generator0/rx0
add wave -noupdate /tb_mopshub_top/data_generator0/tx0
add wave -noupdate /tb_mopshub_top/data_generator0/rx1
add wave -noupdate /tb_mopshub_top/data_generator0/tx1
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/ireqsucrec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/cancari_block0_7/irqsucrec0
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/cancari_block0_7/irqsucrec1
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/bus_rec_select
add wave -noupdate -radix binary /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/irqsucrec_signals
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/en_irqsucrec_read
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/data_tra_in
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/data_rec_out
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/can_rec_counter
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/end_choose_bus
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/canakari_top0/node_rec_mux0/done_bus_loop
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1731988 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 150
configure wave -valuecolwidth 214
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
WaveRestoreZoom {0 ns} {3004319 ns}
