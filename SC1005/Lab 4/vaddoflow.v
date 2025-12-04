`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 21.10.2025 14:56:57
// Design Name: 
// Module Name: vaddoflow
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


module vaddoflow(
    input [3:0] a,
    input [3:0] b,
    output [6:0] seg_L,
    output oflow
    );
    
    wire [4:0] x ;
    
    assign x = a + b;
    vsevenseg v1 (.x(x[3:0]), .seg_L(seg_L));
    assign oflow = x[4];
endmodule
