`timescale 1ns/1ns
`include "q.v"
module q_tb();
reg x,clock, Resetn;
wire[3:0] Q;
integer i;
sudc f1(x,clock,Resetn, Q);

initial
begin
$dumpfile("q_tb.vcd");
$dumpvars(0, q_tb);
clock=0;
forever #10 clock = ~clock;
end

initial
begin
x=0;
Resetn=0; #20;
Resetn=1; #300;
x=1;
Resetn=0; #20;
Resetn=1; #300;
$display("Test complete");
$finish;
end

endmodule
