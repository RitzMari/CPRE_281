module mod_7seg(a,b,c,d,e,f,g,w,x,y,z,off);
	input z,y,w,x, off;
	output	a,b,c,d,e,f,g;
	reg [3:0] in;
	reg [7:0] out;
	always @(z or  y or x or w or off)
		begin
			 in[0] = w;
			 in[1] = x;
			 in[2] = y;
			 in[3] = z;
			
			case(in)
				4'b0000: out='b1001111;
				4'b0001: out='b0010010;
				4'b0010: out='b0000110;
				4'b0011: out='b1001100;
				4'b0100: out='b1111111;
				4'b0101: out='b1111111;
				4'b0110: out='b1111111;
				4'b0111: out='b1111111;
				4'b1000: out='b1111111;
				4'b1001: out='b1111111;
				4'b1010: out='b1111111;
				4'b1011: out='b1111111;
				4'b1100: out='b1111111;
				4'b1101: out='b1111111;
				4'b1110: out='b1111111;
				4'b1111: out='b1111111;
			endcase
			case(off)
				1'b1: out='b1111111;
			endcase
		end
	 assign {a,b,c,d,e,f,g} = out[7:0];
endmodule	