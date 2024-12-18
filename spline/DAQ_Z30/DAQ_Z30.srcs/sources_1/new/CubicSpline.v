// `timescale 1ns / 1ps

// module CubicSpline #(
//     parameter POINT_NUM = 5,  // 一共多少个点
//     parameter SAMPLE_BIT = 16, // 采样位数
//     parameter  INSERT_NUM = 16  // 插值后每段区间一共多少个点
// )(
//     input                               sys_clk,
//     input                               sys_rst_n,
//     input                               enable, // 是否开始计算
//     input   signed [POINT_NUM * 14 - 1: 0] SampleY,
//     output  reg     [POINT_NUM * INSERT_NUM * 32 - 1 : 0]     Data,
//     output  reg     [31:0]              MaxIndex,
//     output  reg                         ready  // 拉高表明计算完成，直到下次触发enable前一直为高
// );

// localparam  WAIT = 0;
// localparam  GETCOE = 1;  // 获取矩阵系数
// localparam  STARTSOLVE = 2;
// localparam  GETPARA = 3;
// localparam  GETMAX = 4;

// // 插值的最大下标
// localparam  MAXINSERTINDEX = INSERT_NUM * (POINT_NUM - 1);

// localparam  INT_BITSIZE = SAMPLE_BIT + 4;
// localparam  DEC_BITSIZE = 12;

// // 整数变量位宽
// localparam  INT_VAR_BITESIZE = (POINT_NUM * INT_BITSIZE);
// localparam  DEC_VAR_BITSIZE = POINT_NUM << 5;


// // 使用定点小数来存储m k
// reg [DEC_VAR_BITSIZE - 1: 0] m;
// reg [DEC_VAR_BITSIZE - 1: 0] k;
// reg [DEC_VAR_BITSIZE - 1: 0] r;
// // a b c y不可能是小数
// reg [INT_VAR_BITESIZE - 1: 0] a;
// reg signed [INT_VAR_BITESIZE - 1: 0] b;
// reg [INT_VAR_BITESIZE - 1: 0] c;
// reg signed [INT_VAR_BITESIZE - 1: 0] y;

// reg [((POINT_NUM - 1) << 5) - 1 : 0] Ai;
// reg [((POINT_NUM - 1) << 5) - 1 : 0] Bi;
// reg [((POINT_NUM - 1) << 5) - 1 : 0] Ci;
// reg [((POINT_NUM - 1) << 5) - 1 : 0] Di;

// reg [11:0] IncVal;
// reg [12:0] CntX;
// reg [31: 0] CntVal;
// reg [31: 0] MaxVal;

// reg [31 : 0] i;  // 循环变量
// reg enable_d0, enable_d1;
// reg [2:0] state;
// reg [63:0] temp;
// reg [43:0] temp1;
// reg [55:0] temp2;
// reg [67:0] temp3;
// reg [31:0] temp4;
// wire start_flag;


// assign start_flag = enable_d0 & ~enable_d1; // 高电平触发
// // 边沿检测电路
// always @(posedge sys_clk or negedge sys_rst_n) begin
//     if(!sys_rst_n) begin
//         enable_d0 <= 1'b0;
//         enable_d1 <= 1'b1;
//     end
//     else begin
//         enable_d0 <= enable;
//         enable_d1 <= enable_d0;
//     end
// end

