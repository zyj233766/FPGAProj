`timescale 1ns / 1ps


(* USE_DSP = "yes" *)module test #(
    parameter POINT_NUM_X = 240,  // 一共多少个点
    parameter POINT_NUM_Y = 220,
    parameter SAMPLE_BIT = 16, // 采样位数
    parameter INSERT_NUM = 16  // 插值后每段区间一共多少个点    
)(
    input sys_clk,
    input sys_rst_n,
    output [31:0] MaxIndex1,
    output [31:0] MaxIndex2,
    output [79:0] DebugOutput,
    output [31:0] CntVal
);

       

wire enable3;
wire enable4;



// 第一次三次样条插值
genvar k1;
generate
    for(k1 = 0; k1 < 4; k1 = k1 + 1) begin:BLOCK
        //localparam POINT_NUM = (k1 == 0 ? POINT_NUM_X : POINT_NUM_Y);
        localparam POINT_NUM = (k1 == 0 ? 1 : 0) * POINT_NUM_X + (k1 == 1 ? 1 : 0) * POINT_NUM_Y
                    + (k1 >= 2 ? 1 : 0) * 10;
                    
        
        localparam  MAXINSERTINDEX = INSERT_NUM * (POINT_NUM - 1);
        localparam  INT_BITSIZE = SAMPLE_BIT + 4;
        localparam  DEC_BITSIZE = 12;
        
        // 整数变量位宽
        localparam  INT_VAR_BITESIZE = (POINT_NUM * INT_BITSIZE);
        localparam  DEC_VAR_BITSIZE = POINT_NUM << 5;
        localparam  WAIT = 0;
        localparam  GETCOE = 1;  // 获取矩阵系数
        localparam  STARTSOLVE = 2;
        localparam  GETPARA = 3;
        localparam  GETMAX = 4;
        localparam  GETINPUT = 5;
        localparam OutputNum = (POINT_NUM_X - POINT_NUM_Y + 1) * INSERT_NUM;
        
        (*ram_style="block"*)reg signed [13: 0] SampleX[0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31:0] DataX[0 : (POINT_NUM - 1) * INSERT_NUM - 1];
        reg enable;
        reg ready;
        (*ram_style="block"*)reg [31: 0] m [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] k [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [31: 0] r [0 : POINT_NUM - 1];
        // a b c y不可能是小数
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] a [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg signed [INT_BITSIZE - 1: 0] b [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] c [0 : POINT_NUM - 1];
        (*ram_style="block"*)reg [INT_BITSIZE - 1: 0] y [0 : POINT_NUM - 1];
        
        (*ram_style="block"*)reg [31: 0] Ai [0 : POINT_NUM - 2];
        (*ram_style="block"*)reg [31: 0] Bi [0 : POINT_NUM - 2];
        (*ram_style="block"*)reg [31: 0] Ci [0 : POINT_NUM - 2];
        (*ram_style="block"*)reg [31: 0] Di [0 : POINT_NUM - 2];
        
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
        reg [31:0] MaxIndex;

        reg        kr_cul_en;
        reg [19:0] kr_cul_c;
        reg [19:0] kr_cul_b;
        reg [19:0] kr_cul_a;
        reg [19:0] kr_cul_y;
        reg [31:0] kr_cul_k_d0;
        reg [31:0] kr_cul_r_d0;
        reg [9 :0] kr_cul_rev_count;
        reg        kr_cul_state;
        wire [31:0] kr_cul_res_k;
        wire [31:0] kr_cul_res_r;
        wire        kr_cul_rdy;

        reg         ABCD_cul_en;
        reg [31:0] ABCD_cul_k_d;
        reg [31:0] ABCD_cul_m;
        reg [31:0] ABCD_cul_r_d;
        reg [13:0] ABCD_cul_sample;
        reg [13:0] ABCD_cul_sample_d;
        reg        ABCD_cul_state;
        wire [31:0] ABCD_cul_m_d;
        wire        ABCD_cul_m_rdy;
        wire [31:0] ABCD_cul_Ai_d;
        wire        ABCD_cul_Ai_rdy;
        wire [31:0] ABCD_cul_Bi_d;
        wire        ABCD_cul_Bi_rdy;
        wire [31:0] ABCD_cul_Ci_d;
        wire        ABCD_cul_Ci_rdy;
        wire [31:0] ABCD_cul_Di_d;
        wire        ABCD_cul_Di_rdy;
        reg   [9:0] ABCD_cul_Ai_recv_count;
        reg   [9:0] ABCD_cul_Bi_recv_count;
        reg   [9:0] ABCD_cul_Ci_recv_count;
        reg   [9:0] ABCD_cul_Di_recv_count;

        reg data_cul_en;
        reg [31:0] data_cul_Ai;
        reg [31:0] data_cul_Bi;
        reg [31:0] data_cul_Ci;
        reg [31:0] data_cul_Di;
        reg [12:0] data_cul_CntX;
        wire  [31:0] data_cul_CntVal;
        wire         data_cul_Val_rdy;
        wire         data_cul_state;
        reg  [15:0]   data_cul_recv_count;

            assign start_flag = enable_d0 & ~enable_d1; // 高电平触发
            // 边沿检测电路
            always @(posedge sys_clk) begin
                if(!sys_rst_n) begin
                    enable_d0 <= 1'b0;
                    enable_d1 <= 1'b0;
                end
                else begin
                    enable_d0 <= enable;
                    enable_d1 <= enable_d0;
                end
            end
            
            always @(posedge sys_clk) begin
                if(!sys_rst_n) begin
                    data_cul_recv_count <= 0;
                    ABCD_cul_Ai_recv_count <= POINT_NUM;
                    ABCD_cul_Bi_recv_count <= POINT_NUM;
                    ABCD_cul_Ci_recv_count <= POINT_NUM;
                    ABCD_cul_Di_recv_count <= POINT_NUM;
                    kr_cul_state <= 0;
                    kr_cul_en <= 0;
                    kr_cul_rev_count <= 0;
                    ABCD_cul_state <= 0;
                    ABCD_cul_en    <= 0;
                    IncVal <= (1 << 8);
                    CntVal <= 0;
                    MaxVal <= 0;
                    CntX <= 0;
                    temp <= 0;
                    MaxIndex <= 0;
                    state <= WAIT;
                    ready <= 1'b0;
                end
                else begin
                    case(state)
                        WAIT:begin
                            if(start_flag == 1'b1) begin
                                state <= GETCOE;
                                ready <= 1'b0;
                            end
                            else
                                state <= state;
                        end
                        GETCOE: begin
                            if(i == 0 || i == POINT_NUM - 1) begin
                                a[i] <= 0;
                                b[i] <= 1;
                                c[i] <= 0;
                                y[i] <= 0;
                            end
                            else if(i < POINT_NUM - 1 && i > 0) begin
                                a[i] <= 1;
                                b[i] <= 4;
                                c[i] <= 1;
                                y[i] <= i/*$signed(6) * (($signed({SampleX[(i + 1)], 6'd0}) >>> 6)
                                            - $signed(2) * $signed(($signed({SampleX[i], 6'd0}) >>> 6))
                                            + $signed(($signed({SampleX[i - 1], 6'd0}) >>> 6)))*/;
                                end
                            else begin
                                state <= STARTSOLVE;
                            end
                        end
                        STARTSOLVE:begin
                            
                            if (kr_cul_state == 0) begin
                                kr_cul_state <= 1;
                                if(i == 0) begin
                                    kr_cul_en <= 1'b1;
                                    kr_cul_a  <= 0;
                                    kr_cul_b  <= 1;
                                    kr_cul_c  <= 0;
                                    kr_cul_y  <= 0;
                                    kr_cul_k_d0 <= 0;
                                    kr_cul_r_d0 <= 0;
                                end
                                else if(i < POINT_NUM && i > 0) begin
                                // 将数据依次送入流水线计算器
                                    kr_cul_en <= 1'b1;
                                    kr_cul_a  <= a[i];
                                    kr_cul_b  <= b[i];
                                    kr_cul_c  <= c[i];
                                    kr_cul_y  <= y[i];
                                    kr_cul_k_d0 <= k[i - 1];
                                    kr_cul_r_d0 <= r[i - 1];
                                end
                                else begin
                                    kr_cul_en <= 1'b0;
                                end
                            end
                            else begin
                                kr_cul_en <= 0;
                                if (kr_cul_rdy == 1'b1) begin
                                    kr_cul_state <= 0;
                                    k[i] <= kr_cul_res_k;
                                    r[i] <= kr_cul_res_r;
                                end
                            end

                            if (i == POINT_NUM && kr_cul_rdy == 1'b0) begin
                                state <= GETPARA;
                            end

                        end
                        GETPARA:begin
                            // 发送逻辑
                            if (ABCD_cul_state == 1'b0) begin
                                if (i > 0) begin
                                    if (i == POINT_NUM) begin
                                        ABCD_cul_state <= 1;
                                        ABCD_cul_en    <= 1;
                                        ABCD_cul_k_d   <= k[i - 1];
                                        ABCD_cul_m     <= 0;
                                        ABCD_cul_r_d   <= r[i - 1];
                                        ABCD_cul_sample <= 0;
                                        ABCD_cul_sample_d <= SampleX[i - 1];
                                    end
                                    else begin
                                        ABCD_cul_state <= 1;
                                        ABCD_cul_en    <= 1;
                                        ABCD_cul_k_d   <= k[i - 1];
                                        ABCD_cul_m     <= m[i];
                                        ABCD_cul_r_d   <= r[i - 1];
                                        ABCD_cul_sample <= SampleX[i];
                                        ABCD_cul_sample_d <= SampleX[i - 1];
                                    end
                                end
                                else begin
                                    ABCD_cul_en    <= 0;
                                    ABCD_cul_state <= 0;
                                end
                            end
                            else begin
                                ABCD_cul_en <= 0;
                                if (ABCD_cul_m_rdy) begin
                                    ABCD_cul_state <= 0;
                                    m[i - 1] <= ABCD_cul_m_d;
                                end
                            end

                            // 接收逻辑
                            if (ABCD_cul_Ai_rdy) begin
                                if (ABCD_cul_Ai_recv_count > 0) begin
                                    ABCD_cul_Ai_recv_count <= ABCD_cul_Ai_recv_count - 1'b1;
                                    if (ABCD_cul_Ai_recv_count < POINT_NUM)
                                        Ai[ABCD_cul_Ai_recv_count - 1] <= ABCD_cul_Ai_d;    
                                end     
                                else
                                    ABCD_cul_Ai_recv_count <= 0;
                            end

                            if (ABCD_cul_Bi_rdy) begin
                                if (ABCD_cul_Bi_recv_count > 0) begin
                                    ABCD_cul_Bi_recv_count <= ABCD_cul_Bi_recv_count - 1'b1;
                                    if (ABCD_cul_Bi_recv_count < POINT_NUM)
                                        Bi[ABCD_cul_Bi_recv_count - 1] <= ABCD_cul_Bi_d;    
                                end     
                                else
                                    ABCD_cul_Bi_recv_count <= 0;
                            end

                            if (ABCD_cul_Ci_rdy) begin
                                if (ABCD_cul_Ci_recv_count > 0) begin
                                    ABCD_cul_Ci_recv_count <= ABCD_cul_Ci_recv_count - 1'b1;
                                    if (ABCD_cul_Ci_recv_count < POINT_NUM)
                                        Ci[ABCD_cul_Ci_recv_count - 1] <= ABCD_cul_Ci_d;    
                                end     
                                else
                                    ABCD_cul_Ci_recv_count <= 0;
                            end

                            if (ABCD_cul_Di_rdy) begin
                                if (ABCD_cul_Di_recv_count > 0) begin
                                    ABCD_cul_Di_recv_count <= ABCD_cul_Di_recv_count - 1'b1;
                                    if (ABCD_cul_Di_recv_count < POINT_NUM)
                                        Di[ABCD_cul_Di_recv_count - 1] <= ABCD_cul_Di_d;    
                                end     
                                else
                                    ABCD_cul_Di_recv_count <= 0;
                            end

                            if (ABCD_cul_Di_recv_count == 0)
                                state <= GETMAX;
                        end
                        GETMAX: begin
                            // 发送逻辑
                            if (i < MAXINSERTINDEX) begin
                                data_cul_en <= 1'b1;
                                data_cul_Ai <= Ai[(i) >> 4];
                                data_cul_Bi <= Bi[(i) >> 4];
                                data_cul_Ci <= Ci[(i) >> 4];
                                data_cul_Di <= Di[(i) >> 4]; 
                                data_cul_CntX <= CntX;
                                CntX <= {1'd0, CntX[11:0] + IncVal};
                            end
                            else begin
                                data_cul_en <= 1'b0;
                            end

                            // 接收逻辑
                            if (data_cul_Val_rdy) begin
                                if (data_cul_recv_count < MAXINSERTINDEX) begin
                                    data_cul_recv_count <= data_cul_recv_count + 1'b1;
                                    DataX[data_cul_recv_count] <= data_cul_CntVal;
                                    CntVal <= data_cul_CntVal;
                                    if ($signed(CntVal) > $signed(MaxVal)) begin
                                        MaxVal <= CntVal;
                                        MaxIndex <= data_cul_recv_count - 1;
                                    end
                                end
                                else begin
                                    data_cul_recv_count <= data_cul_recv_count;
                                    CntVal <= 0;
                                end
                            end

                            if (i == MAXINSERTINDEX) begin
                                state <= WAIT;
                                ready <= 1'b1;   
                            end

                            // if(i < MAXINSERTINDEX + 1) begin
                            //     temp <= (i) / INSERT_NUM;
                            //     temp1 <= $signed(Bi[temp]) * $signed(CntX);
                            //     temp2 <= $signed(Ci[temp]) * $signed(CntX) * $signed(CntX);
                            //     temp3 <= $signed(Di[temp]) * $signed(CntX) * $signed(CntX) * $signed(CntX);
                            //     temp4 <= Ai[i / INSERT_NUM];
                            //     CntVal <= $signed(temp4) + $signed(temp1[43:12])
                            //              + $signed(temp2[55:24]) + $signed(temp3[67:36]);
                            //     if (i > 0) begin
                            //         DataX[(i - 1)] <= $signed(temp4) + $signed(temp1[43:12])
                            //              + $signed(temp2[55:24]) + $signed(temp3[67:36]);
                            //     end
                            //     if($signed(CntVal) > $signed(MaxVal)) begin
                            //         MaxVal <= CntVal;
                            //         MaxIndex <= ((i - 2) > 0 ? i - 2 : 0) - 6'd32;                           
                            //     end
                            //     else begin
                            //         MaxVal <= MaxVal;
                            //         MaxIndex <= MaxIndex;
                            //     end
                            //     CntX <= {1'd0, CntX[11:0] + IncVal};
                            // end
                            // else begin
                            //     state <= WAIT;
                            //     ready <= 1'b1;
                            // end
                        end
                        default:;
                    endcase
                end
            end
            
            kr_cul u_kr_cul(
                .clk(sys_clk),
                .rstn(sys_rst_n),
                .en(kr_cul_en),
                .c(kr_cul_c),
                .b(kr_cul_b),
                .a(kr_cul_a),
                .y(kr_cul_y),
                .k_d(kr_cul_k_d0),
                .r_d(kr_cul_r_d0),
                .k(kr_cul_res_k),
                .r(kr_cul_res_r),
                .data_ready1(kr_cul_rdy)
            );

            ABCD_cul u_ABCD_cul(
                .clk(sys_clk),
                .rstn(sys_rst_n),
                .en(ABCD_cul_en),
                .k_d(ABCD_cul_k_d),
                .m(ABCD_cul_m),
                .r_d(ABCD_cul_r_d),
                .sample(ABCD_cul_sample),
                .sample_d(ABCD_cul_sample_d),

                .m_d(ABCD_cul_m_d),
                .m_rdy(ABCD_cul_m_rdy),

                .Ai(ABCD_cul_Ai_d),
                .Ai_rdy(ABCD_cul_Ai_rdy),

                .Bi(ABCD_cul_Bi_d),
                .Bi_rdy(ABCD_cul_Bi_rdy),
                .Ci(ABCD_cul_Ci_d),
                .Ci_rdy(ABCD_cul_Ci_rdy),
                .Di(ABCD_cul_Di_d),
                .Di_rdy(ABCD_cul_Di_rdy)
            );

            data_cul u_data_cul(
                .clk(sys_clk),
                .rstn(sys_rst_n),
                .en(data_cul_en),

                .Ai(data_cul_Ai),
                .Bi(data_cul_Bi),
                .Ci(data_cul_Ci),
                .Di(data_cul_Di),
                .CntX(data_cul_CntX),

                .CntVal(data_cul_CntVal),
                .Val_rdy(data_cul_Val_rdy)
            );

            // 计数器
            always @(posedge sys_clk) begin
                if(!sys_rst_n)
                    i <= 32'd1;
                else begin
                    case(state)
                        WAIT:begin
                            i <= 32'd0;
                        end
                        GETCOE: begin
                            if(i < POINT_NUM)
                                i <= i + 1'b1;
                            else
                                i <= 32'd0;
                        end
                        STARTSOLVE: begin
                            // 计算到i == POINT_NUM时结束
                            if (kr_cul_rdy == 1'b1)
                                i <= i + 1'b1;
                            else
                                i <= i; 
                        end
                        GETPARA: begin
                            if(ABCD_cul_m_rdy && i > 0)
                                i <= i - 1'b1;
                            else
                                i <= i;
                        end
                        GETMAX: begin
                            if(i < MAXINSERTINDEX)
                                i <= i + 1'b1;
                            else
                                i <= MAXINSERTINDEX;
                        end
                        default:;
                    endcase
                end
            end
        end
endgenerate

genvar k2;
    generate
        for(k2 = 0; k2 < 1; k2 = k2 + 1) begin:CrossCorrelation
            localparam OnceTimes = 1;
            localparam JMax = ((POINT_NUM_Y - 1) * INSERT_NUM) / OnceTimes;
            localparam Wait = 0;
            localparam Culculate = 1;
            localparam OutputNum = (POINT_NUM_X - POINT_NUM_Y) * INSERT_NUM + 1;
            reg enable;
            reg enable_d0, enable_d1;
            reg state;
            reg [9:0] k,k_d0,kk;
            reg [19:0] j;
            reg [79:0] temp;
            reg [64 * OnceTimes - 1 : 0] temp_sum;
            reg ready;
            reg [79:0] DebugOutput;
            reg [79:0] MaxValue;
            wire start_flag;
            assign start_flag = ~enable_d1 & enable_d0;
            reg [7:0] i;
            reg [79 : 0] StoredValue[0 : 5];

            always @(posedge sys_clk) begin
                if (!sys_rst_n) begin
                    enable_d0 <= 1'b0;
                    enable_d1 <= 1'b0;
                end
                else begin
                    enable_d0 <= enable;
                    enable_d1 <= enable_d0;
                end
            end
            
            always @(posedge sys_clk) begin
                if (!sys_rst_n) begin
                    state <= Wait;
                    ready <= 1'b0;
                end
                else begin
                    if (start_flag == 1'b1 && state == Wait) begin
                        state <= Culculate;
                        ready <= 1'b0;
                    end
                    else if (k == 0 && k_d0 == OutputNum - 1 && state == Culculate) begin
                        state <= Wait;
                        ready <= 1'b1;
                    end
                    else begin
                        state <= state;
                        ready <= ready;
                    end
                end
            end
            
            
            // 计数器模块
            always @(posedge sys_clk) begin
                if (!sys_rst_n) begin
                    j <= 20'd0;
                    k <= 10'd0;
                    k_d0 <= 10'd0;
                    kk <= 0;
                end
                else begin
                    if (state == Culculate) begin
                        if (j < JMax)
                            j <= j + 1'b1;
                        else begin  // j == JMax
                            k_d0 <= k;
                            j <= 20'b0;
                            if (k < OutputNum - 1)
                                k <= k + 1'b1;
                            else
                                k <= 10'b0;
                            
                        end
                    end
                end
            end
            
            // 计算模块
            always @(posedge sys_clk) begin
                if (!sys_rst_n) begin
                    temp <= 64'd0;
                    temp_sum <= 0;
                    DebugOutput <= 0;
                    MaxValue <= 0;
                end
                else begin
                    if (state == Culculate) begin
                        for (i = 0; i < OnceTimes; i = i + 1) begin
                            temp_sum[(i * 64) +: 64] <= 1/*$signed(BLOCK[1].DataX[j * OnceTimes + i]) * 
                                            $signed(BLOCK[0].DataX[j * OnceTimes + i + k])*/;
                        end    
                        if (j > 0 && j <= JMax) begin
                            if (j > 0) begin
                                temp <= $signed(temp) + $signed(temp_sum[63:12])/* + $signed(temp_sum[127:76]) + $signed(temp_sum[191:140]) + $signed(temp_sum[255:204]) +
                                        $signed(temp_sum[319:268]) + $signed(temp_sum[383:332]) + $signed(temp_sum[447:396]) + $signed(temp_sum[511:460]) +
                                        $signed(temp_sum[575:524]) + $signed(temp_sum[639:588]) + $signed(temp_sum[703:652]) + $signed(temp_sum[767:716]) +
                                        $signed(temp_sum[831:780]) + $signed(temp_sum[895:844]) + $signed(temp_sum[959:908]) + $signed(temp_sum[1023:972])*/;
                                        
                            end
                            else 
                                temp <= temp;
                        end
                        else if(j == 0)
                            temp <= 0;
                        else
                            temp <= temp;
                        
                        if ((j == 0 || j == 1) && k <= OutputNum - 1 && ((k > 0) || (k_d0 > 0))) begin
                            DebugOutput <= temp;
                            if($signed(DebugOutput) > $signed(MaxValue) && j == 1) begin
                                MaxValue <= DebugOutput;
                                kk <= k;                              
                                BLOCK[2].SampleX[0] <= StoredValue[0];
                                BLOCK[2].SampleX[1] <= StoredValue[1];
                                BLOCK[2].SampleX[2] <= StoredValue[2];
                                BLOCK[2].SampleX[3] <= StoredValue[3];
                            end
                            if(j == 0) begin
                                StoredValue[5] <= temp;
                                StoredValue[4] <= StoredValue[5];
                                StoredValue[3] <= StoredValue[4];
                                StoredValue[2] <= StoredValue[3];
                                StoredValue[1] <= StoredValue[2];
                                StoredValue[0] <= StoredValue[1];  
                            end
                            if(kk + 6 == k && j == 1) begin
                                BLOCK[2].SampleX[4] <= StoredValue[0];
                                BLOCK[2].SampleX[5] <= StoredValue[1];
                                BLOCK[2].SampleX[6] <= StoredValue[2];
                                BLOCK[2].SampleX[7] <= StoredValue[3];
                                BLOCK[2].SampleX[8] <= StoredValue[4];
                                BLOCK[2].SampleX[9] <= StoredValue[5];
                            end   
                        end                        
                       
           
                    end
                end
            end
        end
    endgenerate

integer aaa;
always @(posedge sys_clk) begin
    BLOCK[2].enable <= CrossCorrelation[0].ready;
    BLOCK[3].enable <= BLOCK[2].ready;
    CrossCorrelation[0].enable <= BLOCK[0].ready & BLOCK[1].ready;
    if (BLOCK[2].MaxIndex > 5) begin
        for(aaa = 0; aaa < 10; aaa = aaa + 1) begin
            BLOCK[3].SampleX[aaa] <= BLOCK[2].DataX[BLOCK[2].MaxIndex - 4 + aaa];
        end
    end
end

assign MaxIndex1 = BLOCK[0].MaxIndex;
assign MaxIndex2 = BLOCK[1].MaxIndex;
assign DebugOutput = CrossCorrelation[0].DebugOutput;
assign CntVal = BLOCK[0].CntVal;

// ROM读取到BLOCK[0]和BLOCK[1]的SampleX当中
reg [7:0] addr1;
reg [7:0] addr2;
wire [13:0] dout1;
wire [13:0] dout2;


always @(posedge sys_clk) begin
    if(!sys_rst_n) begin
        //BLOCK[0].SampleX <= 0;
        //SampleY <= 0;
    end
    else begin
        if (addr1 < POINT_NUM_X + 1 && addr1 > 0 && BLOCK[0].enable == 1'b0)
            BLOCK[0].SampleX[addr1 - 1] <= $signed(dout1);


        if (addr2 < POINT_NUM_Y + 1 && addr2 > 0 && BLOCK[1].enable == 1'b0)
            BLOCK[1].SampleX[addr2 - 1] <= $signed(dout2);

    end
end

always @(posedge sys_clk) begin
    if (!sys_rst_n) begin
        addr1 <= 12'd0;
        addr2 <= 12'd0;
        BLOCK[0].enable <= 0;
        BLOCK[1].enable <= 0;
    end
    else begin
        if (addr1 < POINT_NUM_X + 1 && BLOCK[0].enable == 1'b0)
            addr1 <= addr1 + 1'b1;
        else begin
            addr1 <= 12'd0;
            BLOCK[0].enable <= 1'b1; 
        end

        if(addr2 < POINT_NUM_Y + 1 && BLOCK[1].enable == 1'b0)
            addr2 <= addr2 + 1'b1;
        else begin
            addr2 <= 12'd0;
            BLOCK[1].enable <= 1'b1;
        end
    end
end

blk_mem_gen_0 my_blk_mem_gen_0 (
  .clka(sys_clk),    // input wire clka
  .addra(addr1),  // input wire [7 : 0] addra
  .douta(dout1)  // output wire [15 : 0] douta
);

blk_mem_gen_1 my_blk_mem_gen_1 (
  .clka(sys_clk),    // input wire clka
  .addra(addr2),  // input wire [7 : 0] addra
  .douta(dout2)  // output wire [15 : 0] douta
);
endmodule