`timescale 1ns/100ps
module cmos_ha_tb;
reg A,B;
wire sum,cout;

cmos_halfAdder uut(A,B,sum,cout);
initial begin 

A=0; B=0; #10;
A=0; B=1; #10;
A=1; B=0; #10;
A=1; B=1; #10;

end
endmodule
