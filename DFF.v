`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:31 10/20/2016 
// Design Name: 
// Module Name:    DFF 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module DFF(
    clk,
    d,
    re,
	 q
);
input clk,d,re;
output q;
reg q;
always@(posedge clk)
if(~re)begin
q<=1'b0;
end
else begin
q<=d;
end

endmodule
