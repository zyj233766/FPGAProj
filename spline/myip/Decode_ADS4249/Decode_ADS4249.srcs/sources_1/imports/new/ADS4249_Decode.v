`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/15 21:30:19
// Design Name: 
// Module Name: ADS4249_Decode
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


module ADS4249_Decode(
    input clkinp,
//    input [4:0] db0_delay_cnt,
//    input [4:0] db2_delay_cnt,
//    input delay_clk,
//    input rst,
    input da0p,
    input da0n,
    input da2p,
    input da2n,
    input da4p,
    input da4n,
    input da6p,
    input da6n,
    input da8p,
    input da8n,
    input da10p,
    input da10n,
    input da12p,
    input da12n, 
    input db0p,
    input db0n,
    input db2p,
    input db2n,
    input db4p,
    input db4n,
    input db6p,
    input db6n,
    input db8p,
    input db8n,
    input db10p,
    input db10n,
    input db12p,
    input db12n,                              
    output reg [13:0] daout,
    output reg [13:0] dbout
    );
    
    wire [13:0] atmp;
    wire [13:0] btmp;

    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da0lvds(.I (da0p), .IB (da0n), .O (da0));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da2lvds(.I (da2p), .IB (da2n), .O (da2));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da4lvds(.I (da4p), .IB (da4n), .O (da4));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da6lvds(.I (da6p), .IB (da6n), .O (da6));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da8lvds(.I (da8p), .IB (da8n), .O (da8));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da10lvds(.I (da10p), .IB (da10n), .O (da10));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_da12lvds(.I (da12p), .IB (da12n), .O (da12));

    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db0lvds(.I (db0p), .IB (db0n), .O (db0));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db2lvds(.I (db2p), .IB (db2n), .O (db2));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db4lvds(.I (db4p), .IB (db4n), .O (db4));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db6lvds(.I (db6p), .IB (db6n), .O (db6));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db8lvds(.I (db8p), .IB (db8n), .O (db8));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db10lvds(.I (db10p), .IB (db10n), .O (db10));
    IBUFDS #(.DIFF_TERM ("TRUE" ), .IBUF_LOW_PWR("FALSE"), .IOSTANDARD("DEFAULT")) adc_db12lvds(.I (db12p), .IB (db12n), .O (db12));

//    (* IODELAY_GROUP = "delay1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL
//    IDELAYCTRL IDELAYCTRL_inst (
//        .RDY(),       // 1-bit output: Ready output
//        .REFCLK(delay_clk), // 1-bit input: Reference clock input
//        .RST(rst)        // 1-bit input: Active high reset input
//    );
//    (* IODELAY_GROUP = "delay1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL    
//    IDELAYE2 #(
//       .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
//       .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
//       .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
//       .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
//       .IDELAY_VALUE(15),                // Input delay tap setting (0-31)
//       .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
//       .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
//       .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
//    ) IDELAYE2_inst_db0 (
//       .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
//       .CNTVALUEOUT(),                // 5-bit output: Counter value output
//       .DATAOUT(db0),         // 1-bit output: Delayed data output
//       .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
//       .CNTVALUEIN(db0_delay_cnt),   // 5-bit input: Counter value input
//       .DATAIN(1'b0),           // 1-bit input: Internal delay data input
//       .IDATAIN(kdb0),         // 1-bit input: Data input from the I/O
//       .C(delay_clk),                     // 1-bit input: Clock input
//       .LD(1'b1),                   // 1-bit input: Load IDELAY_VALUE input
//       .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
//       .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
//       .REGRST(rst)            // 1-bit input: Active-high reset tap-delay input
//    );    
//    (* IODELAY_GROUP = "delay1" *) // Specifies group name for associated IDELAYs/ODELAYs and IDELAYCTRL    
//    IDELAYE2 #(
//       .CINVCTRL_SEL("FALSE"),          // Enable dynamic clock inversion (FALSE, TRUE)
//       .DELAY_SRC("IDATAIN"),           // Delay input (IDATAIN, DATAIN)
//       .HIGH_PERFORMANCE_MODE("TRUE"), // Reduced jitter ("TRUE"), Reduced power ("FALSE")
//       .IDELAY_TYPE("VAR_LOAD"),           // FIXED, VARIABLE, VAR_LOAD, VAR_LOAD_PIPE
//       .IDELAY_VALUE(15),                // Input delay tap setting (0-31)
//       .PIPE_SEL("FALSE"),              // Select pipelined mode, FALSE, TRUE
//       .REFCLK_FREQUENCY(200.0),        // IDELAYCTRL clock input frequency in MHz (190.0-210.0, 290.0-310.0).
//       .SIGNAL_PATTERN("DATA")          // DATA, CLOCK input signal
//    ) IDELAYE2_inst_db2 (
//       .LDPIPEEN(1'b0),       // 1-bit input: Enable PIPELINE register to load data input
//       .CNTVALUEOUT(),                // 5-bit output: Counter value output
//       .DATAOUT(db2),         // 1-bit output: Delayed data output
//       .CINVCTRL(1'b0),       // 1-bit input: Dynamic clock inversion input
//       .CNTVALUEIN(db2_delay_cnt),   // 5-bit input: Counter value input
//       .DATAIN(1'b0),           // 1-bit input: Internal delay data input
//       .IDATAIN(kdb2),         // 1-bit input: Data input from the I/O
//       .C(delay_clk),                     // 1-bit input: Clock input
//       .LD(1'b1),                   // 1-bit input: Load IDELAY_VALUE input
//       .CE(1'b0),                   // 1-bit input: Active high enable increment/decrement input
//       .INC(1'b0),                 // 1-bit input: Increment / Decrement tap delay input
//       .REGRST(rst)            // 1-bit input: Active-high reset tap-delay input
//    );





     
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da0_inst (
      .Q1(atmp[0]), .Q2(atmp[1]), .C(clkinp), .CE(1'b1), .D(da0), .R(1'b0), .S(1'b0)    
   );  
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da2_inst (
      .Q1(atmp[2]), .Q2(atmp[3]), .C(clkinp), .CE(1'b1), .D(da2), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da4_inst (
      .Q1(atmp[4]), .Q2(atmp[5]), .C(clkinp), .CE(1'b1), .D(da4), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da6_inst (
      .Q1(atmp[6]), .Q2(atmp[7]), .C(clkinp), .CE(1'b1), .D(da6), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da8_inst (
      .Q1(atmp[8]), .Q2(atmp[9]), .C(clkinp), .CE(1'b1), .D(da8), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
    ) IDDR_da10_inst (
      .Q1(atmp[10]), .Q2(atmp[11]), .C(clkinp), .CE(1'b1), .D(da10), .R(1'b0), .S(1'b0)    
   );                                   
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_da12_inst (
      .Q1(atmp[12]), .Q2(atmp[13]), .C(clkinp), .CE(1'b1), .D(da12), .R(1'b0), .S(1'b0)    
   );     
   //Data B 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db0_inst (
      .Q1(btmp[0]), .Q2(btmp[1]), .C(clkinp), .CE(1'b1), .D(db0), .R(1'b0), .S(1'b0)    
   );  
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db2_inst (
      .Q1(btmp[2]), .Q2(btmp[3]), .C(clkinp), .CE(1'b1), .D(db2), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db4_inst (
      .Q1(btmp[4]), .Q2(btmp[5]), .C(clkinp), .CE(1'b1), .D(db4), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db6_inst (
      .Q1(btmp[6]), .Q2(btmp[7]), .C(clkinp), .CE(1'b1), .D(db6), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db8_inst (
      .Q1(btmp[8]), .Q2(btmp[9]), .C(clkinp), .CE(1'b1), .D(db8), .R(1'b0), .S(1'b0)    
   ); 
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
    ) IDDR_db10_inst (
      .Q1(btmp[10]), .Q2(btmp[11]), .C(clkinp), .CE(1'b1), .D(db10), .R(1'b0), .S(1'b0)    
   );                                   
   IDDR #(
      .DDR_CLK_EDGE("OPPOSITE_EDGE"), .INIT_Q1(1'b0), .INIT_Q2(1'b0), .SRTYPE("SYNC") 
   ) IDDR_db12_inst (
      .Q1(btmp[12]), .Q2(btmp[13]), .C(clkinp), .CE(1'b1), .D(db12), .R(1'b0), .S(1'b0)    
   );     
       
	always @(posedge clkinp)
    begin
        daout <= atmp;
        dbout <= btmp;
    end

endmodule
