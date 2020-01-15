`timescale 1ns / 1ps

module fir(
input [3:0] x,
input clk,rst,
output [9:0] q
);
    parameter h0=4'b0001;
    parameter h1=4'b0010;
    parameter h2=4'b0011;
    parameter h3=4'b0100;
wire [3:0]w0,w1,w2,w3;
wire [7:0]w4,w5,w6,w7;
wire [9:0]w8,w9;
wire clk1;

clock_divider c1(clk,clk1);
pipo d1(x,clk1,rst,w0);
pipo d2(w0,clk1,rst,w1);
pipo d3(w1,clk1,rst,w2);
pipo d4(w2,clk1,rst,w3);
assign w4=h0*w0;
assign w5=h1*w1;
assign w6=h2*w2;
assign w7=h3*w3;
assign w8=w4+w5;
assign w9=w6+w8;
assign q=w9+w7;
endmodule

module clock_divider(input clk,output reg div_clk=0);
localparam div_value=49999999;
integer counter_value=0;
always@(posedge clk)
begin
if(counter_value==div_value)
counter_value<=0;
else
counter_value<=counter_value+1;
end


always@(posedge clk)
begin
if(counter_value==div_value)
div_clk<=~div_clk;
else
div_clk<=div_clk;
end
endmodule

module pipo(
input[3:0] din,
input clk,rst,
output reg [3:0] q);
always @ (posedge clk or negedge rst)
    if (!rst)
    q <= 4'b0000;
    else
    q <= din;
endmodule
