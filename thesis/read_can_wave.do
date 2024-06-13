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
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/clk
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/address
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/readdata
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/read_n
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/write_n
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/cs
add wave -noupdate /tb_mopshub_top_16bus/data_rec_uplink
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/bus_rec_select
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/canakari_interface0/start_read
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/canakari_interface0/reset_irq_can
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/irqsucrec
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {5016461 ns} 1} {{Cursor 2} {5024860 ns} 1}
quietly wave cursor active 2
configure wave -namecolwidth 150
configure wave -valuecolwidth 40
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
WaveRestoreZoom {5016461 ns} {5024860 ns}
