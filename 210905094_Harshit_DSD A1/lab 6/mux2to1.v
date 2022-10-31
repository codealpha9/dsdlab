module mux2to1(w0,w1,s,f);
input wo,w1,s;
output f;
assign f=s?w1:w0;
endmodule

