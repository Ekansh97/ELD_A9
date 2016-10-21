`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:47:21 10/20/2016
// Design Name:   TFF_D
// Module Name:   C:/Users/Shubhankar/Desktop/Projects/Semester3/Embedded Logic Design/Verilog/TFF_D/TFF_D_tb.v
// Project Name:  TFF_D
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: TFF_D
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TFF_D_tb;

	// Inputs
	reg clk;
	reg t;
	reg re;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	TFF_D uut (
		.clk(clk), 
		.t(t), 
		.re(re), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		t = 0;
		re = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
	$monitor ("clk=%b",clk,"t=%b",t,"q=%b",q, "re=%b", re);
	end
      always #5 clk=~clk;
		always #15 t=~t;
		always #20 re=1;
		initial #5000 $finish;
endmodule

