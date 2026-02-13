`timescale 1ns/100ps 
module nor_tb;
reg a,b;
wire y;

cmos_nor uut(a,b,y);
initial begin 

a=0; b=0; #10;
a=0; b=1; #10;
a=1; b=0; #10;
a=1; b=1; #10;

end
endmodule
