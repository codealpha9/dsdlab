module q(i,f,En);
input [3:0]i;
input En;
output f;
wire [15:0]c;
fourtosixteen stage0([3:0]i,[15:0]c,En);
assign f=c[1]|c[3]|c[6]|c[7]|c[9]|c[14]|c[15];
endmodule

module fourtosixteen(in,f,En);
input [3:0]in;
input En;
output [15:0]f;
reg [15:0]f;
always @ (in,En)
begin 
if(En)
begin
for(j=0;j<16;j=j+1)
begin
f[j]=(i==j)?1:0;
end
end
end
endmodule

