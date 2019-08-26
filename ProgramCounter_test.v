`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:02:15 08/08/2018
// Design Name:   ProgramCounter
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/ProgramCounter_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ProgramCounter
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ProgramCounter_test;

	// Inputs
	reg EN;
	reg clock;
	reg [7:0] PCNext;

	// Outputs
	wire [7:0] PC;

	// CLOCK
	parameter PERIOD = 100;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end 

	// Instantiate the Unit Under Test (UUT)
	ProgramCounter uut (
		.EN(EN), 
		.clock(clock), 
		.PCNext(PCNext), 
		.PC(PC)
	);

	initial begin
		// Initialize Inputs
		EN = 0;
		PCNext = 8'b11111111;
		// Wait 100 ns for global reset to finish
		#100;
		
		EN = 0;
		PCNext = 8'b11111111;
		// Wait 100 ns for global reset to finish
		#100;
		
		EN = 1;
		PCNext = 8'b11111111;
		// Wait 100 ns for global reset to finish
		#100;
		
		EN = 0;
		PCNext = 8'b11111111;
		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule

