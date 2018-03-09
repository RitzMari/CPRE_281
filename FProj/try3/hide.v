module hide(c0,c1,c2,o1,o2,o3,o4);
input c0,c1,c2;
output reg o1,o2,o3,o4;
always @(c0 or c1 or c2) begin
	o1=(!c0&&!c2&&!c1);
	o2=((!c0&&!c2&&!c1)||(c0&&!c2&&!c1));
	o3=((!c0&&!c2&&!c1)||(c0&&!c2&&!c1)||(!c0&&!c2&&c1));
	o4=((!c0&&!c2&&!c1)||(c0&&!c2&&!c1)||(!c0&&!c2&&c1)||(c0&&!c2&&c1));
end
endmodule