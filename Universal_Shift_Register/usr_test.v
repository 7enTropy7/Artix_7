`timescale 1ns / 1ps

module usr_test();
reg [3:0]in;
reg [1:0]sel;
reg reset;
reg clk;
reg sinr;
reg sinl;
wire [3:0]out;
usr uut(
.in(in),
.out(out),
.sel(sel),
.clk(clk),
.sinr(sinr),
.sinl(sinl),
.reset(reset)
);
initial repeat(10) begin
    clk=1'b1;
    reset=1'b1;
    sinr=1'b1;
    sinl=1'b0;
    sel=2'b00;
    #100;
    reset=1'b1;
    #100;
    in=4'b0101;
    reset=2'b10;
    #100;
    sel=2'b11;
    #100;
    sel=2'b01;
    #100;
    sel=2'b10;
    #100;
    sel=2'b00;
    #100;
    #100;
    in=4'b1010;
    reset=1'b1;
end
endmodule
