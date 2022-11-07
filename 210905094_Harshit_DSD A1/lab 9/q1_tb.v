`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [3:0]i;
reg E;
wire F;
integer j;
q1 q1(i,F,E);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0,q1_tb);
E=1'b1;
for(j=0;j<16;j=j+1)
begin
i=j;#20;
end
$display("test complete");
end
endmodule
