`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2019 17:57:00
// Design Name: 
// Module Name: demux_test
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module demux_test;
    reg d;
    reg [1:0]sel;
    wire [3:0]z;
    
    demux uut(
        .d(d),
        .sel(sel),
        .z(z)
    );
    initial begin
        d=1;
        sel=0;
        #100;
        sel=1;
        #100;
        sel=2;
        #100;
        sel=3;
        #100;
        d=0;
    end
endmodule
