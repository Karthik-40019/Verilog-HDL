`timescale 1ns/100ps 
module or_tb;
reg a,b;
wire y;

cmos_or uut(a,b,y);
initial begin 

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

end
endmodule
