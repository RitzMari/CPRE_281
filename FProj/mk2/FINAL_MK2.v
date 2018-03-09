module FINAL_MK2
(
input i1,i2,i3,i4,clk,clr,re,
output d0,d1,d2,d3,d4,d5,d6,d7, unlocked, reprog
);
reg [7:0] key;
reg [7:0] guess;
integer count = 0;
integer i =0;
reg go;
always @(posedge clk) begin
	if(((i1 && i2) || (i1 && i3)) || (((i1 && i4) || (i2 && i3)) || ((i2 && i4) || (i3 && i4)))) go=0;
	else go=1;
	if(go)begin
		if(i1 && !reprog) begin
			guess[i] <= 0;
			i=i+1;
			guess[i] <= 0;
			i=i+1;
			if(i==7) check(key[7:0],guess[7:0],unlocked);
		end
		if(i2 && !reprog) begin
			guess[i] <= 0;
			i=i+1;
			guess[i] <= 1;
			i=i+1;
			if(i==7) check(key,guess,unlocked);
		end
		if(i3 && !reprog) begin
			guess[i] <= 1;
			i=i+1;
			guess[i] <= 0;
			i=i+1;
			if(i==7) check(key,guess,unlocked);
		end
		if(i4 && !reprog) begin
			guess[i] <= 1;
			i=i+1;
			guess[i] <= 1;
			i=i+1;
			if(i==7) check(key,guess,unlocked);
		end
		//---------------------------------------------------------------------
		if(i1 && reprog) begin
			key[i] <= 0;
			i=i+1;
			key[i] <= 0;
			i=i+1;
			if(i==7) reprog<=0;
		end
		if(i2 && reprog) begin
			key[i] <= 0;
			i=i+1;
			key[i] <= 1;
			i=i+1;
			if(i==7) reprog<=0;
		end
		if(i3 && reprog) begin
			key[i] <= 1;
			i=i+1;
			key[i] <= 0;
			i=i+1;
			if(i==7) reprog<=0;
		end
		if(i4 && reprog) begin
			key[i] <= 1;
			i=i+1;
			key[i] <= 1;
			i=i+1;
			if(i==7) reprog<=0;
		end
	end
	
	
end
endmodule

task check (input reg key[7:0], reg guess[7:0], output unlocked);
//always @(posedge clk) begin
//reg unlocked;
integer i;
while(i<7) begin
	if(key[i] != guess[i]) begin 
		unlocked <=0;
		//return unlocked <=0;
		break;
	end
	i=i+1;
end
unlocked <=1;
//end
endtask
