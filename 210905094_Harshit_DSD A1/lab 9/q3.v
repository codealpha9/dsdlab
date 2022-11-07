module twotofour(I,f,En);
input [1:0]I;
input En;
output reg [3:0]f;
always @ (I,En)
begin

case(En)
0:f=4'b0000;
1:
begin
	case(I)
	0:f=4'b0001;
	1:f=4'b0010;
	2:f=4'b0100;
	3:f=4'b1000;
	endcase
end
endcase
end
endmodule
module q3(i,f);
input [2:0]i;

output f;
wire [7:0]c;
twotofour s0(i[1:0],c[3:0],~i[2]);
twotofour s1(i[1:0],c[7:4],i[2]);
assign f = c[3]|c[5]|c[6]|c[7];
endmodule

