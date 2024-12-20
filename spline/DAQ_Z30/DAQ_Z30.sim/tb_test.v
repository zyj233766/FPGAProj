`timescale  1ns / 1ps        

module tb_test;       

// DAQ_Z30_Top Parameters    
parameter PERIOD       = 10 ;
parameter POINT_NUM_X  = 240;
parameter POINT_NUM_Y  = 220;
parameter SAMPLE_BIT   = 16 ;
parameter INSERT_NUM   = 16 ;

// DAQ_Z30_Top Inputs
reg   sys_clk                              = 0 ;
reg   sys_rst_n                            = 0 ;

// DAQ_Z30_Top Outputs
wire  [31:0]  MaxIndex1                    ;
wire  [31:0]  MaxIndex2                    ;
wire  [79:0]  DebugOutput                    ;


initial
begin
    forever #(PERIOD/2)  sys_clk = ~sys_clk;
end

initial
begin
    #(PERIOD*2) sys_rst_n  =  1;
end

test #(
    .POINT_NUM_X ( POINT_NUM_X ),
    .POINT_NUM_Y ( POINT_NUM_Y ),
    .SAMPLE_BIT  ( SAMPLE_BIT  ),
    .INSERT_NUM  ( INSERT_NUM  ))
 u_test (
    .sys_clk                 ( sys_clk           ),
    .sys_rst_n               ( sys_rst_n         ),

    .MaxIndex1               ( MaxIndex1  [31:0] ),
    .MaxIndex2               ( MaxIndex2  [31:0] ),
    .DebugOutput             ( DebugOutput  [31:0] )
);

initial
begin
    #100000000
    $finish;
end

endmodule