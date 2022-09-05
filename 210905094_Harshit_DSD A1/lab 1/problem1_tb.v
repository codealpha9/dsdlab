`timescale 1ns/1ns
`include "problem1.v"

module problem1_tb;
reg a,b,c,d;
wire f;

problem1 pb1(a,b,c,d,f);
initial begin

	$dumpfile("problem1_tb.vcd");
	$dumpvars(0,problem1_tb);
	
	a=0;b=0;c=0;d=0;
	#10;
	
	a=0;b=0;c=0;d=1;
	#10;
	
	a=0;b=0;c=1;d=0;
	#10;
	
	a=0;b=0;c=1;d=1;
	#10;
	
	a=0;b=1;c=0;d=0;
	#10;
	
	a=0;b=1;c=0;d=1;
	#10;
	
	a=0;b=1;c=1;d=0;
	#10;
	
	a=0;b=1;c=1;d=1;
	#10;
	
	a=1;b=0;c=0;d=0;
	#10;
	
	a=1;b=0;c=0;d=1;
	#10;
	
	a=1;b=0;c=1;d=0;
	#10;
	
	a=1;b=0;c=1;d=1;
	#10;
	
	a=1;b=1;c=0;d=0;
	#10;
	
	a=1;b=1;c=0;d=1;
	#10;
	
	a=1;b=1;c=1;d=0;
	#10;
	
	a=1;b=1;c=1;d=1;
	#10;
	
	$display("Test complete");
	
end

endmodule
