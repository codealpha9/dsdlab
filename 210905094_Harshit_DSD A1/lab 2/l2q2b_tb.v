`timescale 1ns/1ns
`include "l2q2b.v"
module l2q2b_tb();
reg a,b,c,d;
wire f1,f2;
l2q2b llq(a,b,c,d,f1,f2);
initial
begin
$dumpfile("l2q2b_tb.vcd");
$dumpvars(0,l2q2b_tb);
a=0;b=0;c=0;d=0;
#20;
a=0;b=0;c=0;d=1;
#20;
a=0;b=0;c=1;d=0;
#20;
a=0;b=0;c=1;d=1;
#20;
a=0;b=1;c=0;d=0;
#20;
a=0;b=1;c=0;d=1;
#20;
a=0;b=1;c=1;d=0;
#20;
a=0;b=1;c=1;d=1;
#20;
a=1;b=0;c=0;d=0;
#20;
a=1;b=0;c=0;d=1;
#20;
a=1;b=0;c=1;d=0;
#20;
a=1;b=0;c=1;d=1;
#20;
a=1;b=1;c=0;d=0;
#20;
a=1;b=1;c=0;d=1;
#20;
a=1;b=1;c=1;d=0;
#20;
a=1;b=1;c=1;d=1;
#20;
$display("Test complete");
end
endmodule
