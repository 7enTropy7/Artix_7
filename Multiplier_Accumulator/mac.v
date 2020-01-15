`timescale 1ns / 1ps

module MAC_8(
input [3:0] a,b,
input clk,rst,
output [9:0] y
);
wire [3:0] w1,w2;
wire [7:0] w3,w4;
wire [9:0] w5,w6;
pipo_4bit r1 (a,clk,rst,w1);
pipo_4bit r2 (b,clk,rst,w2);
pipo_8bit r3 (w3,clk,rst,w4);
pipo_10bit r4 (w5,clk,rst,w6);
assign w3=w1*w2;
assign w5=w4+w6;
assign y = w6;
endmodule


module pipo_4bit(
input[3:0] din,
input clk,rst,
output reg [3:0] q);
always @ (posedge clk or negedge rst)
if (!rst)
q <= 4'b0000;
else
q <= din;
endmodule


module pipo_8bit(
input[7:0] din,
input clk,rst,
output reg [7:0] q);
always @ (posedge clk or negedge rst)
if (!rst)
q <= 8'b00000000;
else
q <= din;
endmodule


module pipo_10bit(
input[9:0] din,
input clk,rst,
output reg [9:0] q);
always @ (posedge clk or negedge rst)
if (!rst)
q <= 10'b0000000000;
else
q <= din;
endmodule
