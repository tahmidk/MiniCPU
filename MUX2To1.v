`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    2:1 MUX
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Data lines:		A, B (8-bit)
 // Select line:		Sel
 
 // [OUTPUTS]
 // MUX Selection:	Y (8-bit)
 ************************************************/

module MUX2To1(
	input [7:0] A,B,
	input Sel,
	output [7:0] Y
);

	assign Y = (Sel) ? B : A;

endmodule 