

module counter(
	input				sys_clk,
	input				sys_rst_n,
	input				input_fx,    //待测信号输入
	
	output	reg [31:0]	cnt_fx_reg,
	output  reg         start,
	output  reg         stop,
	output  reg         gate_out
    );

//reg     [29:0]	cnt_fx_reg;
reg     [31:0]  cnt_gate_fs;
reg             gate_sclk;
reg             gate_fx_d1;
reg             gate_fx_d2;
reg             gate_fx_d3;
reg    [31:0]   cnt_fx;
//reg             start;
//reg             stop;

wire            gate_fx_pose;       // 上升沿
wire            gate_fx_nege;       // 下降沿
wire            start_pose;       // 上升沿

assign gate_fx_pose = ((gate_fx_d2) && (!gate_fx_d3))? 1'b1:1'b0;//上升沿
assign gate_fx_nege = ((!gate_fx_d2) && gate_fx_d3)? 1'b1:1'b0;//下降沿

//1s闸门时间
parameter   CNT_GATE_CNT = 32'd200_000_000;      // 测频闸门时间1s 
parameter   CNT_GATE_LOW = 32'd100_000_000;     // 闸门为低的时间0.5s 
parameter   CNT_GATE_OUT = 32'd50_000_000;     // 闸门输出高电平0.25s
parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT、STOP输出高电平

//0.5s闸门时间
//parameter   CNT_GATE_CNT = 32'd100_000_000;      // 测频闸门时间0.5s 
//parameter   CNT_GATE_LOW = 32'd50_000_000;     // 闸门为低的时间0.25s 
//parameter   CNT_GATE_OUT = 32'd25_000_000;     // 闸门输出高电平0.125s
//parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT、STOP输出高电平

//0.1s闸门时间
//parameter   CNT_GATE_CNT = 32'd20_000_000;      // 测频闸门时间0.1s 
//parameter   CNT_GATE_LOW = 32'd10_000_000;     // 闸门为低的时间0.05s 
//parameter   CNT_GATE_OUT = 32'd5_000_000;     // 闸门输出高电平0.025s
//parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT、STOP输出高电平

//示波器查看指标
//parameter   CNT_GATE_CNT = 32'd20_000;      // 测频闸门时间 10us
//parameter   CNT_GATE_LOW = 32'd2_000;     // 闸门为低的时间 1us
//parameter   CNT_GATE_OUT = 32'd5_000;     // 闸门输出高电平 2.5us

// 产生软件闸门时间计数器 cnt_gate_fs
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        cnt_gate_fs <= 28'd0;
    else if(cnt_gate_fs == CNT_GATE_CNT + CNT_GATE_OUT + CNT_GATE_LOW - 1'b1 )
        cnt_gate_fs <= 28'd0;
    else
        cnt_gate_fs <= cnt_gate_fs + 1'b1;
end

// 产生软件闸门 gate_sclk 
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n) begin
        gate_sclk <= 1'b0;
		gate_out  <= 1'b0;
		start<= 1'b0;
		stop<= 1'b0;
		end
    else if(cnt_gate_fs == CNT_GATE_LOW - 1'b1)begin
        gate_sclk <= 1'b1;
		gate_out <= 1'b1;
		start<= 1'b1;
		stop<= 1'b0;
		end
    else if(cnt_gate_fs == CNT_GATE_LOW + CNT_START_STOP_OUT - 1'b1)begin
            gate_sclk <= 1'b1;
            gate_out <= 1'b1;
            start<= 1'b0;
            stop<= 1'b0;
        end
	else if(cnt_gate_fs == CNT_GATE_LOW + CNT_GATE_OUT - 1'b1)begin
        gate_sclk <= 1'b1;
		gate_out <= 1'b0;
		start<= 1'b0;
		stop<= 1'b0;
		end
    else if(cnt_gate_fs == CNT_GATE_LOW +CNT_GATE_CNT - 1'b1)begin
        gate_sclk <= 1'b0;
		gate_out <= 1'b1;
		start<= 1'b0;
		stop<= 1'b1;
		end
    else if(cnt_gate_fs == CNT_GATE_LOW +CNT_GATE_CNT + CNT_START_STOP_OUT - 1'b1)begin
            gate_sclk <= 1'b0;
            gate_out <= 1'b1;
            start<= 1'b0;
            stop<= 1'b0;
        end
	else if(cnt_gate_fs == CNT_GATE_LOW + CNT_GATE_CNT + CNT_GATE_OUT - 1'b1)begin
		gate_sclk <= 1'b0;
		gate_out <= 1'b0;
		start<= 1'b0;
		stop<= 1'b0;
		end
    else begin
        gate_sclk <= gate_sclk;
		gate_out  <= gate_out;
		start<= start;
		stop<= stop;
		end
end


// 将软件闸门同步到被测时钟下得到实际闸门,并进行打拍获取上升沿和下降沿
always@(posedge input_fx or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        gate_fx_d1 <= 1'b0;
        gate_fx_d2 <= 1'b0;
        gate_fx_d3 <= 1'b0;
     end
    else begin
        gate_fx_d1 <= gate_sclk;
        gate_fx_d2 <= gate_fx_d1;
        gate_fx_d3 <= gate_fx_d2;
    end
end


always@(posedge input_fx or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        cnt_fx <= 30'd0;
		end
    else if(gate_fx_d2)
        cnt_fx <= cnt_fx + 1'b1;
    else if(!gate_fx_d2)
        cnt_fx <= 30'd0;
    else
        cnt_fx <= cnt_fx;  
end


// 在下降沿将被测时钟的时钟周期数进行缓存
always@(posedge input_fx or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        cnt_fx_reg <= 30'd0;
		end
    else if(gate_fx_nege)begin
        cnt_fx_reg <= cnt_fx;
	    end
    else begin
        cnt_fx_reg <= cnt_fx_reg;
		end
end

/*
ila_0 u_ila_0 (
	.clk    (sys_clk), // input wire clk

	.probe0 (sys_rst_n), // input wire [0:0]  probe0  
	.probe1 (input_fx), // input wire [0:0]  probe1 
	.probe2 (gate_out), // input wire [0:0]  probe2 
	.probe3 (cnt_fx), // input wire [29:0]  probe3 
	.probe4 (cnt_fx_reg) // input wire [29:0]  probe4
);
*/

endmodule
