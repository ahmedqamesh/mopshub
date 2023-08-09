onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_rec_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_power_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_mon_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:ISK_char
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:word10b
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:disp_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:decoder_out
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:dec10b_out_rdy
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:code_err
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_input
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_in_rdy
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_code
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:KI_signal
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {11225448 ns} 0}
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
WaveRestoreZoom {0 ns} {102541148 ns}
