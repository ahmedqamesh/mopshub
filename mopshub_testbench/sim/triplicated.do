onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_mopshub_top/info_debug_sig
add wave -noupdate -group top /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/irq_can_rec
add wave -noupdate -group top /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/irq_can_tra
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/sign_on_sig_core
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/canakari_interface0/initi
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/mopshub_coreTMR0/bridge_controller0/canakari_interface0/initiA
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/mopshub_coreTMR0/bridge_controller0/canakari_interface0/initiB
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/mopshub_coreTMR0/bridge_controller0/canakari_interface0/initiC
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/write_can
add wave -noupdate -radix hexadecimal /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/canakari_interface0/data_init
add wave -noupdate /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/write_canA
add wave -noupdate -radix hexadecimal /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/bridge_controllerTMR0/canakari_interface0/data_initA
add wave -noupdate -radix hexadecimal /tb_mopshub_top/mopshub0/mopshub_core0/bridge_controller0/canakari_interface0/addr_can
add wave -noupdate -radix hexadecimal /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/addr_canA
add wave -noupdate /tb_mopshub_top/mopshub0/rx1
add wave -noupdate /tb_mopshub_top/mopshub0/tx1
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/tx0_core
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/tx1_core
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/write_sig_can_n
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/read_sig_can_n
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/irq_core_rec
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/irq_core_tra
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/write_can
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/mopshub_top_triplicated0/bus_tra_select
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/read_can_core
add wave -noupdate -expand -group Core /tb_mopshub_top/mopshub0/mopshub_core0/core_rec_select
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {59774 ns} 0}
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
WaveRestoreZoom {15595 ns} {17618 ns}
