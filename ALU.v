`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Arithmetic Logic Unit (ALU) (8-bit)
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:  	A, B (8-bit)
 
 // [OUTPUTS]
 // Sum:	   		OUT_ADD
 // Shift Left:	OUT_SL
 // Shift Right:	OUT_SR
 // Bitwise AND:	OUT_AND
 // Bitwise OR:	OUT_OR
 // Bitwise XOR:	OUT_XOR
 // Bitwise NAND:	OUT_NAND
 // Compare:		OUT_Comp
					
 ************************************************/ 
module ALU(
	input [7:0] A, B,
	output [7:0] OUT_ADD,
	output [7:0] OUT_SL,
	output [7:0] OUT_SR,
	output [7:0] OUT_AND,
	output [7:0] OUT_OR,
	output [7:0] OUT_XOR,
	output [7:0] OUT_NAND,
	output [7:0] OUT_Comp
);
	
	Adder wire_ADD(A, B, OUT_ADD);
	ShiftLeft 	wire_SL(A, OUT_SL);
	ShiftRight 	wire_SR(A, OUT_SR);
	BitwiseAND 	wire_AND(A, B, OUT_AND);
	BitwiseOR 	wire_OR(A, B, OUT_OR);
	BitwiseXOR 	wire_XOR(A, B, OUT_XOR);
	BitwiseNAND wire_NAND(A, B, OUT_NAND);
	Comparator	wire_Comp(A, B, OUT_Comp);
 
endmodule 