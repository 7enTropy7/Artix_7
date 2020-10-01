`timescale 1ns / 1ps

module fa_df(input a,b,cin,output cout,sum);
    assign sum=a^b^cin;
    assign cout=(a&b)|(cin&(a^b));
endmodule

module ha_df(input a,b,output cout,sum);
    assign sum=a^b;
    assign cout=(a&b);
endmodule


module wall(input [3:0]a,b,output [7:0]p);
    wire [23:0] w;
    assign p[0] = a[0]&b[0];
    ha_df ha1(a[1]&b[0],a[0]&b[1],w[1],p[1]);
    fa_df fa1(a[2]&b[0],a[1]&b[1],a[0]&b[2],w[3],w[2]);
    fa_df fa2(a[3]&b[0],a[2]&b[1],a[1]&b[2],w[5],w[4]);
    fa_df fa3(a[3]&b[1],a[2]&b[2],a[1]&b[3],w[7],w[6]);
    ha_df ha2(a[3]&b[2],a[2]&b[3],w[9],w[8]);
    ha_df ha3(w[1],w[2],w[10],p[2]);
    fa_df fa4(w[4],a[0]&b[3],w[3],w[12],w[11]);
    ha_df ha4(w[6],w[5],w[14],w[13]);
    ha_df ha5(w[8],w[7],w[16],w[15]);
    ha_df ha6(w[9],a[3]&b[3],w[18],w[17]);
    ha_df ha7(w[11],w[10],w[19],p[3]);
    fa_df fa5(w[13],w[12],w[19],w[20],p[4]);
    fa_df fa6(w[15],w[14],w[20],w[21],p[5]);
    fa_df fa7(w[17],w[16],w[21],w[22],p[6]);
    ha_df ha8(w[18],w[22],w[23],p[7]);    
endmodule