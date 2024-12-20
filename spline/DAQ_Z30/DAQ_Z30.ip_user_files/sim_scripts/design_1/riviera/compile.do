vlib work
vlib riviera

vlib riviera/xilinx_vip
vlib riviera/xpm
vlib riviera/xil_defaultlib
vlib riviera/fifo_generator_v13_2_5
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_fifo_v1_0_14
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/lib_cdc_v1_0_2
vlib riviera/axi_datamover_v5_1_24
vlib riviera/axi_sg_v4_1_13
vlib riviera/axi_dma_v7_1_23
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_24
vlib riviera/xlconstant_v1_1_7
vlib riviera/proc_sys_reset_v5_0_13
vlib riviera/smartconnect_v1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_22
vlib riviera/axi_vip_v1_1_8
vlib riviera/axis_infrastructure_v1_1_0
vlib riviera/axis_data_fifo_v2_0_4
vlib riviera/processing_system7_vip_v1_0_10
vlib riviera/xlconcat_v2_1_4
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_data_fifo_v2_1_21
vlib riviera/axi_crossbar_v2_1_23
vlib riviera/axi_protocol_converter_v2_1_22

vmap xilinx_vip riviera/xilinx_vip
vmap xpm riviera/xpm
vmap xil_defaultlib riviera/xil_defaultlib
vmap fifo_generator_v13_2_5 riviera/fifo_generator_v13_2_5
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_fifo_v1_0_14 riviera/lib_fifo_v1_0_14
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap axi_datamover_v5_1_24 riviera/axi_datamover_v5_1_24
vmap axi_sg_v4_1_13 riviera/axi_sg_v4_1_13
vmap axi_dma_v7_1_23 riviera/axi_dma_v7_1_23
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_24 riviera/axi_gpio_v2_0_24
vmap xlconstant_v1_1_7 riviera/xlconstant_v1_1_7
vmap proc_sys_reset_v5_0_13 riviera/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 riviera/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_22 riviera/axi_register_slice_v2_1_22
vmap axi_vip_v1_1_8 riviera/axi_vip_v1_1_8
vmap axis_infrastructure_v1_1_0 riviera/axis_infrastructure_v1_1_0
vmap axis_data_fifo_v2_0_4 riviera/axis_data_fifo_v2_0_4
vmap processing_system7_vip_v1_0_10 riviera/processing_system7_vip_v1_0_10
vmap xlconcat_v2_1_4 riviera/xlconcat_v2_1_4
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_21 riviera/axi_data_fifo_v2_1_21
vmap axi_crossbar_v2_1_23 riviera/axi_crossbar_v2_1_23
vmap axi_protocol_converter_v2_1_22 riviera/axi_protocol_converter_v2_1_22

vlog -work xilinx_vip  -sv2k12 "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"E:/vivado/Vivado/2020.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"E:/vivado/Vivado/2020.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_0/design_1_clk_wiz_0_0.v" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/a342/MJ_OBUFGDS.v" \
"../../../bd/design_1/ip/design_1_MJ_OBUFGDS_0_0/sim/design_1_MJ_OBUFGDS_0_0.v" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b1d5/MJ_IBUFG_DS.v" \
"../../../bd/design_1/ip/design_1_MJ_IBUFG_DS_0_0/sim/design_1_MJ_IBUFG_DS_0_0.v" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/276e/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_5 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_5  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/276e/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_0/sim/design_1_fifo_generator_0_0.v" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c768/ADS4249_Decode.v" \
"../../../bd/design_1/ip/design_1_ADS4249_Decode_0_1/sim/design_1_ADS4249_Decode_0_1.v" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_fifo_v1_0_14 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/a5cb/hdl/lib_fifo_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_24 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/4ab6/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vcom -work axi_sg_v4_1_13 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/4919/hdl/axi_sg_v4_1_rfs.vhd" \

vcom -work axi_dma_v7_1_23 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/89d8/hdl/axi_dma_v7_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_dma_0_0/sim/design_1_axi_dma_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_24 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/4318/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_0/sim/design_1_axi_gpio_0_0.vhd" \

