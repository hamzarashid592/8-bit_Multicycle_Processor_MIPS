`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:53:24 08/07/2018 
// Design Name: 
// Module Name:    ProgramCounter 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module ProgramCounter(
    input EN,
    input clock,
    input [7:0] PCNext,
    output reg [7:0] PC
    );
	 initial
			PC=100;
		
	 always @(posedge clock)	//Main always block.
	 begin
	//#1;
		if(EN)	//If EN is enabled, then output the PCNext value.
			PC<=PCNext;
	 end
endmodule
