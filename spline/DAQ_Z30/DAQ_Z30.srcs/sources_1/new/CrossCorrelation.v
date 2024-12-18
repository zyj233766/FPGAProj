`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/11/29 07:06:17
// Design Name: 
// Module Name: CrossCorrelation
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




module CrossCorrelation #(
    parameter POINT_NUM_X = 240,
    parameter POINT_NUM_Y = 220,
    parameter INSERT_NUM = 16,
    parameter OutputNum = (POINT_NUM_X - POINT_NUM_Y + 1) * INSERT_NUM
)(
    input sys_clk,
    input sys_rst_n,
    input [POINT_NUM_X * INSERT_NUM * 32 - 1 : 0] DataX,
    input [POINT_NUM_Y * INSERT_NUM * 32 - 1 : 0] DataY,
    input enable,

    output reg ready,
    output reg [80 * OutputNum - 1 : 0] OutputData
);


localparam OnceTimes = 16;
localparam JMax = POINT_NUM_Y * INSERT_NUM / OnceTimes;
localparam Wait = 0;
localparam Culculate = 1;


reg enable_d0, enable_d1;
reg state;
reg [9:0] j,k,k_d0;
reg [79:0] temp;
reg [64 * OnceTimes - 1 : 0] temp_sum;

reg [79:0] DebugOutput;
wire start_flag;
assign start_flag = ~enable_d1 & enable_d0;
reg [7:0] i;

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        enable_d0 <= 1'b0;
        enable_d1 <= 1'b0;
    end
    else begin
        enable_d0 <= enable;
        enable_d1 <= enable_d0;
    end
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        state <= Wait;
        ready <= 1'b0;
    end
    else begin
        if (start_flag == 1'b1 && state == Wait) begin
            state <= Culculate;
            ready <= 1'b0;
        end
        else if (k == 0 && k_d0 == OutputNum - 1 && state == Culculate) begin
            state <= Wait;
            ready <= 1'b1;
        end
        else begin
            state <= state;
            ready <= ready;
        end
    end
end


// 计数器模块
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        j <= 10'd0;
        k <= 10'd0;
        k_d0 <= 10'd0;
    end
    else begin
        if (state == Culculate) begin
            if (j < JMax)
                j <= j + 1'b1;
            else begin  // j == JMax
                k_d0 <= k;
                j <= 10'b0;
                if (k < OutputNum - 1)
                    k <= k + 1'b1;
                else
                    k <= 10'b0;
                
            end
        end
    end
end

// 计算模块
always @(posedge sys_clk or negedge sys_rst_n) begin
    if (!sys_rst_n) begin
        temp <= 64'd0;
        temp_sum <= 0;
        OutputData <= 0;
        DebugOutput <= 0;
    end
    else begin
        if (state == Culculate) begin
            for (i = 0; i < OnceTimes; i = i + 1) begin
                temp_sum[(i * 64) +: 64] <= $signed(DataY[(j * 32 * OnceTimes + i * 32) +: 32]) * 
                                $signed(DataX[(j * 32 * OnceTimes + i * 32 + k * 32) +: 32]);
            end
            if (j > 0 && j <= JMax) begin
                if (j > 0) begin
                    temp <= $signed(temp_sum[63:12]) + $signed(temp_sum[127:76]) + $signed(temp_sum[191:140]) + $signed(temp_sum[255:204]) +
                            $signed(temp_sum[319:268]) + $signed(temp_sum[383:332]) + $signed(temp_sum[447:396]) + $signed(temp_sum[511:460]) +
                            $signed(temp_sum[575:524]) + $signed(temp_sum[639:588]) + $signed(temp_sum[703:652]) + $signed(temp_sum[767:716]) +
                            $signed(temp_sum[831:780]) + $signed(temp_sum[895:844]) + $signed(temp_sum[959:908]) + $signed(temp_sum[1023:972]);
                            
                end
                else 
                    temp <= temp;
            end
            else if(j == 0)
                temp <= 0;
            else
                temp <= temp;
            
            if (j == 0 && k <= OutputNum - 1 && ((k > 0) || (k_d0 > 0))) begin
                OutputData[(((k == 0) ? k_d0 : k - 1) * 80) +: 80] <= temp;
                DebugOutput <= temp;
            end
            else
                OutputData <= OutputData;
        end
    end
end



endmodule


