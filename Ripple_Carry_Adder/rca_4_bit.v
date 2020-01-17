`timescale 1ns / 1ps

module rca_4_bit(input [3:0]a,b,input cin, output [4:0]s);
    wire w1,w2,w3;
    fa_df fa1(a[0],b[0],cin,s[0],w1);
    fa_df fa2(a[1],b[1],w1,s[1],w2);
    fa_df fa3(a[2],b[2],w2,s[2],w3);
    fa_df fa4(a[3],b[3],w3,s[3],s[4]);
endmodule
