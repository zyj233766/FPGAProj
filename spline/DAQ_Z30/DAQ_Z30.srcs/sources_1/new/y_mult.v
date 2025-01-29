`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/09 18:18:48
// Design Name: 
// Module Name: y_mult
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


module y_mult(
    input sys_clk,
    input sys_rst_n,
    input [13:0] Sample1,
    input [13:0] Sample2,
    input [13:0] Sample3,
    output reg [19:0] Output
    );
localparam N = 20;

// 第一级流水线相关定义
reg [19:0] Sample1Shift;
reg [19:0] Sample2Shift;
reg [19:0] Sample3Shift;
// 第一级流水线
always @(posedge sys_clk) begin
    if (!sys_rst_n) begin
        Sample1Shift <= 'b0;
        Sample2Shift <= 'b0;
        Sample3Shift <= 'b0;
    end
    else begin
        Sample1Shift <= $signed({Sample1, 6'b0} >>> 6);
        Sample2Shift <= $signed({Sample2, 6'b0} >>> 6);
        Sample3Shift <= $signed({Sample3, 6'b0} >>> 6);
    end
        
end

// 第二级流水线相关定义
reg [19:0] Value1;
// 第二级流水线
always @(posedge sys_clk) begin
    if (!sys_rst_n) begin
        Value1 <= 'b0;
    end
    else begin
        Value1 <= $signed(Sample1Shift) - $signed(Sample2Shift <<< 1) + $signed(Sample3Shift); 
    end
end

// 第三级流水线
always @(posedge sys_clk) begin
    if (!sys_rst_n)
        Output <= 'b0;
    else
        Output <= $signed((Value1 <<< 2)) + $signed((Value1 <<< 1)); 
end
endmodule
