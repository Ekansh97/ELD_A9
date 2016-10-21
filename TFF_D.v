`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:45:52 10/20/2016 
// Design Name: 
// Module Name:    TFF_D 
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
module TFF_D(clk,
    t,
    re,
	 q);
input clk,t,re;
output q;
DFF tff(clk,t^q,re,q);


endmodule
