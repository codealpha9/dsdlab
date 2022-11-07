`timescale 1ns/1ns
`include "q1.v" 
module q1_tb();
reg D, Clock, Resetn; 
wire Q;

q1 uuu(D, Clock, Resetn, Q);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0, q1_tb);
Clock=0;
forever #20 Clock = ~Clock;
end
initial begin
D=1; Resetn=0;
#20;
D=1; Resetn=1;
#20;
D=1; Resetn=0;
#20;
D=0; Resetn=1;
#20;
$display("Test complete");
end
endmodule
