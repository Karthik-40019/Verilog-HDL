module subtractor(
input [15:0] a,b,
input bin,
output [15:0] diff,
output bout
);

assign {bout, diff} = a-b-bin;
endmodule
