`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/19 18:42:52
// Design Name: 
// Module Name: MJ_inputclk_ds_gbuf
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MJ_inputclk_ds_gbuf(
    input clkin_p,
    input clkin_n,
    input [4:0] delay_cnt,
    input rst,
    input delay_clk,
    output clkout_gbuf
    );
    
    IBUFDS #(
        .DIFF_TERM ("TRUE" ),
        .IBUF_LOW_PWR("FALSE"),
        .IOSTANDARD("DEFAULT")
    ) AdcClklvds (
        .I (clkin_p), 
        .IB (clkin_n), 
        .O (mADC_CLK)
    ); 
    
//    BUFG BUFG_inst_ADCCLK (
//      .O(clkout_gbuf), // 1-bit output: Clock output (connect to I/O clock loads).
//      .I(kADC_CLK)   // 1-bit input: Clock input (connect to an IBUF or BUFMR).
//    );    

    (* IODELAY_GROUP = "delay1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
    IDELAYCTRL IDELAYCTRL_inst (
        .RDY(),       // 1-bit output: Ready output
        .REFCLK(delay_clk), // 1-bit input: Reference clock input
        .RST(rst)        // 1-bit input: Active high reset input
    );
    (* IODELAY_GROUP = "delay1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL    
    IDELAYE2 #(
       .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
       .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
       .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
       .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
       .IDELAY_VALUE(15),                // Input delay tap setting (0-31)
       .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
       .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
       .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
    ) IDELAYE2_inst_db0 (
       .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
       .CNTVALUEOUT(),                // 5-bit output: Counter value output
       .DATAOUT(clkout_gbuf),         // 1-bit output: Delayed data output
       .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
       .CNTVALUEIN(delay_cnt),   // 5-bit input: Counter value input
       .DATAIN(1'b0),           // 1-bit input: Internal delay data input
       .IDATAIN(mADC_CLK),         // 1-bit input: Data input from the I/O
       .C(delay_clk),                     // 1-bit input: Clock input
       .LD(1'b1),                   // 1-bit input: Load IDELAY_VALUE input
       .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
       .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
       .REGRST(rst)            // 1-bit input: Active-high reset tap-delay input
    );    
    
endmodule
