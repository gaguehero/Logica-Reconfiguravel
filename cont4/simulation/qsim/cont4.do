onerror {quit -f}
vlib work
vlog -work work cont4.vo
vlog -work work cont4.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cont4_vlg_vec_tst
vcd file -direction cont4.msim.vcd
vcd add -internal cont4_vlg_vec_tst/*
vcd add -internal cont4_vlg_vec_tst/i1/*
add wave /*
run -all
