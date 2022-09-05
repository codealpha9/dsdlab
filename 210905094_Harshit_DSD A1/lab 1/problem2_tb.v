`timescale 1ns/1ns
`include "problem2.v"

module problem2_tb;
reg a,b,c,d;
wire f,g;

problem2 pb2(a,b,c,d,f,g);
initial begin

	$dumpfile("problem2_tb.vcd");
	$dumpvars(0,problem2_tb);
	
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
