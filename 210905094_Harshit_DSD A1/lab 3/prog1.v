module prog1(a,b,c,d,f);
input a,b,c,d;
output f;
assign f= (b&d)|(~b&~d)|(~a&b);
endmodule
