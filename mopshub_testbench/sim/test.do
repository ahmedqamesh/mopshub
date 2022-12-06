onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/can_rec_select
add wave -noupdate /tb_mopshub_top/can_tra_select
add wave -noupdate /tb_mopshub_top/data_rec_uplink
add wave -noupdate /tb_mopshub_top/data_tra_downlink
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/irq_elink_rec
add wave -noupdate /tb_mopshub_top/irq_elink_tra
add wave -noupdate /tb_mopshub_top/mopshub0/canakari_top_16bus0/irqsucrec3
add wave -noupdate /tb_mopshub_top/mopshub0/canakari_top_16bus0/irqsuctra3
add wave -noupdate /tb_mopshub_top/mopshub0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/irq_can_tra
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_rec
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_tra
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3952607 ns} 0}
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
WaveRestoreZoom {19935676 ns} {20003386 ns}
