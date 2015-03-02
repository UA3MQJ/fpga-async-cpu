module th23(a, b, c, th);

input wire a, b, c;
output reg th;

initial th <= 0;

wire #10 th_set = ((a&b)|(a&c)|(b&c));
wire #10 th_res = ((a==0)&(b==0)&(c==0));

always @(th_set or th_res) begin
	if(th_res) begin
		#10 th <= 1'b0;
	end 
	if(th_set)begin
		#10 th <= 1'b1;
	end
end

endmodule
