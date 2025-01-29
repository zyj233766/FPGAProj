`timescale 1ns / 1ps

module div_cell #(
    parameter N = 8,
    parameter M = 4
)(
    input clk,
    input rstn,
    input [M - 1 : 0]           div_raw, // ԭʼ����
    input [N - 1 : 0]           div_sub_i, // �ϴμ���ĵĽ����Ϊ����
    input [N + M - 2 : 0]           div_shift_i, // 
    input en,
    input [N - 1 : 0]           div_res_i,  // �������
    input sign_bit_i,

    output reg [N + M - 2 : 0]      div_shift_o,
    output reg [N - 1 : 0]      div_sub_o, // ���μ���Ľ����Ϊ���
    output reg [N - 1 : 0]      div_res_o, // ������
    output reg sign_bit_o,     // ����λ
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