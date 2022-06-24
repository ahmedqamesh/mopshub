onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/data_generator0/costum_msg_start
add wave -noupdate /tb_mopshub_top/data_generator0/costum_msg_end
add wave -noupdate /tb_mopshub_top/data_generator0/start
add wave -noupdate /tb_mopshub_top/data_generator0/data
add wave -noupdate /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_uplink
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/data_10bit_in
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/addr_write
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/cs_ewrite
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/start_write_elink
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_10bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/data_in_rdy
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/byte
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/enc_10b_data_out_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {4675708 ns} 0}
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
WaveRestoreZoom {0 ns} {842 ns}
