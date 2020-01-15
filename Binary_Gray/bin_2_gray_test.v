`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2019 17:46:09
// Design Name: 
// Module Name: bin_2_gray_test
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


module bin_2_gray_test();
    reg [3:0]b;
    wire [3:0]g;
    bin_2_gray uut(b,g);
    initial repeat(10) begin
        b[0]=$random;
        b[1]=$random;
        b[2]=$random;
        b[3]=$random;
        #10;
    end
endmodule
