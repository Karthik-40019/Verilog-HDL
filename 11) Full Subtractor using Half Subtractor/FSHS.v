module fs_using_hs(
input a,b,bin,
output diff,borr
);
wire w1,w2,w3;

half_subtractor u1(a,b,w1,w2);
half_subtractor u2(w1,bin,diff,w3);
or u3(borr,w3,w2);

endmodule
