`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Bitwise NAND (8-bit)
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:  A, B (8-bit) 
 
 // [OUTPUTS]
 // Output:	   Out6 (8-bit)
 ************************************************/ 
 
module BitwiseNAND(
	input [7:0] A, B,
	output reg [7:0] Out6
);
	
	/*
	assign Out6[0] = ~(A[0] & B[0]);
	assign Out6[1] = ~(A[1] & B[1]);
	assign Out6[2] = ~(A[2] & B[2]);
	assign Out6[3] = ~(A[3] & B[3]);
	assign Out6[4] = ~(A[4] & B[4]);
	assign Out6[5] = ~(A[5] & B[5]);
	assign Out6[6] = ~(A[6] & B[6]);
	assign Out6[7] = ~(A[7] & B[7]);
	*/
	
	always@(A or B)
	begin
		Out6[0] <= ~(A[0] & B[0]);
		Out6[1] <= ~(A[1] & B[1]);
		Out6[2] <= ~(A[2] & B[2]);
		Out6[3] <= ~(A[3] & B[3]);
		Out6[4] <= ~(A[4] & B[4]);
		Out6[5] <= ~(A[5] & B[5]);
		Out6[6] <= ~(A[6] & B[6]);
		Out6[7] <= ~(A[7] & B[7]);
	end
	
endmodule 