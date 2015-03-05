module th22(a, b, th);

input wire a, b;
output wire th;

wire #10 th_set  = (a&b);
wire #10 th_res  = ((a==1'b0)&&(b==1'b0));

		  
DLATCH l_0 (.d(1'bx), 
            .ena(1'b0),
            .clrn(~th_res), 
				.prn (~th_set),
            .q(th)) /* synthesis noprune */;
					
endmodule
