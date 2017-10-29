`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Comparator
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:		A, B (8-bit)
 
 // [OUTPUTS]
 // Comparison:	Out7 (8-bit)
 ************************************************/

module Comparator(
	input [7:0] A, B,
	output reg [7:0] Out7
);

	always @(A or B)
	begin
		if (A >= B)
			Out7 <= 8'b11111111;
		else
			Out7 <= 8'b00000000;
	end
	
endmodule
