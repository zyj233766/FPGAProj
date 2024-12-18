`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/09 16:29:01
// Design Name: 
// Module Name: MJ_IBUFG_DS
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module MJ_IBUFG_DS(
    input in_P,
    input in_N,
    output out1
    );
    
   IBUFDS #(
       .DIFF_TERM("TRUE"),       // Differential Termination
       .IBUF_LOW_PWR("FALSE"),     // Low power="TRUE", Highest performance="FALSE" 
       .IOSTANDARD("DEFAULT")     // Specify the input I/O standard
    ) IBUFDS_inst (
       .O(out1),  // Buffer output
       .I(in_P),  // Diff_p buffer input (connect directly to top-level port)
       .IB(in_N) // Diff_n buffer input (connect directly to top-level port)
    );
    
    
endmodule
