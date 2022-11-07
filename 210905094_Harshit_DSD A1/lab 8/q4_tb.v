`timescale 1ns/1ns
`include "q4.v"
module q4_tb();
reg [3:0]i;
wire [2:0]f;
integer j;
q4 f1(i,f);
initial
begin
$dumpfile("q4_tb.vcd");
$dumpvars(0,q4_tb);

for(j=0;j<16;j=j+1)
begin
i=j; #20;
end

$display("Test Complete");
end
endmodule
