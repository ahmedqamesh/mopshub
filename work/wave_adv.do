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
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:end_write_elink
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:can_rec_mode
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_rec_mode
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:rst_mopshub_mode
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_ewrite
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_10bitout
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_din
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_wr_en
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:read_fifo_empty
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:rd_en_s
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:rd_en_data_tx
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_10bit_in_fifo
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_10bit_in
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_input
add wave -noupdate -group fifo_to_elink -radix binary :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_code
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:clk_elink
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_out
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:dataout2
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:KI_signal
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:data_in_rdy
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:data_rdy_10bit_fifo
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:fifo_core_wrap_tx:dout_rdy_async_fifo_reg
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:rst
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:get_data_trig
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:send_count
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:triger_counter1:request_cycle_cnt
add wave -noupdate -group fifo_to_elink :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:triger_counter1:request_trig
add wave -noupdate -group fifo_to_elink -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc10bit_r
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:dataout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:dataout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:dataout3
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ai
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ai
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:bi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:bi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ci
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ci
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:di
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:di
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ei
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ei
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:fi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:fi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:gi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:gi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:hi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:hi
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:clk
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:aeqb
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:aeqb
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ceqd
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ceqd
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:l22
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:l22
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:l40
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:l40
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:l04
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:l04
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:l31
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:l31
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:l13
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:l13
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:alt7
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:alt7
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ao
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ao
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:bo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:bo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:co
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:compls4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:compls6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:disp6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:dispin
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:dispout
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:do
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ena
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:eo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:fo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:go
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ho
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:io
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:jo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:KI
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:nd1s4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:nd1s6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ndos4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:ndos6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:pd1s4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:pd1s6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:pdos4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:U_0:pdos6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:co
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:compls4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:compls6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:disp6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:dispin
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:dispout
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:do
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ena
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:eo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:fo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:go
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ho
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:io
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:jo
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ki
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:nd1s4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:nd1s6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ndos4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:ndos6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:pd1s4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:pd1s6
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:pdos4
add wave -noupdate :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_8b10b_mopshub0:pdos6
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {44411640 ns} 1} {{Cursor 2} {1612 ns} 0}
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
WaveRestoreZoom {0 ns} {6207365 ns}
