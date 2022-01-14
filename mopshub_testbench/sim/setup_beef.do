onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/data_tra_downlink
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/irq_can_tra
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/elink_core0/end_read_elink
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/elink_core0/start_read_elink
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/elink_core0/irq_elink_tra
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/elink_core0/rx_data_rdy
add wave -noupdate -expand -group Group2 /tb_mopshub_setup/setup_generator0/Emulator_step2/elink_core0/elink_to_fifo0/elink_proc_in0/data_8b10b_rdy
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/mopshub_core0/canakari_top0/irqsucrec1
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/mopshub_core0/canakari_top0/node_rec_mux0/irqsucrec_signals
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/mopshub_core0/bridge_controller0/irq_can_rec
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/irq_elink_rec
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/data_rec_8bitout
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/fifo_to_elink0/fifo_RXelink_wrap0/rd_en_s
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/fifo_to_elink0/elink_proc_out0/EDATA_RDY
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/tx_data_rdy
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/start_write_elink
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/end_write_elink
add wave -noupdate -expand -group Group1 /tb_mopshub_setup/setup_generator0/Emulator_step1/elink_core0/cs_ewrite
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3607886 ns} 0}
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
WaveRestoreZoom {3583224 ns} {3613302 ns}
