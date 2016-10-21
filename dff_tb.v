`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:00:48 10/19/2016
// Design Name:   DFF
// Module Name:   C:/Users/Shubhankar/Desktop/Projects/Semester3/Embedded Logic Design/Verilog/DFF/dff_tb.v
// Project Name:  DFF
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: DFF
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module dff_tb;

	// Inputs
	reg clk;
	reg d;
	reg re;

	// Outputs
	wire q;

	// Instantiate the Unit Under Test (UUT)
	DFF uut (
		.clk(clk), 
		.d(d), 
		.re(re),
		.q(q)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		d = 0;
		re=0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		$monitor ("clk=%b",clk,"d=%b",d,"q=%b",q, "re=%b", re);
		
	end
		always #5 clk=~clk;
		always #10 d=~d;
		always #20 re=~re;
		initial #50 $finish;
		
      
endmodule

