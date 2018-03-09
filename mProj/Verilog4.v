module fixer (w,x,y,z,f);
input w,x,y,z;
output f;
assign f = (~w&~x&y&z)|(~w&x&y&z);
endmodule
