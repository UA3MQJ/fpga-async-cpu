module thhadd(x0, x1, y0, y1, z0, z1, c0, c1);

input wire x0, x1, y0, y1;
output wire z0, z1, c0, c1;


wire w1, w2;
th12 th_0(x0, y0, w1);
th22 th_1(x1, y1, w2);

assign c0 = w1;
assign c1 = w2;

th24 th_2(w2, w2, x0, y0, z0);
th34 th_3(w1, w1, x1, y1, z1);

endmodule
