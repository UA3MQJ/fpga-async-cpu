module a_xor(a, b, out);

input wire a;
input wire b;
output wire out;

wire t_out;

assign #`reldelay t_out = ((a === 1'bz)||(b === 1'bz)) ? 1'bz : a ^ b;
assign out = (t_out === 1'bx) ? 1'bz : t_out; //чтобы убрать x состояние

endmodule 
