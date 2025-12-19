`timescale 1ns/100ps

module inv_chain_tb;
reg in;
wire y;

odd_invChain uut(.in(in),.y(y));

initial begin
in=1;#10;
in=0;#10;
in=1;#10;
end
endmodule

