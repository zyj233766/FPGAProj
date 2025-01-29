`timescale 1ns / 1ps

module div_cell #(
    parameter N = 8,
    parameter M = 4
)(
    input clk,
    input rstn,
    input [M - 1 : 0]           div_raw, // 原始除数
    input [N - 1 : 0]           div_sub_i, // 上次减后的的结果作为输入
    input [N + M - 2 : 0]           div_shift_i, // 
    input en,
    input [N - 1 : 0]           div_res_i,  // 结果输入
    input sign_bit_i,

    output reg [N + M - 2 : 0]      div_shift_o,
    output reg [N - 1 : 0]      div_sub_o, // 本次减后的结果作为输出
    output reg [N - 1 : 0]      div_res_o, // 结果输出
    output reg sign_bit_o,     // 符号位
    output reg rdy
);

always @(posedge clk) begin
    if (!rstn) begin
        div_shift_o <= 'b0;
        div_sub_o   <= 'b0;
        div_res_o   <= 'b0;
        rdy         <= 'b0;
        sign_bit_o  <= 'b0;
    end
    else if (en) begin
        div_shift_o <= div_shift_i >> 1;
        
        if (div_shift_i >= div_raw && div_sub_i >= div_shift_i) begin
            div_sub_o <= div_sub_i - div_shift_i;
            div_res_o <= {div_res_i, 1'b1};
        end
        else begin
            div_sub_o <= div_sub_i;
            div_res_o <= {div_res_i, 1'b0};
        end
        sign_bit_o <= sign_bit_i;
        rdy <= 'b1;
    end
    else begin
        div_shift_o <= 'b0;
        div_sub_o   <= 'b0;
        div_res_o   <= 'b0;
        rdy         <= 'b0;
        sign_bit_o  <= 'b0;
    end
    
end

endmodule