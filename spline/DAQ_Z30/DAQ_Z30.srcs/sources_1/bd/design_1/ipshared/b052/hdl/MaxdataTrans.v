
module MaxdataTrans(
	input				sys_clk,
    input               sys_rst_n,
    input	 [31:0]     IN_Correction,
    input	 [31:0]     IN_spline1,
    input	 [31:0]     IN_spline2,
    
    output  reg  [31:0] OUT_Correction,
    output  reg  [31:0] OUT_spline1,
    output  reg  [31:0] OUT_spline2
    );

always@(posedge sys_clk)begin
    if(!sys_rst_n)begin
        OUT_Correction <= 32'd0;
		OUT_spline1 <= 32'd0;
        OUT_spline2 <= 32'd0;
	end
    else begin
        OUT_Correction <= IN_Correction;
		OUT_spline1 <= IN_spline1;
		OUT_spline2 <= IN_spline2;
	end
end
    
    
    
endmodule
