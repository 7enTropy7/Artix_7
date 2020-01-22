`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 27.08.2019 18:06:38
// Design Name: 
// Module Name: ss_disp
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


module ss_disp(bcd,seg);
    input [3:0]bcd;
    output [6:0]seg;
    reg [6:0]seg;
    always @(bcd)
    begin
        case(bcd)
            0:seg=7'b0000001;
            1:seg=7'b1001111;
            2:seg=7'b0010010;
            3:seg=7'b0000110;
            4:seg=7'b1001100;
            5:seg=7'b0100100;
            6:seg=7'b0100000;
            7:seg=7'b0001111;
            8:seg=7'b0000000;
            9:seg=7'b0000100;
            default:seg=7'b1111111;
        endcase
    end
endmodule
