module compare(guess,key,check,match,clk);
input [7:0] guess, key;
input check,clk;
output reg match;
always @(check) begin
	if((key==guess)&&check) match =1;
	else match=0;
end
endmodule