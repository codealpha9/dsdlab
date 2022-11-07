`timescale 1ns/1ns
`include "q2.v"
module q2_tb();
reg [3:0]i;
reg E;
wire F,G,H;
integer j;
q2 q2(i,F,G,H,E);
initial
begin
$dumpfile("q2_tb.vcd");
$dumpvars(0,q2_tb);
E=1'b1;

i=4'd0; #20;
i=4'd1; #20;
i=4'd2; #20;
i=4'd3; #20;
i=4'd4; #20;
i=4'd5; #20;
i=4'd6; #20;
i=4'd7; #20;
i=4'd8; #20;
i=4'd9; #20;
i=4'd10; #20;
i=4'd11; #20;
i=4'd12; #20;
i=4'd13; #20;
i=4'd14; #20;
i=4'd15; #20;
$display("Test Complete");
end 
endmodule
