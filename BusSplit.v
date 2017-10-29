`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Bus Split
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Unparsed Input:	In	
 
 // [OUTPUTS]
 // Data:				data
 // Instruction:		instruction
 ************************************************/ 
 
module BusSplit(
	input [11:0] In,
	output [7:0] data,
	output [3:0] instruction
);

	assign data = In[7:0];
	assign instruction = In[11:8];
	
endmodule 