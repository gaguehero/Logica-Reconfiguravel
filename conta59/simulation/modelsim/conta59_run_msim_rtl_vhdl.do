transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/altera/conta4/conta4.vhd}
vcom -93 -work work {C:/altera/conta59/conta59.vhd}

