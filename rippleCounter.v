`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:28:04 10/21/2016 
// Design Name: 
// Module Name:    rippleCounter 
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
module rippleCounter(clk,
	t,
	re,
   q);
input clk, t, re;
output [7:0]q;

TFF_D rc1(clk, t, re, q[0]);
TFF_D rc2(q[0], t, re, q[1]);
TFF_D rc3(q[1], t, re, q[2]);
TFF_D rc4(q[2], t, re, q[3]);
TFF_D rc5(q[3], t, re, q[4]);
TFF_D rc6(q[4], t, re, q[5]);
TFF_D rc7(q[5], t, re, q[6]);
TFF_D rc8(q[6], t, re, q[7]);

endmodule
