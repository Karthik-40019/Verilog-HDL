module fa_using_ha(
input a,b,c,
output sum,carry
);
wire w1,w2,w3;

half_adder u1(a,b,w1,w2);
half_adder u2(w1,c,sum,w3);
or u3(carry,w2,w3);

endmodule


