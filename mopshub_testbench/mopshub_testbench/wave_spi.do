onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:abort
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:addr_read
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:addr_write
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_elink_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_eth_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_mon_spi_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_mon_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_power_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_spi_power_off
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_power_spi_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_rec_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_spi_rec_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:buffer_tra_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:can_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:can_id_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:can_rec_mode
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:clk
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:COMMAn
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:COMMAp
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_eread
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_ewrite
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_2bit_in
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_2bit_out
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_10bit_in_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rdy_10bit_in_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_10bitout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_can_10bitout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_dbg_10bitout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_dbg_in
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_rst_10bitout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_rst_in
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_spi_10bitout
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_spi_in
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rec_uplink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_10bitin
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_out
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:dbg_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:dbg_rec_mode
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:dbg_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:dec10b_Out_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:dec10b_out_rdy_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_read_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_write_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_write_elink_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:end_write_elink_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:entimeout_elink_rec
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:entimeout_elink_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_eop
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_packet
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_data_sop
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:fifo_flush
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_elink_eth
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_elink_rec
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_elink_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_spi_mon_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:irq_spi_power_on
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:Kchar_comma
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:Kchar_eop
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:Kchar_sop
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:partial_reconfig_rec
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:partial_reconfig_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:rst
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:rst_mopshub_mode
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:rx_data_rdy
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:rx_fifo_empty
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:rx_fifo_full
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:sign_on_signal
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_mon_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_mon_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_power_off_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_power_off_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_power_on_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_power_on_reg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_rec_mode
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:spi_tra_mode
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_read_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_read_eth_fifo
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_write_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_write_elink_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:start_write_elink_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:statedeb_elink_rec
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:statedeb_elink_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:time_limit_trim
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:timeoutrst
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:timeoutrst_elink_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:tx_data_rdy
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:tx_efifo_full
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:tx_fifo_empty
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:word10b_rdy
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {6377705 ns} 0}
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
WaveRestoreZoom {5635706 ns} {5644256 ns}
