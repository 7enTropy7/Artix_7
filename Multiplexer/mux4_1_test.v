`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 25.07.2019 17:55:33
// Design Name: 
// Module Name: mux4_1_test
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


module mux4_1_test();
reg a,b,c,d,s0,s1;
wire y;
mux4_1 uut(a,b,c,d,s0,s1,y);
initial repeat(10)begin
a=$random;
b=$random;
c=$random;
d=$random;
s0=$random;
s1=$random;
#10;
end
endmodule