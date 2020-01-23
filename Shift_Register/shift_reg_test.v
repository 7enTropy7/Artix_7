`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2019 18:05:27
// Design Name: 
// Module Name: shift_reg_test
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


module shift_reg_test();
reg [3:0]R;
reg L;
reg w;
reg clk;
wire [3:0]Q;
shift_reg uut(R,L,w,clk,Q);
initial repeat(10)begin
clk=$urandom_range(0,1);
L=$urandom_range(0,1);
R=$urandom_range(0,1);
w=$urandom_range(0,1);
#10;
end
endmodule
