module th33(a, b, c, th);

input wire a, b, c;
output reg th;

initial th <= 1'b0;

wire #10 th_set = (a&b&c);
wire #10 th_res = ((a==1'b0)&(b==1'b0)&(c==1'b0));

always @(th_set or th_res) begin
	if(th_res) begin
		#10 th <= 1'b0;
	end
	if((a&b&c)) begin
		#10 th <= 1'b1;
	end
end

endmodule
