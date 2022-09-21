// Name: Pierre Vincent C. Hernandez,  Section: S11

`timescale 1ns / 1ps

// F = A(CD + B) + BC'

module hdl_project_dataflow(F,A,B,C,D);
	input A,B,C,D;
	output F;

	assign F = A&(C&D | B) | B&~C;
endmodule
