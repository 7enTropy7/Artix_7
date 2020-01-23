`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 05.09.2019 17:41:51
// Design Name: 
// Module Name: shift_reg
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


module shift_reg(R,L,w,clk,Q);
input [3:0]R;
input L,w,clk;
output [3:0]Q;
reg [3:0]Q;
always @(posedge clk)
if(L)
Q<=R;
else
begin
Q[0]<=Q[1];
Q[1]<=Q[2];
Q[2]<=Q[3];
Q[3]<=w;
end
endmodule