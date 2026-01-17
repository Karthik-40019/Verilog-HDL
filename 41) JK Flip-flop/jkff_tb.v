`timescale 1ns/100ps
module jk_tb;
reg j,k;
reg clk,rst;
wire q,qbar;

jk_flipflop uut(j,k,clk,rst,q,qbar);
always #5 clk = ~clk;
initial begin 
clk=0; j=0; k=0; rst=1; #10;
rst=0; 

j=0; k=0; #10;
j=0; k=1; #10;
j=1; k=0; #10;
j=1; k=1; #10;

end
endmodule
