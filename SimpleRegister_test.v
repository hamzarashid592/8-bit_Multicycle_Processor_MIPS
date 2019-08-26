`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:08:43 08/08/2018
// Design Name:   SimpleRegister
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/SimpleRegister_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SimpleRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module SimpleRegister_test;

	// Inputs
	reg clock;
	reg [7:0] inputData;

	// Outputs
	wire [7:0] outputData;

	// CLOCK
	parameter PERIOD = 100;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end 

	// Instantiate the Unit Under Test (UUT)
	SimpleRegister uut (
		.clock(clock), 
		.inputData(inputData), 
		.outputData(outputData)
	);

	initial begin
		// Initialize Inputs
		inputData = 0;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		inputData = 8'b10101111;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		inputData = 8'b10101100;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		inputData = 8'b11110000;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		inputData = 8'b11111111;
		// Wait 100 ns for global reset to finish
		#100;
		

	end
      
endmodule

