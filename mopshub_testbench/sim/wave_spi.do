onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/power_bus_cnt
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/start_mon_init
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/addr_spi
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/power_bus_en
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/cs_active_c
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/power_bus_en_done
add wave -noupdate -group Power /tb_mopshub_top/clk_40_m
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/sck_c
add wave -noupdate -group Power /tb_mopshub_top/mopshub0/mosi_c
add wave -noupdate -group CAN_Rx /tb_mopshub_top/data_generator0/test_simult
add wave -noupdate -group CAN_Rx /tb_mopshub_top/data_generator0/custommsg
add wave -noupdate -group CAN_Rx /tb_mopshub_top/rx0
add wave -noupdate -group CAN_Rx /tb_mopshub_top/tx0
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/irq_can_rec
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/irq_can_tra
add wave -noupdate -group CAN_Rx /tb_mopshub_top/data_generator0/bus_dec_data
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/data_rec_uplink
add wave -noupdate -group CAN_Rx /tb_mopshub_top/data_generator0/start_write_emulator_spi
add wave -noupdate -group CAN_Rx /tb_mopshub_top/data_generator0/end_write_emulator_spi
add wave -noupdate -group CAN_Rx -radix binary /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/canakari_interface0/addr_can
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/canakari_interface0/end_read
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/elink_core0/start_write_elink
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/elink_core0/end_write_elink
add wave -noupdate -group CAN_Rx /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/reset_irq_can_done
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/data_rec_can_10bitout
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/spi_can_irq
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/spi_can_mode
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/spi_mode
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_can_10bitout
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout_Active
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/can_spi_debuger/cnt_out
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/data_rec_10bitout
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/cs_ewrite
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/start_write_elink
add wave -noupdate -group spi_can_tra /tb_mopshub_top/mopshub0/elink_core0/end_write_elink
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/rx_data_rdy
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/cs_eread
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/fifo_data_packet
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/data_tra_10bitin
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/spi_can_id
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/fifo_data_eop
add wave -noupdate -group spi_can_rec -radix binary /tb_mopshub_top/mopshub0/elink_core0/addr_read
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/start_read_elink
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/end_read_elink
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/data_tra_out
add wave -noupdate -group spi_can_rec /tb_mopshub_top/mopshub0/elink_core0/irq_elink_tra
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/spi_id
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/spi_tra_mon_reg
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/spi_tra_mon_select
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/data_tra_mon_spi
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/start_write_elink_spi
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/end_write_elink_spi
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/irq_spi_tra
add wave -noupdate -group elink_spi_tra /tb_mopshub_top/mopshub0/elink_core0/spi_tra_mode
add wave -noupdate -group elink_spi_rec /tb_mopshub_top/mopshub0/monitor_pp30/cs_m
add wave -noupdate -group elink_spi_rec /tb_mopshub_top/mopshub0/monitor_pp30/cs_active
add wave -noupdate -group elink_spi_rec /tb_mopshub_top/mopshub0/monitor_pp30/cs
add wave -noupdate -group elink_spi_rec /tb_mopshub_top/mopshub0/elink_core0/spi_rec_mode
add wave -noupdate -group elink_spi_rec /tb_mopshub_top/mopshub0/elink_core0/data_rec_10bitout
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/addr
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/sck
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/txdat
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/w_Master_TX_Ready
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/rxdat
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/o_RX_DV
add wave -noupdate /tb_mopshub_top/mopshub0/control_bus0/transceive
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {23856 ns} 0} {{Cursor 2} {2740719 ns} 0}
quietly wave cursor active 1
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
WaveRestoreZoom {11509 ns} {43838 ns}
