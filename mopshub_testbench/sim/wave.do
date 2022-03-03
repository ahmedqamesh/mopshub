onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/dout10bit
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en_s
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rd_en_data
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/dout_fifo
add wave -noupdate -group fifo_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_core_wrap_tx/rdy_fifo
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/byte
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_10bit_in
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/dataCode
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_in_rdy
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/get_data_trig
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc10bit_r
add wave -noupdate -expand -group enc8b_tx /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/data_2bit_out
add wave -noupdate -expand -group dec8b_rx /tb_mopshub_top/mopshub0/elink_core0/data_2bit_in
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_in
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align0
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align1
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits_or
add wave -noupdate -radix binary /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/alignment_reg
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/align_select
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/word10b
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/COMMAn
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/COMMAp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2997112 ns} 0}
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
WaveRestoreZoom {0 ns} {3150 us}
