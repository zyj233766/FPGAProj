create_clock -period 4.000 -name sysclk250MHz -waveform {0.000 2.000} [get_ports ADC_CLKin_P]

#输入10MHz基准时钟
set_property IOSTANDARD LVDS_25 [get_ports clkin_10MHz_P]
set_property IOSTANDARD LVDS_25 [get_ports clkin_10MHz_N]
set_property PACKAGE_PIN AD24 [get_ports clkin_10MHz_N]
set_property PACKAGE_PIN AD23 [get_ports clkin_10MHz_P]

set_property IOSTANDARD LVCMOS25 [get_ports LED1]
set_property PACKAGE_PIN AA13 [get_ports LED1]
set_property IOSTANDARD LVCMOS25 [get_ports LED2]
set_property PACKAGE_PIN Y13 [get_ports LED2]
set_property IOSTANDARD LVCMOS25 [get_ports LED3]
set_property PACKAGE_PIN W13 [get_ports LED3]

set_property IOSTANDARD LVDS_25 [get_ports clkout_250M_P]
set_property PACKAGE_PIN AD11 [get_ports clkout_250M_N]
set_property PACKAGE_PIN AC12 [get_ports clkout_250M_P]
set_property IOSTANDARD LVDS_25 [get_ports clkout_250M_N]

#MCU interface
set_property IOSTANDARD LVCMOS25 [get_ports MCU_D0_ADCReset]
set_property PACKAGE_PIN AE23 [get_ports MCU_D0_ADCReset]

set_property IOSTANDARD LVCMOS25 [get_ports MCU_D1_ADCSCLK]
set_property PACKAGE_PIN AF23 [get_ports MCU_D1_ADCSCLK]

set_property IOSTANDARD LVCMOS25 [get_ports MCU_D2_ADCSData]
set_property PACKAGE_PIN AE22 [get_ports MCU_D2_ADCSData]

set_property IOSTANDARD LVCMOS25 [get_ports MCU_D3_ADCSen]
set_property PACKAGE_PIN AF22 [get_ports MCU_D3_ADCSen]

#ADC SPI interface
set_property IOSTANDARD LVCMOS25 [get_ports {ADS_Reset[0]}]
set_property PACKAGE_PIN AC26 [get_ports {ADS_Reset[0]}]

set_property IOSTANDARD LVCMOS25 [get_ports {ADS_SEN[0]}]
set_property PACKAGE_PIN AE25 [get_ports {ADS_SEN[0]}]

set_property IOSTANDARD LVCMOS25 [get_ports {ADS_SCLK[0]}]
set_property PACKAGE_PIN AD25 [get_ports {ADS_SCLK[0]}]

set_property IOSTANDARD LVCMOS25 [get_ports ADS_SData]
set_property PACKAGE_PIN AD26 [get_ports ADS_SData]

set_property PACKAGE_PIN AC24 [get_ports ADC_CLKin_N]
set_property PACKAGE_PIN AC23 [get_ports ADC_CLKin_P]

set_property PACKAGE_PIN AB14 [get_ports ADC_DA0N]
set_property PACKAGE_PIN AB15 [get_ports ADC_DA0P]

set_property PACKAGE_PIN AA14 [get_ports ADC_DA2N]
set_property PACKAGE_PIN AA15 [get_ports ADC_DA2P]

set_property PACKAGE_PIN Y15 [get_ports ADC_DA4N]
set_property PACKAGE_PIN Y16 [get_ports ADC_DA4P]

set_property PACKAGE_PIN AA17 [get_ports ADC_DA6N]
set_property PACKAGE_PIN Y17 [get_ports ADC_DA6P]

set_property PACKAGE_PIN W15 [get_ports ADC_DA8N]
set_property PACKAGE_PIN W16 [get_ports ADC_DA8P]

set_property PACKAGE_PIN AA18 [get_ports ADC_DA10N]
set_property PACKAGE_PIN Y18 [get_ports ADC_DA10P]

set_property PACKAGE_PIN W19 [get_ports ADC_DA12N]
set_property PACKAGE_PIN W18 [get_ports ADC_DA12P]

set_property IOSTANDARD LVDS_25 [get_ports ADC_CLKin_P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_CLKin_N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA0P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA0N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA2P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA2N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA4P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA4N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA6P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA6N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA8P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA8N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA10P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA10N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA12P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DA12N]

set_property PACKAGE_PIN AB19 [get_ports ADC_DB0N]
set_property PACKAGE_PIN AA19 [get_ports ADC_DB0P]

