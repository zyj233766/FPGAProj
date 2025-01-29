`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2021/12/15 21:08:58
// Design Name: 
// Module Name: MJ_OBUFGDS
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


module MJ_OBUFGDS(
    input sig_in,
    output sigout_P,
    output sigout_N
    );
    
    OBUFDS #(
       .IOSTANDARD("DEFAULT"), // Specify the output I/O standard
       .SLEW("FAST")           // Specify the output slew rate
    ) OBUFDS_inst (
       .O(sigout_P),     // Diff_p output (connect directly to top-level port)
       .OB(sigout_N),   // Diff_n output (connect directly to top-level port)
       .I(sig_in)      // Buffer input 
    );   
    
    
endmodule
