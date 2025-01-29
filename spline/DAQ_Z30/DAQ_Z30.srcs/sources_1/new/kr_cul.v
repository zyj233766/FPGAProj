`timescale 1ns / 1ps

(* USE_DSP = "yes" *)module kr_cul(
    input clk,
    input rstn,
    input en,
    input [19:0] c,
    input [19:0] b,
    input [19:0] a,
    input [19:0] y,
    input [31:0] k_d,
    input [31:0] r_d,

    output  [31:0] k,
    output  [31:0] r,
    output data_ready1,
    output data_ready2
);

// reg [19:0] c_i;
// reg [19:0] b_i;
// reg [19:0] a_i;
// reg [19:0] y_i;
// reg [31:0] k_d_i;
// reg [31:0] r_d_i;

// reg  [31:0] k_o;
// reg  [31:0] r_o;

// reg data_ready_o1;
// reg data_ready_o2;

// assign k = k_o;
// assign r = r_o;
// assign data_ready1 = data_ready_o1;
// assign data_ready2 = data_ready_o2;
// integer i;

// always @(posedge clk) begin
//     c_i <= c;
//     b_i <= b;
//     a_i <= a;
//     y_i <= y;
//     k_d_i <= k_d;
//     r_d_i <= r_d;
// end

// always @(posedge clk) begin
//     if (!rstn) begin
//         i <= 0;
//         k_o <= 0;
//         r_o <= 0;
//         data_ready_o1 <= 0;
//         data_ready_o2 <= 0;
//     end
//     else if (en) begin
//         if (i < 2)
//             i <= i + 1;
//         else
//             i <= 0;
//             r_o <= k_d_i * r_d_i;
//             k_o <= r_d_i * a;
//         // k_o <= 1/*$signed(
//         // {c_i, 24'd0}) / $signed({b_i, 12'd0}
//         //                         - (a_i * k_d_i))*/;
                                
//         // r_o <= k_d_i * r_d_i;/*($signed({{y_i, 12'd0} - ((a_i * r_d_i)),12'd0}))
//         //                         / $signed({b_i, 12'd0}
//         //                         - (a_i * k_d_i))*/;
//         data_ready_o1 <= 1;
//         data_ready_o2 <= 1;
//     end
//     else begin
//         k_o <= 0;
//         r_o <= 0;
//         data_ready_o1 <= 0;
//         data_ready_o2 <= 0;
//     end
// end



reg [19:0] c_t [21:0];
reg [19:0] b_t [21:0];
reg [19:0] a_t [21:0];
reg [19:0] y_t [21:0];


integer i;
always @(posedge clk) begin
    if (!rstn) begin
        for(i = 0; i < 54; i = i + 1) begin
            c_t[i] <= 'b0;
            b_t[i] <= 'b0;
            a_t[i] <= 'b0;
            y_t[i] <= 'b0;
        end
    end
    else begin
        c_t[0] <= c;
        b_t[0] <= b;
        a_t[0] <= a;
        y_t[0] <= y;
        for(i = 1; i < 54; i = i + 1) begin
            c_t[i] <= c_t[i - 1];
            b_t[i] <= b_t[i - 1];
            a_t[i] <= a_t[i - 1];
            y_t[i] <= y_t[i - 1];
        end
    end
end

wire mult_rdy;
wire [50:0] mult_res;

// 计算a[i] * k[i - 1]
mult # (
    .N(32),
    .M(20)
) u_mult (
    .clk(clk),
    .rstn(rstn),
    .data_rdy(en) ,
    .mult1(k_d),
    .mult2(a),

    .res_rdy(mult_rdy) ,
    .res(mult_res)
);

wire mult_rdy2;
wire [50:0] mult_res2;
// 计算a[i] * r[i - 1]
mult # (
    .N(32),
    .M(20)
) u_mult2 (
    .clk(clk),
    .rstn(rstn),
    .data_rdy(en),
    .mult1(r_d),
    .mult2(a),

    .res_rdy(mult_rdy2),
    .res(mult_res2)
);

// 两数相减,获取b[i] - a[i] * k[i - 1]
wire        minus_rdy;
wire  [31:0] minus_res;

minus # (
    .N(32)
) u_minus (
    .clk(clk),
    .rstn(rstn),
    .en(mult_rdy),
    .minus1({b_t[20], 12'b0}),
    .minus2(mult_res),
    .res(minus_res),
    .res_rdy(minus_rdy)
);

// 获取y[i] - a[i] * r[i - 1]
wire         minus_rdy2;
wire  [31:0] minus_res2;
minus # (
    .N(32)
) u_minus2 (
    .clk(clk),
    .rstn(rstn),
    .en(mult_rdy2),
    .minus1({y_t[20], 12'b0}),
    .minus2(mult_res2[31:0]),
    .res(minus_res2),
    .res_rdy(minus_rdy2)
);

// 计算k[i]

div # (
    .N(44),
    .M(32)
) u_div (
    .clk(clk),
    .rstn(rstn),
    .div1({c_t[21], 24'b0}), // 被除数
    .div2(minus_res), // 除数
    .data_rdy(minus_rdy),

    .res_rdy(data_ready1),
    .res(k)
);

// 计算r[i]
div # (
    .N(44),
    .M(32)
) u_div2 (
    .clk(clk),
    .rstn(rstn),
    .div1({minus_res2, 12'd0}), // 被除数
    .div2(minus_res), // 除数
    .data_rdy(minus_rdy2),

    .res_rdy(data_ready2),
    .res(r)
);
endmodule