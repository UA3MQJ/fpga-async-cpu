module a_not(in, out);

input wire in;
output wire out;

wire t_out;

assign #`reldelay t_out = (in === 1'bz) ? 1'bz : ~in; //��� �� ���� ������. ����������� � ���������
assign out = (t_out === 1'bx) ? 1'bz : t_out; //����� ������ x ���������

endmodule 
