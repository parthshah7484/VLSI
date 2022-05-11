`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    00:25:28 02/15/22
// Design Name:    
// Module Name:    pipomod
// Project Name:   
// Target Device:  
// Tool versions:  
// Description:
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module pipomod(clk,a,rst,q);
input clk, rst;
input [3:0]a;
output [3:0] q;
reg [3:0] q;
always @(posedge clk, posedge rst)
begin
if (rst==1'b1)
q <= 4'b0000;
else
q <= a;
end
endmodule
