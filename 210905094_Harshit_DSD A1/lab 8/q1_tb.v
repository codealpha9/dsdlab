`timescale 1ns/1ns
`include "q1.v"
module q1_tb();
reg [2:0]i;
reg En;
wire [7:0]f;
q1 f1(i,f,En);
initial
begin
$dumpfile("q1_tb.vcd");
$dumpvars(0,q1_tb);
En=1'b1;
i=3'd0; #20;
i=3'd1; #20;
i=3'd2; #20;
i=3'd3; #20;
i=3'd4; #20;
i=3'd5; #20;
i=3'd6; #20;
i=3'd7; #20;
$display("Test Complete");
end
endmodule
