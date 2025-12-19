`timescale 1ns/100ps

module fullSub_tb;
reg a,b,bin;
wire diff,borr;

full_subtractor uut(a,b,bin,diff,borr);

initial begin 

a=0;b=0;bin=0;#10;
a=0;b=0;bin=1;#10;
a=0;b=1;bin=0;#10;
a=0;b=1;bin=1;#10;
a=1;b=0;bin=0;#10;
a=1;b=0;bin=1;#10;
a=1;b=1;bin=0;#10;
a=1;b=1;bin=1;#10;

end
endmodule

