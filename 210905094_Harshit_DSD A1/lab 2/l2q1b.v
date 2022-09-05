module l2q1b(a,b,c,d,f1,f2);
input a,b,c,d;
output f1,f2;
and(k1,b,~c,~d);
and(k2,d,~b);
and(k3,c,~b);
or(f1,k1,k2,k3);
assign f2=((b&~c)&~d)|(d&~b)|(c&~b);
endmodule
