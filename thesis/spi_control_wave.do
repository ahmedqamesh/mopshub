onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top_16bus/clk_40_m
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/start_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/end_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/data_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/sign_on_sig
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/set_power_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/start_power_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/end_power_init
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/sck_control
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/bus_control_select
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/cs_control
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/mosi_control
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/miso_control
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_control_receive
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/spi_core0/ack_spi_control_transmit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 3} {165192 ns} 1} {{Cursor 4} {188784 ns} 1}
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
WaveRestoreZoom {161158 ns} {264290 ns}
