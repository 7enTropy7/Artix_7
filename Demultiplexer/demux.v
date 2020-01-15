`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2019 17:44:23
// Design Name: 
// Module Name: demux
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


module demux(d,sel,z);
input d;
input [1:0]sel;
output [3:0]z;
reg [3:0]z;
always @(d or sel)
begin
if(sel==2'b00)
begin
    z[0]=d;
    z[1]=0;
    z[2]=0;
    z[3]=0;
end
else if(sel==2'b01)
begin
    z[1]=d;
    z[0]=0;
    z[2]=0;
    z[3]=0;
end
else if(sel==2'b10)
begin
    z[2]=d;
    z[0]=0;
    z[1]=0;
    z[3]=0;
end
else
begin
    z[3]=d;
    z[0]=0;
    z[1]=0;
    z[2]=0;
end
end
endmodule
