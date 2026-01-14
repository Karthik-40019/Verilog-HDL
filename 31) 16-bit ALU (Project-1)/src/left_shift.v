module left_shift(
input [15:0] a,
input [3:0] n,
output [15:0] y
);

assign y = a << n;

endmodule
