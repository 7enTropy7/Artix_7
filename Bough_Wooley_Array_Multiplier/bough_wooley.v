`timescale 1ns / 1ps

module bough_wooley(input signed [3:0]a,signed [3:0]b, output [7:0]p);
    wire [17:1]w;
    supply0 zero;
    supply1 one;
    assign p[0] = a[0]&b[0];
    wire q;
    fa_df fa1(a[0]&b[1],a[1]&b[0],zero,p[1],w[1]);
    fa_df fa2(a[2]&b[0],a[1]&b[1],zero,w[2],w[3]);
    fa_df fa3((~(a[3]&b[0])),a[2]&b[1],zero,w[4],w[5]);
    
    fa_df fa4(w[2],a[0]&b[2],w[1],p[2],w[6]);
    fa_df fa5(w[4],a[1]&b[2],w[3],w[7],w[8]);
    fa_df fa6((~(a[3]&b[1])),a[2]&b[2],w[5],w[9],w[10]);
    
    fa_df fa7(w[7],(~(a[0]&b[3])),w[6],p[3],w[11]);
    fa_df fa8(w[9],(~(a[1]&b[3])),w[8],w[12],w[13]);
    fa_df fa9((~(a[3]&b[2])),(~(a[2]&b[3])),w[10],w[14],w[15]);
    
    fa_df fa10(w[12],w[11],one,p[4],w[16]);
    fa_df fa11(w[14],w[13],w[16],p[5],w[17]);
    fa_df fa12(a[3]&b[3],w[15],w[17],p[6],q);
    assign p[7] = ~q;
endmodule

module fa_df(input a,b,cin,output sum,cout);
    assign sum = a^b^cin;
    assign cout = (a&b)|(cin&(a^b));
endmodule