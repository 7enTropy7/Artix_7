`timescale 1ns / 1ps

module cla_4_bit(input [3:0]a,b,input cin,output [4:0]s);
    wire [3:0]p,g;
    wire [4:0]c;
    assign p = a^b;
    assign g = a&b;
    assign c[0] = cin;
    assign c[1] = (p[0]&c[0])|g[0];
    assign c[2] = (p[1]&p[0]&c[0])|(p[1]&g[0])|g[1];
    assign c[3] = (p[0]&p[1]&p[2]&c[0])|(p[1]&p[2]&g[0])|(p[2]&g[1])|g[2];
    assign c[4] = (p[0]&p[1]&p[2]&p[3]&c[0])|(p[1]&p[2]&p[3]&g[0])|(p[2]&p[3]&g[1])|(p[3]&g[2])|g[3];
    assign s[0] = p[0]^c[0];
    assign s[1] = p[1]^c[1];
    assign s[2] = p[2]^c[2];
    assign s[3] = p[3]^c[3];
    assign s[4] = c[4];
 endmodule