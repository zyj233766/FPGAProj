module data_cul(
    input clk,
    input rstn,
    input en,

    input [31:0] Ai,
    input [31:0] Bi,
    input [31:0] Ci,
    input [31:0] Di,
    input [12:0] CntX,

    output reg [31:0] CntVal,
    output reg        Val_rdy
);


reg [31:0] Ai_in;
reg [31:0] Bi_in;
reg [31:0] Ci_in;
reg [31:0] Di_in;
reg [12:0] CntX_in;
reg        en_in;

always @(posedge clk) begin
    Ai_in <= Ai;
    Bi_in <= Bi;
    Ci_in <= Ci;
    Di_in <= Di;
    CntX_in <= CntX;
    en_in <= en;
end

reg [12:0] CntX_t[2:0];
reg [44:0] Di1; // Di乘以CntX
reg        Di1_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Di1 <= 0;
        Di1_rdy <= 0;
    end
    else if (en_in) begin
        (* USE_DSP = "yes" *)Di1 <= $signed(CntX) * $signed(Di_in);
        Di1_rdy <= 1;
    end
    else begin
        Di1 <= 0;
        Di1_rdy <= 0;    
    end
end

reg [44:0] Ci1; // Ci乘以CntX
reg        Ci1_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Ci1 <= 0;
        Ci1_rdy <= 0;
    end
    else if (en_in) begin
        (* USE_DSP = "yes" *)Ci1 <= $signed(CntX)* $signed(Ci_in);
        Ci1_rdy <= 1;
    end
    else begin
        Ci1 <= 0;
        Ci1_rdy <= 0;    
    end
end

reg [57:0] Ci2; // Ci1乘以CntX
reg        Ci2_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Ci2 <= 0;
        Ci2_rdy <= 0;
    end
    else if (Ci1_rdy) begin
        (* USE_DSP = "yes" *)Ci2 <= $signed(CntX_t[0]) * $signed(Ci1);
        Ci2_rdy <= 1;
    end
    else begin
        Ci2 <= 0;
        Ci2_rdy <= 0;    
    end
end

reg [44:0] Bi1; // Ci乘以CntX
reg        Bi1_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Bi1 <= 0;
        Bi1_rdy <= 0;
    end
    else if (en_in) begin
        (* USE_DSP = "yes" *)Bi1 <= $signed(CntX) * $signed(Bi_in);
        Bi1_rdy <= 1;
    end
    else begin
        Bi1 <= 0;
        Bi1_rdy <= 0;    
    end
end

reg [57:0] Di2; // Di1乘以CntX
reg        Di2_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Di2 <= 0;
        Di2_rdy <= 0;
    end
    else if (Di1_rdy) begin
        (* USE_DSP = "yes" *)Di2 <= $signed(CntX_t[0]) * $signed(Di1);
        Di2_rdy <= 1;
    end
    else begin
        Di2 <= 0;
        Di2_rdy <= 0;    
    end
end

reg [70:0] Di3; // Di2乘以CntX
reg        Di3_rdy;
always @(posedge clk) begin
    if (!rstn) begin
        Di3 <= 0;
        Di3_rdy <= 0;
    end
    else if (Di2_rdy) begin
        (* USE_DSP = "yes" *)Di3 <= $signed(CntX_t[1]) *$signed(Di2);
        Di3_rdy <= 1;
    end
    else begin
        Di3 <= 0;
        Di3_rdy <= 0;    
    end
end

// 插入的时序补偿寄存器
reg [31:0] Ai_t[2:0];
reg [44:0] Bi_t[1:0];
reg [57:0] Ci_t;

always @(posedge clk) begin
    if (!rstn) begin
        Ai_t[0] <= 0;
        Ai_t[1] <= 0;
        Ai_t[2] <= 0;
        Bi_t[1] <= 0;
        Bi_t[0] <= 0;
        Ci_t    <= 0;
        CntX_t[0] <= 0;
        CntX_t[1] <= 0;
    end     
    else begin
        Ai_t[0] <= Ai_in;
        Ai_t[1] <= Ai_t[0];
        Ai_t[2] <= Ai_t[1];
        Bi_t[0] <= Bi1;
        Bi_t[1] <= Bi_t[0];
        Ci_t    <= Ci2; 
        CntX_t[0] <= CntX_in;
        CntX_t[1] <= CntX_t[0];       
    end
end

// 计算CntVal
always @(posedge clk) begin
    if (!rstn) begin
        CntVal <= 0;
        Val_rdy <= 0;
    end
    else if (Di3_rdy) begin
        CntVal <= $signed(Ai_t[2]) + $signed(Bi_t[1][43:12]) + $signed(Ci_t[55:24]) + $signed(Di3[67:36]);
        Val_rdy <= 1;
    end
    else begin
        CntVal <= 0;
        Val_rdy <= 0;        
    end
end

endmodule