set_property PACKAGE_PIN AD21 [get_ports ADC_DB2N]
set_property PACKAGE_PIN AD20 [get_ports ADC_DB2P]

set_property PACKAGE_PIN AB22 [get_ports ADC_DB4N]
set_property PACKAGE_PIN AB21 [get_ports ADC_DB4P]

set_property PACKAGE_PIN AB24 [get_ports ADC_DB6N]
set_property PACKAGE_PIN AA24 [get_ports ADC_DB6P]

set_property PACKAGE_PIN AC19 [get_ports ADC_DB8N]
set_property PACKAGE_PIN AC18 [get_ports ADC_DB8P]

set_property PACKAGE_PIN AA23 [get_ports ADC_DB10N]
set_property PACKAGE_PIN AA22 [get_ports ADC_DB10P]

set_property PACKAGE_PIN AB25 [get_ports ADC_DB12N]
set_property PACKAGE_PIN AA25 [get_ports ADC_DB12P]

set_property IOSTANDARD LVDS_25 [get_ports ADC_DB0P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB0N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB2P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB2N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB4P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB4N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB6P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB6N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB8P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB8N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB10P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB10N]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB12P]
set_property IOSTANDARD LVDS_25 [get_ports ADC_DB12N]

set_property OFFCHIP_TERM NONE [get_ports clkout_250M_P]
set_property OFFCHIP_TERM NONE [get_ports uart_tx]

#count
set_property IOSTANDARD LVCMOS25 [get_ports gate_out]
set_property IOSTANDARD LVCMOS25 [get_ports input_fx]
set_property PACKAGE_PIN AA12 [get_ports input_fx]
set_property PACKAGE_PIN AA10 [get_ports gate_out]
set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets input_fx_IBUF]

#FIFO在两种模式下时钟切换，对这两个异步时钟做约束
# clk_fpga_0 是ARM输出的外设工作时钟
#set_clock_groups -name clkgroup_FIFO_Clk -physically_exclusive -group [get_clocks clk_fpga_0] -group [get_clocks sysclk250MHz]

set_input_delay -clock [get_clocks sysclk250MHz] 0.800 [get_ports {ADC_DA0P ADC_DA2P ADC_DA4P ADC_DA6P ADC_DA8P ADC_DA10P ADC_DA12P ADC_DB0P ADC_DB2P ADC_DB4P ADC_DB6P ADC_DB8P ADC_DB10P ADC_DB12P}]
#set_min_delay -rise_from [get_clocks sysclk250MHz] -to [get_pins -hierarchical -filter { NAME =~  "*/Q1*" }] 1.500
#set_input_delay -clock [get_clocks -filter { NAME =~  "*sysclk250MHz*" }] 0.000 [get_ports -filter { NAME =~  "*DA*" && DIRECTION == "IN" }]
#set_input_delay -clock [get_clocks -filter { NAME =~  "*sysclk250MHz*" }] 0.000 [get_ports -filter { NAME =~  "*DB*" && DIRECTION == "IN" }]


#create_clock -period 4.000 -name clkinput -waveform {0.000 50.000} [get_nets ADCCLK]
#create_generated_clock -name adcclkpll -source [get_pins design_1_i/clk_wiz_0/clk_in1] -multiply_by 25 [get_nets design_1_i/MJ_IBUFG_DS_0/out1]

#group_path -name ADCData -weight 1.000 -from [get_ports ADC_CLKin_P] -to [get_cells {{design_1_i/ADS4249_Decode_0/inst/atmp_reg[1]atmp_reg[0]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[3]atmp_reg[2]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[5]atmp_reg[4]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[7]atmp_reg[6]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[9]atmp_reg[8]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[11]atmp_reg[10]} {design_1_i/ADS4249_Decode_0/inst/atmp_reg[13]atmp_reg[12]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[1]btmp_reg[0]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[3]btmp_reg[2]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[5]btmp_reg[4]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[7]btmp_reg[6]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[9]btmp_reg[8]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[11]btmp_reg[10]} {design_1_i/ADS4249_Decode_0/inst/btmp_reg[13]btmp_reg[12]}}]
#set_max_delay -from [get_ports ADC_DA0P] -to [get_cells -hierarchical -filter { NAME =~  "*DAout*" }] 1.500
#set_min_delay -from [get_ports ADC_DA0P] -to [get_cells -hierarchical -filter { NAME =~  "*DAout*" }] 1.000


#set_property CLOCK_DEDICATED_ROUTE FALSE [get_nets design_1_i/processing_system7_0/inst/FCLK_CLK0]