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

s=0; r=0; #10; //memory
s=0; r=1; #10; //reset
s=1; r=0; #10; //set
s=1; r=1; #10; //Invalid in SR
end
endmodule

