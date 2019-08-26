`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:51:17 08/08/2018 
// Design Name: 
// Module Name:    MUX_3x1 
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
module MUX_3x1(
    input [7:0] input1,
    input [7:0] input2,
    input [7:0] input3,
    input [1:0] select,
    output reg [7:0] outputValue
    );
   
	always @(select, input1, input2, input3)
      case (select)
         2'b00: outputValue = input1;
         2'b01: outputValue = input2;
         2'b10: outputValue = input3;
      endcase
		
endmodule
