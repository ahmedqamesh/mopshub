onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/bus_dec_data
add wave -noupdate /tb_mopshub_top/test_rx_start
add wave -noupdate /tb_mopshub_top/test_rx
add wave -noupdate /tb_mopshub_top/test_rx_end
add wave -noupdate /tb_mopshub_top/data_rec_uplink
add wave -noupdate /tb_mopshub_top/can_rec_select
add wave -noupdate /tb_mopshub_top/can_tra_select
add wave -noupdate /tb_mopshub_top/data_tra_downlink
add wave -noupdate /tb_mopshub_top/sign_on_sig
add wave -noupdate /tb_mopshub_top/mopshub0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/can_elink_bridge_SM0/read_can_mode
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/can_elink_bridge_SM0/end_can_proc
add wave -noupdate /tb_mopshub_top/mopshub0/irq_can_tra
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_rec
add wave -noupdate /tb_mopshub_top/mopshub0/irq_elink_tra
add wave -noupdate /tb_mopshub_top/rx0
add wave -noupdate /tb_mopshub_top/tx0
add wave -noupdate /tb_mopshub_top/rx1
add wave -noupdate /tb_mopshub_top/tx1
add wave -noupdate /tb_mopshub_top/rx2
add wave -noupdate /tb_mopshub_top/tx2
add wave -noupdate /tb_mopshub_top/rx3
add wave -noupdate /tb_mopshub_top/tx3
add wave -noupdate /tb_mopshub_top/rx4
add wave -noupdate /tb_mopshub_top/tx4
add wave -noupdate /tb_mopshub_top/rx5
add wave -noupdate /tb_mopshub_top/tx5
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {198336 ns} 0}
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
WaveRestoreZoom {17144577 ns} {23156037 ns}
