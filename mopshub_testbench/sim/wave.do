onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/adc_ch
add wave -noupdate /tb_mopshub_top/bus_dec_data
add wave -noupdate /tb_mopshub_top/bus_id
add wave -noupdate /tb_mopshub_top/can_rec_select
add wave -noupdate /tb_mopshub_top/can_tra_select
add wave -noupdate /tb_mopshub_top/can_tra_select_dbg
add wave -noupdate /tb_mopshub_top/clk_40_m
add wave -noupdate /tb_mopshub_top/clk_m
add wave -noupdate /tb_mopshub_top/clk_mops
add wave -noupdate /tb_mopshub_top/costum_msg_end
add wave -noupdate /tb_mopshub_top/data_rec_uplink
add wave -noupdate /tb_mopshub_top/data_tra_downlink
add wave -noupdate /tb_mopshub_top/end_init
add wave -noupdate /tb_mopshub_top/end_power_init
add wave -noupdate /tb_mopshub_top/end_trim_bus
add wave -noupdate /tb_mopshub_top/endwait_all
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate /tb_mopshub_top/irq_elink_rec
add wave -noupdate /tb_mopshub_top/irq_elink_tra
add wave -noupdate /tb_mopshub_top/osc_auto_trim_mopshub
add wave -noupdate /tb_mopshub_top/power_bus_cnt
add wave -noupdate /tb_mopshub_top/power_bus_en
add wave -noupdate /tb_mopshub_top/ready_osc
add wave -noupdate /tb_mopshub_top/rst
add wave -noupdate /tb_mopshub_top/rst_bus
add wave -noupdate /tb_mopshub_top/rx0
add wave -noupdate /tb_mopshub_top/rx1
add wave -noupdate /tb_mopshub_top/rx2
add wave -noupdate /tb_mopshub_top/rx3
add wave -noupdate /tb_mopshub_top/rx4
add wave -noupdate /tb_mopshub_top/rx5
add wave -noupdate /tb_mopshub_top/rx6
add wave -noupdate /tb_mopshub_top/rx7
add wave -noupdate /tb_mopshub_top/rx8
add wave -noupdate /tb_mopshub_top/rx9
add wave -noupdate /tb_mopshub_top/rx10
add wave -noupdate /tb_mopshub_top/rx11
add wave -noupdate /tb_mopshub_top/rx12
add wave -noupdate /tb_mopshub_top/rx13
add wave -noupdate /tb_mopshub_top/rx14
add wave -noupdate /tb_mopshub_top/rx15
add wave -noupdate /tb_mopshub_top/rx_mopshub_2bit
add wave -noupdate /tb_mopshub_top/sel_bus
add wave -noupdate /tb_mopshub_top/sign_on_sig
add wave -noupdate /tb_mopshub_top/spi_dat_m
add wave -noupdate /tb_mopshub_top/spi_dat_p
add wave -noupdate /tb_mopshub_top/start_init
add wave -noupdate /tb_mopshub_top/start_osc_cnt
add wave -noupdate /tb_mopshub_top/start_trim_osc
add wave -noupdate /tb_mopshub_top/test_advanced
add wave -noupdate /tb_mopshub_top/test_rx
add wave -noupdate /tb_mopshub_top/test_rx_end
add wave -noupdate /tb_mopshub_top/test_rx_start
add wave -noupdate /tb_mopshub_top/test_tx
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_10bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_can_10bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_spi_10bitout_Active
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/data_rec_dbg_10bitout
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/spi_rec_signal
add wave -noupdate /tb_mopshub_top/mopshub0/elink_core0/dbg_rec_mode
add wave -noupdate /tb_mopshub_top/test_tx_end
add wave -noupdate /tb_mopshub_top/test_tx_start
add wave -noupdate /tb_mopshub_top/tx0
add wave -noupdate /tb_mopshub_top/tx1
add wave -noupdate /tb_mopshub_top/tx2
add wave -noupdate /tb_mopshub_top/tx3
add wave -noupdate /tb_mopshub_top/tx4
add wave -noupdate /tb_mopshub_top/tx5
add wave -noupdate /tb_mopshub_top/tx6
add wave -noupdate /tb_mopshub_top/tx7
add wave -noupdate /tb_mopshub_top/tx8
add wave -noupdate /tb_mopshub_top/tx9
add wave -noupdate /tb_mopshub_top/tx10
add wave -noupdate /tb_mopshub_top/tx11
add wave -noupdate /tb_mopshub_top/tx12
add wave -noupdate /tb_mopshub_top/tx13
add wave -noupdate /tb_mopshub_top/tx14
add wave -noupdate /tb_mopshub_top/tx15
add wave -noupdate /tb_mopshub_top/tx_mopshub_2bit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {889 ns} 0}
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
WaveRestoreZoom {19998236 ns} {20000093 ns}
