`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:30:19 08/07/2018
// Design Name:   InstructionRegister
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/InstructionRegister_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InstructionRegister
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module InstructionRegister_test;

	// Inputs
	reg [3:0] EN;
	reg clock;
	reg [7:0] byteInstruction;

	// Outputs
	wire [31:0] Instr;

	// CLOCK
	parameter PERIOD = 100;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end 

	// Instantiate the Unit Under Test (UUT)
	InstructionRegister uut (
		.EN(EN), 
		.clock(clock), 
		.byteInstruction(byteInstruction), 
		.Instr(Instr)
	);

	initial begin
		// Initialize Inputs
		EN = 4'b0001;
		byteInstruction = 8'h12;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		EN = 4'b0010;
		byteInstruction = 8'h34;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		EN = 4'b0100;
		byteInstruction = 8'h56;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		EN = 4'b1000;
		byteInstruction = 8'h78;
		// Wait 100 ns for global reset to finish
		#100;
		
		// Initialize Inputs
		EN = 4'b0000;
		byteInstruction = 8'h78;
		// Wait 100 ns for global reset to finish
		#100;
        
		

	end
      
endmodule

