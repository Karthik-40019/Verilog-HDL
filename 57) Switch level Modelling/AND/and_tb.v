`timescale 1ns/100ps 
module and_tb;
reg a,b;
wire y;

cmos_and uut(a,b,y);
initial begin 

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

end
endmodule
