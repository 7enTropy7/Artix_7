

`timescale 1ns / 1ps

module fa_df(input a,b,cin,output sum,cout);
    assign sum = a^b^cin;
    assign cout = (a&b)|(cin&(a^b));
endmodule

module ha_df(input a,b,output sum,cout);
    assign sum = a^b;
    assign cout = a&b;
endmodule

module squarer_4_bit(input [3:0]a,output [7:0]p);
    wire [5:1]w;
    assign p[0] = a[0];
    assign p[1] = 1'b0;
    assign p[2] = a[1]&(~a[0]);
    ha_df ha1(a[1]&a[0],a[2]&a[0],p[3],w[1]);
    fa_df fa1(a[3]&a[0],a[2]&(~a[1]),w[1],p[4],w[2]);
    fa_df fa2(a[1]&a[2],a[3]&a[1],w[2],p[5],w[3]);
    ha_df ha2(a[3]&(~a[2]),w[3],p[6],w[4]);
    ha_df ha3(a[3]&a[2],w[4],p[7],w[5]);    
endmodule
