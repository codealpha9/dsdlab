`timescale 1ns/1ns
`include "q11.v"
module q11_tb();
reg [3:0]i;
wire f;
q11 f1(i,f);
initial
begin
$dumpfile("q11_tb.vcd");
$dumpvars(0,q11_tb);

i=4'b1110; #20;
i=4'b1010; #20;
i=4'b0010; #20;

$display("Test Complete");
end
endmodule
