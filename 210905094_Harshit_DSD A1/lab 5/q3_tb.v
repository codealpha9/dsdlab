`timescale 1ns/1ns
`include "q3.v"

module q3_tb();
reg [3:0]g;
wire [3:0]b;

q3 q3(g,b);
initial
begin
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);
g=4'b0111;#20;
g=4'b1010;#20;
$display("Test Complete");
end
endmodule
