onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group Decode /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/dec_8b10b_wrap0/dataout_valid
add wave -noupdate -expand -group Decode /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/dec_8b10b_wrap0/decoder_out
add wave -noupdate -expand -group Decode /tb_mopshub_top/mopshub0/elink_core0/elink_to_fifo0/elink_proc_in_dec8b10b0/dec_8b10b_wrap0/ISK_char
add wave -noupdate -expand -group Encode /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/data_in_rdy
add wave -noupdate -expand -group Encode /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/KI
add wave -noupdate -expand -group Encode /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/byte
add wave -noupdate -expand -group Encode /tb_mopshub_top/mopshub0/elink_core0/fifo_to_elink0/elink_proc_out_enc8b10b0/enc8b10b_wrap10/data_out
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {17018241 ns} 0}
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
WaveRestoreZoom {0 ns} {23414336 ns}
