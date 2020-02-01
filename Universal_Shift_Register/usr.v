`timescale 1ns / 1ps

module mux_4_1(out,sel1,sel0,in3,in2,in1,in0);
output reg out;
input in3,in2,in1,in0;
input sel1,sel0;
always@(sel1,sel0,in3,in2,in1,in0)
begin
    if(sel0==0 & sel1==0)
        out=in0;
    else if(sel0==0 & sel1==1)
        out=in1;
    else if(sel0==1 & sel1==0)
        out=in2;
    else if(sel0==1 & sel1==1)
        out=in3;
end
endmodule

module d_flip_flop(q,d,clk,reset);
output reg q;
input d,clk,reset;
always@(posedge clk)
if(reset==1'b1)
    q<=1'b0;
else
    q<=d;
endmodule


module usr(in,out,sel,clk,sinr,sinl,reset);
input [3:0]in;
input [1:0]sel;
wire [3:0]w;
input clk;
input sinr,sinl,reset;
output [3:0]out;
mux_4_1 m1(w[0],sel[1],sel[0],in[0],sinl,out[1],out[0]);
mux_4_1 m2(w[1],sel[1],sel[0],in[1],out[0],out[2],out[1]);
mux_4_1 m3(w[2],sel[1],sel[0],in[2],out[1],out[3],out[2]);
mux_4_1 m4(w[3],sel[1],sel[0],in[3],out[2],sinr,out[3]);

d_flip_flop d1(out[0],w[0],clk,reset);
d_flip_flop d2(out[1],w[1],clk,reset);
d_flip_flop d3(out[2],w[2],clk,reset);
d_flip_flop d4(out[3],w[3],clk,reset);
endmodule
