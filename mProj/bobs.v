module bobs (w,x,y,z,b);
input w,x,y,z;
output b;
assign b=(w&y&z)|(~y&z&x)|(y&~z&~w&~x);
endmodule
