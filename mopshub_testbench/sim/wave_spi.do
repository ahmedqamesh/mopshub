onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/done_trim_osc_all
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/power_bus_en_done
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/irq_trim_osc
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/power_bus_en
add wave -noupdate -expand -group CAN_Rx /tb_mopshub_top/mopshub0/data_rec_uplink
add wave -noupdate -expand -group CAN_Rx /tb_mopshub_top/mopshub0/data_tra_downlink
add wave -noupdate -expand -group CAN_Rx /tb_mopshub_top/mopshub0/elink_core0/data_rec_uplink
add wave -noupdate /tb_mopshub_top/data_generator0/emulator_rec_in
add wave -noupdate /tb_mopshub_top/data_generator0/emulator_spi_in
add wave -noupdate /tb_mopshub_top/data_generator0/start_write_emulator_spi
add wave -noupdate /tb_mopshub_top/data_generator0/end_write_emulator_spi
add wave -noupdate /tb_mopshub_top/data_generator0/bus_dec_data
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_can_10bitout
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_10bitout
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout_Active
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_can_10bitout
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_can_irq
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_can_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_read_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_rec_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_tra_mode
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/addr_write
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/cnt_out
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_spi_rec_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_rec_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/data_tra_10bitin
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/spi_mon
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_elink_spi_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/end_write_elink
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/irq_spi_tra
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/elink_core0/buffer_spi_tra_en
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/data_tra_spi_out
add wave -noupdate -expand -group Mon_Rec -radix hexadecimal /tb_mopshub_top/mopshub0/monitor_pp30/spi_id
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/spi_reg
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/mon_bus_cnt
add wave -noupdate -expand -group Mon_Rec /tb_mopshub_top/mopshub0/monitor_pp30/cs_active
add wave -noupdate /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/irq_can_rec
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/irq_can_tra
add wave -noupdate /tb_mopshub_top/data_generator0/sel_bus
add wave -noupdate /tb_mopshub_top/data_generator0/select_bus
add wave -noupdate /tb_mopshub_top/rx0
add wave -noupdate /tb_mopshub_top/data_generator0/custommsg
add wave -noupdate /tb_mopshub_top/rx1
add wave -noupdate /tb_mopshub_top/tx1
add wave -noupdate /tb_mopshub_top/rx2
add wave -noupdate /tb_mopshub_top/data_generator0/tx_mopshub
add wave -noupdate /tb_mopshub_top/data_generator0/txdec
add wave -noupdate /tb_mopshub_top/tx0
add wave -noupdate /tb_mopshub_top/tx2
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1528712 ns} 0} {{Cursor 2} {2052494 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 219
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
WaveRestoreZoom {0 ns} {5250 us}
