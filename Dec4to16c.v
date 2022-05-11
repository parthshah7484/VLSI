`timescale 1ns / 1ps
////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:    13:13:41 02/06/22
// Design Name:    
// Module Name:    Dec4to16c
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
module Dec4to16c (e,a,b,c,y);

input e,a,b,c;

output [15:0] y;


wire e0,a0,b0,c0;

not (e0,e);
not (a0,a);
not (b0,b);
not (c0,c);

and ( y[0],e0,a0,b0,c0);
and ( y[1],e0,a0,b0,c);
and ( y[2],e0,a0,b,c0);
and ( y[3],e0,a0,b,c);

and ( y[4],e0,a,b0,c0);
and ( y[5],e0,a,b0,c);
and ( y[6],e0,a,b,c0);
and ( y[7],e0,a,b,c);


and ( y[8],e,a0,b0,c0);
and ( y[9],e,a0,b0,c);
and ( y[10],e,a0,b,c0);
and ( y[11],e,a0,b,c);

and ( y[12],e,a,b0,c0);
and ( y[13],e,a,b0,c);
and ( y[14],e,a,b,c0);
and ( y[15],e,a,b,c);

endmodule