// always @(posedge sys_clk or negedge sys_rst_n) begin
//     if(!sys_rst_n) begin
//         IncVal <= (1 << 12) / INSERT_NUM;
//         CntVal <= 0;
//         MaxVal <= 0;
//         CntX <= 0;
//         MaxIndex <= 0;
//         state <= WAIT;
//         ready <= 1'b0;
//         Ai <= 0;
//         Bi <= 0;
//         Ci <= 0;
//         Di <= 0;
//         a[INT_VAR_BITESIZE - 1: 0] <= 0;
//         b[INT_VAR_BITESIZE - 1: 0] <= 0;
//         c[INT_VAR_BITESIZE - 1: 0] <= 0;
//         y[INT_VAR_BITESIZE - 1: 0] <= 0;
//         m[(POINT_NUM << 5) - 1:0] <= 0;
//         k[(POINT_NUM << 5) - 1:0] <= 0;
//         r[(POINT_NUM << 5) - 1:0] <= 0;
//     end
//     else begin
//         case(state)
//             WAIT:begin
//                 if(start_flag == 1'b1) begin
//                     state <= GETCOE;
//                     ready <= 1'b0;
//                     a[19:0] <= 0;
//                     b[19:0] <= 1;
//                     c[19:0] <= 0;
//                     y[19:0] <= 0;
//                     k[31:0] <= 0;
//                     r[31:0] <= 0;
//                     a[INT_VAR_BITESIZE - 1 -: 20] <= 0;
//                     b[INT_VAR_BITESIZE - 1 -: 20] <= 1;
//                     c[INT_VAR_BITESIZE - 1 -: 20] <= 0;
//                     y[INT_VAR_BITESIZE - 1 -: 20] <= 0;
//                 end
//                 else
//                     state <= state;
//             end
//             GETCOE: begin
//                 if(i < POINT_NUM - 1) begin
//                     a[(i  * INT_BITSIZE) +: 20] <= 1;
//                     b[(i  * INT_BITSIZE) +: 20] <= 4;
//                     c[(i  * INT_BITSIZE) +: 20] <= 1;
//                     y[(i  * INT_BITSIZE) +: 20] <= $signed(6) * (($signed({SampleY[((i + 1) * 14) +: 14], 6'd0}) >>> 6)
//                                  - $signed(2) * $signed(($signed({SampleY[(i * 14) +: 14], 6'd0}) >>> 6))
//                                 + $signed(($signed({SampleY[((i - 1) * 14) +: 14], 6'd0}) >>> 6)));
//                 end
//                 else begin
//                     state <= STARTSOLVE;
//                 end
//             end
//             STARTSOLVE:begin
//                 if(i < POINT_NUM) begin
//                     k[(i << 5) +: 32] <= $signed({c[(i * INT_BITSIZE) +: 20], 24'd0}) / $signed(({b[(i * INT_BITSIZE) +: 20], 12'd0}
//                                             - (a[(i * INT_BITSIZE) +: 20] * k[((i - 1) << 5) +: 32])));
                                            
//                     r[(i << 5) +: 32] <= (($signed({{y[(i * INT_BITSIZE) +: 20], 12'd0} - ((a[(i * INT_BITSIZE) +: 20] * r[((i - 1) << 5) +: 32])),12'd0})))
//                                             / $signed(({b[(i * INT_BITSIZE) +: 20], 12'd0}
//                                             - (a[(i * INT_BITSIZE) +: 20] * k[((i - 1) << 5) +: 32])));
//                 end
//                 else begin
//                     m[((POINT_NUM - 1) << 5) +: 32] <= r[((POINT_NUM - 1) << 5) +: 32];
//                     state <= GETPARA;
//                 end
//             end
//             GETPARA:begin
//                 if(i > 0) begin
//                     temp =  $signed( k[((i - 1) << 5) +: 32]) 
//                                         * $signed(m[((i) << 5) +: 32]);
//                     m[((i - 1) << 5) +: 32] = r[((i - 1) << 5) +: 32] - temp[43:12];
//                     // 使用算术右移
//                     Ai[((i - 1) << 5) +: 32] <= $signed({($signed({SampleY[(i - 1) * 14 +: 14],6'd0}) >>> 6), 12'd0});
//                     Bi[((i - 1) << 5) +: 32] <= $signed({($signed({SampleY[(i * 14) +: 14],6'd0}) >>> 6), 12'd0} - {($signed({SampleY[(i - 1) * 14 +: 14],6'd0}) >>> 6), 12'd0})
//                                                     - $signed(m[((i - 1) << 5) +: 32]) / $signed(2) 
//                                                     - $signed({m[(i << 5) +: 32] - m[((i - 1) << 5) +: 32], 12'd0}) / $signed((6 << 12));
//                     Ci[((i - 1) << 5) +: 32] <= $signed(m[((i - 1) << 5) +: 32]) / $signed(2);
//                     Di[((i - 1) << 5) +: 32] <= $signed({m[(i << 5) +: 32] - m[((i - 1) << 5) +: 32], 12'd0}) / $signed((6 << 12));                          
//                     $display("%h\n",Bi[((i - 2) << 5) +: 32]);
//                 end
//                 else begin
//                     state <= GETMAX;
//                 end
//             end
//             GETMAX: begin
//                 if(i < MAXINSERTINDEX + 1) begin
//                     temp <= (i) / INSERT_NUM;
//                     temp1 <= $signed(Bi[(temp << 5) +: 32]) * $signed(CntX);
//                     temp2 <= $signed(Ci[(temp << 5) +: 32]) * $signed(CntX) * $signed(CntX);
//                     temp3 <= $signed(Di[(temp << 5) +: 32]) * $signed(CntX) * $signed(CntX) * $signed(CntX);
//                     temp4 <= Ai[(((i) / INSERT_NUM) << 5) +: 32];
//                     CntVal <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
//                     if (i > 1)
//                         Data[(i - 2) * 32 +: 32] <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
//                     else
//                         Data <= Data;

