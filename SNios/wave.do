onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /hsys_tb/hsys_inst/clk_clk
add wave -noupdate /hsys_tb/hsys_inst/reset_reset_n
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/cpu_instruction_master_address
add wave -noupdate /hsys_tb/hsys_inst/cpu_instruction_master_read
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/cpu_instruction_master_readdata
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/cpu_data_master_writedata
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/cpu_data_master_address
add wave -noupdate /hsys_tb/hsys_inst/cpu_data_master_write
add wave -noupdate /hsys_tb/hsys_inst/cpu_data_master_read
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/cpu_data_master_readdata
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/clock
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/resetn
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/chipselect
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/writedata
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/write_en
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/readdata
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/add
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/read_en
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/write_enable0
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/write_enable1
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/write_enable2
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/addZero
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/addUm
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/read_en0
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/read_en1
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/r32o0
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/r32o1
add wave -noupdate -radix ascii /hsys_tb/hsys_inst/top_avalon1_0/r32Check
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/r32Out
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/SAIDA
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/CHECK
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/dataBram
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/ADDR
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/dataIn
add wave -noupdate -radix unsigned /hsys_tb/hsys_inst/top_avalon1_0/dataOut
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/WR_EN
add wave -noupdate /hsys_tb/hsys_inst/top_avalon1_0/RST
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {0 ps} 0}
quietly wave cursor active 0
configure wave -namecolwidth 308
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ps
update
WaveRestoreZoom {0 ps} {853 ps}
