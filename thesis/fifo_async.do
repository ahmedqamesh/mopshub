onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /tb_async_fifo_reg/clk_40_m
add wave -noupdate /tb_async_fifo_reg/clk_elink
add wave -noupdate /tb_async_fifo_reg/wrst_n
add wave -noupdate /tb_async_fifo_reg/full
add wave -noupdate /tb_async_fifo_reg/empty
add wave -noupdate /tb_async_fifo_reg/r_en
add wave -noupdate /tb_async_fifo_reg/rinc
add wave -noupdate /tb_async_fifo_reg/winc
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/waddr_cval
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/waddr_nval
add wave -noupdate /tb_async_fifo_reg/wdata
add wave -noupdate /tb_async_fifo_reg/dout_fifo
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/dout_fifo2
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_nval[0]}
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval0
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_nval[1]}
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval1
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_nval[2]}
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval2
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_cval[3]}
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval3
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_cval[4]}
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval4
add wave -noupdate /tb_async_fifo_reg/fifo_async_reg0/data_reg_cval5
add wave -noupdate {/tb_async_fifo_reg/fifo_async_reg0/data_reg_cval[5]}
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {979 ns} 0}
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
WaveRestoreZoom {0 ns} {998 ns}
