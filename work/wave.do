onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_rec_decoder
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_rec_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_decoder
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_mon_decoder_spi
add wave -noupdate -radix hexadecimal :tb_mopshub_top_32bus:data_generator0:data_tra_power_decoder_spi
add wave -noupdate :tb_mopshub_top_32bus:data_generator0:response_cld
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {8559989 ns} 0}
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
WaveRestoreZoom {0 ns} {38242031 ns}
