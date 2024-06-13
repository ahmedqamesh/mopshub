onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/clk_m
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/data_rec_uplink
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/mopshub0/elink_core0/elink_transmitter0/elink_proc_out_enc8b10b0/data_10bit_in
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/mopshub0/elink_core0/elink_transmitter0/elink_proc_out_enc8b10b0/data_out_rdy
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/mopshub0/elink_core0/elink_transmitter0/elink_proc_out_enc8b10b0/data_encoder_input
add wave -noupdate -expand -group {eLink Transmitter} /tb_mopshub_top_16bus/mopshub0/elink_core0/elink_transmitter0/elink_proc_out_enc8b10b0/data_encoder_output
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/clk_elink
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/elink_core_decoder/elink_receiver0/elink_proc_in_dec8b10b0/data_decoder_in
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/elink_core_decoder/elink_receiver0/elink_proc_in_dec8b10b0/data_decoder_out
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/elink_core_decoder/elink_receiver0/elink_proc_in_dec8b10b0/word10b_rdy
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/data_tra_driver
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/elink_core_decoder/elink_receiver0/code_err
add wave -noupdate -expand -group {eLink Receiver} /tb_mopshub_top_16bus/mopshub_tb_environment0/mopshub_tb_elink_driver0/elink_core_decoder/elink_receiver0/disp_err
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3800964 ns} 1} {{Cursor 2} {3802994 ns} 1}
quietly wave cursor active 2
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
WaveRestoreZoom {3800951 ns} {3803033 ns}
