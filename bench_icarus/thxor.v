module thxor(a0, a1, b0, b1, th0, th1);

input wire a0, a1, b0, b1;
output wire th0, th1;

wire w1, w2, w3, w4;
th22 th22_0(a0, b0, w1);
th22 th22_1(a1, b1, w2);
th22 th22_2(b0, a1, w3);
th22 th22_3(b1, a0, w4);

th12 th12_0(w1, w2, th0);
th12 th12_1(w3, w4, th1);

endmodule
