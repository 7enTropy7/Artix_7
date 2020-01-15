`timescale 1ns / 1ps

module MAC_test;
// Inputs
reg [3:0] a;
reg [3:0] b;
reg clk;
reg rst;
// Outputs
wire [9:0] y;
// Instantiate the Unit Under Test (UUT)
MAC_8 uut (
.a(a),
.b(b),
.clk(clk),
.rst(rst),
.y(y)
);

initial begin
// Initialize Inputs
a = 4'b0000;
b = 4'b0000;
clk = 1'b0;
rst = 1'b0;
// Wait 100 ns for global reset to finish
#100;
a=4'b0010;
b=4'b0101;
rst=1'b1;
end
always 
#50 clk=~clk;
endmodule