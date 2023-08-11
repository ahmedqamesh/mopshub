onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:clk_elink
add wave -noupdate -group Top_SM -radix hexadecimal -childformat {{{:tb_data_gen_elink:delimeter[1]} -radix hexadecimal} {{:tb_data_gen_elink:delimeter[0]} -radix hexadecimal}} -subitemconfig {{:tb_data_gen_elink:delimeter[1]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:delimeter[0]} {-height 17 -radix hexadecimal}} :tb_data_gen_elink:delimeter
add wave -noupdate -group Top_SM -radix hexadecimal :tb_data_gen_elink:data_gen_elink0:counter10bit_reg
add wave -noupdate -group Top_SM -radix hexadecimal :tb_data_gen_elink:counter10bit_limit
add wave -noupdate -group Top_SM -radix hexadecimal :tb_data_gen_elink:done
add wave -noupdate -group Top_SM -radix hexadecimal :tb_data_gen_elink:loop_en
add wave -noupdate -group Top_SM -radix hexadecimal :tb_data_gen_elink:rst
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:clk
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:data10bout
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_din
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:wr_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_wr_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:full_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:dout10bit_async_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:data_10bit_in_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rd_en_s
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rd_en_data_tx
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_rd_en
add wave -noupdate -group fifo_elink :tb_data_gen_elink:fifo_to_elink0:wr_en_comma
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:data_rdy_10bit_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:arempty
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:read_fifo_empty
add wave -noupdate -group fifo_elink :tb_data_gen_elink:fifo_to_elink0:efifo_empty
add wave -noupdate -expand -group elink_fifo -radix hexadecimal -childformat {{{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[11]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[10]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[9]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[8]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[7]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[6]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[5]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[4]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[3]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[2]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[1]} -radix hexadecimal} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[0]} -radix hexadecimal}} -subitemconfig {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[11]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[10]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[9]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[8]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[7]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[6]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[5]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[4]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[3]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[2]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[1]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in[0]} {-height 17 -radix hexadecimal}} :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:bitstream_align1
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:align_select
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:bitstream_align0
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:word10b
add wave -noupdate -expand -group elink_fifo -radix binary -childformat {{{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[4]} -radix binary} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[3]} -radix binary} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[2]} -radix binary} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[1]} -radix binary} {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[0]} -radix binary}} -subitemconfig {{:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[4]} {-height 17 -radix binary} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[3]} {-height 17 -radix binary} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[2]} {-height 17 -radix binary} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[1]} {-height 17 -radix binary} {:tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg[0]} {-height 17 -radix binary}} :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:alignment_reg
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:comma_valid_bits_or
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:word10b_rdy
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:sync_detector0:comma_valid_bits
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:code_err
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:disp_err
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:dec10b_Out
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:ISK_char
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:dec10b_out_rdy
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:data_tra_10bitin
add wave -noupdate :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:clk
add wave -noupdate -expand -group elink_fifo_dbg -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:elink_proc_out_enc8b10b0:data_input
add wave -noupdate -expand -group elink_fifo_dbg :tb_data_gen_elink:fifo_to_elink0:elink_proc_out_enc8b10b0:data_in_rdy
add wave -noupdate -expand -group elink_fifo_dbg -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:elink_proc_out_enc8b10b0:data_out
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:elink_proc_out_enc8b10b0:enc10bit_r
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:elink_proc_out_enc8b10b0:enc_10b_data_out_r
add wave -noupdate :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rdy_fifo
add wave -noupdate :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rd_en
add wave -noupdate :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:wr_en_comma
add wave -noupdate :tb_data_gen_elink:data_gen_elink0:efifo_empty
add wave -noupdate -radix hexadecimal -childformat {{{:tb_data_gen_elink:data_gen_elink0:msg_count[15]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[14]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[13]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[12]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[11]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[10]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[9]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[8]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[7]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[6]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[5]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[4]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[3]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[2]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[1]} -radix hexadecimal} {{:tb_data_gen_elink:data_gen_elink0:msg_count[0]} -radix hexadecimal}} -subitemconfig {{:tb_data_gen_elink:data_gen_elink0:msg_count[15]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[14]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[13]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[12]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[11]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[10]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[9]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[8]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[7]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[6]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[5]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[4]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[3]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[2]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[1]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:data_gen_elink0:msg_count[0]} {-height 17 -radix hexadecimal}} :tb_data_gen_elink:data_gen_elink0:msg_count
add wave -noupdate :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:read_fifo_empty
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120276180 ns} 1} {{Cursor 2} {426 ns} 0}
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
WaveRestoreZoom {0 ns} {1260 ns}
