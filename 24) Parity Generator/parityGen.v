module parityGen(
input [3:0] d,
input mode,
output reg parity
);

always @(*) begin 
// mode = 0 to check even parity
// mode = 1 to check odd parity

if(mode == 1'b0)
    parity = ^d;
else
    parity = ~^d;
end
endmodule
