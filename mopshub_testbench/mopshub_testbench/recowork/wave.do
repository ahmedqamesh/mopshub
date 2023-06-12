onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:addr_read
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:clk
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:cs_eread
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_received_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_rx_elink
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:mopshub0:elink_core0:data_tra_10bitin
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {10801593 ns} 0}
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
WaveRestoreZoom {10799641 ns} {10805192 ns}
