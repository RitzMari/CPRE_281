module lab4step1 (c,g,f,r,w);
	input c,g,w,f;
	output r;
	reg r;
	always @(f or c or g or w)
	begin
		case({f,c,g,w})
			4'b0000: r='b0;
			4'b0001: r='b0;
			4'b0010: r='b0;
			4'b0011: r='b1;
			4'b0100: r='b0;
			4'b0101: r='b0;
			4'b0110: r='b1;
			4'b0111: r='b1;
			4'b1000: r='b1;
			4'b1001: r='b1;
			4'b1010: r='b0;
			4'b1011: r='b0;
			4'b1100: r='b1;
			4'b1101: r='b0;
			4'b1110: r='b0;
			4'b1111: r='b0;
		endcase
	end
	
endmodule
		
		