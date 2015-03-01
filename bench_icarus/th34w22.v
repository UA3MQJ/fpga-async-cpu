module th34w22(a, b, c, d, th);

input wire a, b, c, d;
output reg th;

initial th <= 1'b0;

always @(a or b or c or d) begin
	if((a==1'b0)&&(b==1'b0)&&(c==1'b0)&&(d==1'b0)) begin
		#10 th <= 1'b0;
	end else if((a&b)|(a&c)|(a&d)|(b&c)|(b&d)) begin
		#10 th <= 1'b1;
	end
end

endmodule
