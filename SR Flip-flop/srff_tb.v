`timescale 1ns/100ps
module srff_tb;
reg s,r;
reg clk,rst;
wire q,qbar;

sr_flipflop uut(s,r,clk,rst,q,qbar);
always #5 clk = ~clk;
initial begin 
clk=0; s=0; r=0; rst=1; #10;
rst=0; 

s=0; r=0; #10;
s=0; r=1; #10;
s=1; r=0; #10;
s=1; r=1; #10;
end
endmodule

