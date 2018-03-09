module BehaveFarm(F,G,C,W);
	input A,B,C;
	output F;
	
	assign F=((G&C)|(G&W)|(~G&C)|(~G&W));
	
endmodule