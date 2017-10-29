`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    8:1 MUX
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Data lines:		A, B, C, D, E, F, G, H (8-bit)
 // Select line:		Sel (3-bit)
 
 // [OUTPUTS]
 // MUX Selection:	Y (8-bit)
 ************************************************/

module MUX8To1(
	input [7:0] A,B,C,D,E,F,G,H,
	input [2:0] Sel,
	output reg [7:0] Y
);

	always @(Sel)
	begin
		case(Sel)
			0: Y <= A;
			1: Y <= B;
			2: Y <= C;
			3: Y <= D;
			4: Y <= E;
			5: Y <= F;
			6: Y <= G;
			7: Y <= H;
			default: $display("8:1 MUX Selection ERR");
		endcase
	end	

endmodule 