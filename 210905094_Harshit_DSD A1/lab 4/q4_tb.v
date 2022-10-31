

`timescale 1ns/1ns
`include "q4.v"

module q4_tb();
reg [3:0]x2,y2;
reg cin;
wire [3:0]s3;
wire cout;

bcdadder bcd(x2,y2,s3,cin,cout);
initial
begin
$dumpfile("q4_tb.vcd");
$dumpvars(0,q4_tb);

cin=0;x2=4'b0011;y2=4'b0101;#20;
cin=0;x2=4'b0001;y2=4'b0010;#20;

$display("Test Complete ");
end
endmodule
