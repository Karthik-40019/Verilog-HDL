`timescale 1ns/100ps
module tff_tb;
reg t;
reg clk,rst;
wire q,qbar;

t_flipflop uut(t,clk,rst,q,qbar);
always #5 clk = ~clk;

initial begin 
clk=0; t=0; rst=1; #10;
rst=0;

t=1; #10;
t=0; #10;
t=0; #10;
t=1; #10;

end
endmodule
