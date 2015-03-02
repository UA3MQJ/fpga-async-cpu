module thfadd(x0, x1, y0, y1, ci0, ci1, z0, z1, c0, c1);

input wire x0, x1, y0, y1, ci0, ci1;
output wire z0, z1, c0, c1;


wire w1, w2;

th23 th_0(ci0, x0, y0, w1);
th23 th_1(ci1, x1, y1, w2);

assign c0 = w1;
assign c1 = w2;

//assign z0 = 0;
//assign z1 = 0;

th34w2 th_2(w2, ci0, y0, x0, z0);
th34w2 th_3(w1, ci1, y1, x1, z1);

endmodule
