module half_subtractor(
input a,b,
output reg diff,borr
);

always @(*) begin 

diff=a^b;
borr=(~a)&b;

end
endmodule
