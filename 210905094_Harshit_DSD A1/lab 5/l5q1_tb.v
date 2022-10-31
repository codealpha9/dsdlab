`timescale 1ns/1ns
`include "l5q1.v"
module l5q1_tb();
reg [4:0] a, b;
wire agtb, aeqb, altb;
l5q1 lq(a, b, agtb, aeqb, altb);
initial begin
	
$dumpfile("l5q1_tb.vcd");
	$dumpvars(0, l5q1_tb);
	
	a=5'b00000; b=5'b00001;
	#20;
	
	a=5'b00001; b=5'b00001;
	#20;
	
	a=5'b00001; b=5'b00000;
	#20;
	
	$display("Test Complete");
end 
endmodule
