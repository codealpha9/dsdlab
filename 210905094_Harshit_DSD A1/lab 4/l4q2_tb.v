`timescale 1ns/1ns
`include "l4q2.v"
module l4q2_tb();
reg carryin;
reg [3:0]x,y;
wire [3:0]s;
wire carryout;

adder4 a1(carryin,x,y,s,carryout);

initial
begin
$dumpfile("l4q2_tb.vcd");
$dumpvars(0, l4q2_tb);

carryin=1'b0;x=4'b1000;y=4'b0001;#20;
carryin=1'b1;x=4'b1000;y=4'b0001;#20;

/*carryin=1'b0;x=4'b1001;y=4'b0011;#20;
carryin=1'b1;x=4'b1001;y=4'b0011;#20;*/

$display("Test complete");
end
endmodule
