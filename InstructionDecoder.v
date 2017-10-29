`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Instruction Decoder
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Instruction:  instruction
 
 // [OUTPUTS]
 // Clear:			CLR
 // EnableA:		EN_A
 // EnableB:		EN_B
 // EnableOut:		EN_OUT
 // Select Lines:	S0, S1, S2, S3
 
 ************************************************/ 

 /*----------------------Truth Table---------------------*/
 /*
		Instruction		CLR	EN_A	EN_B	EN_OUT	S0	S1	S2	S3
		-----------------------------------------------------
		0	CLEAR			1		1		1			1		X	X	X	X
		1	MOVE 1		0		1		0			0		X	X	X	X
		2	MOVE 2		0		0		1			0		0	X	X	X
		3	STORE OUT	0		0		1			0		1	X	X	X
		4	ADD			0		0		0			1		X	0	0	0
		5	SHIFT LEFT	0		0		0			1		X	0	0	1
		6	SHIFT RIGHT	0		0		0			1		X	0	1	0
		7	AND			0		0		0			1		X	0	1	1
		8	OR				0		0		0			1		X	1	0	0
		9	XOR			0		0		0			1		X	1	0	1
		10 NAND			0		0		0			1		X	1	1	0
		11	Compare		0		0		0			1		X	1	1	1
		12-15 INVALID	0		0		0			0		X	X	X	X
 */
 
module InstructionDecoder(
	input [3:0] instruction,
	output reg CLR,
	output reg EN_A, EN_B, EN_OUT,
	output reg S0, S1, S2, S3
);

	always @(instruction)
		case(instruction)	
			0: begin
					$display("Instruction: 0 \t Opeartion: CLEAR");
					
					CLR <= 1;
					EN_A <= 1;
					EN_B <= 1;
					EN_OUT <= 1;
				end
			1: begin
					$display("Instruction: 1 \t Opeartion: MOVE1 (Data->RegA)");
					
					CLR <= 0;
					EN_A <= 1;
					EN_B <= 0;
					EN_OUT <= 0;
				end
			2: begin 
					$display("Instruction: 2 \t Opeartion: MOVE2 (Data->RegB)");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 1;
					EN_OUT <= 0;
					
					S0 <= 0;
				end
			3: begin
					$display("Instruction: 3 \t Opeartion: STORE OUT (RegOUT->RegB)");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 1;
					EN_OUT <= 0;
					
					S0 <= 1;
				end
			4: begin
					$display("Instruction: 4 \t Opeartion: [+]");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 0;
					S2 <= 0;
					S3 <= 0;
				end
			5: begin
					$display("Instruction: 5 \t Opeartion: [<<]");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 0;
					S2 <= 0;
					S3 <= 1;
				end
			6: begin
					$display("Instruction: 6 \t Opeartion: [>>]");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 0;
					S2 <= 1;
					S3 <= 0;
				end
			7: begin
					$display("Instruction: 7 \t Opeartion: Bitwise AND");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 0;
					S2 <= 1;
					S3 <= 1;
				end
			8: begin
					$display("Instruction: 8 \t Opeartion: Bitwise OR");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 1;
					S2 <= 0;
					S3 <= 0;
				end
			9: begin
					$display("Instruction: 9 \t Opeartion: Bitwise XOR");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 1;
					S2 <= 0;
					S3 <= 1;
				end
			10: begin
					$display("Instruction: 10 \t Opeartion: Bitwise NAND");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 1;
					S2 <= 1;
					S3 <= 0;
				 end
			11: begin 
					$display("Instruction: 11 \t Opeartion: COMPARE");
					
					CLR <= 0;
					EN_A <= 0;
					EN_B <= 0;
					EN_OUT <= 1;

					S1 <= 1;
					S2 <= 1;
					S3 <= 1;
				 end
			12: $display("Instruction: 12 \t Opeartion: NULL");
			13: $display("Instruction: 13 \t Opeartion: NULL");
			14: $display("Instruction: 14 \t Opeartion: NULL");
			15: $display("Instruction: 15 \t Opeartion: NULL");
			default: $display("Instruction ERR");
		endcase
		
endmodule 

