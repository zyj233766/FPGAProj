connect -url tcp:127.0.0.1:3121
source C:/Users/12554/Desktop/spline/DAQ_Z30/DAQ_Z30.sdk/DAQ_Z30_Top_hw_platform_0/ps7_init.tcl
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249859315"} -index 0
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent JTAG-HS1 210249859315" && level==0} -index 1
fpga -file C:/Users/12554/Desktop/test5/DAQ_Z30/DAQ_Z30.sdk/DAQ_Z30_Top_hw_platform_0/DAQ_Z30_Top.bit
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249859315"} -index 0
loadhw -hw C:/Users/12554/Desktop/spline/DAQ_Z30/DAQ_Z30.sdk/DAQ_Z30_Top_hw_platform_0/system.hdf -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*" && jtag_cable_name =~ "Digilent JTAG-HS1 210249859315"} -index 0
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249859315"} -index 0
dow C:/Users/12554/Desktop/spline/DAQ_Z30/DAQ_Z30.sdk/DAQ_Z30/Debug/DAQ_Z30.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "ARM*#0" && jtag_cable_name =~ "Digilent JTAG-HS1 210249859315"} -index 0
con
