`timescale 1ns/100ps
module majority_tb;
reg a,b,c;
wire y;

majority_3 uut(a,b,c,y);
initial begin 
a=0;b=0;c=0;#10;
a=0;b=0;c=1;#10;
a=0;b=1;c=0;#10;
a=0;b=1;c=1;#10;
a=1;b=0;c=0;#10;
a=1;b=0;c=1;#10;
a=1;b=1;c=0;#10;
a=1;b=1;c=1;#10;

end
endmodule
