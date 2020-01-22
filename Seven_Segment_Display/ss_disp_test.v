`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2019 18:47:13
// Design Name: 
// Module Name: ss_disp_test
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


module ss_disp_test();
        reg [3:0]bcd;
        wire [6:0]seg;
        integer i;
        ss_disp uut(bcd,seg);
        initial begin
            for(i=0;i<16;i=i+1)
            begin
                bcd=i;
                #10;
            end
         end
endmodule
