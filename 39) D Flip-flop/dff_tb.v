`timescale 1ns/100ps
module dff_tb;
reg d;
reg clk,rst;
wire q,qbar;

d_flipflop uut(d,clk,rst,q,qbar);
always #5 clk = ~clk;
initial begin 
clk=0; d=0; rst=1;#10;

rst=0;
d=0;#10;
d=1;#10;
d=0;#10;
d=1;#10;

end
endmodule 
