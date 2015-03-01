module th22(a, b, th);

input wire a, b;
output reg th;

initial th <= 1'b0;

always @(a or b) begin
	if((a==1'b0)&&(b==1'b0)) begin
		#10 th <= 1'b0;
	end else if(a&b) begin
		#10 th <= 1'b1;
	end
end

endmodule
