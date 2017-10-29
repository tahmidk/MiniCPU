`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Logical Right Shift
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operand:			A (8-bit)
 
 // [OUTPUTS]
 // Shifted Output:	Out2 (8-bit)
 ************************************************/
 
module ShiftRight(
	input [7:0] A,
	output [7:0] Out2
);

	assign Out2 = A >> 1;
	
endmodule 