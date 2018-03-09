module store(i1,i2,i3,i4,edit,clr,clk,/*g0,g1,g2,g3,g4,g5,g6,g7,k0,k1,k2,k3,k4,k5,k6,k7,*/check, key, guess,pressed,test,reset);
output reg /*g0,g1,g2,g3,g4,g5,g6,g7,k0,k1,k2,k3,k4,k5,k6,k7,*/check,pressed, test;
input i1,i2,i3,i4,edit,clr,clk,reset;
output reg [7:0] key;
output reg [7:0] guess;
reg go,hit,enable;
integer i,R;
reg reprog;
always @(posedge clk) begin
reprog <= edit;
	if(((i1 & i2) | (i1 & i3)) | (((i1 & i4) | (i2 & i3)) | ((i2 & i4) | (i3 & i4))) | i>7) go=0;
	else begin
		go=1;
		hit=0;
	end
		if(go&(i1|i2|i3|i4)&enable)begin
		hit =1;
		if(i1 & ~reprog) begin
			case(i)
				0: guess[1:0] = 2'b00;
				1: guess[3:2] = 2'b00;
				2: guess[5:4] = 2'b00;
				3: guess[7:6] = 2'b00;
			endcase
			i=i+1;
			enable =0;
		end
		if(i2 & ~reprog) begin
			case(i)
				0: guess[1:0] = 2'b01;
				1: guess[3:2] = 2'b01;
				2: guess[5:4] = 2'b01;
				3: guess[7:6] = 2'b01;
			endcase
			i=i+1;
			enable =0;
		end
		if(i3 & ~reprog) begin
			case(i)
				0: guess[1:0] = 2'b10;
				1: guess[3:2] = 2'b10;
				2: guess[5:4] = 2'b10;
				3: guess[7:6] = 2'b10;
			endcase
			i=i+1;
			enable =0;
		end
		if(i4 & ~reprog) begin
			case(i)
				0: guess[1:0] = 2'b11;
				1: guess[3:2] = 2'b11;
				2: guess[5:4] = 2'b11;
				3: guess[7:6] = 2'b11;
			endcase
			i=i+1;
			enable =0;
		end
	/*
	if(go&(i1|i2|i3|i4)&enable)begin
		hit =1;
		if(i1 & ~reprog) begin
			guess[i] <= 0;
			i=i+1;
			guess[i] <= 0;
			i=i+1;
			enable=0;
		end
		if(i2 & ~reprog) begin
			guess[i] <= 0;
			i=i+1;
			guess[i] <= 1;
			i=i+1;
			enable=0;
		end
		if(i3 & ~reprog) begin
			guess[i] <= 1;
			i=i+1;
			guess[i] <= 0;
			i=i+1;
			enable=0;
		end
		if(i4 & ~reprog) begin
			guess[i] <= 1;
			i=i+1;
			guess[i] <= 1;
			i=i+1;
			enable=0;
		end
		*/
		//---------------------------------------------------------------------
		if(i1 & reprog) begin
			case(R)
				0: key[1:0] = 2'b00;
				1: key[3:2] = 2'b00;
				2: key[5:4] = 2'b00;
				3: key[7:6] = 2'b00;
			endcase
			R=R+1;
			enable =0;
		end
		if(i2 & reprog) begin
			case(R)
				0: key[1:0] = 2'b01;
				1: key[3:2] = 2'b01;
				2: key[5:4] = 2'b01;
				3: key[7:6] = 2'b01;
			endcase
			R=R+1;
			enable =0;
		end
		if(i3 & reprog) begin
			case(R)
				0: key[1:0] = 2'b10;
				1: key[3:2] = 2'b10;
				2: key[5:4] = 2'b10;
				3: key[7:6] = 2'b10;
			endcase
			R=R+1;
			enable =0;
		end
		if(i4 & reprog) begin
			case(R)
				0: key[1:0] = 2'b11;
				1: key[3:2] = 2'b11;
				2: key[5:4] = 2'b11;
				3: key[7:6] = 2'b11;
			endcase
			R=R+1;
			enable =0;
		end
	end
	if(clr&(~reprog)) begin
		guess[7:0] = 8'b00000000;
		i=0;
		check=0;
		hit=0;
	end
		if(reset&(~reprog)) begin
		key[7:0] = 8'b00000000;
		i=0;
		check=0;
		hit=0;
	end
	if(i==4) begin
		check=1;
		i=0;
	end
		if(R==4) begin
		check=1;
		R=0;
	end
	pressed =hit;
	if(hit==1)hit=0;
	if(~i1&~i2&~i3&~i4) enable =1;
end
endmodule