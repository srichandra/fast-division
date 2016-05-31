`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:38:56 04/16/2016 
// Design Name: 
// Module Name:    mult 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module mult(multiplier,multiplicand, product); //P
   input [7:0]  multiplier, multiplicand;
   output        product;

   reg [15:0]    product;

   integer       i;

   always @( multiplier or multiplicand )
     begin

        product = 0;

        for (i=0; i<8; i=i+1)
          if ( multiplier[i] == 1'b1 )
            product = product + ( multiplicand << i );

     end

endmodule