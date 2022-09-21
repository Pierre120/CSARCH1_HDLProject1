// Name: Pierre Vincent C. Hernandez,  Section: S11

`timescale 1ns / 1ps


module hdlproject_dataflow_tb();
	reg [3:0] t_input;
	wire t_F;
	
	hdl_project_dataflow dut(t_F,t_input[3],t_input[2],t_input[1],t_input[0]);
	initial
	begin
		t_input = 4'b0000;
		repeat(16)
			#10 t_input = t_input + 4'b0001;
	end
	
	initial // response monitor
	begin
		$display("\nWritten by: Pierre Vincent C. Hernandez");
		$display("Boolean Function: F = A(CD+B) + BC'");
		$display("Verilog Model: Dataflow Model");
		$monitor("time = %0d\t", $time, "A = %b\tB = %b\tC = %b\tD = %b\toutput_F = %b", t_input[3], t_input[2], t_input[1], t_input[0], t_F);
		$dumpfile("herp1.vcd");
		$dumpvars;
	end
endmodule
