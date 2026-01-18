`timescale 1ns/100ps 
module counter_4bit_tb;
reg clk,rst;
wire [3:0] count;

counter_4bit uut(clk,rst,count);
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; #10;
rst=0; 
end
endmodule

