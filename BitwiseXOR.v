`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Bitwise XOR (8-bit)
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Operands:  A, B (8-bit) 
 
 // [OUTPUTS]
 // Output:	   Out5 (8-bit)
 ************************************************/ 
 
module BitwiseXOR(
	input [7:0] A, B,
	output reg [7:0] Out5
);
	
	/*
	assign Out5[0] = A[0] ^ B[0];
	assign Out5[1] = A[1] ^ B[1];
	assign Out5[2] = A[2] ^ B[2];
	assign Out5[3] = A[3] ^ B[3];
	assign Out5[4] = A[4] ^ B[4];
	assign Out5[5] = A[5] ^ B[5];
	assign Out5[6] = A[6] ^ B[6];
	assign Out5[7] = A[7] ^ B[7];
	*/
	
	always@(A or B)
	begin
		 Out5[0] <= A[0] ^ B[0];
		 Out5[1] <= A[1] ^ B[1];
		 Out5[2] <= A[2] ^ B[2];
		 Out5[3] <= A[3] ^ B[3];
		 Out5[4] <= A[4] ^ B[4];
		 Out5[5] <= A[5] ^ B[5];
		 Out5[6] <= A[6] ^ B[6];
		 Out5[7] <= A[7] ^ B[7];
	end
	
endmodule 