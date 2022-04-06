onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/bitstream_in
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align0
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align1
add wave -noupdate -group from_elink -radix binary /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits_or
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/sync_detector0/align_select
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/word10b
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/COMMAn
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/COMMAp
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/word10b_rdy
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/dec8b_data
add wave -noupdate -group from_elink /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/dec8b_rdy
add wave -noupdate -expand -group to_elink /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/byte
add wave -noupdate -expand -group to_elink /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/data_in_rdy
add wave -noupdate -expand -group to_elink /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/data_out
add wave -noupdate -expand -group to_elink /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/DataOut
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/readyOut
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/data_2bit_out
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/get_data_trig
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/data_10bit_in
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/ElinkData
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11676 ns} 0}
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
WaveRestoreZoom {66231 ns} {88873 ns}
