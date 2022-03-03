onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/dout10bit
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en_s
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en_data
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/dout_fifo
add wave -noupdate -expand -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rdy_fifo
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_10bit_in
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/dataCode
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_in_rdy
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/KI
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc10bit
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/get_data_trig
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc10bit_r
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/send_count
add wave -noupdate -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_2bit_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {75673 ns} 0}
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
WaveRestoreZoom {68616 ns} {85875 ns}
