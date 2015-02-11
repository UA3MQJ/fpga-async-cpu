module a_hsum(a, b, os, oc);

input wire a;
input wire b;
output wire os;
output wire oc;

wire t_os;
wire t_oc;

assign #`reldelay t_os = ((a === 1'bz)||(b === 1'bz)) ? 1'bz : a ^ b;
assign os = ((t_os === 1'bx)||(t_oc === 1'bx)) ? 1'bz : t_os; //чтобы убрать x состояние

assign #`reldelay t_oc = ((a === 1'bz)||(b === 1'bz)) ? 1'bz : a & b;
assign oc = ((t_os === 1'bx)||(t_oc === 1'bx)) ? 1'bz : t_oc; //чтобы убрать x состояние

endmodule 
