`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:23:02 08/01/2018
// Design Name:   Register_File
// Module Name:   E:/NED/VLSI LAB WORKS/Memory/Register_File_test.v
// Project Name:  Memory
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Register_File
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module Register_File_test;

	// Inputs
	reg [4:0] Rs;
	reg [4:0] Rt;
	reg [4:0] Rd;
	reg [7:0] Wd;
	reg writeDataSignal;
	reg clock;

	// Outputs
	wire [7:0] RD1;
	wire [7:0] RD2;
	// CLOCK
	parameter PERIOD = 100;

   always begin
      clock = 1'b0;
      #(PERIOD/2) clock = 1'b1;
      #(PERIOD/2);
   end  

	// Instantiate the Unit Under Test (UUT)
	Register_File uut (
		.Rs(Rs), 
		.Rt(Rt), 
		.Rd(Rd), 
		.Wd(Wd), 
		.RD1(RD1), 
		.RD2(RD2), 
		.writeDataSignal(writeDataSignal), 
		.clock(clock)
	);

	initial begin
				/******************Writing data to the RF***************/
		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 1;
		Wd = 2;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 2;
		Wd = 4;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 3;
		Wd = 6;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 4;
		Wd = 8;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 5;
		Wd = 10;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 6;
		Wd = 12;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 7;
		Wd = 14;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 8;
		Wd = 16;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 9;
		Wd = 18;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 10;
		Wd = 20;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 11;
		Wd = 22;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 12;
		Wd = 24;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 13;
		Wd = 26;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 14;
		Wd = 28;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 15;
		Wd = 30;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 16;
		Wd = 32;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 17;
		Wd = 34;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 18;
		Wd = 36;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 19;
		Wd = 38;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 20;
		Wd = 40;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 21;
		Wd = 42;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 22;
		Wd = 44;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 23;
		Wd = 46;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 24;
		Wd = 48;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 25;
		Wd = 50;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 26;
		Wd = 52;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 27;
		Wd = 54;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 28;
		Wd = 56;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 29;
		Wd = 58;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 30;
		Wd = 60;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 31;
		Wd = 62;
		writeDataSignal = 1;
		// Wait 100 ns for global reset to finish
		#100;

		/**********************Reading from the RF****************/
		//Initialize Inputs
		Rs = 0;
		Rt = 0;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 1;
		Rt = 1;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 2;
		Rt = 2;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 3;
		Rt = 3;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 4;
		Rt = 4;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 5;
		Rt = 5;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 6;
		Rt = 6;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 7;
		Rt = 7;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 8;
		Rt = 8;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 9;
		Rt = 9;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 10;
		Rt = 10;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 11;
		Rt = 11;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 12;
		Rt = 12;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 13;
		Rt = 13;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 14;
		Rt = 14;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 15;
		Rt = 15;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 16;
		Rt = 16;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 17;
		Rt = 17;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 18;
		Rt = 18;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 19;
		Rt = 19;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 20;
		Rt = 20;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 21;
		Rt = 21;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 22;
		Rt = 22;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 23;
		Rt = 23;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 24;
		Rt = 24;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 25;
		Rt = 25;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 26;
		Rt = 26;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 27;
		Rt = 27;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 28;
		Rt = 28;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 29;
		Rt = 29;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 30;
		Rt = 30;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;

		//Initialize Inputs
		Rs = 31;
		Rt = 31;
		Rd = 0;
		Wd = 0;
		writeDataSignal = 0;
		// Wait 100 ns for global reset to finish
		#100;
		

	end
      
endmodule

