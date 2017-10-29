`timescale 1ns / 1ps

 /************************************************ 
 // [INPUTS]
 // Operands:	A, B (8-bit)
 
 // [OUTPUTS]
 // Sum:			Out0 (8-bit)
 ************************************************/

module Adder(
	input [7:0] A, B,
	output reg [7:0] Out0
);

	always @(A or B)
	begin
		Out0 <= A + B;
	end
 
endmodule