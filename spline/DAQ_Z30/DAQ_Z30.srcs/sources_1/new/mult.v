`timescale 1ns / 1ps
module    mult
    #(parameter N=32,
      parameter M=20)
    (
      input                     clk,
      input                     rstn,
      input                     data_rdy ,
      input [N-1:0]             mult1,
      input [M-1:0]             mult2,

      output                    res_rdy ,
      output [N+M-2:0]          res );

    wire [N+M-3:0]       mult1_t [M-2:0] ;
    wire [M-2:0]         mult2_t [M-2:0] ;
    wire [N+M-3:0]       mult1_acc_t [M-2:0] ;
    wire [N - 1 : 0]     raw_code1;
    wire [M - 1 : 0]     raw_code2;
    wire                 decode1_ready;
    wire                 decode2_ready;
    wire [M - 2 : 0]     sign_bit1;
    wire [M - 2 : 0]     sign_bit2;
    wire [M-2:0]         rdy_t ;

    //第一次例化相当于初始化，不能用 generate 语句
    /* 第一个数的解码模块 */
    comple_decode #(.N(N))
    u_comple_decode1
    (
      .clk(clk),
      .rstn(rstn),
      .en(data_rdy),
      .comen_code(mult1),
      .raw_code(raw_code1),
      .ready(decode1_ready)
    );

    /* 第二个数的解码模块 */
   comple_decode #(.N(M))
    u_comple_decode2
    (
      .clk(clk),
      .rstn(rstn),
      .en(data_rdy),
      .comen_code(mult2),
      .raw_code(raw_code2),
      .ready(decode2_ready)
    );

    mult_cell      #(.N(N - 1), .M(M - 1))
    u_mult_step0
    (
      .clk              (clk),
      .rstn             (rstn),
      .en               (decode1_ready),
      .mult1            ({{(M - 1){1'b0}}, raw_code1[N - 2 : 0]}),
      .mult2            (raw_code2[M - 2 : 0]),
      .mult1_acci       ({(N + M - 2){1'b0}}),
      .sign_bit1_i      (raw_code1[N - 1]),
      .sign_bit2_i      (raw_code2[M - 1]),
      //output
      .mult1_acco       (mult1_acc_t[0]),
      .mult2_shift      (mult2_t[0]),
      .mult1_o          (mult1_t[0]),
      .sign_bit1_o      (sign_bit1[0]),
      .sign_bit2_o      (sign_bit2[0]),
      .rdy              (rdy_t[0]) );

    //多次模块例化，用 generate 语句
    genvar               i ;
    generate
        for(i=1; i<=M-2; i=i+1) begin: mult_stepx
            mult_cell      #(.N(N - 1), .M(M - 1))
            u_mult_step
            (
              .clk              (clk),
              .rstn             (rstn),
              .en               (rdy_t[i-1]),
              .mult1            (mult1_t[i-1]),
              .mult2            (mult2_t[i-1]),
              //上一次累加结果作为下一次累加输入
              .mult1_acci       (mult1_acc_t[i-1]),
              .sign_bit1_i      (sign_bit1[i - 1]),
              .sign_bit2_i      (sign_bit2[i - 1]),
              //output
              .mult1_acco       (mult1_acc_t[i]),                                       
              .mult1_o          (mult1_t[i]),  //被乘数移位状态传递
              .mult2_shift      (mult2_t[i]),  //乘数移位状态传递
              .sign_bit1_o      (sign_bit1[i]),
              .sign_bit2_o      (sign_bit2[i]),
              .rdy              (rdy_t[i]) );
        end 
    endgenerate

    comple_encode #(.N(N + M - 1))
    u_comple_encode(
      .clk(clk),
      .rstn(rstn),
      .en(rdy_t[M - 2]),
      .raw_code({sign_bit1[M - 2] ^ sign_bit2[M - 2], mult1_acc_t[M - 2]}),

      .comen_code(res),
      .ready(res_rdy)
    );

endmodule
