onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:clk_elink
add wave -noupdate -radix hexadecimal -childformat {{{:tb_data_gen_elink:delimeter[1]} -radix hexadecimal} {{:tb_data_gen_elink:delimeter[0]} -radix hexadecimal}} -subitemconfig {{:tb_data_gen_elink:delimeter[1]} {-height 17 -radix hexadecimal} {:tb_data_gen_elink:delimeter[0]} {-height 17 -radix hexadecimal}} :tb_data_gen_elink:delimeter
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:data_gen_elink0:counter10bit_reg
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:counter10bit_limit
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:done
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:loop_en
add wave -noupdate -radix hexadecimal :tb_data_gen_elink:rst
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:clk
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:data10bout
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_din
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:wr_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_wr_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:full_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:dout10bit_async_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:read_fifo_empty
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:data_10bit_in_fifo
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rd_en_s
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:rd_en_data_tx
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_rd_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:fifo_core_wrap_tx:arempty
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_data_gen_elink:fifo_to_elink0:data_rdy_10bit_fifo
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:word10b
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:bitstream_in
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:code_err
add wave -noupdate -expand -group elink_fifo :tb_data_gen_elink:elink_to_fifo0:elink_proc_in_dec8b10b0:disp_err
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:dec10b_Out
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:elink_to_fifo0:dec10b_out_rdy
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_data_gen_elink:data_tra_10bitin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {120276180 ns} 1} {{Cursor 2} {398081 ns} 0}
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
WaveRestoreZoom {397616 ns} {399644 ns}
