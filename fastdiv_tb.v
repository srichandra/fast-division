`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:37:39 04/16/2016
// Design Name:   fastdiv
// Module Name:   D:/edu/6th sem/vlsi lab/fastdiv/fastdiv_tb.v
// Project Name:  fastdiv
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fastdiv
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module fastdiv_tb;

	// Inputs
	reg [7:0] xin;
	reg [7:0] yin;
	reg clk;
	reg enbl;

	// Outputs
	wire [15:0] xyout;

	// Instantiate the Unit Under Test (UUT)
	fastdiv uut (
		.xin(xin), 
		.yin(yin), 
		.clk(clk), 
		.enbl(enbl), 
		.xyout(xyout)
	);

	initial begin
		// Initialize Inputs
		xin = 0;
		yin = 0;
		clk = 0;
		enbl = 0;

		// Wait 100 ns for global reset to finish
        #100;
        xin = 8'b01000000;// 64
        yin = 8'b00000010;// 2
        clk = 0;
        enbl = 1;
        #100;
        xin = 8'b00000101;//5
        yin = 8'b00000010;//2
        clk = 0;
        enbl = 1;
        #100;
        xin = 8'b00010101;//21
        yin = 8'b00000100;//4
        clk = 0;
        enbl = 1;
        #100;
        xin = 8'b01010001;//81
        yin = 8'b00000011;//3
        clk = 0;
        enbl = 1;
        #100;
        xin = 8'b10000000;//128
        yin = 8'b00000011;//3
        clk = 0;
        enbl = 1;
        
		// Add stimulus here

	end
    always #10 clk=~clk;
	initial #5000 $finish; 
endmodule

