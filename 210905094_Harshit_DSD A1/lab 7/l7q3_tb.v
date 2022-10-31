`timescale 1ns/1ns
`include "l7q3.v"

module l7q3_tb();
reg [3:0] b;
wire [3:0] e;

l7q3 foo(b,e);
initial begin
        $dumpfile("l7q3_tb.vcd");
        $dumpvars(0,l7q3_tb);
        
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
        
        
        $display("test Complete");
end
endmodule
