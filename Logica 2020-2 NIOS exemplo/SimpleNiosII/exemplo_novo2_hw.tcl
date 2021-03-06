# TCL File Generated by Component Editor 13.0sp1
# Thu Apr 22 05:52:31 BRT 2021
# DO NOT MODIFY


# 
# exemplo_novo2 "exemplo_novo2" v1.0
#  2021.04.22.05:52:31
# 
# 

# 
# request TCL package from ACDS 13.1
# 
package require -exact qsys 13.1


# 
# module exemplo_novo2
# 
set_module_property DESCRIPTION ""
set_module_property NAME exemplo_novo2
set_module_property VERSION 1.0
set_module_property INTERNAL false
set_module_property OPAQUE_ADDRESS_MAP true
set_module_property AUTHOR ""
set_module_property DISPLAY_NAME exemplo_novo2
set_module_property INSTANTIATE_IN_SYSTEM_MODULE true
set_module_property EDITABLE true
set_module_property ANALYZE_HDL AUTO
set_module_property REPORT_TO_TALKBACK false
set_module_property ALLOW_GREYBOX_GENERATION false


# 
# file sets
# 
add_fileset QUARTUS_SYNTH QUARTUS_SYNTH "" ""
set_fileset_property QUARTUS_SYNTH TOP_LEVEL reg32_avalon_interface
set_fileset_property QUARTUS_SYNTH ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file contador0.vhd VHDL PATH hw/contador0.vhd
add_fileset_file contador1.vhd VHDL PATH hw/contador1.vhd
add_fileset_file contador8bit.vhd VHDL PATH hw/contador8bit.vhd
add_fileset_file reg32.vhd VHDL PATH hw/reg32.vhd
add_fileset_file reg32_avalon_interface.vhd VHDL PATH hw/reg32_avalon_interface.vhd TOP_LEVEL_FILE

add_fileset SIM_VHDL SIM_VHDL "" ""
set_fileset_property SIM_VHDL TOP_LEVEL reg32_avalon_interface
set_fileset_property SIM_VHDL ENABLE_RELATIVE_INCLUDE_PATHS false
add_fileset_file contador0.vhd VHDL PATH hw/contador0.vhd
add_fileset_file contador1.vhd VHDL PATH hw/contador1.vhd
add_fileset_file contador8bit.vhd VHDL PATH hw/contador8bit.vhd
add_fileset_file reg32.vhd VHDL PATH hw/reg32.vhd
add_fileset_file reg32_avalon_interface.vhd VHDL PATH hw/reg32_avalon_interface.vhd


# 
# parameters
# 


# 
# display items
# 


# 
# connection point avalon_slave_0
# 
add_interface avalon_slave_0 avalon end
set_interface_property avalon_slave_0 addressUnits WORDS
set_interface_property avalon_slave_0 associatedClock clock_sink
set_interface_property avalon_slave_0 associatedReset reset_sink
set_interface_property avalon_slave_0 bitsPerSymbol 8
set_interface_property avalon_slave_0 burstOnBurstBoundariesOnly false
set_interface_property avalon_slave_0 burstcountUnits WORDS
set_interface_property avalon_slave_0 explicitAddressSpan 0
set_interface_property avalon_slave_0 holdTime 0
set_interface_property avalon_slave_0 linewrapBursts false
set_interface_property avalon_slave_0 maximumPendingReadTransactions 0
set_interface_property avalon_slave_0 readLatency 0
set_interface_property avalon_slave_0 readWaitTime 1
set_interface_property avalon_slave_0 setupTime 0
set_interface_property avalon_slave_0 timingUnits Cycles
set_interface_property avalon_slave_0 writeWaitTime 0
set_interface_property avalon_slave_0 ENABLED true
set_interface_property avalon_slave_0 EXPORT_OF ""
set_interface_property avalon_slave_0 PORT_NAME_MAP ""
set_interface_property avalon_slave_0 SVD_ADDRESS_GROUP ""

add_interface_port avalon_slave_0 chipselect chipselect Input 1
add_interface_port avalon_slave_0 writedata writedata Input 32
add_interface_port avalon_slave_0 readdata readdata Output 32
add_interface_port avalon_slave_0 add address Input 1
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isFlash 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment avalon_slave_0 embeddedsw.configuration.isPrintableDevice 0


# 
# connection point en
# 
add_interface en avalon end
set_interface_property en addressUnits WORDS
set_interface_property en associatedClock clock_sink
set_interface_property en associatedReset reset_sink
set_interface_property en bitsPerSymbol 8
set_interface_property en burstOnBurstBoundariesOnly false
set_interface_property en burstcountUnits WORDS
set_interface_property en explicitAddressSpan 0
set_interface_property en holdTime 0
set_interface_property en linewrapBursts false
set_interface_property en maximumPendingReadTransactions 0
set_interface_property en readLatency 0
set_interface_property en readWaitTime 1
set_interface_property en setupTime 0
set_interface_property en timingUnits Cycles
set_interface_property en writeWaitTime 0
set_interface_property en ENABLED true
set_interface_property en EXPORT_OF ""
set_interface_property en PORT_NAME_MAP ""
set_interface_property en SVD_ADDRESS_GROUP ""

add_interface_port en write_en write Input 1
add_interface_port en read_en read Input 1
set_interface_assignment en embeddedsw.configuration.isFlash 0
set_interface_assignment en embeddedsw.configuration.isMemoryDevice 0
set_interface_assignment en embeddedsw.configuration.isNonVolatileStorage 0
set_interface_assignment en embeddedsw.configuration.isPrintableDevice 0


# 
# connection point clock_sink
# 
add_interface clock_sink clock end
set_interface_property clock_sink clockRate 0
set_interface_property clock_sink ENABLED true
set_interface_property clock_sink EXPORT_OF ""
set_interface_property clock_sink PORT_NAME_MAP ""
set_interface_property clock_sink SVD_ADDRESS_GROUP ""

add_interface_port clock_sink clock clk Input 1


# 
# connection point reset_sink
# 
add_interface reset_sink reset end
set_interface_property reset_sink associatedClock clock_sink
set_interface_property reset_sink synchronousEdges DEASSERT
set_interface_property reset_sink ENABLED true
set_interface_property reset_sink EXPORT_OF ""
set_interface_property reset_sink PORT_NAME_MAP ""
set_interface_property reset_sink SVD_ADDRESS_GROUP ""

add_interface_port reset_sink resetn reset_n Input 1

