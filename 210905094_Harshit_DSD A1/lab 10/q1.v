module  q1 (D, Clock, Resetn, Q);
input D, Clock, Resetn;
output Q;
reg Q;
always @(posedge Clock or posedge Resetn)
if (Resetn)
Q <= 0;
else
Q <= D;
endmodule
