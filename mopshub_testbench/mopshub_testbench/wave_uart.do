onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:c_CLKS_PER_BIT
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:clk_40
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:clk_m
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:clk_uart
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:in_rx_serial
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:out_tx_serial
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:out_rx_byte
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:rst
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:w_tx_done
add wave -noupdate -radix hexadecimal -childformat {{{:tb_debug_uart_core:out_rx_byte_dbg[7]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[6]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[5]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[4]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[3]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[2]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[1]} -radix hexadecimal} {{:tb_debug_uart_core:out_rx_byte_dbg[0]} -radix hexadecimal}} -subitemconfig {{:tb_debug_uart_core:out_rx_byte_dbg[7]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[6]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[5]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[4]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[3]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[2]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[1]} {-height 17 -radix hexadecimal} {:tb_debug_uart_core:out_rx_byte_dbg[0]} {-height 17 -radix hexadecimal}} :tb_debug_uart_core:out_rx_byte_dbg
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:out_rx_dv_dbg
add wave -noupdate -radix hexadecimal :tb_debug_uart_core:debug_uart_core0:o_Rx_Byte
add wave -noupdate :tb_debug_uart_core:debug_uart_core0:o_Rx_DV
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1281159 ns} 0}
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
WaveRestoreZoom {0 ns} {1779288 ns}
