onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:adc_ch
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:bus_cnt_power
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:bus_dec_data
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:bus_id
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:can_rec_select
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:can_tra_select
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:can_tra_select_dbg
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:clk_40_m
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:clk_mops
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:end_init
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:end_power_init
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:end_trim_bus
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:endwait_all
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:info_debug_sig
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:irq_elink_rec
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:irq_elink_tra
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:n_buses
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:osc_auto_trim_mopshub
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:power_bus_cnt
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:power_bus_en
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:ready_osc
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:rst
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:rst_bus
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:rx0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:rx1
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:rx2
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:sel_bus
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:sign_on_sig
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:spi_dat_m
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:spi_dat_p
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:start_init
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:start_trim_osc
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_advanced
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_advanced_end
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_rx
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_rx_end
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_rx_start
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_tx
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_tx_end
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:test_tx_start
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:tx0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:tx1
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:tx2
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:tx3
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:tx_mopshub_2bit
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:data_rec_decoder
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:data_rec_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:data_tra_decoder
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:data_tra_mon_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_rec_uplink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_tra_downlink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:data_tra_power_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:mopshub0:elink_core0:elink_to_fifo0:elink_proc_in_dec8b10b0:code_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:mopshub0:elink_core0:elink_to_fifo0:elink_proc_in_dec8b10b0:disp_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:code_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:data_generator0:mopshub_decoder_emulator:elink_core_decoder:elink_to_fifo0:elink_proc_in_dec8b10b0:disp_err
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:mopshub0:data_rec_mon_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:mopshub0:data_tra_mon_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_16bus:mopshub0:data_tra_power_spi
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8398968 ns} 0}
quietly wave cursor active 1
configure wave -namecolwidth 186
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
WaveRestoreZoom {0 ns} {17549423 ns}
