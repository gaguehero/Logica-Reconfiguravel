vcom -reportprogress 300 -work work D:/VHDL/cont4_completo/cont4_completo.vhd

vcom -reportprogress 300 -work work D:/VHDL/cont4_completo/cont4_completo_tb.vhd

vsim +altera -do cont4_completo_run_msim_rtl_vhdl.do -l msim_transcript -gui work.cont4_completo_tb

add wave -position insertpoint  \
sim:/cont4_completo_tb/clk \
sim:/cont4_completo_tb/rst \
sim:/cont4_completo_tb/EN \
sim:/cont4_completo_tb/CLR \
sim:/cont4_completo_tb/LD \
sim:/cont4_completo_tb/LOAD

run 100 ns




