`timescale 1ns / 1ps
`include "ControlUnit.v"
`include "ALU.v"
`include "InstructionRegister.v"
`include "MUX_2x1.v"
`include "MUX_3x1.v"
`include "MUX_4x1.v"
`include "Memory.v"
`include "ProgramCounter.v"
`include "Register_File.v"
`include "SimpleRegister.v"
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    09:09:13 08/08/2018 
// Design Name: 
// Module Name:    Datapath 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: This is the main datapath. By definition it is not to take any input.
//
//////////////////////////////////////////////////////////////////////////////////
module Datapath(
	input clock
    );
	 
	 /******************************************Working for Control Unit******************************************/
	 /*Now to make a Control Unit I shall be first making some wires to be fed into it.*/
	wire [5:0]Op;
	wire [5:0]Funct;
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
	wire [1:0]ALUOp;
	wire [3:0]state;//Uptil this will be fed to the CU.
	wire [7:0] MemData;
	wire [7:0] PC;
	wire [7:0]ALUResult;
	/*Declaring some more new wires...*/
	wire ALUOut_reg;	
	wire ALUSrcA_reg;
	wire ALUSrcB_reg;
	wire MemData_reg;
	wire branchDelay;
	
	/*Assigning value of Op and Funct.*/
	assign Op=Instr[31:26];
	assign Funct=Instr[5:0];
	
	//Now we shalll feed these wires to the Control Unit.
	ControlUnit Control_Unit(	//Intantiating a module of control unit
	Op,
	Funct,
	clock,
	branchDelay,
	IRWrite,
	MemWrite,
	IorD,
	PCWrite,
	Branch,
	PCSrc,
	ALUControl,
	ALUSrcB,
	ALUSrcA,
	RegWrite,
	MemtoReg,
	RegDst,
	ALUOp,
	state,
	ALUOut_reg,
	ALUSrcA_reg,
	ALUSrcB_reg,
	MemData_reg
	);
	/*Now I have my control singal stored in the above wires.*/
	
	/*-----------------------------------------------------Working for Program Counter-----------------------------------------------------*/
	/*Making wires for the program counter*/
	wire PCEn;
	wire [7:0] PCNext;
	
	
	ProgramCounter Program_Counter(	//Instantiating a module
		PCEn,
		clock,
		PCNext,
		PC
	);
	
	/*-----------------------------------------------------Working for IorD MUX-----------------------------------------------------*/
	
	wire [7:0] ALUOut;	//new
	wire [7:0] Adr;		//new	
	
	MUX_2x1 IorD_MUX(
		PC,
		ALUOut,
		IorD,
		Adr
	);
	
	/*-----------------------------------------------------Working for Memory-----------------------------------------------------*/
	
	wire [7:0] WriteData;
	
	
	Memory IDMemory(
		Adr,
		WriteData,  //new
		clock,
		MemWrite,
		MemData //new
	);
	
	/*-----------------------------------------------------Working for Instruction Register-----------------------------------------------------*/
	
	wire [31:0] Instr;
	
	InstructionRegister Instruction_Register(
		IRWrite,
		clock,
		MemData,
		Instr	//new
	);
	
	/*-----------------------------------------------------Working for Data Register-----------------------------------------------------*/
	
	wire [7:0] Data;	//new
	
	SimpleRegister Data_Register(
		MemData_reg,
		MemData,
		Data	//new
	);
	
	/*-----------------------------------------------------Working for RegDst MUX-----------------------------------------------------*/
	
	wire [7:0] A3;	//I should keep in mind that the Least Significant 5 bits of this should be fed to RF.
	
	MUX_2x1 RegDst_MUX(
		{3'b000,Instr[20:16]},	//Since our MUX takes 8bit inputs, I have made the most significant 3 bits 0 in case of 5bit input.
		{3'b000,Instr[15:11]},
		RegDst,
		A3	//new
	);
	
	/*-----------------------------------------------------Working for MemtoReg MUX-----------------------------------------------------*/
	
	wire [7:0] WD3;
	
	MUX_2x1 MemtoReg_MUX(
		ALUOut,
		Data,
		MemtoReg,
		WD3	//new
	);
	
	/*-----------------------------------------------------Working for Register File-----------------------------------------------------*/
	
	wire [7:0] RD1;
	wire [7:0] RD2;
	
	Register_File RegisterFile(
		Instr[25:21],
		Instr[20:16],
		A3[4:0],	//As the rest 3 are 0.
		WD3,
		RegWrite,
		clock,
		RD1,
		RD2
	);
	
	/*-----------------------------------------------------Working for ALU Output Registers-----------------------------------------------------*/
	
	wire [7:0] A;
	
	SimpleRegister Data1(	//Corresponding to RD1
		ALUSrcA_reg,
		RD1,
		A
	);
	
	SimpleRegister Data2(	//Corresponding to RD2
		ALUSrcB_reg,
		RD2,
		WriteData
	);
	
	/*-----------------------------------------------------Working for ALUSrcA MUX-----------------------------------------------------*/
	
	wire [7:0] SrcA;
	
	MUX_2x1 ALUSrcA_MUX(
		PC,
		A,
		ALUSrcA,
		SrcA
	);
	
	/*-----------------------------------------------------Working for ALUSrcB MUX-----------------------------------------------------*/
	
	wire [7:0] SrcB;
	wire [7:0] ImmX4;
	assign ImmX4=Instr[7:0]<<2;
	
	MUX_4x1 ALUSrcB_MUX(
		WriteData,
		8'b00000001,
		Instr[7:0],
		ImmX4,
		ALUSrcB,
		SrcB
	);
	
	/*-----------------------------------------------------Working for ALU-----------------------------------------------------*/
	
	wire Zero;
	
	
	ALU ArithmeticLogicUnit(
		ALUResult,
		Zero,
		SrcA,
		SrcB,
		ALUControl,
		clock
	);
	
	/*-----------------------------------------------------Working for ALUOut Register-----------------------------------------------------*/
	
	SimpleRegister ALUOutRegister(
		ALUOut_reg,
		ALUResult,
		ALUOut
	);
	
	/*-----------------------------------------------------Working for PCSrc MUX-----------------------------------------------------*/
	
	MUX_3x1 PCSrc_MUX(
		ALUResult,
		ALUOut,
		ImmX4,
		PCSrc,
		PCNext
	);
	
	/*-----------------------------------------------------Working for PCEn logic-----------------------------------------------------*/
	
	
	and and1(branchDelay,Branch,Zero);
	or or1(PCEn, PCWrite,branchDelay);
		
	
endmodule
