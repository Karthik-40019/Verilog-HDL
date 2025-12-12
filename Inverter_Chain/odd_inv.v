module odd_invChain(

input in,
output y
);

wire w1,w2;

assign w1=~in;
assign w2=~w1;
assign y=~w2;


endmodule
