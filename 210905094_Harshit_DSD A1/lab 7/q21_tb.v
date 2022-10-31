`timescale 1ns/1ns
`include "q21.v"
module q21_tb();
reg [2:0]i;
wire f;
q21 f1(i,f);
initial
begin
$dumpfile("q21_tb.vcd");
$dumpvars(0,q21_tb);

i=3'b110; #20;
i=3'b010; #20;
i=3'b101; #20;

$display("Test Complete");
end
endmodule
