`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Bitwise OR (8-bit)
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:  A, B (8-bit) 
 
 // [OUTPUTS]
 // Output:	   Out4 (8-bit)
 ************************************************/ 
 
module BitwiseOR(
	input [7:0] A, B,
	output reg [7:0] Out4
);
	
	/*
	assign Out4[0] = A[0] | B[0];
	assign Out4[1] = A[1] | B[1];
	assign Out4[2] = A[2] | B[2];
	assign Out4[3] = A[3] | B[3];
	assign Out4[4] = A[4] | B[4];
	assign Out4[5] = A[5] | B[5];
	assign Out4[6] = A[6] | B[6];
	assign Out4[7] = A[7] | B[7];
	*/
	
	always@(A or B)
	begin
		Out4[0] <= A[0] | B[0];
		Out4[1] <= A[1] | B[1];
		Out4[2] <= A[2] | B[2];
		Out4[3] <= A[3] | B[3];
		Out4[4] <= A[4] | B[4];
		Out4[5] <= A[5] | B[5];
		Out4[6] <= A[6] | B[6];
		Out4[7] <= A[7] | B[7];
	end
	
endmodule 