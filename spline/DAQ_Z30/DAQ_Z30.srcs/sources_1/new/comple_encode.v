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

// ²¹Âë±àÂëÄ£¿é
module comple_encode #(
    parameter N = 4
)(
    input clk,
    input rstn,
    input [N - 1 : 0] raw_code,
    input en,
    output reg [N - 1 : 0] comen_code,
    output reg ready
    );

always @(posedge clk) begin
    if (!rstn) begin
        comen_code <= 'b0;
        ready <= 'b0;
    end
    else if (en) begin
        if (raw_code[N - 1] == 1)
            comen_code <= {1'b1, ~(raw_code[N - 2 : 0])+ 1};
        else
            comen_code <= raw_code;
        ready <= 'b1;
    end
    else begin
        comen_code <= comen_code;
        ready <= 'b0;
    end

end

endmodule