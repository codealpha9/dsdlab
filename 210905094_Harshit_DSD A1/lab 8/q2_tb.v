`timescale 1ns/1ns
`include "q2.v"

module q2_tb();
reg [3:0]in;
reg En;
wire [15:0]y;
integer i;
q2 d0(in,En,y);

initial
begin

$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);

En=1'b1;
for(i=0;i<16;i=i+1)
begin
in=i; #20;
end
$display("Test Complete");

end
endmodule
