module ASR(
input [15:0] a,
input [3:0] n,
output [15:0] y
);

assign y = $signed(a) >>> n;
endmodule
