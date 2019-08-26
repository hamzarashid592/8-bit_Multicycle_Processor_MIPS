`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:05:44 08/08/2018 
// Design Name: 
// Module Name:    SimpleRegister 
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
module SimpleRegister(
    input writeControl,
    input [7:0] inputData,
    output reg[7:0] outputData
    );
	//Simple module for intermediate registers.
	always @(*)
		if(writeControl)	//Means If write control is high write to the register.
		outputData=inputData;
endmodule
