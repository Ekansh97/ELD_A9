`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   01:17:25 10/21/2016
// Design Name:   rippleCounter
// Module Name:   C:/Users/Shubhankar/Desktop/Projects/Semester3/Embedded Logic Design/Verilog/rippleCounter/rippleCounter_tb.v
// Project Name:  rippleCounter
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: rippleCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module rippleCounter_tb;

	// Inputs
	reg clk;
	reg t;
	reg re;

	// Outputs
	wire [7:0] q;

	// Instantiate the Unit Under Test (UUT)
	rippleCounter uut (
		.clk(clk), 
		.t(t), 
		.re(re), 
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		t = 1;
		re = 0;
	

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
		always #1 clk=~clk;
		always #20 re = 1;
		initial #5000 $finish;
      
endmodule

