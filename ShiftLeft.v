`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Logical Left Shift
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operand:			A (8-bit)
 
 // [OUTPUTS]
 // Shifted Output:	Out1 (8-bit)
 ************************************************/
 
module ShiftLeft(
	input [7:0] A,
	output [7:0] Out1
);

	assign Out1 = A << 1;
	
endmodule 