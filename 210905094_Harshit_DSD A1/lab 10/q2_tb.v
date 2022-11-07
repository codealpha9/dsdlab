`timescale 1ns/1ns
`include "q2.v" 
module q2_tb();
reg T, Clock, Resetn; 
wire Q;

q2 fpp(T, Clock, Resetn, Q);
initial begin

$dumpfile("q2_tb.vcd");
$dumpvars(0, q2_tb);
Clock=0;
forever #20 Clock = ~Clock;
end

initial begin
T <= 0; Resetn <=0; #20;
T <= 0; Resetn <=1; #20;
T <= 1; Resetn <=0; #20;
T <= 1; Resetn <=1; #20;
$display("Test complete");
end
endmodule
