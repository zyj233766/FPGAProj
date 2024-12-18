

module counter(
	input				sys_clk,
	input				sys_rst_n,
	input				input_fx,    //�����ź�����
	
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

wire            gate_fx_pose;       // ������
wire            gate_fx_nege;       // �½���
wire            start_pose;       // ������

assign gate_fx_pose = ((gate_fx_d2) && (!gate_fx_d3))? 1'b1:1'b0;//������
assign gate_fx_nege = ((!gate_fx_d2) && gate_fx_d3)? 1'b1:1'b0;//�½���

//1sբ��ʱ��
parameter   CNT_GATE_CNT = 32'd200_000_000;      // ��Ƶբ��ʱ��1s 
parameter   CNT_GATE_LOW = 32'd100_000_000;     // բ��Ϊ�͵�ʱ��0.5s 
parameter   CNT_GATE_OUT = 32'd50_000_000;     // բ������ߵ�ƽ0.25s
parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT��STOP����ߵ�ƽ

//0.5sբ��ʱ��
//parameter   CNT_GATE_CNT = 32'd100_000_000;      // ��Ƶբ��ʱ��0.5s 
//parameter   CNT_GATE_LOW = 32'd50_000_000;     // բ��Ϊ�͵�ʱ��0.25s 
//parameter   CNT_GATE_OUT = 32'd25_000_000;     // բ������ߵ�ƽ0.125s
//parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT��STOP����ߵ�ƽ

//0.1sբ��ʱ��
//parameter   CNT_GATE_CNT = 32'd20_000_000;      // ��Ƶբ��ʱ��0.1s 
//parameter   CNT_GATE_LOW = 32'd10_000_000;     // բ��Ϊ�͵�ʱ��0.05s 
//parameter   CNT_GATE_OUT = 32'd5_000_000;     // բ������ߵ�ƽ0.025s
//parameter   CNT_START_STOP_OUT = 32'd5_000;          // SATRT��STOP����ߵ�ƽ

//ʾ�����鿴ָ��
//parameter   CNT_GATE_CNT = 32'd20_000;      // ��Ƶբ��ʱ�� 10us
//parameter   CNT_GATE_LOW = 32'd2_000;     // բ��Ϊ�͵�ʱ�� 1us
//parameter   CNT_GATE_OUT = 32'd5_000;     // բ������ߵ�ƽ 2.5us

// �������բ��ʱ������� cnt_gate_fs
always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)
        cnt_gate_fs <= 28'd0;
    else if(cnt_gate_fs == CNT_GATE_CNT + CNT_GATE_OUT + CNT_GATE_LOW - 1'b1 )
        cnt_gate_fs <= 28'd0;
    else
        cnt_gate_fs <= cnt_gate_fs + 1'b1;
end

// �������բ�� gate_sclk 
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


// �����բ��ͬ��������ʱ���µõ�ʵ��բ��,�����д��Ļ�ȡ�����غ��½���
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


// ���½��ؽ�����ʱ�ӵ�ʱ�����������л���
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
