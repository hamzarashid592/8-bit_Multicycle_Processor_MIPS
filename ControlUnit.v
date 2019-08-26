`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:29:56 08/05/2018 
// Design Name: 
// Module Name:    ControlUnit 
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
module ControlUnit(
    input [5:0] Op,
    input [5:0] Funct,
    input clock,
	 input branchDelay,	/*This is just to check we are to take a branch or not.
								If this will be high, then a blank clock cycle will be inserted after state 11.
								A black clock cycle will be like a normal clock cycle except that it won't increment the state.*/
    output reg [3:0] IRWrite,
    output reg MemWrite,
    output reg IorD,
    output reg PCWrite,
    output reg Branch,
    output reg [1:0] PCSrc,
    output reg [2:0] ALUControl,
    output reg [1:0] ALUSrcB,
    output reg ALUSrcA,
    output reg RegWrite,
	 output reg MemtoReg,
	 output reg RegDst,
	 output reg [1:0]ALUOp, //Though I am sending this ALUOp here, but it is not needed here.
	 output reg [3:0]state,	//To keep track of the state of the FSM. This is not needed to be shown as output.
	 /*Making some new output signals, NOT in the book..*/
	 output reg ALUOut_reg,	//If this will be high,then value from ALU will be stored here.
	 output reg ALUSrcA_reg,
	 output reg ALUSrcB_reg,
	 output reg MemData_reg
    );
	 	
	 
	 
	 initial
	 begin
		state=4'b0;
		ALUSrcA_reg=1;
		ALUSrcB_reg=1;
		ALUOut_reg=1;
		MemData_reg=0;
	 end
	 
	 always@(posedge clock) //Main always block.
	 begin
		case (state)	//Adjusting the control singals wrt the state.	
			4'b0000: begin				//State 0
							ALUSrcA<=0;
							IorD<=0;
							IRWrite<=4'b0001;	//Means that the LSB of the Instruction Register is to be filled.
							ALUSrcB<=2'b01;
							ALUOp<=2'b00;
							ALUControl<=3'b010;
							PCWrite<=1;
							PCSrc<=2'b00;
							state<=4'b0001; //Incrementing the state.
							/*The next two assignments are for safety purposes. I am not sure about them.*/
							RegWrite<=0;
							MemWrite<=0;
							ALUOut_reg<=1;		//Retaining back to 1 from zero(done in state 11).
							Branch<=0;		//Retaining back to 0 from one(done in state 11).
						end
			
			4'b0001: begin			//State 1
							ALUSrcA<=0;
							IorD<=0;
							IRWrite<=4'b0010;
							ALUSrcB<=2'b01;
							ALUOp<=2'b00;
							ALUControl<=3'b010;
							PCWrite<=1;
							PCSrc<=2'b00;
							state<=4'b0010; //Incrementing the state.
						end
			
			4'b0010: begin			//State 2
							ALUSrcA<=0;
							IorD<=0;
							IRWrite<=4'b0100;
							ALUSrcB<=2'b01;
							ALUOp<=2'b00;
							ALUControl<=3'b010;
							PCWrite<=1;
							PCSrc<=2'b00;
							state<=4'b0011; //Incrementing the state.
						end
			
			4'b0011: begin			//State 3
							ALUSrcA<=0;
							IorD<=0;
							IRWrite<=4'b1000;	//ie the MSB of the Instruction register is to be filled.
							ALUSrcB<=2'b01;
							ALUOp<=2'b00;
							ALUControl<=3'b010;
							PCWrite<=1;
							PCSrc<=2'b00;
							state<=4'b0100; //Incrementing the state.
						end
			
			4'b0100: begin			//State 4: Instruction is decoded here and the contents of instruction register are fetched.
							ALUSrcA<=0;
							ALUSrcB<=2'b11;
							ALUOp<=2'b00;
							IRWrite<=4'b0000;	//For protection of the instruction register.
							ALUControl<=3'b010;	//to tell the ALU what to do...
							PCWrite<=0;		//*****************************************************As we are not writing to PC now.
							/*Now from here, the next state is determined by the opcode as it is fully 
							available now. Hence op states start from here.*/
							if(Op==6'b100000 || Op==6'b101000)	//If the instruction is either an lb or sb
								state<=4'b0101;	//Go to state 5
							else if(Op==6'b000000)					//If the instruction is an R type.
								state<=4'b1001;	//Go to state 9
							else if(Op==6'b000100)					//Branch instruction.
								state<=4'b1011;	//Go to state 11
							else if(Op==6'b000010)					//Jump Instruction.
								state<=4'b1100;	//Go to state 12
							else											//Ambiguous value
								state<=4'b0000;	//Reset the system.
						end
			
			4'b0101: begin			//State 5: Branching between lb and sb.
							ALUSrcA<=1;
							ALUSrcB<=2'b10;
							ALUOp<=2'b00;
							ALUControl<=3'b010; //to add.
							/*Now we'll branch between lb and sb.*/
							if(Op==6'b100000)	//If instruction is an lb.
								state<=4'b0110;	//Going to state 6.
							else if(Op==6'b101000)	//If instruction is an sb.
								state<=4'b1000;	//Going to state 8.
						end
			
			4'b0110: begin			//State 6
							IorD<=1;
							MemData_reg<=1;	//So that data can be written to this register.
							state<=4'b0111;
						end
			
			4'b0111: begin			//State 7: The last state in case of lb.
							RegDst<=0;
							RegWrite<=1;
							MemData_reg<=0;	//Retaining back to 0 from one(done in state 6).
							MemtoReg<=1;
							state<=4'b0000;	//Resetting the system.
						end
			
			4'b1000: begin			//State 8: Last state in case of sb.
							MemWrite<=1;
							IorD<=1;
							state<=4'b0000;	//Resetting the system.
						end
			
			4'b1001: begin			//State 9: The execution state in case of R-type.
							ALUSrcA<=1;
							ALUSrcB<=2'b00;
							ALUOp<=2'b10;
							/*Now on the basis of ALUOp and funct I shall be determing the type of operation or 
							the value of the ALUControl.*/
							case (Funct)
								6'b100000: ALUControl<=3'b010;	//add
								6'b100010: ALUControl<=3'b110;	//sub
								6'b100100: ALUControl<=3'b000;	//and
								6'b100101: ALUControl<=3'b001;	//or
								6'b101010: ALUControl<=3'b111;	//slt
								default  : ALUControl<=3'b010;	//By default a control for addition is sent.
							endcase
							state<=4'b1010;
						end
			
			4'b1010: begin			//State 10: Last WB stage in case of R type instructions.
							RegDst<=1;
							RegWrite<=1;
							MemtoReg<=0;
							state<=4'b0000;	//Resetting the system.
						end
			
			4'b1011: begin			//State 11: The beq stage. The only stage of this type.
							ALUSrcA<=1;
							ALUSrcB<=2'b00;
							ALUOp<=2'b01;
							ALUControl<=3'b110;
							Branch<=1'b1;
							PCSrc<=2'b01;
							ALUOut_reg<=0;	//So that the comparison value doesn't overwrite the BTA in this register.
							//if(!branchDelay)	//Adding a blank cycle.//Stay at the current state if the branchDelay is high.
							state<=4'b0000;	//Resetting the system.
						end
			
			4'b1100: begin			//State 12: The jump stage. The only stage of this type.
							PCWrite<=1;
							PCSrc<=2'b10;
							state<=4'b0000;	//Resetting the system.
						end
			
			default: begin
							state<=4'b0000;	//Resetting the system.
						end
		endcase
	 end


endmodule
