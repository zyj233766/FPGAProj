

proc generate {drv_handle} {
	xdefine_include_file $drv_handle "xparameters.h" "MaxdataTrans_ip" "NUM_INSTANCES" "DEVICE_ID"  "C_S0_AXI_BASEADDR" "C_S0_AXI_HIGHADDR"
}
