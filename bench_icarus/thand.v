module thand(a0, a1, b0, b1, th0, th1);

input wire a0, a1, b0, b1;
output wire th0, th1;


th22 th22_0(a1, b1, th1);
th34w22 th34w22_0(a0, a1, b1, b0, th0);


/* //и это работает!
assign th1 = a1 & b1;
assign th0 = (a1 & a0) | (b1 & b0) | (a1 & b0) | (b1 & a0) | (a0 & b0);  */

endmodule
