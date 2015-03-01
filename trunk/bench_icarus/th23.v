module th23(a, b, c, th);

input wire a, b, c;
output reg th;

initial th <= 1'b0;

always @(a or b or c) begin
	if((a==1'b0)&&(b==1'b0)&&(c==1'b0)) begin
		#10 th <= 1'b0;
	end else if((a&b)|(a&c)|(b&c)) begin
		#10 th <= 1'b1;
	end
end

endmodule
