onerror {quit -f}
vlib work
vlog -work work totalV.vo
vlog -work work totalV.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.totalV_vlg_vec_tst
vcd file -direction totalV.msim.vcd
vcd add -internal totalV_vlg_vec_tst/*
vcd add -internal totalV_vlg_vec_tst/i1/*
add wave /*
run -all
