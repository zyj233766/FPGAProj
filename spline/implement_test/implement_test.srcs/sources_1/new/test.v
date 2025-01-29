`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2024/12/22 17:02:33
// Design Name: 
// Module Name: test
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
module test(
    input sys_clk,
    input sys_rst_n,
    input [1:0] a,
    input [1:0] b,
    output reg [3:0] out
);

reg [2:0] addvalue;
reg [7:0] c[0:7];
reg [7:0] d;
reg [7:0] e;
reg [7:0] f;
reg [7:0] h;
reg [7:0] i;
reg [7:0] j;
reg [7:0] k;
reg [63:0] TempValue;
wire [71:0] P;
integer m;
always @(posedge sys_clk) begin
    if (!sys_rst_n) begin
        addvalue <= 4'd0;
        for(m = 0; m < 8; m = m + 1) begin
            c[m] <= 32 + (m << 2);
        end
    end
    else begin
        for(m = 0; m < 8; m = m + 1) begin
            c[m] <= c[m] + 1'b1;
        end
        addvalue <= addvalue + 1'b1;
    end
end

always @(posedge sys_clk) begin
    if (!sys_rst_n)
        TempValue <= 0;
    else begin
        TempValue <= P;
    end

    
end

always @(posedge sys_clk) begin
    if (!sys_rst_n)
        out <= 32'd0;
    else begin
        if (addvalue == 4'd0)
            out <=  TempValue[0] + TempValue[16] + TempValue[32] + TempValue[48];
        else
            out <= out;
    end
end

mult_gen_0 your_instance_name (
  .CLK(sys_clk),  // input wire CLK
  .A(TempValue),      // input wire [63 : 0] A
  .B(c[addvalue]),      // input wire [7 : 0] B
  .P(P)      // output wire [71 : 0] P
);

endmodule
