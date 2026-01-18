`timescale 1ns/100ps
module modn_tb;
parameter w = 4;
parameter n = 12;

reg clk,rst;
wire [w-1:0] q;

ModN_counter #(4,12) uut(clk,rst,q);
always #5 clk = ~clk;
initial begin 
clk=0; rst=1; #10;
rst=0;
end
endmodule
