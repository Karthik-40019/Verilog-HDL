module full_subtractor(
input a,b,bin,
output reg diff,borr
);

always @(*) begin 

diff = a^b^bin;
borr =((~a)&b)|bin&(~(a^b));

end
endmodule
