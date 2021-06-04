onerror {quit -f}
vlib work
vlog -work work unidadeLogicaArt.vo
vlog -work work unidadeLogicaArt.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.unidadeLogicaArt_vlg_vec_tst
vcd file -direction unidadeLogicaArt.msim.vcd
vcd add -internal unidadeLogicaArt_vlg_vec_tst/*
vcd add -internal unidadeLogicaArt_vlg_vec_tst/i1/*
add wave /*
run -all
