`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    8-bit Register
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Clock:			CLK
 // Clear Bit:		CLR
 // Enable Bit:	EN
 // Input Data:	D
 
 // [OUTPUTS]
 // Output wire:	Qout (8-bit)
 ************************************************/

module Register8bit(
	input CLK, CLR, EN,
	input [7:0] D,
	output reg [7:0] Qout
);

	always @(posedge CLK)
	begin
		if (EN)
		begin
			if (CLR)
				Qout <= 8'b00000000;
			else
				Qout <= D;
		end
	end
	
endmodule 