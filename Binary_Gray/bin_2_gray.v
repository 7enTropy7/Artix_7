`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2019 17:40:17
// Design Name: 
// Module Name: bin_2_gray
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


module bin_2_gray(b,g);
    input [3:0]b;
    output [3:0]g;
    assign g[0]=b[0];
    assign g[1]=b[0]^b[1];
    assign g[2]=b[1]^b[2];
    assign g[3]=b[2]^b[3];
endmodule
