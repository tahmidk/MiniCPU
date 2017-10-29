`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Bitwise AND (8-bit)
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:  A, B (8-bit) 
 
 // [OUTPUTS]
 // Output:	   Out3 (8-bit)
 ************************************************/ 
 
module BitwiseAND(
	input [7:0] A, B,
	output reg [7:0] Out3
);
	
	/*
	assign Out3[0] = A[0] & B[0];
	assign Out3[1] = A[1] & B[1];
	assign Out3[2] = A[2] & B[2];
	assign Out3[3] = A[3] & B[3];
	assign Out3[4] = A[4] & B[4];
	assign Out3[5] = A[5] & B[5];
	assign Out3[6] = A[6] & B[6];
	assign Out3[7] = A[7] & B[7];
	*/
	
	always@(A or B)
	begin
		Out3[0] <= A[0] & B[0];
		Out3[1] <= A[1] & B[1];
		Out3[2] <= A[2] & B[2];
		Out3[3] <= A[3] & B[3];
		Out3[4] <= A[4] & B[4];
		Out3[5] <= A[5] & B[5];
		Out3[6] <= A[6] & B[6];
		Out3[7] <= A[7] & B[7];
	end
	
endmodule 