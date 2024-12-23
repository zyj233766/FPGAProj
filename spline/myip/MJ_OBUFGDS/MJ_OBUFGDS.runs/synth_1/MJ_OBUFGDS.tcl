# 
# Synthesis run script generated by Vivado
# 

set_param xicom.use_bs_reader 1
set_msg_config -id {HDL 9-1061} -limit 100000
set_msg_config -id {HDL 9-1654} -limit 100000
set_msg_config -id {Synth 8-256} -limit 10000
set_msg_config -id {Synth 8-638} -limit 10000
create_project -in_memory -part xc7z030ffg676-2

set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir F:/MSI-Work/myip/MJ_OBUFGDS/MJ_OBUFGDS.cache/wt [current_project]
set_property parent.project_path F:/MSI-Work/myip/MJ_OBUFGDS/MJ_OBUFGDS.xpr [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property vhdl_version vhdl_2k [current_fileset]
read_verilog -library xil_defaultlib F:/MSI-Work/myip/MJ_OBUFGDS/MJ_OBUFGDS.srcs/sources_1/new/MJ_OBUFGDS.v
synth_design -top MJ_OBUFGDS -part xc7z030ffg676-2
write_checkpoint -noxdef MJ_OBUFGDS.dcp
catch { report_utilization -file MJ_OBUFGDS_utilization_synth.rpt -pb MJ_OBUFGDS_utilization_synth.pb }