//                     if($signed(CntVal) > $signed(MaxVal)) begin
//                         MaxVal <= CntVal;
//                         MaxIndex <= ((i - 2) > 0 ? i - 2 : 0);
//                     end
//                     else begin
//                         MaxVal <= MaxVal;
//                         MaxIndex <= MaxIndex;
//                     end
//                     CntX <= {1'd0, CntX[11:0] + IncVal};
//                 end
//                 else begin
//                     state <= WAIT;
//                     ready <= 1'b1;
//                 end
//             end
//             default:;
//         endcase
//     end
// end

// // 计数器
// always @(posedge sys_clk or negedge sys_rst_n) begin
//     if(!sys_rst_n)
//         i <= 32'd1;
//     else begin
//         case(state)
//             WAIT:begin
//                 i <= 32'd1;
//             end
//             GETCOE: begin
//                 if(i < POINT_NUM - 1)
//                     i <= i + 1'b1;
//                 else
//                     i <= 32'd1;
//             end
//             STARTSOLVE: begin
//                 if(i < POINT_NUM)
//                     i <= i + 1'b1;
//                 else
//                     i <= POINT_NUM - 1;
//             end
//             GETPARA: begin
//                 if(i > 32'd0)
//                     i <= i - 1'b1;
//                 else
//                     i <= 32'd0;
//             end
//             GETMAX: begin
//                 if(i < MAXINSERTINDEX + 1)
//                     i <= i + 1'b1;
//                 else
//                     i <= 32'd0;
//             end
//             default:;
//         endcase
//     end
// end



// endmodule

