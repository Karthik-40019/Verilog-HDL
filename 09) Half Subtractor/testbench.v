`timescale 1ns/100ps
module halfSub_tb;
reg a,b;
wire diff,borr;

 half_subtractor uut(a,b,diff,borr);

initial begin 
a=0;b=0;#10;
a=0;b=1;#10;
a=1;b=0;#10;
a=1;b=1;#10;

end
endmodule
