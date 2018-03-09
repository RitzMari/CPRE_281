module decode_4_7s(guess, o0,o1,o2,o3,o4,o5,o6,o7,clk);
input [7:0] guess;
input clk;
output reg o0,o1,o2,o3,o4,o5,o6,o7;
always @(posedge clk) begin
	o0<=guess[0];
	o1<=guess[1];
	o2<=guess[2];
	o3<=guess[3];
	o4<=guess[4];
	o5<=guess[5];
	o6<=guess[6];
	o7<=guess[7];
end
endmodule