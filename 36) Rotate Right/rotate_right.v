module rotate_right #(parameter w)(
input [w-1:0] a,
input [2:0] n,
output [w-1:0] y 
);

assign y = (a >> n) | (a << (w-n));
endmodule
