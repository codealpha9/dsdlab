module l2q2b(a,b,c,d,f1,f2);
input a,b,c,d;
output f1,f2;
or(k1,~c,a,~b);
or(k2,~c,~a,b);
or(k3,c,~d,~a);
or(k4,c,d,~b);
and(k5,k1,k2);
and(k6,k3,k4);
and(f1,k5,k6);
assign f2=((~c|~b)|a)&((~c|~a)|b)&((c|~d)|~a)&((c|d)|~b);
endmodule
