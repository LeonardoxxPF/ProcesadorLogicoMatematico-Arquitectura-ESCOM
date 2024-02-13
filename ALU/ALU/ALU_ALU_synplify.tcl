#-- Lattice Semiconductor Corporation Ltd.
#-- Synplify OEM project file

#device options
set_option -technology MACHXO2
set_option -part LCMXO2_7000HE
set_option -package TG144C
set_option -speed_grade -5

#compilation/mapping options
set_option -symbolic_fsm_compiler true
set_option -resource_sharing true

#use verilog 2001 standard option
set_option -vlog_std v2001

#map options
set_option -frequency 100
set_option -maxfan 1000
set_option -auto_constrain_io 0
set_option -disable_io_insertion false
set_option -retiming false; set_option -pipe true
set_option -force_gsr false
set_option -compiler_compatible 0
set_option -dup false

set_option -default_enum_encoding default

#simulation options


#timing analysis options



#automatic place and route (vendor) options
set_option -write_apr_constraint 1

#synplifyPro options
set_option -fix_gated_and_generated_clocks 1
set_option -update_models_cp 0
set_option -resolve_multiple_driver 0


set_option -seqshift_no_replicate 0

#-- add_file options
add_file -vhdl {C:/lscc/diamond/3.12/cae_library/synthesis/vhdl/machxo2.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/HA00.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/HA00_paq.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/FA00.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/FA00_paq.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/ADD.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/MUTL_paq.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/SUMADOR.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/RESTADOR.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/MULTPLICADOR.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/COMPARADOR.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/MUX00.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/MUX11.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/ALU_paq.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/ALU00.vhd}
add_file -vhdl -lib "work" {C:/Users/andre/Desktop/ALU/TestBench.vhd}


#-- set result format/file last
project -result_file {C:/Users/andre/Desktop/ALU/ALU/ALU_ALU.edi}

#-- error message log file
project -log_file {ALU_ALU.srf}

#-- set any command lines input by customer


#-- run Synplify with 'arrange HDL file'
project -run hdl_info_gen -fileorder
project -run
