onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/data_tra_downlink
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/tx_mopshub
add wave -noupdate /tb_mopshub_top/tx0
add wave -noupdate /tb_mopshub_top/tx1
add wave -noupdate /tb_mopshub_top/rx0
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/txdec
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/txgen
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/rx_mopshub
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/txmops
add wave -noupdate /tb_mopshub_top/data_generator0/can_net_decoder_Gen/rxdec
add wave -noupdate /tb_mopshub_top/rx1
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {541833 ns} 0}
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
WaveRestoreZoom {0 ns} {5270208 ns}
