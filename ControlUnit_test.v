`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   18:13:19 08/06/2018
// Design Name:   ControlUnit
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/ControlUnit_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ControlUnit
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ControlUnit_test;

	// Inputs
	reg [5:0] Op;
	reg [5:0] Funct;
	reg clock;

	// Outputs
	wire [3:0] IRWrite;
	wire MemWrite;
	wire IorD;
	wire PCWrite;
	wire Branch;
	wire [1:0] PCSrc;
	wire [2:0] ALUControl;
	wire [1:0] ALUSrcB;
	wire ALUSrcA;
	wire RegWrite;
	wire MemtoReg;
	wire RegDst;
	wire [1:0] ALUOp;
	wire [3:0]state;
	
	// CLOCK
	parameter PERIOD = 100;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end  
	
	// Instantiate the Unit Under Test (UUT)
	ControlUnit uut (
		.Op(Op), 
		.Funct(Funct), 
		.clock(clock), 
		.IRWrite(IRWrite), 
		.MemWrite(MemWrite), 
		.IorD(IorD), 
		.PCWrite(PCWrite), 
		.Branch(Branch), 
		.PCSrc(PCSrc), 
		.ALUControl(ALUControl), 
		.ALUSrcB(ALUSrcB), 
		.ALUSrcA(ALUSrcA), 
		.RegWrite(RegWrite), 
		.MemtoReg(MemtoReg), 
		.RegDst(RegDst), 
		.ALUOp(ALUOp),
		.state(state)
	);

	initial begin
		//for BEQ
		// Initialize Inputs
		Op = 6'b000100;
		Funct = 6'b0;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for lb
		// Initialize Inputs
		Op = 6'b100000;
		Funct = 6'b0;
		// Wait 900 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for sb
		// Initialize Inputs
		Op = 6'b101000;
		Funct = 6'b0;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for j
		// Initialize Inputs
		Op = 6'b000010;
		Funct = 6'b0;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for R-Type: add
		// Initialize Inputs
		Op = 6'b000000;
		Funct = 6'b100000;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for R-Type: sub
		// Initialize Inputs
		Op = 6'b000000;
		Funct = 6'b100010;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for R-Type: and
		// Initialize Inputs
		Op = 6'b000000;
		Funct = 6'b100100;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for R-Type: or
		// Initialize Inputs
		Op = 6'b000000;
		Funct = 6'b100101;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
		//for R-Type: slt
		// Initialize Inputs
		Op = 6'b000000;
		Funct = 6'b101010;
		// Wait 100 ns for global reset to finish
		#900;
		// Initialize Inputs
		Op = 6'bX;
		Funct = 6'bX;
		// Wait 100 ns for global reset to finish
		#100;
		
	end
      
endmodule

