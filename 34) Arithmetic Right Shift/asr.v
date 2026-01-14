module arithmetic_right_shift #(parameter w)(
input signed [w-1:0] a,
input [2:0] n,
output signed [w-1:0] y 
);

assign y = a >>> n;
endmodule