`timescale 1ns / 1ps
module CubicSpline #(
    parameter POINT_NUM = 5,  // 一共多少个点
    parameter SAMPLE_BIT = 16, // 采样位数
    parameter  INSERT_NUM = 16  // 插值后每段区间一共多少个点
)(
    input                               sys_clk,
    input                               sys_rst_n,
    input                               enable, // 是否开始计算
    input   signed [POINT_NUM * 14 - 1: 0] SampleY,

    output  reg     [POINT_NUM * INSERT_NUM * 32 - 1 : 0]     Data,
    output  reg     [31:0]              MaxIndex,
    output  reg                         ready  // 拉高表明计算完成，直到下次触发enable前一直为高
);

localparam  WAIT = 0;
localparam  GETCOE = 1;  // 获取矩阵系数
localparam  STARTSOLVE = 2;
localparam  GETPARA = 3;
localparam  GETMAX = 4;
localparam  GETINPUT = 5;

// 插值的最大下标
localparam  MAXINSERTINDEX = INSERT_NUM * (POINT_NUM - 1);

localparam  INT_BITSIZE = SAMPLE_BIT + 4;
localparam  DEC_BITSIZE = 12;

// 整数变量位宽
localparam  INT_VAR_BITESIZE = (POINT_NUM * INT_BITSIZE);
localparam  DEC_VAR_BITSIZE = POINT_NUM << 5;

//reg signed [POINT_NUM * 14 - 1: 0] SampleY;
// 使用定点小数来存储m k
reg [DEC_VAR_BITSIZE - 1: 0] m;
reg [DEC_VAR_BITSIZE - 1: 0] k;
reg [DEC_VAR_BITSIZE - 1: 0] r;
// a b c y不可能是小数
reg [INT_VAR_BITESIZE - 1: 0] a;
reg signed [INT_VAR_BITESIZE - 1: 0] b;
reg [INT_VAR_BITESIZE - 1: 0] c;
reg signed [INT_VAR_BITESIZE - 1: 0] y;

reg [((POINT_NUM - 1) << 5) - 1 : 0] Ai;
reg [((POINT_NUM - 1) << 5) - 1 : 0] Bi;
reg [((POINT_NUM - 1) << 5) - 1 : 0] Ci;
reg [((POINT_NUM - 1) << 5) - 1 : 0] Di;

reg [11:0] IncVal;
reg [12:0] CntX;
reg [31: 0] CntVal;
reg [31: 0] MaxVal;

reg [31 : 0] i;  // 循环变量
reg enable_d0, enable_d1;
reg [2:0] state;
reg [63:0] temp;
reg [43:0] temp1;
reg [55:0] temp2;
reg [67:0] temp3;
reg [31:0] temp4;
wire start_flag;

reg [7:0] addra;
wire [13:0] douta;

assign start_flag = enable_d0 & ~enable_d1; // 高电平触发
// 边沿检测电路
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        enable_d0 <= 1'b0;
        enable_d1 <= 1'b1;
    end
    else begin
        enable_d0 <= enable;
        enable_d1 <= enable_d0;
    end
end

always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n) begin
        IncVal <= (1 << 12) / INSERT_NUM;
        CntVal <= 0;
        MaxVal <= 0;
        CntX <= 0;
        Ai <= 0;
        Bi <= 0;
        Ci <= 0;
        Di <= 0;
        MaxIndex <= 0;
        state <= WAIT;
        ready <= 1'b0;
        Data <= 0;
        a[INT_VAR_BITESIZE - 1: 0] <= 0;
        b[INT_VAR_BITESIZE - 1: 0] <= 0;
        c[INT_VAR_BITESIZE - 1: 0] <= 0;
        y[INT_VAR_BITESIZE - 1: 0] <= 0;
        m[(POINT_NUM << 5) - 1:0] <= 0;
        k[(POINT_NUM << 5) - 1:0] <= 0;
        r[(POINT_NUM << 5) - 1:0] <= 0;
        addra <= 0;
    end
    else begin
        case(state)
            WAIT:begin
                if(start_flag == 1'b1) begin
                    state <= GETCOE;
                    ready <= 1'b0;
                    a[19:0] <= 0;
                    b[19:0] <= 1;
                    c[19:0] <= 0;
                    y[19:0] <= 0;
                    k[31:0] <= 0;
                    r[31:0] <= 0;
                    a[INT_VAR_BITESIZE - 1 -: 20] <= 0;
                    b[INT_VAR_BITESIZE - 1 -: 20] <= 1;
                    c[INT_VAR_BITESIZE - 1 -: 20] <= 0;
                    y[INT_VAR_BITESIZE - 1 -: 20] <= 0;
                    addra <= 0;
                end
                else
                    state <= state;
            end
            /*GETINPUT: begin
                if(i < POINT_NUM) begin
                    SampleY[(i * 14) +: 14] <= $signed(douta);
                    addra <= addra + 1'b1;
                end
                else
                    state <= GETCOE;
            end*/
            GETCOE: begin
                if(i < POINT_NUM - 1) begin
                    a[(i  * INT_BITSIZE) +: 20] <= 1;
                    b[(i  * INT_BITSIZE) +: 20] <= 4;
                    c[(i  * INT_BITSIZE) +: 20] <= 1;
                    y[(i  * INT_BITSIZE) +: 20] <= $signed(6) * (($signed({SampleY[((i + 1) * 14) +: 14], 6'd0}) >>> 6)
                                 - $signed(2) * $signed(($signed({SampleY[(i * 14) +: 14], 6'd0}) >>> 6))
                                + $signed(($signed({SampleY[((i - 1) * 14) +: 14], 6'd0}) >>> 6)));
                end
                else begin
                    state <= STARTSOLVE;
                end
            end
            STARTSOLVE:begin
                if(i < POINT_NUM) begin
                    k[(i << 5) +: 32] <= $signed({c[(i * INT_BITSIZE) +: 20], 24'd0}) / $signed(({b[(i * INT_BITSIZE) +: 20], 12'd0}
                                            - (a[(i * INT_BITSIZE) +: 20] * k[((i - 1) << 5) +: 32])));
                                            
                    r[(i << 5) +: 32] <= (($signed({{y[(i * INT_BITSIZE) +: 20], 12'd0} - ((a[(i * INT_BITSIZE) +: 20] * r[((i - 1) << 5) +: 32])),12'd0})))
                                            / $signed(({b[(i * INT_BITSIZE) +: 20], 12'd0}
                                            - (a[(i * INT_BITSIZE) +: 20] * k[((i - 1) << 5) +: 32])));
                end
                else begin
                    m[((POINT_NUM - 1) << 5) +: 32] <= r[((POINT_NUM - 1) << 5) +: 32];
                    state <= GETPARA;
                end
            end
            GETPARA:begin
                if(i > 0) begin
                    temp =  $signed( k[((i - 1) << 5) +: 32]) 
                                        * $signed(m[((i) << 5) +: 32]);
                    m[((i - 1) << 5) +: 32] = r[((i - 1) << 5) +: 32] - temp[43:12];
                    // 使用算术右移
                    Ai[((i - 1) << 5) +: 32] <= $signed({($signed({SampleY[(i - 1) * 14 +: 14],6'd0}) >>> 6), 12'd0});
                    Bi[((i - 1) << 5) +: 32] <= $signed({($signed({SampleY[(i * 14) +: 14],6'd0}) >>> 6), 12'd0} - {($signed({SampleY[(i - 1) * 14 +: 14],6'd0}) >>> 6), 12'd0})
                                                    - $signed(m[((i - 1) << 5) +: 32]) / $signed(2) 
                                                    - $signed({m[(i << 5) +: 32] - m[((i - 1) << 5) +: 32], 12'd0}) / $signed((6 << 12));
                    Ci[((i - 1) << 5) +: 32] <= $signed(m[((i - 1) << 5) +: 32]) / $signed(2);
                    Di[((i - 1) << 5) +: 32] <= $signed({m[(i << 5) +: 32] - m[((i - 1) << 5) +: 32], 12'd0}) / $signed((6 << 12));                          
                    $display("%h\n",Bi[((i - 2) << 5) +: 32]);
                end
                else begin
                    state <= GETMAX;
                end
            end
            GETMAX: begin
                if(i < MAXINSERTINDEX + 1) begin
                    temp <= (i) / INSERT_NUM;
                    temp1 <= $signed(Bi[(temp << 5) +: 32]) * $signed(CntX);
                    temp2 <= $signed(Ci[(temp << 5) +: 32]) * $signed(CntX) * $signed(CntX);
                    temp3 <= $signed(Di[(temp << 5) +: 32]) * $signed(CntX) * $signed(CntX) * $signed(CntX);
                    temp4 <= Ai[(((i) / INSERT_NUM) << 5) +: 32];
                    CntVal <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
                    if (i > 1)
                        Data[(i - 2) * 32 +: 32] <= temp4 + temp1[43:12] + temp2[55:24] + temp3[67:36];
                    else
                        Data <= Data;
                    if($signed(CntVal) > $signed(MaxVal)) begin
                        MaxVal <= CntVal;
                        MaxIndex <= ((i - 2) > 0 ? i - 2 : 0) - 6'd32;
                    end
                    else begin
                        MaxVal <= MaxVal;
                        MaxIndex <= MaxIndex;
                    end
                    CntX <= {1'd0, CntX[11:0] + IncVal};
                end
                else begin
                    state <= WAIT;
                    ready <= 1'b1;
                end
            end
            default:;
        endcase
    end
end

// 计数器
always @(posedge sys_clk or negedge sys_rst_n) begin
    if(!sys_rst_n)
        i <= 32'd1;
    else begin
        case(state)
            WAIT:begin
                i <= 32'd1;
            end
           /* GETINPUT: begin
                if(i < POINT_NUM)
                    i <= i + 1'b1;
                else
                    i <= 32'd1;
            end*/
            GETCOE: begin
                if(i < POINT_NUM - 1)
                    i <= i + 1'b1;
                else
                    i <= 32'd1;
            end
            STARTSOLVE: begin
                if(i < POINT_NUM)
                    i <= i + 1'b1;
                else
                    i <= POINT_NUM - 1;
            end
            GETPARA: begin
                if(i > 32'd0)
                    i <= i - 1'b1;
                else
                    i <= 32'd0;
            end
            GETMAX: begin
                if(i < MAXINSERTINDEX + 1)
                    i <= i + 1'b1;
                else
                    i <= 32'd0;
            end
            default:;
        endcase
    end
end

endmodule
