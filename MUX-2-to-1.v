`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:42:20 08/08/2018 
// Design Name: 
// Module Name:    MUX-2-to-1 
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
module MUX_2_to_1(
    input [7:0] input1,
    input [7:0] input2,
    input select,
    output [7:0] outputValue
    );
	
	assign <outputValue> = select ? input2 : input1;

endmodule
