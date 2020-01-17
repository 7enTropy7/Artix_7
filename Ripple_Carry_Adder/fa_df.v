`timescale 1ns / 1ps

module fa_df(input a,b,cin,output sum,carry);
    assign sum = a ^ b ^ cin;
    assign carry = (a & b) | (cin & (a^b));
    
endmodule