vlog -work xlconstant_v1_1_7  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/fcfc/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_arsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_rsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_awsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_wsw_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_bsw_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ea34/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8047/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b89e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_10/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_11/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_12/sim/bd_afc3_srn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_13/sim/bd_afc3_s01mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_14/sim/bd_afc3_s01tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_15/sim/bd_afc3_s01sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_16/sim/bd_afc3_s01a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_17/sim/bd_afc3_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_18/sim/bd_afc3_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_19/sim/bd_afc3_sbn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/7005/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_20/sim/bd_afc3_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_21/sim/bd_afc3_m00arn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_22/sim/bd_afc3_m00rn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_23/sim/bd_afc3_m00awn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_24/sim/bd_afc3_m00wn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_25/sim/bd_afc3_m00bn_0.sv" \

vlog -work smartconnect_v1_0  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/7bd7/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_26/sim/bd_afc3_m00e_0.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_22  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/af2c/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_8  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/94c3/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \

vlog -work axis_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl/axis_infrastructure_v1_1_vl_rfs.v" \

vlog -work axis_data_fifo_v2_0_4  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/abd4/hdl/axis_data_fifo_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axis_data_fifo_0_0/sim/design_1_axis_data_fifo_0_0.v" \

vlog -work processing_system7_vip_v1_0_10  -sv2k12 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_0/sim/design_1_rst_ps7_0_100M_0.vhd" \

vlog -work xlconcat_v2_1_4  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xlconcat_0_0/sim/design_1_xlconcat_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_1/sim/design_1_xlconstant_0_1.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_0_2/sim/design_1_fifo_generator_0_2.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_2_0/sim/design_1_fifo_generator_2_0.v" \
"../../../bd/design_1/ip/design_1_fifo_generator_2_1/sim/design_1_fifo_generator_2_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_axi_gpio_0_1/sim/design_1_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/0696/MJ_inputclk_ds_gbuf.v" \
"../../../bd/design_1/ip/design_1_MJ_inputclk_ds_gbuf_0_0/sim/design_1_MJ_inputclk_ds_gbuf_0_0.v" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/49e2/mj_not.v" \
"../../../bd/design_1/ip/design_1_mj_not_0_0/sim/design_1_mj_not_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_1_0/design_1_clk_wiz_1_0.v" \
"../../../bd/design_1/ip/design_1_vio_0_0/sim/design_1_vio_0_0.v" \
"../../../bd/design_1/ip/design_1_ila_0_0/sim/design_1_ila_0_0.v" \
"../../../bd/design_1/ip/design_1_xlconstant_0_0/sim/design_1_xlconstant_0_0.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1_clk_wiz.v" \
"../../../bd/design_1/ip/design_1_clk_wiz_0_1/design_1_clk_wiz_0_1.v" \
"../../../bd/design_1/ipshared/9a4c/hdl/count.v" \
"../../../bd/design_1/ipshared/9a4c/hdl/count_ip_v1_0_S0_AXI.v" \
"../../../bd/design_1/ipshared/9a4c/hdl/count_ip_v1_0.v" \
"../../../bd/design_1/ip/design_1_count_ip_0_2/sim/design_1_count_ip_0_2.v" \
"../../../bd/design_1/ipshared/98c0/src/CNTtest.v" \
"../../../bd/design_1/ip/design_1_CNTtest_0_1/sim/design_1_CNTtest_0_1.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/design_1/ip/design_1_rst_ps7_0_100M_1_0/sim/design_1_rst_ps7_0_100M_1_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ipshared/b052/hdl/MaxdataTrans.v" \
"../../../bd/design_1/ipshared/b052/hdl/MaxdataTrans_ip_v1_0_S0_AXI.v" \
"../../../bd/design_1/ipshared/b052/hdl/MaxdataTrans_ip_v1_0.v" \
"../../../bd/design_1/ip/design_1_MaxdataTrans_ip_0_0/sim/design_1_MaxdataTrans_ip_0_0.v" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/3f90/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_util_vector_logic_0_0/sim/design_1_util_vector_logic_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_21  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/54c0/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_23  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/bc0a/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \
"../../../bd/design_1/ip/design_1_s00_data_fifo_0/sim/design_1_s00_data_fifo_0.v" \

vlog -work axi_protocol_converter_v2_1_22  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/5cee/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/d0f7" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/25b7/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/896c/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/8713/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/34f8/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/46fd/hdl" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/b205/hdl/verilog" "+incdir+../../../../DAQ_Z30.srcs/sources_1/bd/design_1/ipshared/c968/hdl/verilog" "+incdir+E:/vivado/Vivado/2020.2/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_s01_data_fifo_0/sim/design_1_s01_data_fifo_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/sim/design_1.v" \

vlog -work xil_defaultlib \
"glbl.v"

