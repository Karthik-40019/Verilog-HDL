module even_invChain(

input in,
output y
);

wire w1,w2,w3;

assign w1=~in;
assign w2=~w1;
assign w3=~w2;
assign y=~w3;


endmodule

