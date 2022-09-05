module l2q1a(a,b,c,d,f1,f2);
input a,b,c,d;
output f1,f2;
and(k1,b,~c,~d);
and(k2,~a,b);
and(k3,c,~b);
and(k4,c,d);
or(k5,k1,k2);
or(k6,k3,k4);
or(f1,k5,k6);
assign f2=((b&~c)&~d)|(~a&b)|(c&~b)|(c&d);
endmodule
