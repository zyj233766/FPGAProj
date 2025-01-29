module ABCD_cul(
    input clk,
    input rstn,
    input en,

    input [31:0] k_d,
    input [31:0] m,
    input [31:0] r_d,
    input [13:0] sample,
    input [13:0] sample_d,

    output reg [31:0] m_d,
    output reg m_rdy,

    output reg [31:0] Ai,
    output reg Ai_rdy,

    output reg [31:0] Bi,
    output reg Bi_rdy,

    output reg [31:0] Ci,
    output reg Ci_rdy,

    output  [31:0] Di,
    output  Di_rdy
);


// 第一级流水线：计算k[i - 1] * m[i]
reg [63:0] temp;
reg [31:0] r_d_t;
reg [31:0] m_t[1:0];
reg        temp_rdy;

always @(posedge clk) begin
    if (!rstn) begin
        temp <= 'b0;
        r_d_t <= 'b0;
        m_t[0] <= 'b0;
        temp_rdy <= 'b0;
    end
    else if (en) begin
        (* USE_DSP = "yes" *) temp <= $signed(k_d) * $signed(m);
        r_d_t <= r_d;
        m_t[0] <= m;
        temp_rdy <= 'b1;
    end
    else begin
        temp <= 'b0;
        r_d_t <= 'b0;
        m_t[0] <= 'b0;
        temp_rdy <= 'b0;
    end
end

// 第二级流水线，计算m[i - 1]
integer i;
always @(posedge clk) begin
    if (!rstn) begin
        i <= 0;
        m_d <= 0;
        m_rdy <= 0;
        m_t[1] <= 0;
    end
    else if (temp_rdy) begin
        i <= i + 1'b1;
        if (i == 0)
            m_d <= r_d_t;
        else
            m_d <= $signed(r_d_t) - $signed(temp[43:12]);
        m_rdy <= 1;
        m_t[1] <= m_t[0];
    end
    else begin
        i <= i;
        m_d <= 0;
        m_rdy <= 0;
        m_t[1] <= 0;
    end
end

// 第三级流水线，存在四步并行，计算Ai, Ai1, Ci, m[i] - m[i - 1]

// 计算Ai
reg [13:0] sample_d_t [1:0];
reg [13:0] sample_t   [1:0];

always @(posedge clk) begin
    if (!rstn) begin
        sample_d_t[0] <= 0;
        sample_d_t[1] <= 0;
        sample_t[0]   <= 0;
        sample_t[1]   <= 0;
    end
    else begin
        sample_d_t[0] <= sample_d;
        sample_d_t[1] <= sample_d_t[0];   
        sample_t[0]   <= sample;
        sample_t[1]   <= sample_t[0];     
    end
end

always @(posedge clk) begin
    if (!rstn) begin
        Ai <= 0;
        Ai_rdy <= 0;
    end
    else if (m_rdy) begin
        Ai <= {($signed({sample_d_t[1],6'd0}) >>> 6), 12'd0};
        Ai_rdy <= 1;
    end
    else begin
        Ai <= 0;
        Ai_rdy <= 0;
    end
end

// 计算Ai1
reg [31:0] Ai1;
reg        Ai1_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Ai1 <= 0;
        Ai1_rdy <= 0;
    end
    else if (m_rdy) begin
        Ai1 <= {($signed({sample_t[1],6'd0}) >>> 6), 12'd0};
        Ai1_rdy <= 1;
    end
    else begin
        Ai1 <= 0;
        Ai1_rdy <= 0;
    end
end

// 计算Ci
always @(posedge clk) begin
    if (!rstn) begin
        Ci <= 0;
        Ci_rdy <= 0;
    end
    else if (m_rdy) begin
        Ci <= $signed(m_d) >>> 1;
        Ci_rdy <= 1;
    end
    else begin
        Ci <= 0;
        Ci_rdy <= 0;
    end
end

// 计算m[i] - m[i - 1]
wire [31:0] minus_res;
wire        minus_rdy;

minus #(
    .N(32)
) u_minus (
    .clk(clk),
    .rstn(rstn),
    .en(m_rdy),
    .minus1(m_t[1]),
    .minus2(m_d),
    .res(minus_res),
    .res_rdy(minus_rdy)
);

// 为保证时序稳定，中间插入的流水线寄存器
reg [31:0] Ai_t[46:0];
reg [31:0] Ci_t[46:0];
reg [31:0] Ai1_t [46:0];

integer k;
always @(posedge clk) begin
    if (!rstn) begin
        for (k = 0; k < 47; k = k + 1) begin
            Ai_t[k] <= 0;
            Ci_t[k] <= 0;
            Ai1_t[k] <= 0;
        end
    end
    else begin
        Ai_t[0] <= Ai;
        Ci_t[0] <= Ci;
        Ai1_t[0] <= Ai1;
        for (k = 1; k < 47; k = k + 1) begin
            Ai_t[k] <= Ai_t[k - 1];
            Ci_t[k] <= Ci_t[k - 1];
            Ai1_t[k] <= Ai1_t[k - 1];
        end
    end
end

div # (
    .N(44),
    .M(32)
) u_div (
    .clk(clk),
    .rstn(rstn),
    .div1({minus_res, 12'b0}), // 被除数
    .div2((32'd6) << 12), // 除数
    .data_rdy(minus_rdy),

    .res_rdy(Di_rdy),
    .res(Di)
);

// 计算Bi
always @(posedge clk) begin
    if (!rstn) begin
        Bi <= 0;
        Bi_rdy <= 0;
    end
    else if (Di_rdy) begin
        Bi <= $signed(Ai1_t[44]) - $signed(Ai_t[44]) - $signed(Ci_t[44]) - $signed(Di);
        Bi_rdy <= 1;
    end
    else begin
        Bi <= 0;
        Bi_rdy <= 0;        
    end
end



endmodule