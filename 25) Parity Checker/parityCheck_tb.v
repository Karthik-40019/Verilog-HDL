`timescale 1ns/100ps
module parityCheck_tb;
reg [3:0]d;
reg parity;
reg mode;
wire error;

parityCheck uut(d,parity,mode,error);

initial begin 
d=4'b1101; parity=1; mode=1'b1; #10;
d=4'b1101; parity=0; mode=1'b0; #10;
d=4'b1001; parity=1; mode=1'b1; #10;
d=4'b1001; parity=1; mode=1'b0; #10;

end
endmodule
