`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   00:29:21 02/15/2022
// Design Name:   pipomod
// Module Name:   pipomod_tb.v
// Project Name:  Digital_circuits
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: pipomod
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipomod_tb_v;
	reg clk;
	reg [3:0] a;
	reg rst;
	wire [3:0] q;
	pipomod uut (
		.clk(clk), 
		.a(a), 
		.rst(rst), 
		.q(q)
	);
	initial 
	clk='b1;
	always #10 clk=~clk;
	initial begin
		a = 4'b1101;rst =1'b1;
		#100 rst=1'b0;
		#100 a=4'b1000;
		#100 rst=1'b1;
		#100 rst=1'b0;
	end
	initial
	#600 $stop;   
endmodule

