`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:54:28 08/02/2018
// Design Name:   ALU
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/ALU_Test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module ALU_Test;

	// Inputs
	reg [7:0] SrcA;
	reg [7:0] SrcB;
	reg [2:0] ALUControl;
	reg clock;

	// Outputs
	wire [7:0] ALUResult;
	wire Zero;
	
	// CLOCK
	parameter PERIOD = 100;

   always begin
      clock = 1'b0;
      #(PERIOD/2) clock = 1'b1;
      #(PERIOD/2);
   end  

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.ALUResult(ALUResult), 
		.Zero(Zero), 
		.SrcA(SrcA), 
		.SrcB(SrcB), 
		.ALUControl(ALUControl), 
		.clock(clock)
	);

	initial begin
		/************************Checking the add functionality************************/
		//Iteration Number 1
		//Initialize Inputs
		SrcA = 193;
		SrcB = 25;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 2
		//Initialize Inputs
		SrcA = 118;
		SrcB = 193;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 3
		//Initialize Inputs
		SrcA = 117;
		SrcB = 204;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 4
		//Initialize Inputs
		SrcA = 150;
		SrcB = 5;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 5
		//Initialize Inputs
		SrcA = 48;
		SrcB = 103;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 6
		//Initialize Inputs
		SrcA = 248;
		SrcB = 143;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 7
		//Initialize Inputs
		SrcA = 252;
		SrcB = 120;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 8
		//Initialize Inputs
		SrcA = 205;
		SrcB = 37;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 9
		//Initialize Inputs
		SrcA = 30;
		SrcB = 31;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 10
		//Initialize Inputs
		SrcA = 92;
		SrcB = 0;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 11
		//Initialize Inputs
		SrcA = 26;
		SrcB = 118;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 12
		//Initialize Inputs
		SrcA = 204;
		SrcB = 92;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 13
		//Initialize Inputs
		SrcA = 57;
		SrcB = 78;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 14
		//Initialize Inputs
		SrcA = 85;
		SrcB = 173;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 15
		//Initialize Inputs
		SrcA = 237;
		SrcB = 72;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 16
		//Initialize Inputs
		SrcA = 193;
		SrcB = 2;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 17
		//Initialize Inputs
		SrcA = 29;
		SrcB = 38;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 18
		//Initialize Inputs
		SrcA = 32;
		SrcB = 7;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 19
		//Initialize Inputs
		SrcA = 66;
		SrcB = 234;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 20
		//Initialize Inputs
		SrcA = 104;
		SrcB = 145;
		ALUControl = 3'b010;
		// Wait 100 ns for global reset to finish
		#100;
		
		//Waiting
		SrcA = 1'bx;
		SrcB = 1'bx;
		ALUControl = 1'bx;
		// Wait 100 ns for global reset to finish
		#100;

		/***************************Checking the subtraction functionality***********************/
		//Iteration Number 1
		//Initialize Inputs
		SrcA = 138;
		SrcB = 108;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 2
		//Initialize Inputs
		SrcA = 170;
		SrcB = 3;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 3
		//Initialize Inputs
		SrcA = 117;
		SrcB = 165;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 4
		//Initialize Inputs
		SrcA = 169;
		SrcB = 12;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 5
		//Initialize Inputs
		SrcA = 181;
		SrcB = 181;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 6
		//Initialize Inputs
		SrcA = 228;
		SrcB = 95;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 7
		//Initialize Inputs
		SrcA = 7;
		SrcB = 19;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 8
		//Initialize Inputs
		SrcA = 96;
		SrcB = 126;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 9
		//Initialize Inputs
		SrcA = 107;
		SrcB = 35;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 10
		//Initialize Inputs
		SrcA = 15;
		SrcB = 144;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 11
		//Initialize Inputs
		SrcA = 118;
		SrcB = 222;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 12
		//Initialize Inputs
		SrcA = 55;
		SrcB = 140;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 13
		//Initialize Inputs
		SrcA = 93;
		SrcB = 226;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 14
		//Initialize Inputs
		SrcA = 228;
		SrcB = 65;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 15
		//Initialize Inputs
		SrcA = 95;
		SrcB = 54;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 16
		//Initialize Inputs
		SrcA = 234;
		SrcB = 105;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 17
		//Initialize Inputs
		SrcA = 99;
		SrcB = 229;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 18
		//Initialize Inputs
		SrcA = 253;
		SrcB = 212;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 19
		//Initialize Inputs
		SrcA = 0;
		SrcB = 147;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 20
		//Initialize Inputs
		SrcA = 94;
		SrcB = 182;
		ALUControl = 3'b110;
		// Wait 100 ns for global reset to finish
		#100;
		
		//Waiting
		SrcA = 1'bx;
		SrcB = 1'bx;
		ALUControl = 1'bx;
		// Wait 100 ns for global reset to finish
		#100;
		
		/***************************Checking the AND functionality***********************/
		//Iteration Number 1
		//Initialize Inputs
		SrcA = 18;
		SrcB = 70;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 2
		//Initialize Inputs
		SrcA = 182;
		SrcB = 49;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 3
		//Initialize Inputs
		SrcA = 120;
		SrcB = 32;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 4
		//Initialize Inputs
		SrcA = 227;
		SrcB = 115;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 5
		//Initialize Inputs
		SrcA = 130;
		SrcB = 115;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 6
		//Initialize Inputs
		SrcA = 217;
		SrcB = 119;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 7
		//Initialize Inputs
		SrcA = 255;
		SrcB = 104;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 8
		//Initialize Inputs
		SrcA = 107;
		SrcB = 106;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 9
		//Initialize Inputs
		SrcA = 46;
		SrcB = 137;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 10
		//Initialize Inputs
		SrcA = 111;
		SrcB = 190;
		ALUControl = 3'b000;
		// Wait 100 ns for global reset to finish
		#100;
		
		//Waiting
		SrcA = 1'bx;
		SrcB = 1'bx;
		ALUControl = 1'bx;
		// Wait 100 ns for global reset to finish
		#100;
		
		/***************************Checking the OR functionality***********************/
		//Iteration Number 1
		//Initialize Inputs
		SrcA = 143;
		SrcB = 48;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 2
		//Initialize Inputs
		SrcA = 169;
		SrcB = 205;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 3
		//Initialize Inputs
		SrcA = 14;
		SrcB = 210;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 4
		//Initialize Inputs
		SrcA = 123;
		SrcB = 135;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 5
		//Initialize Inputs
		SrcA = 252;
		SrcB = 253;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 6
		//Initialize Inputs
		SrcA = 107;
		SrcB = 189;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 7
		//Initialize Inputs
		SrcA = 125;
		SrcB = 22;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 8
		//Initialize Inputs
		SrcA = 112;
		SrcB = 187;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 9
		//Initialize Inputs
		SrcA = 101;
		SrcB = 255;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 10
		//Initialize Inputs
		SrcA = 184;
		SrcB = 137;
		ALUControl = 3'b001;
		// Wait 100 ns for global reset to finish
		#100;
		
		//Waiting
		SrcA = 1'bx;
		SrcB = 1'bx;
		ALUControl = 1'bx;
		// Wait 100 ns for global reset to finish
		#100;	
		
		/***************************Checking the SLT functionality***********************/
		//Iteration Number 1
		//Initialize Inputs
		SrcA = 179;
		SrcB = 45;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 2
		//Initialize Inputs
		SrcA = 58;
		SrcB = 151;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 3
		//Initialize Inputs
		SrcA = 89;
		SrcB = 93;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 4
		//Initialize Inputs
		SrcA = 101;
		SrcB = 120;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 5
		//Initialize Inputs
		SrcA = 112;
		SrcB = 18;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 6
		//Initialize Inputs
		SrcA = 125;
		SrcB = 213;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 7
		//Initialize Inputs
		SrcA = 226;
		SrcB = 19;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 8
		//Initialize Inputs
		SrcA = 246;
		SrcB = 84;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 9
		//Initialize Inputs
		SrcA = 36;
		SrcB = 148;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;

		//Iteration Number 10
		//Initialize Inputs
		SrcA = 2;
		SrcB = 75;
		ALUControl = 3'b111;
		// Wait 100 ns for global reset to finish
		#100;
		
		//Waiting
		SrcA = 1'bx;
		SrcB = 1'bx;
		ALUControl = 1'bx;
		// Wait 100 ns for global reset to finish
		#100;	
       		

	end
      
endmodule

