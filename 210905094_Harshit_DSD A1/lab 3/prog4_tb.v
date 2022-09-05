`timescale 1ns/1ns
`include "prog4.v"

module prog4_tb;
reg x1, x2, x3;

wire f;

prog4 pb4(x1, x2, x3, f); 
initial
begin
$dumpfile("prog4_tb.vcd");
$dumpvars(0, prog4_tb);
x1=1'b0; x2=1'b0; x3=1'b0;
#20;
x1=1'b0; x2=1'b0; x3=1'b1;
#20;
x1=1'b0; x2=1'b1; x3=1'b0;
#20;
x1=1'b0; x2=1'b1; x3=1'b1;
#20;
x1=1'b1; x2=1'b0; x3=1'b0;
#20;
x1=1'b1; x2=1'b0; x3=1'b1;
#20;
x1=1'b1; x2=1'b1; x3=1'b0;
#20;
x1=1'b1; x2=1'b1; x3=1'b1;
#20;
$display("Test complete");
end
endmodule
