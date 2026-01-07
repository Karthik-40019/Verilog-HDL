module mux4x1_2x1(
input [3:0]a,
input [1:0]s,
output y
);
wire w1,w2;

mux_2x1 m1(.a(a[1:0]),.s(s[0]),.y(w1));
mux_2x1 m2(.a(a[3:2]),.s(s[0]),.y(w2));
mux_2x1 m3(.a({w2,w1}),.s(s[1]),.y(y));

endmodule
