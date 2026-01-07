module mux_2x1(
input [1:0] a,
input s,
output y
);
assign y=(a[0]&(~s)) | (a[1]&s);
endmodule
