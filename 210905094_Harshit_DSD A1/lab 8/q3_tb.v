`timescale 1ns/1ns
`include "q3.v"
module q3_tb();
reg [3:0]i;
reg En;
wire [15:0]f;
integer j;
q3 f1(i,f,En);
initial
begin
$dumpfile("q3_tb.vcd");
$dumpvars(0,q3_tb);
En=1'b1;
for(j=0;j<16;j=j+1)
begin
i=j; #20;
end
$display("Test Complete");
end
endmodule

