module a_fsum(a, b, c, os, oc);

input wire a;
input wire b;
input wire c;
output wire os;
output wire oc;

wire t_os;
wire t_oc;

wire s1;
wire c1;
a_hsum hsum1(a, b, s1, c1);

wire c2;
a_hsum hsum2(c, s1, t_os, c2);

a_or aor(c2, c1, t_oc);

assign os = ((t_os===1'bz)||(t_oc===1'bz)) ? 1'bz : t_os;  //чтобы убрать x состояние
assign oc = ((t_os===1'bz)||(t_oc===1'bz)) ? 1'bz : t_oc; //чтобы убрать x состояние

endmodule
