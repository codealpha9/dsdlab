`timescale 1ns/1ns
`include "comp4.v"
module comp4_tb();
reg [3:0]a,b;
wire aeqb,agtb,altb;
comp4 comp4(a,b,aeqb,agtb,altb);
initial
begin
$dumpfile("comp4_tb.vcd");
$dumpvars(0,comp4_tb);
a=4'b1010; b=4'b1001; #20;
a=4'b1010; b=4'b1010; #20;
a=4'b1001; b=4'b1010; #20;
$display("Test Complete");
end
endmodule
