lappend auto_path "C:/lscc/diamond/3.12/data/script"
package require simulation_generation
set ::bali::simulation::Para(DEVICEFAMILYNAME) {MachXO2}
set ::bali::simulation::Para(PROJECT) {SimulacionALU}
set ::bali::simulation::Para(PROJECTPATH) {C:/Users/andre/Desktop/ALU}
set ::bali::simulation::Para(FILELIST) {"C:/Users/andre/Desktop/ALU/SimulacionALU/ALU_paq.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/HA00_paq.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/FA00_paq.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/MUTL_paq.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/MUX00.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/HA00.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/FA00.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/ADD.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/MULTPLICADOR.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/RESTADOR.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/SUMADOR.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/ALU00.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/TestBench.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/COMPARADOR.vhd" "C:/Users/andre/Desktop/ALU/SimulacionALU/MUX11.vhd" }
set ::bali::simulation::Para(GLBINCLIST) {}
set ::bali::simulation::Para(INCLIST) {"none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none" "none"}
set ::bali::simulation::Para(WORKLIBLIST) {"work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" "work" }
set ::bali::simulation::Para(COMPLIST) {"VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" "VHDL" }
set ::bali::simulation::Para(SIMLIBLIST) {pmi_work ovi_machxo2}
set ::bali::simulation::Para(MACROLIST) {}
set ::bali::simulation::Para(SIMULATIONTOPMODULE) {TestBench}
set ::bali::simulation::Para(SIMULATIONINSTANCE) {}
set ::bali::simulation::Para(LANGUAGE) {VHDL}
set ::bali::simulation::Para(SDFPATH)  {}
set ::bali::simulation::Para(INSTALLATIONPATH) {C:/lscc/diamond/3.12}
set ::bali::simulation::Para(ADDTOPLEVELSIGNALSTOWAVEFORM)  {1}
set ::bali::simulation::Para(RUNSIMULATION)  {1}
set ::bali::simulation::Para(HDLPARAMETERS) {}
set ::bali::simulation::Para(POJO2LIBREFRESH)    {}
set ::bali::simulation::Para(POJO2MODELSIMLIB)   {}
::bali::simulation::ModelSim_Run
