onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/data_generator0/start_write_emulator
add wave -noupdate /tb_mopshub_top/data_generator0/end_write_emulator
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/fifo_din
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/data_rec_10bitout
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/data_rec_8bitout
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/addr_write
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/rec_elink_buf0/data_rec_in
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/data_rec_delimiter
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_in
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/bitCount
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/clk
add wave -noupdate /tb_mopshub_top/clk_80
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/rst
add wave -noupdate /tb_mopshub_top/data_generator0/tx_dout
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/data_2bit_out
add wave -noupdate /tb_mopshub_top/mopshub0/data_2bit_inb
add wave -noupdate /tb_mopshub_top/mopshub0/rx_din
add wave -noupdate -radix binary /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/alignment_reg
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/fifo_to_elink0/elink_proc_out0/elink_proc_out_enc8b10b0/enc10bit
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/word10b
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align0
add wave -noupdate -radix hexadecimal /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align1
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/bitstream_align2
add wave -noupdate -radix binary /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/comma_valid_bits_or
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/align_select
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/word10b_rdy
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/EDATAbitstreamSREG
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/MOPS_COMMAn
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in0/elink_proc_in_dec8b10b0/sync_detector0/MOPS_COMMAp
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {367536 ns} 0}
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
WaveRestoreZoom {79342 ns} {1753388 ns}
