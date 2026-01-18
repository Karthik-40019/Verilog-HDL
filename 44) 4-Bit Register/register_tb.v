`timescale 1ns/100ps
module reg_tb;
reg [3:0] d;
reg clk,rst;
reg en;
wire [3:0] q;

reg_4bit uut(d,clk,rst,en,q);
always #5 clk = ~clk;
initial begin 

clk=0; en=0; d=4'b0000; rst=1; #10;
rst=0;

en=1; d=4'b0110; #10;
en=0; d=4'b1100; #10; //wont reflect in o/p since en=0
en=1; d=4'b1001; #10;
en=1; d=4'b1010; #10;

rst=1; #10;

end
endmodule
