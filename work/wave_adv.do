onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_rec_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_power_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_mon_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:ISK_char
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:word10b
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:decoder_out
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:dec10b_out_rdy
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:align_select
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:bitstream_align0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:bitstream_align1
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:comma_valid_bits
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:comma_valid_bits_or
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:disp_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:code_err
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:end_write_elink
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_rec_mode
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:can_rec_mode
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:rst_mopshub_mode
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_ewrite
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:wr_en_comma
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_10bitout
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_din
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_wr_en
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:read_fifo_empty
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:rd_en_s
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:rd_en_data_tx
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_10bit_in_fifo
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_10bit_in
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_input
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_out
add wave -noupdate -expand -group fifo_to_elink -radix binary :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_code
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:KI_signal
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_in_rdy
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_rdy_10bit_fifo
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:dout_rdy_async_fifo_reg
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:bit_cnt
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:rst
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:get_data_trig
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:clk_elink
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:send_count
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:triger_counter1:request_cycle_cnt
add wave -noupdate -expand -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:triger_counter1:request_trig
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_10b_data_out_r
add wave -noupdate -expand -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc10bit_r
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44411640 ns} 1} {{Cursor 2} {811808 ns} 0}
quietly wave cursor active 2
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
WaveRestoreZoom {0 ns} {8454458 ns}
