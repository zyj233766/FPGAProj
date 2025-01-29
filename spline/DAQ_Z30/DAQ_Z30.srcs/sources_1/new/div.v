`timescale 1ns / 1ps
module div #(
    parameter N = 8,
    parameter M = 4
)(
    input clk,
    input rstn,
    input [N - 1 : 0] div1, // ������
    input [M - 1 : 0] div2, // ����

    input data_rdy,

    output res_rdy,
    output [N - 1 : 0] res
);

wire [N - 2 : 0]     div_res_t   [N - 2 : 0] ;
wire [N + M - 4 : 0]     div_shift_t [N - 2 : 0] ;
wire [N - 2 : 0]     div_sub_t   [N - 2 : 0] ;  
wire [N - 1 : 0]     raw_code1;
wire [M - 1 : 0]     raw_code2;
wire                 decode1_ready;
wire                 decode2_ready;
wire [N - 2 : 0]     sign_bit;
wire [N - 2:0]         rdy_t ;

/* ��һ�����Ľ���ģ�� */
comple_decode #(.N(N))
u_comple_decode1
(
    .clk(clk),
    .rstn(rstn),
    .en(data_rdy),
    .comen_code(div1),
    .raw_code(raw_code1),
    .ready(decode1_ready)
);

/* �ڶ������Ľ���ģ�� */
comple_decode #(.N(M))
u_comple_decode2
(
    .clk(clk),
    .rstn(rstn),
    .en(data_rdy),
    .comen_code(div2),
    .raw_code(raw_code2),
    .ready(decode2_ready)
);

wire [N + M - 4 : 0] div_shift_init;
assign div_shift_init = raw_code2[M - 2 : 0] << (N - 2);
// ��ʼ��,���ܲ���genvar����
div_cell #(.N(N - 1), .M(M - 1))
u_div_cell_0
(
    .clk(clk),
    .rstn(rstn),
    .div_raw(raw_code2[M - 2 : 0]), // ԭʼ����
    .div_sub_i(raw_code1[N - 2 : 0]), // div1��Ϊ����
    .div_shift_i(div_shift_init), 
    .div_res_i({(N - 1){'b0}}),  // �������
    .en(decode1_ready),
    .sign_bit_i(raw_code1[N - 1] ^ raw_code2[M - 1]),

    .div_shift_o(div_shift_t[0]),
    .div_sub_o(div_sub_t[0]), // ���μ���Ľ����Ϊ���
    .div_res_o(div_res_t[0]), // ������
    .sign_bit_o(sign_bit[0]),     // ����λ
    .rdy(rdy_t[0])
);

genvar i;

generate
    for(i = 1; i <= N - 2; i = i + 1)begin: div_stepx
        div_cell #(.N(N - 1), .M(M - 1))
        u_div_step
        (
            .clk(clk),
            .rstn(rstn),
            .div_raw(raw_code2[M - 2 : 0]), // ԭʼ����
            .div_sub_i(div_sub_t[i - 1]), // div1��Ϊ����
            .div_shift_i(div_shift_t[i - 1]), 
            .div_res_i(div_res_t[i - 1]),  // �������
            .en(rdy_t[i - 1]),
            .sign_bit_i(sign_bit[i - 1]),

            .div_shift_o(div_shift_t[i]),
            .div_sub_o(div_sub_t[i]), // ���μ���Ľ����Ϊ���
            .div_res_o(div_res_t[i]), // ������
            .sign_bit_o(sign_bit[i]),     // ����λ
            .rdy(rdy_t[i])
        );
    end
endgenerate

comple_encode #(.N(N))
u_comple_encode(
    .clk(clk),
    .rstn(rstn),
    .en(rdy_t[N - 2]),
    .raw_code({sign_bit[N - 2], div_res_t[N - 2]}),
    .comen_code(res),
    .ready(res_rdy)
);

endmodule