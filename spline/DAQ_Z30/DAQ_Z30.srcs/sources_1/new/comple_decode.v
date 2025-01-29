`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2025/01/17 11:59:24
// Design Name: 
// Module Name: comple_decode
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

// ²¹Âë½âÂëÄ£¿é
module comple_decode #(
    parameter N = 4
)(
    input clk,
    input rstn,
    input [N - 1 : 0] comen_code,
    input en,

    output reg [N - 1 : 0] raw_code,
    output reg ready
    );

always @(posedge clk) begin
    if (!rstn) begin
        raw_code <= 'b0;
        ready    <= 1'b0;
    end
    else if (en) begin
        if (comen_code[N - 1] == 1)
            raw_code <= {1'b1, ~{comen_code[N - 2 : 0] - 1'b1}};
        else
            raw_code <= comen_code;
        ready <= 1'b1;
    end
    else begin
        raw_code <= raw_code;
        ready <= 1'b0;
    end
end

endmodule

