`timescale 1ns/100ps

module mux_tb;
reg [1:0] a;
reg s;
wire y;

mux_2x1 uut(a,s,y);
initial begin 
a=2'b01;

s=0;#10;
s=1;#10;
s=0;#10;
s=1;#10;

end
endmodule
