onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate :tb_reconfig_core:reconfig_mopshub_core0:reconfig_elink_in_sm0:clk
add wave -noupdate :tb_reconfig_core:rstn
add wave -noupdate -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:address
add wave -noupdate -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:data
add wave -noupdate :tb_reconfig_core:reconfig_mopshub_core0:wfull
add wave -noupdate -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:fifo_async0:fifomem:rdata
add wave -noupdate -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:data_received
add wave -noupdate :tb_reconfig_core:reconfig_mopshub_core0:new_data_rx
add wave -noupdate -group fifo_elink -radix hexadecimal -childformat {{{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[9]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[8]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[7]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[6]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[5]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[4]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[3]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[2]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[1]} -radix hexadecimal} {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[0]} -radix hexadecimal}} -subitemconfig {{:tb_reconfig_core:reconfig_mopshub_core0:elink_data[9]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[8]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[7]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[6]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[5]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[4]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[3]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[2]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[1]} {-height 17 -radix hexadecimal} {:tb_reconfig_core:reconfig_mopshub_core0:elink_data[0]} {-height 17 -radix hexadecimal}} :tb_reconfig_core:reconfig_mopshub_core0:elink_data
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:cs_ewrite
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:dlc_length
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:dout10bit
add wave -noupdate -group fifo_elink :tb_reconfig_core:reconfig_mopshub_core0:read_en
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:rd_en_s
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:rd_en_data
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:elink_proc_out_enc8b10b0:data_10bit_in
add wave -noupdate -group fifo_elink -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:rdy_fifo
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:data_tra_10bitin
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:rx_data_rdy
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:cs_eread
add wave -noupdate -expand -group elink_fifo :tb_reconfig_core:reconfig_mopshub_core0:end_read_elink
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:reconfig_elink_in_sm0:dlc_reg
add wave -noupdate -expand -group elink_fifo :tb_reconfig_core:reconfig_mopshub_core0:partial_reconfig_id
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:statedeb
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:data_rx_elink
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:data_received_elink
add wave -noupdate -expand -group elink_fifo -radix hexadecimal :tb_reconfig_core:reconfig_mopshub_core0:address_elink
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {45388446 ns} 0} {{Cursor 2} {215105280 ns} 0}
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
WaveRestoreZoom {0 ns} {105 ms}
