`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    18:51:14 08/02/2018 
// Design Name: 
// Module Name:    ALU 
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
module ALU(
    output reg [7:0] ALUResult,
    output reg Zero,
    input [7:0] SrcA,
    input [7:0] SrcB,
    input [2:0] ALUControl,
	 input clock
    );
	
	/*Initial block for default values...*/
	initial
		Zero<=1'b0;
	
	/*The main always block...*/
	always @(*) //Synchronous
	begin
		case (ALUControl) //Case statement for ALUControl
			3'b010 : begin	//Case for add
							ALUResult=SrcA + SrcB;
						end
			3'b110 : begin	//Case for sub
							ALUResult=SrcA - SrcB;
							if(SrcA==SrcB)	//Controlling the Zero flag.
								Zero=1'b1;//High Flag.
							else
								Zero=1'b0;//Low Flag.
						end
			3'b000 : begin	//Case for and
							ALUResult=SrcA & SrcB; //bitwise
						end
			3'b001 : begin	//Case for or
							ALUResult=SrcA | SrcB; //bitwise
						end
			3'b111 : begin	//Case for slt
							if(SrcA<SrcB)
								ALUResult=1'b1;	//ALU High
							else
								ALUResult=1'b0;	//ALU Low
						end
		endcase			
	end

endmodule
