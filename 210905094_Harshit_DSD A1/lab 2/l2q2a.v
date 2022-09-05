module l2q2a(a,b,c,d,f1,f2);
input a,b,c,d;
output f1,f2;
or(k1,b,c);
or(k2,d,~b);

and(f1,k1,k2);
assign f2=(c|b)&(d|~b);
endmodule
