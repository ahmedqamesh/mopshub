onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/data_generator0/custommsg
add wave -noupdate /tb_mopshub_top/data_generator0/data
add wave -noupdate /tb_mopshub_top/data_generator0/customcanid
add wave -noupdate /tb_mopshub_top/mopshub0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_rec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/data_rec_uplink
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/addr_read
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/spi_mon_id
add wave -noupdate /tb_mopshub_top/mopshub0/end_read_elink
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_tra
add wave -noupdate /tb_mopshub_top/mopshub0/data_tra_downlink
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/can_id
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/spi_can_id
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6118922 ns} 0} {{Cursor 2} {12982218 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 187
configure wave -valuecolwidth 38
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
WaveRestoreZoom {0 ns} {3731 ns}
