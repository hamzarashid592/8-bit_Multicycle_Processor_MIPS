`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   16:37:53 08/07/2018
// Design Name:   Memory
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/Memory_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Memory
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Memory_test;

	// Inputs
	reg [7:0] A;
	reg [7:0] WD;
	reg clock;
	reg WE;

	// Outputs
	wire [7:0] RD;

	// CLOCK
	parameter PERIOD = 100;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end  

	// Instantiate the Unit Under Test (UUT)
	Memory uut (
		.A(A), 
		.WD(WD), 
		.clock(clock), 
		.WE(WE), 
		.RD(RD)
	);

	initial begin
		// Initialize Inputs
		A = 0;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 64;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 63;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 68;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 72;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 100;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 101;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 102;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		A = 103;
		WD = 0;
		WE = 0;
		// Wait 100 ns for global reset to finish
		#100;
        
		

	end
      
endmodule

