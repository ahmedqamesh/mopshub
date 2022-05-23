onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/mopshub0/monitor_pp30/clk
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/start_init_can
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/end_init
add wave -noupdate /tb_mopshub_top/mopshub0/start_mon_init
add wave -noupdate /tb_mopshub_top/mopshub0/monitor_pp30/cs_m
add wave -noupdate /tb_mopshub_top/mopshub0/monitor_pp30/transceive
add wave -noupdate /tb_mopshub_top/mopshub0/addr_spi
add wave -noupdate /tb_mopshub_top/mopshub0/monitor_pp30/data_init
add wave -noupdate /tb_mopshub_top/mopshub0/monitor_pp30/txdat
add wave -noupdate /tb_mopshub_top/mopshub0/start_read_mon
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/end_mon_init
add wave -noupdate /tb_mopshub_top/mopshub0/start_init_spi
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/irq_trim_osc
add wave -noupdate /tb_mopshub_top/mopshub0/power_bus_en
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/buffer_spi_tra_en
add wave -noupdate /tb_mopshub_top/data_generator0/start_write_emulator_spi
add wave -noupdate /tb_mopshub_top/data_generator0/end_write_emulator_spi
add wave -noupdate /tb_mopshub_top/data_generator0/emulator_rec_in
add wave -noupdate /tb_mopshub_top/data_generator0/emulator_spi_in
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/data_rec_spi_8bitout
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/data_rec_spi_delimiter
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/addr_write
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/spi_mode
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/addr_read
add wave -noupdate /tb_mopshub_top/data_generator0/mopshub_decoder_emulator/elink_core_emulator/cs_ewrite
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/end_read_elink
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/done_trim_osc_all
add wave -noupdate /tb_mopshub_top/mopshub0/power_bus_en_done
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_tra_10bitin
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_mon
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/end_write_elink
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_elink_spi_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/irq_spi_tra
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/read_spi_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_spi_tra_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/data_tra_spi_out
add wave -noupdate -expand -group Mon_Rec -radix hexadecimal /tb_mopshub_top/mopshub0/monitor_pp30/spi_id
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/spi_reg
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/spi_select
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/mon_bus_cnt
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/cs_m
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/cs
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/cs_active
add wave -noupdate /tb_mopshub_top/mopshub0/data_rec_spi
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_in
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_8bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/spi_power
add wave -noupdate /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate /tb_mopshub_top/rx0
add wave -noupdate /tb_mopshub_top/rx2
add wave -noupdate /tb_mopshub_top/data_generator0/tx_mopshub
add wave -noupdate /tb_mopshub_top/data_generator0/txdec
add wave -noupdate /tb_mopshub_top/tx0
add wave -noupdate /tb_mopshub_top/tx1
add wave -noupdate /tb_mopshub_top/tx2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1656 ns} 0} {{Cursor 2} {4996605 ns} 0}
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
WaveRestoreZoom {0 ns} {5586 ns}
