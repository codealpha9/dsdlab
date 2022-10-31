`timescale 1ns/1ns
`include "q22.v"
module q22_tb();
reg [2:0]i;
wire f;
q22 f1(i,f);
initial
begin
$dumpfile("q22_tb.vcd");
$dumpvars(0,q22_tb);

i=3'b110; #20;
i=3'b010; #20;
i=3'b101; #20;

$display("Test Complete");
end
endmodule
