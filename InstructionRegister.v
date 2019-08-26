`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:59:25 08/07/2018 
// Design Name: 
// Module Name:    InstructionRegister 
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
module InstructionRegister(
    input [3:0] EN,	//Here the EN is the address to point where the 8 bit instruction is to be written. IRWrite from CU will go here.
    input clock,
    input [7:0] byteInstruction,
    output reg [31:0] Instr
    );
	 /*For EN
	 if EN=0001 then the Least Significant 8 bits of the intruction will be written to Instr[7:0].
	 if EN=1000 then the Most Significant 8 bits of the intruction will be written to Instr[31:24].
	 Actually this register is sort of like a 4 byte memory.*/
	 always @(*)	//Main always block.
	 begin
		//Putting a case for EN.
		case (EN)
			4'b0001  : 	begin
							Instr[7:0]=byteInstruction;
							end
			4'b0010  : 	begin
							Instr[15:8]=byteInstruction;
							end
			4'b0100  : 	begin
							Instr[23:16]=byteInstruction;
							end
			4'b1000  : 	begin
							Instr[31:24]=byteInstruction;
							end
		endcase
	 end
endmodule
