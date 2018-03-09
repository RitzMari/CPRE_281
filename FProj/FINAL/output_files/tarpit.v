module tarpit (output reg pcEn, input clock, input ready);
reg state;
always @(posedge clock) begin
      state <= ready;
      pcEn  <= state != ready && ready;
end
endmodule