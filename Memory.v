`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    08:45:38 08/07/2018 
// Design Name: 
// Module Name:    Memory 
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
module Memory(
    input [7:0] A,	//Address
    input [7:0] WD,	//Write Data
    input clock,
    input WE,			//Write Enable
    output reg [7:0] RD	//Read Data
    );
	 reg [7:0]mainMemory[255:0];//The main memory array
	 reg [7:0]address;	//To contain the starting address of code section.
	 
	 initial	//This block burn the initial code to be fed to RAM.
	 begin	//Let the code start at address 100 ie given range is 100-255
				//Data is given 0-99.
		address=100;
		/*This is the data initialization from book.*/
		mainMemory[68]=5;
		mainMemory[64]=3;
		mainMemory[72]=12;
		
		/*Writing the code assuming a little endian memory.*/
		 mainMemory[address]=8'h44;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h02;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h80;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h40;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h07;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h80;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h45;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'he3;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h80;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h25;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h20;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'he2;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h24;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h28;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h64;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h20;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h28;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'ha4;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h08;	address=address+1;	//Incrementing the address.	//beq
			 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'ha7;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h10;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h2a;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h30;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h64;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h01;	address=address+1;	//Incrementing the address.	//beq
			 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'hc0;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h10;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h05;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h80;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h2a;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h30;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'he2;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h20;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h38;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'hc5;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h22;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h38;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'he2;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h0f;	address=address+1;	//Incrementing the address.	//J instruction.
			 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
			 mainMemory[address]=8'h08;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h07;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h80;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h47;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h47;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'ha0;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h03;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h05;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h0c;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
		 mainMemory[address]=8'h00;	address=address+1;	//Incrementing the address.
	 end
	 
	 always@(*)	//The main always block
	 begin
		if(WE)	//We'll write whenever WE is enabled.
			mainMemory[A]=WD;
		else		//When WE is 0, we shall read.
			RD=mainMemory[A];
	 end
	 


endmodule
