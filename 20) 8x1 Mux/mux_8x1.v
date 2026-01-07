module mux_8x1(
input [7:0]a,
input [2:0]s,
output y
);
wire w1,w2;
  
// we are designing the 8x1 mux using 4x1 and 2x1
mux_4x1 m1(.a(a[3:0]),.s(s[1:0]),.y(w1));
mux_4x1 m2(.a(a[7:4]),.s(s[1:0]),.y(w2));
mux_2x1 m3(.a({w2,w1}),.s(s[2]),.y(y));

endmodule
