module halfadder(x,y,sum,Cout);
input x,y;
output sum,Cout;
assign sum=x^y;
assign cout=x&y;
endmodule

module fulladder(Cin,x1,y1,Sum,Cout);
input x1,y1,Cin;
output Sum,Cout;
assign Sum=x1^y1^Cin;
assign Cout=(x1&y1)|(x1&Cin)|(y1&Cin);
endmodule

module decomposedfulladder(CIn,x2,y2,Sum1,Cout1);
input x2,y2,CIn;
output Sum1,Cout1;
halfadder stage0(x2,y2,s1,c1);
halfadder stage1(s1,CIn,Sum1,c2);
assign Cout1 = c1|c2;
endmodule
