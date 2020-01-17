`timescale 1ns / 1ps

module fa_df_test();
    reg a,b,cin;
    wire sum,carry;
    fa_df uut(a,b,cin,sum,carry);
    initial repeat (5)begin
    a = $random;
    b = $random;
    cin = $random;
    #10;
    end
endmodule
