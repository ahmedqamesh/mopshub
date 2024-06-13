onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top_16bus/clk_40_m
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/start_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/end_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/data_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/sign_on_sig
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/start_mon_init
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/end_mon_init
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/sck_mon
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/mon_bus_cnt
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/cs_mon
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/mosi_mon
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/miso_mon
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/xadc_rec_in
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_mon_receive
add wave -noupdate -expand -group {SPI Monitoring} /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_mon_transmit
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/set_power_init
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/start_power_init
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/end_power_init
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/sck_control
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/power_bus_cnt
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/cs_control
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/mosi_control
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/miso_control
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_control_receive
add wave -noupdate -expand -group {SPI Control} /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_control_transmit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2584 ns} 1} {{Cursor 2} {46536 ns} 1} {{Cursor 3} {165197 ns} 1} {{Cursor 4} {188784 ns} 1}
quietly wave cursor active 4
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
WaveRestoreZoom {0 ns} {294 us}
