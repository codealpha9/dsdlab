module l7q4(b,g);
input [3:0]b;
output [3:0]g;
fourtoone stage0({4{b[1]^b[0]}},b[3:2],g[0]);
fourtoone stage1({~b[1],b[1],~b[1],b[1]},b[3:2],g[1]);
fourtoone stage2({1'b0,1'b1,1'b1,1'b0},b[3:2],g[2]);
fourtoone stage3({1'b1,1'b1,1'b0,1'b0},b[3:2],g[3]);
endmodule
module fourtoone(i,s,f);
input [3:0]i;
input [1:0]s;
output f;
reg f;
always @(i,s)
begin
f = s[1]?(s[0]?i[3]:i[2]):(s[0]?i[1]:i[0]);
end
endmodule
