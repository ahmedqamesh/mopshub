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
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_0/address
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/writedata
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/write_n
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/cs
add wave -noupdate /tb_mopshub_top_16bus/data_tra_downlink
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/bus_tra_select
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/can_elink_bridge_SM0/start_write_can
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/bridge_controller0/can_elink_bridge_SM0/reset_irq_can
add wave -noupdate /tb_mopshub_top_16bus/mopshub0/canakari_top_16bus0/cancari_block0_7/can_1/irqsuctra
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {7250657 ns} 1} {{Cursor 2} {6300095 ns} 1}
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
configure wave -timelineunits us
update
WaveRestoreZoom {6300095 ns} {7250657 ns}
