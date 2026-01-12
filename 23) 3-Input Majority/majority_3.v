module majority_3(
input a,b,c,
output y
);

assign y=(a&b) | (b&c) | (a&c);
endmodule

