`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:46:54 08/08/2018
// Design Name:   Datapath
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/Datapath_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Datapath
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Datapath_test;

	// Inputs
	reg clock;

	

	// CLOCK
	parameter PERIOD = 200;

	always begin
		clock = 1'b0;
		#(PERIOD/2) clock = 1'b1;
		#(PERIOD/2);
	end 

	// Instantiate the Unit Under Test (UUT)
	Datapath uut (
		.clock(clock)
	);

	initial begin

        

	end
      
endmodule

