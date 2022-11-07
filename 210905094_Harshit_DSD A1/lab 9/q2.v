module q2(i,F,G,H,E);
input [3:0]i;
input E;
wire [15:0]c;
wire [3:0]x;
output F,G,H;
twotofour stage0(i[3:2],x[3:0],E);
twotofour stage1(i[1:0],c[3:0],x[0]);
twotofour stage2(i[1:0],c[7:4],x[1]);
twotofour stage3(i[1:0],c[11:8],x[2]);
twotofour stage4(i[1:0],c[15:12],x[3]);
assign F= c[11]|c[10]|c[7]|c[3]|c[14]|c[6];
assign G= c[14]|c[10]|c[2]|c[3];
assign H=c[1]|c[0]|c[14]|c[15]|c[7]|c[3];
endmodule
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

