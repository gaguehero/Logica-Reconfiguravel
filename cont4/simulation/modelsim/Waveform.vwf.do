vlog -work work C:/altera/cont4/simulation/modelsim/Waveform.vwf.vt
vsim -novopt -c -t 1ps -L cycloneii_ver -L altera_ver -L altera_mf_ver -L 220model_ver -L sgate work.cont4_vlg_vec_tst
onerror {resume}
add wave {cont4_vlg_vec_tst/i1/CLK}
add wave {cont4_vlg_vec_tst/i1/CLR}
add wave {cont4_vlg_vec_tst/i1/EN}
add wave {cont4_vlg_vec_tst/i1/LD}
add wave {cont4_vlg_vec_tst/i1/LOAD}
add wave {cont4_vlg_vec_tst/i1/LOAD[3]}
add wave {cont4_vlg_vec_tst/i1/LOAD[2]}
add wave {cont4_vlg_vec_tst/i1/LOAD[1]}
add wave {cont4_vlg_vec_tst/i1/LOAD[0]}
add wave {cont4_vlg_vec_tst/i1/Q}
add wave {cont4_vlg_vec_tst/i1/Q[3]}
add wave {cont4_vlg_vec_tst/i1/Q[2]}
add wave {cont4_vlg_vec_tst/i1/Q[1]}
add wave {cont4_vlg_vec_tst/i1/Q[0]}
add wave {cont4_vlg_vec_tst/i1/RST}
run -all
