module lab3step3(A,F,C,G,W);
	input F,C,G,W;
	output A;
	assign A=((~F&G&C)|(~F&W&G)|(F&~G&~C)|(F&~G&~W));
	
endmodule