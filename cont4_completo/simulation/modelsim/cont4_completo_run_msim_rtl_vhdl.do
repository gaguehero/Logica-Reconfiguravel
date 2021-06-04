transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/Divisor/DIVISOR.vhd}
vcom -93 -work work {C:/altera/cont4_completo/cont4_completo.vhd}

