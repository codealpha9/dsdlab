`timescale 1ns/1ns
`include "l7q4.v"

module l7q4_tb();
reg [3:0] b;
wire [3:0] g;

l7q4 foo(b,g);
initial begin
        $dumpfile("l7q4_tb.vcd");
        $dumpvars(0,l7q4_tb);
        
        b=4'b0000;#20;
        b=4'b0001;#20;
        b=4'b0010;#20;
        b=4'b0011;#20;
        b=4'b0100;#20;
        b=4'b0101;#20;
        b=4'b0110;#20;
        b=4'b0111;#20;
        b=4'b1000;#20;
        b=4'b1001;#20;
        b=4'b1010;#20;
        b=4'b1011;#20;
        b=4'b1100;#20;
        b=4'b1101;#20;
        b=4'b1110;#20;
        b=4'b1111;#20;
        
        $display("test Complete");
end
endmodule
