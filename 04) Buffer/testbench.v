`timescale 1ns/100ps

module buffer_tb;
reg a;
wire y;

buffer uut(.a(a),.y(y));
initial begin 

a=0;#10;
a=1;#10;
a=1;#10;
a=0;#10;
a=1;#10;
a=0;#10;

end
endmodule
