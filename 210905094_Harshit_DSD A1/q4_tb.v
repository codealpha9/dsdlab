`timescale 1ns/1ns
`include "q4.v"
module q4_tb();
reg clock, Resetn;
reg [4:0]i;
wire [4:0] out ;
reg5 f1(i,out,clock,Resetn);
always #20 clock = ~clock;
initial
begin
$dumpfile("q4_tb.vcd");
$dumpvars(0, q4_tb);
clock=0;
Resetn=0; i = 5'd0; #20;
Resetn=1;
i = 5'd1; #20; 
i = 5'd0; #20;
i = 5'd1;

$display("Test complete");
end
endmodule
