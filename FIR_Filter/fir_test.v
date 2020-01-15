`timescale 1ns / 1ps

module fir_test;
reg [3:0] x;
reg clk;
reg rst;
wire [9:0] q;

fir uut (
.x(x),
.clk(clk),
.rst(rst),
.q(q)
);
initial begin
    x=0;
    clk = 1'b0;
    rst = 1'b0;
    #20
    rst=1'b1;
    x=4'b0001;
    #20
    rst=1'b1;
    x=4'b0010;
    #20
    rst=1'b1;
    x=4'b0011;
    #20
    rst=1'b1;
    x=4'b0100;
    
    #20
    rst=1'b1;
    x=4'b0000;
end
always #10 clk=~clk;
endmodule