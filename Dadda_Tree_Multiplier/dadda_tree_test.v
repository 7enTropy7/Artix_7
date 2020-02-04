`timescale 1ns / 1ps

module dadda_tree_test();
reg [3:0]a,b;
wire [7:0]p;
reg [7:0]check;
dadda_tree uut(a,b,p);
initial repeat(10) begin
    a = $random;
    b = $random;
    check = a*b;
    #10
    $display($time,"%d * %d = %d(%d)",a,b,p,check);
end
endmodule
