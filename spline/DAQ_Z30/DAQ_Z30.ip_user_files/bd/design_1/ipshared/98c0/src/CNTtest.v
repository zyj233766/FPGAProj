

module CNTtest(
	input				sys_clk,
	input				sys_rst_n,
	input	 [31:0]     IN_CNTA, 
	input	 [31:0]	    IN_CNTB,
	input	 [31:0]	    IN_CNTC,
	input				IN_STOP,
	input				IN_START,
	input				IN_CNTEN,			
	
	output  reg  [31:0] OUT_CNTA,
	output  reg  [31:0] OUT_CNTB,
	output  reg  [31:0] OUT_CNTC,
	output  reg         OUT_STOP,
	output  reg         OUT_START,
    output  reg         OUT_CNTEN,
	output  reg         SIGN_CNTA,
	output  reg         SIGN_CNTB,
	output  reg         SIGN_CNTC
    );

reg   [31:0]    OUT_CNTA_d1;
reg   [31:0]    OUT_CNTA_d2;
reg   [31:0]    OUT_CNTB_d1;
reg   [31:0]    OUT_CNTB_d2;
reg   [31:0]    OUT_CNTC_d1;
reg   [31:0]    OUT_CNTC_d2;

always@(posedge sys_clk)begin
    if(!sys_rst_n)begin
        OUT_CNTA <= 32'd0;
		OUT_CNTB <= 32'd0;
        OUT_CNTC <= 32'd0;
	end
    else begin
        OUT_CNTA <= IN_CNTA;
		OUT_CNTB <= IN_CNTB;
		OUT_CNTC <= IN_CNTC;
	end
end

always@(posedge sys_clk)begin
    if(!sys_rst_n)begin
        OUT_STOP <= 1'b0;
	end
    else begin
        OUT_STOP <= IN_STOP;
	end
end

always@(posedge sys_clk)begin
    if(!sys_rst_n)begin
        OUT_START <= 1'b0;
	end
    else begin
        OUT_START <= IN_START;
	end
end

always@(posedge sys_clk)begin
    if(!sys_rst_n)begin
        OUT_CNTEN <= 1'b0;
	end
    else begin
        OUT_CNTEN <= IN_CNTEN;
	end
end


always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        OUT_CNTA_d1 <= 32'd0;
		OUT_CNTB_d1 <= 32'd0;
		OUT_CNTC_d1 <= 32'd0;
        OUT_CNTA_d2 <= 32'd0;
		OUT_CNTB_d2 <= 32'd0;
        OUT_CNTC_d2 <= 32'd0;
     end
    else begin
        OUT_CNTA_d1 <= OUT_CNTA;
        OUT_CNTA_d2 <= OUT_CNTA_d1;
        OUT_CNTB_d1 <= OUT_CNTB;
        OUT_CNTB_d2 <= OUT_CNTB_d1;	
        OUT_CNTC_d1 <= OUT_CNTC;
        OUT_CNTC_d2 <= OUT_CNTC_d1;    	
    end
end

always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        SIGN_CNTA <= 1'b0;
    end
	else if(OUT_CNTA_d2==OUT_CNTA_d1)begin
        SIGN_CNTA <= 1'b0;
	end
	else if(OUT_CNTA_d1==OUT_CNTA)begin
        SIGN_CNTA <= 1'b1;
	end
end

always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        SIGN_CNTB <= 1'b0;
    end
	else if(OUT_CNTB_d2==OUT_CNTB_d1)begin
        SIGN_CNTB <= 1'b0;
	end
	else if(OUT_CNTB_d1==OUT_CNTB)begin
        SIGN_CNTB <= 1'b1;
	end
end

always@(posedge sys_clk or negedge sys_rst_n)begin
    if(!sys_rst_n)begin
        SIGN_CNTC <= 1'b0;
    end
	else if(OUT_CNTC_d2==OUT_CNTC_d1)begin
        SIGN_CNTC <= 1'b0;
	end
	else if(OUT_CNTC_d1==OUT_CNTC)begin
        SIGN_CNTC <= 1'b1;
	end
end


endmodule
