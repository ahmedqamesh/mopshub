onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_debug_uart_core/debug_uart_core0/clk_40
add wave -noupdate /tb_debug_uart_core/debug_uart_core0/clk_uart
add wave -noupdate -expand -group {Debug Request} /tb_debug_uart_core/debug_uart_core0/in_rx_serial
add wave -noupdate -expand -group {Debug Request} /tb_debug_uart_core/debug_uart_core0/rx_byte
add wave -noupdate -expand -group {Debug Request} /tb_debug_uart_core/debug_uart_core0/register_address
add wave -noupdate -expand -group {Debug Response} /tb_debug_uart_core/debug_uart_core0/register_status
add wave -noupdate -expand -group {Debug Response} /tb_debug_uart_core/debug_uart_core0/tx_byte
add wave -noupdate /tb_debug_uart_core/debug_uart_core0/out_tx_serial
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1000127 ns} 0}
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
WaveRestoreZoom {7907 ns} {502223 ns}
