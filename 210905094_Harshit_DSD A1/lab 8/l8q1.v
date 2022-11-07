module l8q1();
input [2:0]w;
input En;
output [0:7]y;
wire [0:1]k;
assign k[0]=~w[2]&En;
assign k[1]=w[2]&En;
dec2to4 stage0(w[1:0],k[0],y[0:3]);
dec2to4 stage1(w[1:0],k[1],y[4:7]);
end
endmodule


module dec2to4(w,En,y);
input [1:0]w;
input En;
output reg[0:3]y;
always @(w,En)
if(En==1)
 if(w==0)
  y=1'b1000;
  else if(w==1)
  	y=1'b0100;
  	else if(w==2)
  	    y=1'b0010;
  	    else 
  	      y=1'b0001;
  	      
  else y=1'b0000;
end
endmodule
  	      
