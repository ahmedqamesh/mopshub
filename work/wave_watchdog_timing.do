onerror {resume}
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[10:0]} id
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[75:64]} Id_sig
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[74:64]} id_s
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[75:65]} id_sig
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[75:65]} s
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[75:64]} s001
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[75:64]} ss
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[63:56]} B1
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[55:48]} B3
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[47:40]} B2
quietly virtual signal -install /tb_mopshub_top_16bus { /tb_mopshub_top_16bus/data_rec_uplink[39:32]} B4
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/clk
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/counter
add wave -noupdate /tb_mopshub_top_16bus/mopshub_tb_environment0/bus_dec_data
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/enable_timeout
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/enable_timeout0
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/enable_timeout1
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/enable_timeout2
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/timeout_rst_watchdog0/rst_timeout
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/time_limit
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {2422296 ns} 1} {{Cursor 2} {758383491 ns} 0}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 60
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
configure wave -timelineunits us
update
WaveRestoreZoom {0 ns} {2100 ms}
