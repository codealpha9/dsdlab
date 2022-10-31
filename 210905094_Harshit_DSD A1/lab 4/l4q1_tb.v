`timescale 1ns/1ns
`include "l4q1.v"
module l4q1_tb();
reg x,y;
wire sum,cout;
halfadder ha(x,y,sum,cout);
initial
begin
$dumpfile("l4q1_tb.vcd");
$dumpvars(0,l4q1_tb);

x=0; y=0; #20;
x=0; y=1; #20;
x=1; y=0; #20;
x=1; y=1; #20; 

$display("Test Complete");
end

reg x1,y1,Cin;
wire Sum,Cout;
fulladder fa(x1,y1,Cin,Sum,Cout);
initial
begin
$dumpfile("l4q1_tb.vcd");
$dumpvars(0,l4q1_tb);

x1=1'b0; y1=1'b0; Cin=1'b0; #20;
x1=1'b0; y1=1'b0; Cin=1'b1; #20;
x1=1'b0; y1=1'b1; Cin=1'b0; #20;
x1=1'b0; y1=1'b1; Cin=1'b1; #20;
x1=1'b1; y1=1'b0; Cin=1'b0; #20;
x1=1'b1; y1=1'b0; Cin=1'b1; #20;
x1=1'b1; y1=1'b1; Cin=1'b0; #20;
x1=1'b1; y1=1'b1; Cin=1'b1; #20;

$display("Test Complete");
end

reg x2,y2,CIn;
wire Sum1,Cout1;
decomposedfulladder dfa(CIn,x2,y2,Sum1,Cout1);
initial
begin
$dumpfile("l4q1_tb.vcd");
$dumpvars(0,l4q1_tb);

x2=1'b0; y2=1'b0; CIn=1'b0; #20;
x2=1'b0; y2=1'b0; CIn=1'b1; #20;
x2=1'b0; y2=1'b1; CIn=1'b0; #20;
x2=1'b0; y2=1'b1; CIn=1'b1; #20;
x2=1'b1; y2=1'b0; CIn=1'b0; #20;
x2=1'b1; y2=1'b0; CIn=1'b1; #20;
x2=1'b1; y2=1'b1; CIn=1'b0; #20;
x2=1'b1; y2=1'b1; CIn=1'b1; #20;

$display("Test Complete");
end
endmodule
