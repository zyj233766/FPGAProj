`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/02 22:40:13
// Design Name: 
// Module Name: mult
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


module mult # (
    parameter A_BIT = 64,
    parameter B_BIT = 8
)(
    input sys_clk,
    input sys_rst_n,
    input [A_BIT - 1:0] A,
    input [B_BIT - 1:0] B,
    input enable,
    output reg [A_BIT + B_BIT - 1 : 0] P
);

reg [A_BIT + B_BIT - 1 : 0] temp;
reg [A_BIT + B_BIT - 1 : 0] P_t;
reg enable_d0, enable_d1;
reg state;
reg [15:0] cnt;
wire start_flag;
assign start_flag = enable_d0 & ~enable_d1;

always @(posedge sys_clk) begin
    if (!sys_rst_n) begin
        enable_d0 <= 1'b0;
        enable_d1 <= 1'b0;
    end
    else begin
        enable_d0 <= enable;
        enable_d1 <= enable_d0;
    end
end

always @(posedge sys_clk) begin
    if (!sys_rst_n)
        temp <= 0;
    else if (start_flag == 1) begin
        temp <= {8'b0, A};
        P_t <= 0;
        P <= 0;
    end
    else if (state == 1'b1 && cnt < B_BIT) begin
        P_t <= P_t + ((B[cnt] == 1) ? temp : 0);
        temp <= temp << 1;
    end
    else if (cnt == B_BIT) begin
        temp <= temp;
        P <= P_t;
    end
    else
        temp <= temp;
end



always @(posedge sys_clk) begin
    if (!sys_rst_n)
        state <= 1'b0;
    else if (start_flag == 1)
        state <= 1'b1;
    else if (cnt == B_BIT)
        state <= 1'b0;
    else 
        state <= state;
end

always @(posedge sys_clk) begin
    if (!sys_clk)
        cnt <= 16'd0;
    else if (state == 1'b1)
        cnt <= cnt + 1'b1;
    else if (cnt == B_BIT)
        cnt <= 16'd0;
    else
        cnt <= cnt;
end

endmodule
