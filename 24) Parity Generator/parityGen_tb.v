`timescale 1ns/100ps
module parityGen_tb;

reg [3:0]d;
reg mode;
wire parity;

parityGen uut(d,mode,parity);

initial begin 

d=4'b1011;mode=1'b0;#10; //parity=1
d=4'b1100;mode=1'b1;#10; //parity=1
d=4'b0001;mode=1'b1;#10; //parity=0
d=4'b1111;mode=1'b0;#10; //parity=0

end
endmodule
