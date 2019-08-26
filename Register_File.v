`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: NED
// Engineer: Hamza Rashid
// 
// Create Date:    18:50:45 08/01/2018 
// Design Name: 
// Module Name:    Register_File 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: This is to implement the register file found in the MIPS processor.
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////

module Register_File(
    input [4:0] Rs,
    input [4:0] Rt,
    input [4:0] Rd,
    input [7:0] Wd,
    input writeDataSignal, //WE
    input clock,
	 output [7:0] RD1,
    output [7:0] RD2
    );
	/*Registers to store the data coming from the rf.*/
	reg [7:0] regData1;
	reg [7:0] regData2;
	/*Making the main rf variable which will be a 32*8bit memory*/
	reg [7:0] rf[31:0];
	/*Giving the 0th slot of rf the default value.*/
	initial
		rf[0]=8'b00000; //The $0 register.
	/*The main always block in which data shall either be written or read.*/
	always @ (*)
	begin
		if(writeDataSignal)/*When data is to be written*/
		begin
			if (Rd!=0) /*Write new value only when destination isn't 0 as it is fixed for the $0 register*/
				rf[Rd]=Wd;
		end
		else /*When data is to be read from both channels or a single one.*/
		begin
			regData1=rf[Rs];
			regData2=rf[Rt];
		end
	end
	/*Output the read data.*/
	assign RD1=regData1;
	assign RD2=regData2;
endmodule