`timescale 1ns / 1ps

module minus #(
    parameter N = 32
)(
    input clk,
    input rstn,
    input en,
    input [N - 1 : 0] minus1,
    input [N - 1 : 0] minus2,
    output reg [N - 1 : 0] res,
    output reg             res_rdy
);

always @(posedge clk) begin
    if (!rstn) begin
        res     <= 'b0;
        res_rdy <= 'b0;
    end
    else if (en) begin
        res <= $signed(minus1) - $signed(minus2);
        res_rdy <= 'b1;
    end
    else begin
        res     <= 'b0;
        res_rdy <= 'b0;
    end
end

endmodule