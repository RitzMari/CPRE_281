module mux4to1 (w0,w1,w2,w3,sel,f);
input w0,w1,w2,w3;
output reg f;
input [1:0] sel;
always @(w1 or w2 or w3 or w0 or sel)
case (sel)
	2'b00:f=w0;
	2'b01:f=w1;
	2'b10:f=w2;
	2'b11:f=w3;
endcase
endmodule 