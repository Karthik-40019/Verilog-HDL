module demux_1x2(
input d,s,
output [1:0]y
);

assign y[0]=d&~s;
assign y[1]=d&s;

endmodule
