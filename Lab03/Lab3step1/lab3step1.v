module structuralFarm(A,W,G,C);
	input W,C,G;
	output f;
	not(nC, C);
	not(nG,G);
	not(nW,W);
	and(GW,G,W);
	and(GC,G,C);
	and(nGW,nG,nW);
	and(nGC,nG,nC);
	or(F,GW,GC,nGC,nGW);
	
endmodule