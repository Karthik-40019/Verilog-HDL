`timescale 1ns/100ps
module sipo_tb;
reg clk,rst;
reg s_in;
wire [3:0]p_out;

sipo uut(clk,rst,s_in,p_out);
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; s_in=0; #10;
rst=0; 

//1011
s_in=1; #10;
s_in=0; #10;
s_in=1; #10;
s_in=1; #10;
$finish;

end
endmodule
