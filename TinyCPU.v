`timescale 1ns / 1ps

/*------------------------------------------------
 * Engineer:  Tahmid Khan
 * Module:    Tiny CPU
 -----------------------------------------------*/
 
 /************************************************ 
 // [INPUTS]
 // Clock:		 Clk
 // Input:		 In
 //	In[7:0]:	 Data
 //	In[11:8]: Instruction
 
 // [OUTPUTS]
 // Result:		Result 
 ************************************************/ 
 
module TinyCPU(
	input [11:0] In,
	input Clk,
	output reg [7:0] Result,
	output reg [7:0] RegA,		// Uncomment to observe RegA value
	output reg [7:0] RegB		// Uncomment to observe RegB value
);

	// Declare wires as per the circuit diagram
	/* Data and instruction wires towards top left of diagram */
	wire [7:0] data;
	wire [3:0] instruction;
	
	/* Decoder output wires */
	wire CLR;
	wire EN_RegA, EN_RegB, EN_RegOut;
	wire S0, S1, S2, S3;
	
	/* Intermediate wires */
	wire [7:0] RegB_DATA, RegOut_DATA;
	wire [7:0] RegA_OUT, RegB_OUT, RegOut_OUT;
	
	/* Arithmetic operation wires */
	wire [7:0] ALU_ADD, ALU_SL, ALU_SR, ALU_AND, ALU_OR, 
		ALU_XOR, ALU_NAND, ALU_Comp;
	
	
	// Initialize instruction decoder module
	InstructionDecoder decoder(
		.instruction(instruction),
		.CLR(CLR),
		.EN_A(EN_RegA),
		.EN_B(EN_RegB),
		.EN_OUT(EN_RegOut),
		.S0(S0),
		.S1(S1),
		.S2(S2),
		.S3(S3)
	);
	
		
	// Initialize BUS split parser 
	BusSplit parsing(
		.In(In),
		.data(data),
		.instruction(instruction)
	);
	
	
	// Initialize the 3 registers RegA, RegB, and RegOut
	/* Register A */
	Register8bit RegisterA(
		.CLK(Clk),
		.CLR(CLR),
		.EN(EN_RegA),
		.D(data),
		.Qout(RegA_OUT)
	);
	
	/* Register B*/
	Register8bit RegisterB(
		.CLK(Clk),
		.CLR(CLR),
		.EN(EN_RegB),
		.D(RegB_DATA),
		.Qout(RegB_OUT)
	);
	
	/* Register Out */
	Register8bit RegisterOut(
		.CLK(Clk),
		.CLR(CLR),
		.EN(EN_RegOut),
		.D(RegOut_DATA),
		.Qout(RegOut_OUT)
	);
	
	
	// Initialize the ALU
	ALU alu(
		.A(RegA_OUT),
		.B(RegB_OUT),
		.OUT_ADD(ALU_ADD),
		.OUT_SL(ALU_SL),
		.OUT_SR(ALU_SR),
		.OUT_AND(ALU_AND),
		.OUT_OR(ALU_OR),
		.OUT_XOR(ALU_XOR),
		.OUT_NAND(ALU_NAND),
		.OUT_Comp(ALU_Comp)
	);
	
	
	// Initialize the MUXs
	/* 2:1 MUX determining data line of RegB (Control: S0) */
	MUX2To1 wire_RegB_D(
		.A(data), 
		.B(RegOut_OUT),
		.Sel(S0), 
		.Y(RegB_DATA)
	);
	
	/* 8:1 MUX determining ALU operation (Control: S1, S2, S3)*/
	MUX8To1 wire_RegOut_D(
		.A(ALU_ADD), 
		.B(ALU_SL),
		.C(ALU_SR),
		.D(ALU_AND),
		.E(ALU_OR),
		.F(ALU_XOR),
		.G(ALU_NAND),
		.H(ALU_Comp),
		.Sel({S1, S2, S3}), 
		.Y(RegOut_DATA)
	);

	always@(posedge Clk)
	begin
		Result <= RegOut_OUT;
		RegA <= RegA_OUT;		// Uncomment to observe RegA value
		RegB <= RegB_OUT;		// Uncomment to observe RegB value
	end

endmodule 